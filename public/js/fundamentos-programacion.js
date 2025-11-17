// Visualización interactiva de grafos
const svg = document.getElementById('svg');
const startSel = document.getElementById('start');
const targetSel = document.getElementById('target');
const targetDiv = document.getElementById('targetDiv');
const algoSel = document.getElementById('algo');
const delayInput = document.getElementById('delay');
const playBtn = document.getElementById('play');
const stepBtn = document.getElementById('step');
const resetBtn = document.getElementById('reset');
const loadBtn = document.getElementById('load');
const exampleBtn = document.getElementById('example');
const adjTA = document.getElementById('adj');
const structureList = document.getElementById('structureList');
const logDiv = document.getElementById('log');
const nodeCountSpan = document.getElementById('nodeCount');
const edgeCountSpan = document.getElementById('edgeCount');

let graph = {};
let nodes = [];
let edges = [];
let steps = [];
let stepIndex = 0;
let timer = null;
let playing = false;

function parseAdj(text) {
    const map = {};
    text.split('\n').map(l => l.trim()).filter(Boolean).forEach(line => {
        const parts = line.split(':');
        if (parts.length < 2) return;
        const node = parts[0].trim();
        const neigh = parts[1].split(',').map(x => x.trim()).filter(Boolean);
        if (!map[node]) map[node] = new Set();
        neigh.forEach(n => map[node].add(n));
        neigh.forEach(n => {
            if (!map[n]) map[n] = new Set();
        });
    });
    const out = {};
    Object.keys(map).sort().forEach(k => out[k] = Array.from(map[k]));
    return out;
}

function buildLayout(g) {
    graph = g;
    nodes = Object.keys(graph).sort().map((id, i, arr) => {
        const theta = (i / arr.length) * Math.PI * 2 - Math.PI / 2;
        const r = Math.min(150, 120);
        return {id, x: 450 + r * Math.cos(theta), y: 190 + r * Math.sin(theta)};
    });
    edges = [];
    Object.entries(graph).forEach(([u, neis]) => {
        neis.forEach(v => {
            edges.push({u, v});
        });
    });
    nodeCountSpan.textContent = nodes.length;
    edgeCountSpan.textContent = edges.length;
}

function render() {
    while (svg.firstChild) svg.removeChild(svg.firstChild);
    edges.forEach((e, i) => {
        const u = nodes.find(n => n.id === e.u);
        const v = nodes.find(n => n.id === e.v);
        const line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        line.setAttribute('x1', u.x);
        line.setAttribute('y1', u.y);
        line.setAttribute('x2', v.x);
        line.setAttribute('y2', v.y);
        line.setAttribute('class', 'edge');
        line.dataset.u = e.u;
        line.dataset.v = e.v;
        svg.appendChild(line);
    });
    nodes.forEach(n => {
        const g = document.createElementNS('http://www.w3.org/2000/svg', 'g');
        g.setAttribute('transform', `translate(${n.x},${n.y})`);
        const c = document.createElementNS('http://www.w3.org/2000/svg', 'circle');
        c.setAttribute('r', 20);
        c.setAttribute('class', 'node');
        c.dataset.id = n.id;
        const t = document.createElementNS('http://www.w3.org/2000/svg', 'text');
        t.setAttribute('x', 0);
        t.setAttribute('y', 5);
        t.setAttribute('text-anchor', 'middle');
        t.style.fontSize = '12px';
        t.style.fontWeight = '600';
        t.textContent = n.id;
        g.appendChild(c);
        g.appendChild(t);
        svg.appendChild(g);
    });
}

function runBFSSteps(g, start) {
    const visited = new Set();
    const q = [];
    const steps = [];
    q.push(start);
    steps.push({type: 'enqueue', node: start});
    while (q.length) {
        const u = q.shift();
        steps.push({type: 'dequeue', node: u});
        if (visited.has(u)) continue;
        steps.push({type: 'visit', node: u});
        visited.add(u);
        for (const v of (g[u] || [])) {
            if (!visited.has(v) && !q.includes(v)) {
                q.push(v);
                steps.push({type: 'enqueue', node: v, from: u});
            }
        }
        steps.push({type: 'snapshot', structure: 'queue', value: q.slice()});
    }
    return steps;
}

function runDFSSteps(g, start) {
    const visited = new Set();
    const stack = [];
    const steps = [];

    stack.push(start);
    steps.push({type: 'push', node: start});
    steps.push({type: 'snapshot', structure: 'stack', value: stack.slice()});

    while (stack.length > 0) {
        const u = stack.pop();
        steps.push({type: 'pop', node: u});

        if (visited.has(u)) {
            steps.push({type: 'skip', node: u, reason: 'ya visitado'});
            steps.push({type: 'snapshot', structure: 'stack', value: stack.slice()});
            continue;
        }

        steps.push({type: 'visit', node: u});
        visited.add(u);

        // Agregar vecinos a la pila (en orden reverso para mantener orden alfabético)
        const neighbors = (g[u] || []).slice().reverse();
        for (const v of neighbors) {
            if (!visited.has(v)) {
                if (!stack.includes(v)) {
                    stack.push(v);
                    steps.push({type: 'push', node: v, from: u});
                } else {
                    steps.push({type: 'skip', node: v, reason: 'ya en pila'});
                }
            } else {
                steps.push({type: 'skip', node: v, reason: 'ya visitado'});
            }
        }
        steps.push({type: 'snapshot', structure: 'stack', value: stack.slice()});
    }
    return steps;
}

function runPathfindingSteps(g, start, target) {
    const visited = new Set();
    const parent = {};
    const distance = {};
    const q = [];
    const steps = [];

    q.push(start);
    steps.push({type: 'enqueue', node: start});
    parent[start] = null;
    distance[start] = 0;

    while (q.length) {
        const u = q.shift();
        steps.push({type: 'dequeue', node: u});

        if (visited.has(u)) {
            steps.push({type: 'skip', node: u, reason: 'ya visitado'});
            continue;
        }

        steps.push({type: 'visit', node: u, distance: distance[u]});
        visited.add(u);

        if (u === target) {
            steps.push({type: 'found', node: u, distance: distance[u]});
            // Reconstruir ruta
            const path = [];
            let current = target;
            while (current !== null) {
                path.unshift(current);
                current = parent[current];
            }
            steps.push({type: 'showpath', path: path, distance: distance[target]});
            break;
        }

        for (const v of (g[u] || [])) {
            if (!visited.has(v)) {
                if (!q.includes(v)) {
                    q.push(v);
                    parent[v] = u;
                    distance[v] = distance[u] + 1;
                    steps.push({type: 'enqueue', node: v, from: u, distance: distance[v]});
                } else {
                    steps.push({type: 'skip', node: v, reason: 'ya en cola'});
                }
            } else {
                steps.push({type: 'skip', node: v, reason: 'ya visitado'});
            }
        }
        steps.push({type: 'snapshot', structure: 'queue', value: q.slice()});
    }
    return steps;
}

function prepareSteps() {
    const start = startSel.value;
    if (!start) return;
    const algo = algoSel.value;

    if (algo === 'pathfind') {
        const target = targetSel.value;
        if (!target || target === start) {
            alert('Selecciona un nodo destino diferente al origen');
            return;
        }
        steps = runPathfindingSteps(graph, start, target);
    } else {
        steps = (algo === 'bfs') ? runBFSSteps(graph, start) : runDFSSteps(graph, start);
    }

    stepIndex = 0;
    logDiv.textContent = '';
    updateStructureView([]);
    highlightReset();
    renderEdgesReset();
}

function replayStep(i) {
    if (i < 0 || i >= steps.length) return;
    const s = steps[i];
    appendLog(s);
    if (s.type === 'visit') {
        setNodeState(s.node, 'visited');
        setNodeState(s.node, 'current');
    } else if (s.type === 'enqueue') {
        setNodeState(s.node, 'queued');
        if (s.from) highlightEdge(s.from, s.node);
    } else if (s.type === 'dequeue') {
        setNodeState(s.node, 'current');
    } else if (s.type === 'push') {
        setNodeState(s.node, 'queued');
        if (s.from) highlightEdge(s.from, s.node);
    } else if (s.type === 'pop') {
        setNodeState(s.node, 'current');
    } else if (s.type === 'found') {
        setNodeState(s.node, 'current');
    } else if (s.type === 'showpath') {
        showFinalPath(s.path);
    } else if (s.type === 'snapshot') {
        updateStructureView(s.value);
    }
}

function appendLog(s) {
    const line = document.createElement('div');
    line.textContent = formatStep(s);
    logDiv.appendChild(line);
    logDiv.scrollTop = logDiv.scrollHeight;
}

function formatStep(s) {
    switch (s.type) {
        case 'visit':
            if (s.distance !== undefined) return `VISITAR ${s.node} (distancia: ${s.distance})`;
            return `VISITAR ${s.node}`;
        case 'enqueue':
            if (s.distance !== undefined) return `ENQUEUE ${s.node} (distancia: ${s.distance})`;
            return `ENQUEUE ${s.node}`;
        case 'dequeue':
            return `DEQUEUE ${s.node}`;
        case 'push':
            return `PUSH ${s.node}`;
        case 'pop':
            return `POP ${s.node}`;
        case 'skip':
            return `SKIP ${s.node} — ${s.reason}`;
        case 'found':
            if (s.distance !== undefined) return `¡DESTINO ENCONTRADO! ${s.node} (distancia: ${s.distance})`;
            return `¡DESTINO ENCONTRADO! ${s.node}`;
        case 'showpath':
            if (s.distance !== undefined) return `RUTA MÁS CORTA: ${s.path.join(' → ')} (${s.distance} saltos)`;
            return `RUTA FINAL: ${s.path.join(' → ')}`;
        case 'snapshot':
            return `${s.structure.toUpperCase()} = [${s.value.join(', ')}]`;
        default:
            return JSON.stringify(s);
    }
}

function showFinalPath(path) {
    // Resaltar nodos de la ruta
    path.forEach(nodeId => {
        setNodeState(nodeId, 'path');
    });

    // Resaltar aristas de la ruta
    for (let i = 0; i < path.length - 1; i++) {
        highlightPathEdge(path[i], path[i + 1]);
    }
}

function highlightPathEdge(u, v) {
    const lines = Array.from(svg.querySelectorAll('line'));
    const found = lines.find(l => (l.dataset.u === u && l.dataset.v === v) || (l.dataset.u === v && l.dataset.v === u));
    if (found) found.classList.add('path');
}

function setNodeState(id, state) {
    const circles = svg.querySelectorAll('circle');
    circles.forEach(c => {
        if (c.dataset.id === id) {
            if (state !== 'path') c.classList.remove('current', 'visited', 'queued');
            if (state) c.classList.add(state);
        }
    });
}

function highlightEdge(u, v) {
    const lines = Array.from(svg.querySelectorAll('line'));
    lines.forEach(l => l.classList.remove('active'));
    const found = lines.find(l => (l.dataset.u === u && l.dataset.v === v) || (l.dataset.u === v && l.dataset.v === u));
    if (found) found.classList.add('active');
}

function renderEdgesReset() {
    svg.querySelectorAll('line').forEach(l => {
        l.classList.remove('active');
        l.classList.remove('path');
    });
}

function highlightReset() {
    svg.querySelectorAll('circle').forEach(c => c.classList.remove('visited', 'current', 'queued', 'path'));
}

function updateStructureView(arr) {
    structureList.innerHTML = '';
    if (!arr || !arr.length) return;
    const title = document.createElement('div');
    title.style.fontWeight = '600';
    const content = document.createElement('div');

    if (algoSel.value === 'bfs' || algoSel.value === 'pathfind') {
        title.textContent = 'Cola (FIFO - front → back):';
        content.textContent = arr.join(' ← ');
    } else {
        title.textContent = 'Pila (LIFO - bottom → top):';
        content.textContent = arr.join(' | ');
    }

    structureList.appendChild(title);
    structureList.appendChild(content);
}

playBtn.addEventListener('click', () => {
    if (playing) {
        stop();
        return;
    }
    if (!steps || !steps.length) prepareSteps();
    play();
});

stepBtn.addEventListener('click', () => {
    if (!steps || !steps.length) prepareSteps();
    if (stepIndex < steps.length) {
        replayStep(stepIndex);
        stepIndex++;
    }
});

resetBtn.addEventListener('click', () => {
    stop();
    stepIndex = 0;
    logDiv.textContent = '';
    updateStructureView([]);
    highlightReset();
    renderEdgesReset();
});

function play() {
    playing = true;
    playBtn.textContent = 'Pause';
    timer = setInterval(() => {
        if (stepIndex >= steps.length) {
            stop();
            return;
        }
        replayStep(stepIndex);
        stepIndex++;
    }, Number(delayInput.value) || 600);
}

function stop() {
    playing = false;
    playBtn.textContent = 'Play';
    if (timer) clearInterval(timer);
    timer = null;
}

loadBtn.addEventListener('click', () => {
    try {
        const g = parseAdj(adjTA.value);
        buildLayout(g);
        render();
        populateStart();
        resetBtn.click();
    } catch (e) {
        alert('Error parsing grafo');
    }
});

exampleBtn.addEventListener('click', () => {
    adjTA.value = 'A: B,C\nB: A,D,E\nC: A,F\nD: B\nE: B,F\nF: C,E';
    loadBtn.click();
});

algoSel.addEventListener('change', () => {
    resetBtn.click();
    if (algoSel.value === 'pathfind') {
        targetDiv.style.display = 'block';
    } else {
        targetDiv.style.display = 'none';
    }
});

function populateStart() {
    startSel.innerHTML = '';
    targetSel.innerHTML = '';
    nodes.forEach(n => {
        const o1 = document.createElement('option');
        o1.value = n.id;
        o1.textContent = n.id;
        startSel.appendChild(o1);

        const o2 = document.createElement('option');
        o2.value = n.id;
        o2.textContent = n.id;
        targetSel.appendChild(o2);
    });
}

// Inicialización
setTimeout(() => {
    loadBtn.click();
    render();
    populateStart();
}, 100);


// Visualización de Dijkstra - Script movido al final
const dijkstra_svg = document.getElementById('dijkstra_svg');
const dijkstra_startSel = document.getElementById('dijkstra_start');
const dijkstra_delayInput = document.getElementById('dijkstra_delay');
const dijkstra_playBtn = document.getElementById('dijkstra_play');
const dijkstra_stepBtn = document.getElementById('dijkstra_step');
const dijkstra_resetBtn = document.getElementById('dijkstra_reset');
const dijkstra_loadBtn = document.getElementById('dijkstra_load');
const dijkstra_exampleBtn = document.getElementById('dijkstra_example');
const dijkstra_adjTA = document.getElementById('dijkstra_adj');
const dijkstra_queueDiv = document.getElementById('dijkstra_queue');
const dijkstra_distancesDiv = document.getElementById('dijkstra_distances');
const dijkstra_logDiv = document.getElementById('dijkstra_log');
const dijkstra_nodeCountSpan = document.getElementById('dijkstra_nodeCount');
const dijkstra_edgeCountSpan = document.getElementById('dijkstra_edgeCount');


let dijkstra_graph = {};
let dijkstra_nodes = [];
let dijkstra_edges = [];
let dijkstra_steps = [];
let dijkstra_stepIndex = 0;
let dijkstra_timer = null;
let dijkstra_playing = false;

function parseWeightedAdj(text) {
    const map = {};
    text.split('\n').map(l => l.trim()).filter(Boolean).forEach(line => {
        const parts = line.split(':');
        if (parts.length < 2) return;
        const node = parts[0].trim();
        const connections = parts[1].split(',').map(x => x.trim()).filter(Boolean);
        if (!map[node]) map[node] = [];
        connections.forEach(conn => {
            const match = conn.match(/^(.+)\((\d+)\)$/);
            if (match) {
                const neighbor = match[1].trim();
                const weight = parseInt(match[2]);
                map[node].push({node: neighbor, weight: weight});
                // Asegurar que el vecino existe
                if (!map[neighbor]) map[neighbor] = [];
            }
        });
    });
    return map;
}

function buildDijkstraLayout(g) {
    dijkstra_graph = g;
    dijkstra_nodes = Object.keys(dijkstra_graph).sort().map((id, i, arr) => {
        const theta = (i / arr.length) * Math.PI * 2 - Math.PI / 2;
        const r = Math.min(150, 120);
        return {id, x: 450 + r * Math.cos(theta), y: 190 + r * Math.sin(theta)};
    });
    dijkstra_edges = [];
    Object.entries(dijkstra_graph).forEach(([u, connections]) => {
        connections.forEach(conn => {
            dijkstra_edges.push({u, v: conn.node, weight: conn.weight});
        });
    });
}

function renderDijkstra() {
    const svg = document.getElementById('dijkstra_svg');
    if (!svg) {
        console.error('dijkstra_svg no encontrado');
        return;
    }

    while (svg.firstChild) svg.removeChild(svg.firstChild);

    // Renderizar aristas con pesos
    dijkstra_edges.forEach((e, i) => {
        const u = dijkstra_nodes.find(n => n.id === e.u);
        const v = dijkstra_nodes.find(n => n.id === e.v);

        const line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        line.setAttribute('x1', u.x);
        line.setAttribute('y1', u.y);
        line.setAttribute('x2', v.x);
        line.setAttribute('y2', v.y);
        line.setAttribute('class', 'dijkstra-edge');
        line.dataset.u = e.u;
        line.dataset.v = e.v;
        svg.appendChild(line);

        // Texto del peso
        const midX = (u.x + v.x) / 2;
        const midY = (u.y + v.y) / 2;
        const text = document.createElementNS('http://www.w3.org/2000/svg', 'text');
        text.setAttribute('x', midX);
        text.setAttribute('y', midY - 5);
        text.setAttribute('text-anchor', 'middle');
        text.setAttribute('class', 'edge-weight');
        text.textContent = e.weight;
        svg.appendChild(text);
    });

    // Renderizar nodos
    dijkstra_nodes.forEach(n => {
        const g = document.createElementNS('http://www.w3.org/2000/svg', 'g');
        g.setAttribute('transform', `translate(${n.x},${n.y})`);

        const c = document.createElementNS('http://www.w3.org/2000/svg', 'circle');
        c.setAttribute('r', 20);
        c.setAttribute('class', 'dijkstra-node');
        c.dataset.id = n.id;

        const t = document.createElementNS('http://www.w3.org/2000/svg', 'text');
        t.setAttribute('x', 0);
        t.setAttribute('y', 5);
        t.setAttribute('text-anchor', 'middle');
        t.style.fontSize = '12px';
        t.style.fontWeight = '600';
        t.textContent = n.id;

        g.appendChild(c);
        g.appendChild(t);
        svg.appendChild(g);
    });
}

function runDijkstraSteps(g, start) {
    const distances = {};
    const visited = new Set();
    const previous = {};
    const pq = []; // Priority queue: [{node, dist}]
    const steps = [];

    // Inicializar distancias
    Object.keys(g).forEach(node => {
        distances[node] = node === start ? 0 : Infinity;
        previous[node] = null;
    });

    pq.push({node: start, dist: 0});
    steps.push({type: 'init', distances: {...distances}});
    steps.push({type: 'enqueue', node: start, dist: 0});

    while (pq.length > 0) {
        // Encontrar nodo con menor distancia
        pq.sort((a, b) => a.dist - b.dist);
        const current = pq.shift();
        steps.push({type: 'dequeue', node: current.node, dist: current.dist});

        if (visited.has(current.node)) {
            steps.push({type: 'skip', node: current.node, reason: 'ya visitado'});
            continue;
        }

        visited.add(current.node);
        steps.push({type: 'visit', node: current.node, dist: current.dist});

        // Examinar vecinos
        const neighbors = g[current.node] || [];
        for (const neighbor of neighbors) {
            if (!visited.has(neighbor.node)) {
                const newDist = distances[current.node] + neighbor.weight;
                if (newDist < distances[neighbor.node]) {
                    distances[neighbor.node] = newDist;
                    previous[neighbor.node] = current.node;
                    pq.push({node: neighbor.node, dist: newDist});
                    steps.push({
                        type: 'relax',
                        from: current.node,
                        to: neighbor.node,
                        oldDist: distances[neighbor.node] === newDist ? Infinity : distances[neighbor.node],
                        newDist: newDist,
                        weight: neighbor.weight
                    });
                } else {
                    steps.push({
                        type: 'no_relax',
                        from: current.node,
                        to: neighbor.node,
                        currentDist: distances[neighbor.node],
                        proposedDist: newDist
                    });
                }
            }
        }
        steps.push({type: 'snapshot', distances: {...distances}, queue: pq.slice()});
    }

    return steps;
}

// Event listeners y funciones de control para Dijkstra
if (dijkstra_loadBtn) {
    dijkstra_loadBtn.addEventListener('click', () => {
        try {
            const g = parseWeightedAdj(dijkstra_adjTA.value);
            buildDijkstraLayout(g);
            renderDijkstra();
            populateDijkstraStart();
        } catch (e) {
            alert('Error parsing weighted graph');
        }
    });
}

if (dijkstra_exampleBtn) {
    dijkstra_exampleBtn.addEventListener('click', () => {
        dijkstra_adjTA.value = 'A: B(4),C(2)\nB: A(4),C(1),D(5)\nC: A(2),B(1),D(8),E(10)\nD: B(5),C(8),E(2)\nE: C(10),D(2)';
        if (dijkstra_loadBtn) dijkstra_loadBtn.click();
    });
}

if (dijkstra_stepBtn) {
    dijkstra_stepBtn.addEventListener('click', () => {
        if (!dijkstra_steps || !dijkstra_steps.length) {
            const start = dijkstra_startSel.value;
            if (!start) return;
            dijkstra_steps = runDijkstraSteps(dijkstra_graph, start);
            dijkstra_stepIndex = 0;
            dijkstra_logDiv.textContent = '';
        }
        if (dijkstra_stepIndex < dijkstra_steps.length) {
            const s = dijkstra_steps[dijkstra_stepIndex];
            const line = document.createElement('div');
            line.textContent = formatDijkstraStep(s);
            dijkstra_logDiv.appendChild(line);
            dijkstra_logDiv.scrollTop = dijkstra_logDiv.scrollHeight;

            if (s.type === 'snapshot') {
                updateDijkstraViews(s.distances, s.queue);
            }
            dijkstra_stepIndex++;
        }
    });
}

if (dijkstra_resetBtn) {
    dijkstra_resetBtn.addEventListener('click', () => {
        dijkstra_stepIndex = 0;
        if (dijkstra_logDiv) dijkstra_logDiv.textContent = '';
        updateDijkstraViews();
    });
}

function updateDijkstraViews(distances = {}, queue = []) {
    if (dijkstra_distancesDiv) {
        dijkstra_distancesDiv.innerHTML = '';
        Object.entries(distances).forEach(([node, dist]) => {
            const div = document.createElement('div');
            div.textContent = `${node}: ${dist === Infinity ? '∞' : dist}`;
            dijkstra_distancesDiv.appendChild(div);
        });
    }

    if (dijkstra_queueDiv) {
        dijkstra_queueDiv.innerHTML = '';
        if (queue.length > 0) {
            const title = document.createElement('div');
            title.style.fontWeight = '600';
            title.textContent = 'Cola de prioridad:';
            dijkstra_queueDiv.appendChild(title);

            queue.sort((a, b) => a.dist - b.dist);
            queue.forEach(item => {
                const div = document.createElement('div');
                div.textContent = `${item.node}(${item.dist})`;
                dijkstra_queueDiv.appendChild(div);
            });
        }
    }
}

function populateDijkstraStart() {
    const startSel = document.getElementById('dijkstra_start');
    if (!startSel) {
        console.error('dijkstra_start no encontrado');
        return;
    }

    startSel.innerHTML = '';
    dijkstra_nodes.forEach(n => {
        const o = document.createElement('option');
        o.value = n.id;
        o.textContent = n.id;
        startSel.appendChild(o);
    });
}

function formatDijkstraStep(s) {
    switch (s.type) {
        case 'init':
            return 'INICIALIZAR distancias';
        case 'enqueue':
            return `ENQUEUE ${s.node} (dist: ${s.dist})`;
        case 'dequeue':
            return `DEQUEUE ${s.node} (dist: ${s.dist})`;
        case 'visit':
            return `VISITAR ${s.node} (dist: ${s.dist})`;
        case 'relax':
            return `RELAJAR ${s.from}→${s.to}: ${s.oldDist === Infinity ? '∞' : s.oldDist} → ${s.newDist}`;
        case 'no_relax':
            return `NO RELAJAR ${s.from}→${s.to}: ${s.currentDist} ≤ ${s.proposedDist}`;
        case 'skip':
            return `SKIP ${s.node} — ${s.reason}`;
        default:
            return JSON.stringify(s);
    }
}

// Inicialización
document.addEventListener('DOMContentLoaded', function () {
    const adjTA = document.getElementById('dijkstra_adj');

    if (adjTA) {
        try {
            const g = parseWeightedAdj(adjTA.value);
            buildDijkstraLayout(g);
            renderDijkstra();
            populateDijkstraStart();
        } catch (e) {
            console.error('Error en inicialización:', e);
        }
    } else {
        console.error('No se encontró dijkstra_adj en DOMContentLoaded');
    }
});


// Dijkstra - Funcionalidad completa
setTimeout(() => {
    const svg = document.getElementById('dijkstra_svg');
    const startSel = document.getElementById('dijkstra_start');
    const adjTA = document.getElementById('dijkstra_adj');
    const logDiv = document.getElementById('dijkstra_log');
    const distDiv = document.getElementById('dijkstra_distances');
    const stepBtn = document.getElementById('dijkstra_step');
    const playBtn = document.getElementById('dijkstra_play');
    const resetBtn = document.getElementById('dijkstra_reset');
    const loadBtn = document.getElementById('dijkstra_load');

    let steps = [];
    let stepIndex = 0;
    let playing = false;
    let timer = null;

    // Botón Step
    if (stepBtn) {
        stepBtn.addEventListener('click', () => {
            executeStep();
        });
    }

    // Botón Play
    if (playBtn) {
        playBtn.addEventListener('click', () => {
            if (playing) {
                stopPlay();
            } else {
                startPlay();
            }
        });
    }

    // Botón Reset
    if (resetBtn) {
        resetBtn.addEventListener('click', () => {
            resetAlgorithm();
        });
    }

    function executeStep() {
        if (steps.length === 0) {
            const start = startSel.value;
            if (!start) return;
            steps = runDijkstra(dijkstra_graph, start);
            stepIndex = 0;
            if (logDiv) logDiv.textContent = '';
        }

        if (stepIndex < steps.length) {
            const step = steps[stepIndex];
            if (logDiv) {
                const line = document.createElement('div');
                line.textContent = formatStep(step);
                logDiv.appendChild(line);
                logDiv.scrollTop = logDiv.scrollHeight;
            }

            if (step.distances && distDiv) {
                distDiv.innerHTML = '';
                Object.entries(step.distances).forEach(([node, dist]) => {
                    const div = document.createElement('div');
                    div.textContent = `${node}: ${dist === Infinity ? '∞' : dist}`;
                    distDiv.appendChild(div);
                });
            }
            stepIndex++;

            if (stepIndex >= steps.length && playing) {
                stopPlay();
            }
        }
    }

    function startPlay() {
        playing = true;
        if (playBtn) playBtn.textContent = 'Pause';
        timer = setInterval(() => {
            executeStep();
        }, 1000);
    }

    function stopPlay() {
        playing = false;
        if (playBtn) playBtn.textContent = 'Play';
        if (timer) {
            clearInterval(timer);
            timer = null;
        }
    }

    function resetAlgorithm() {
        stopPlay();
        steps = [];
        stepIndex = 0;
        if (logDiv) logDiv.textContent = '';
        if (distDiv) distDiv.textContent = '';
    }

    function runDijkstra(g, start) {
        const distances = {};
        const visited = new Set();
        const pq = [];
        const steps = [];

        Object.keys(g).forEach(node => {
            distances[node] = node === start ? 0 : Infinity;
        });

        pq.push({node: start, dist: 0});
        steps.push({type: 'init', distances: {...distances}});

        while (pq.length > 0) {
            pq.sort((a, b) => a.dist - b.dist);
            const current = pq.shift();

            if (visited.has(current.node)) continue;
            visited.add(current.node);
            steps.push({type: 'visit', node: current.node, dist: current.dist, distances: {...distances}});

            const neighbors = g[current.node] || [];
            for (const neighbor of neighbors) {
                if (!visited.has(neighbor.node)) {
                    const newDist = distances[current.node] + neighbor.weight;
                    if (newDist < distances[neighbor.node]) {
                        distances[neighbor.node] = newDist;
                        pq.push({node: neighbor.node, dist: newDist});
                        steps.push({
                            type: 'relax',
                            from: current.node,
                            to: neighbor.node,
                            newDist,
                            distances: {...distances}
                        });
                    }
                }
            }
        }
        return steps;
    }

    function formatStep(step) {
        switch (step.type) {
            case 'init':
                return 'INICIALIZAR distancias';
            case 'visit':
                return `VISITAR ${step.node} (distancia: ${step.dist})`;
            case 'relax':
                return `RELAJAR ${step.from}→${step.to}: nueva distancia ${step.newDist}`;
            default:
                return JSON.stringify(step);
        }
    }

    if (svg && startSel && adjTA && loadBtn) {
        loadBtn.click();
    }
}, 500);


// Agregar selector de algoritmo y nodo destino
setTimeout(() => {
    const algoSelect = document.createElement('select');
    algoSelect.id = 'dijkstra_algo_new';
    algoSelect.className = 'form-select form-select-sm';
    algoSelect.innerHTML = `
                <option value="dijkstra">Dijkstra (todas las distancias)</option>
                <option value="dijkstra_path">Dijkstra (camino más corto)</option>
                <option value="astar">A* (camino más corto)</option>
            `;

    const targetSelect = document.createElement('select');
    targetSelect.id = 'dijkstra_target_new';
    targetSelect.className = 'form-select form-select-sm';
    targetSelect.style.display = 'none';

    // Insertar en la interfaz
    const startDiv = document.querySelector('label[for="dijkstra_start"]').parentElement;
    const algoDiv = document.createElement('div');
    algoDiv.innerHTML = '<label class="form-label mb-0">Algoritmo</label>';
    algoDiv.appendChild(algoSelect);

    const targetDiv = document.createElement('div');
    targetDiv.innerHTML = '<label class="form-label mb-0">Destino</label>';
    targetDiv.appendChild(targetSelect);

    startDiv.parentElement.insertBefore(algoDiv, startDiv);
    startDiv.parentElement.insertBefore(targetDiv, startDiv.nextSibling);

    // Poblar nodos en target
    function populateTarget() {
        const startSel = document.getElementById('dijkstra_start');
        targetSelect.innerHTML = '';
        if (startSel) {
            Array.from(startSel.options).forEach(option => {
                const opt = document.createElement('option');
                opt.value = option.value;
                opt.textContent = option.textContent;
                targetSelect.appendChild(opt);
            });
        }
    }

    // Mostrar/ocultar selector de destino
    algoSelect.addEventListener('change', () => {
        if (algoSelect.value === 'dijkstra_path' || algoSelect.value === 'astar') {
            targetSelect.style.display = 'block';
            populateTarget();
        } else {
            targetSelect.style.display = 'none';
        }
    });

    // Algoritmos mejorados
    function runDijkstraPath(g, start, target) {
        const distances = {};
        const previous = {};
        const visited = new Set();
        const pq = [];
        const steps = [];

        Object.keys(g).forEach(node => {
            distances[node] = node === start ? 0 : Infinity;
            previous[node] = null;
        });

        pq.push({node: start, dist: 0});
        steps.push({type: 'init', distances: {...distances}});

        while (pq.length > 0) {
            pq.sort((a, b) => a.dist - b.dist);
            const current = pq.shift();

            if (visited.has(current.node)) continue;
            visited.add(current.node);
            steps.push({type: 'visit', node: current.node, dist: current.dist, distances: {...distances}});

            if (current.node === target) {
                // Reconstruir camino
                const path = [];
                let node = target;
                while (node !== null) {
                    path.unshift(node);
                    node = previous[node];
                }
                steps.push({type: 'path_found', path, distance: distances[target], distances: {...distances}});
                break;
            }

            const neighbors = g[current.node] || [];
            for (const neighbor of neighbors) {
                if (!visited.has(neighbor.node)) {
                    const newDist = distances[current.node] + neighbor.weight;
                    if (newDist < distances[neighbor.node]) {
                        distances[neighbor.node] = newDist;
                        previous[neighbor.node] = current.node;
                        pq.push({node: neighbor.node, dist: newDist});
                        steps.push({
                            type: 'relax',
                            from: current.node,
                            to: neighbor.node,
                            newDist,
                            distances: {...distances}
                        });
                    }
                }
            }
        }
        return steps;
    }

    function runAStar(g, start, target) {
        // Heurística simple: distancia euclidiana basada en posición de nodos
        function heuristic(node1, node2) {
            const nodes = dijkstra_nodes;
            const n1 = nodes.find(n => n.id === node1);
            const n2 = nodes.find(n => n.id === node2);
            if (!n1 || !n2) return 0;
            return Math.sqrt(Math.pow(n1.x - n2.x, 2) + Math.pow(n1.y - n2.y, 2)) / 50; // Escalar
        }

        const gScore = {};
        const fScore = {};
        const previous = {};
        const visited = new Set();
        const openSet = [];
        const steps = [];

        Object.keys(g).forEach(node => {
            gScore[node] = node === start ? 0 : Infinity;
            fScore[node] = node === start ? heuristic(start, target) : Infinity;
            previous[node] = null;
        });

        openSet.push({node: start, f: fScore[start]});
        steps.push({type: 'init', gScore: {...gScore}, fScore: {...fScore}});

        while (openSet.length > 0) {
            openSet.sort((a, b) => a.f - b.f);
            const current = openSet.shift();

            if (visited.has(current.node)) continue;
            visited.add(current.node);
            steps.push({
                type: 'visit',
                node: current.node,
                g: gScore[current.node],
                f: fScore[current.node],
                gScore: {...gScore}
            });

            if (current.node === target) {
                const path = [];
                let node = target;
                while (node !== null) {
                    path.unshift(node);
                    node = previous[node];
                }
                steps.push({type: 'path_found', path, distance: gScore[target], gScore: {...gScore}});
                break;
            }

            const neighbors = g[current.node] || [];
            for (const neighbor of neighbors) {
                if (!visited.has(neighbor.node)) {
                    const tentativeG = gScore[current.node] + neighbor.weight;
                    if (tentativeG < gScore[neighbor.node]) {
                        gScore[neighbor.node] = tentativeG;
                        fScore[neighbor.node] = tentativeG + heuristic(neighbor.node, target);
                        previous[neighbor.node] = current.node;
                        openSet.push({node: neighbor.node, f: fScore[neighbor.node]});
                        steps.push({
                            type: 'relax',
                            from: current.node,
                            to: neighbor.node,
                            newG: tentativeG,
                            newF: fScore[neighbor.node],
                            gScore: {...gScore}
                        });
                    }
                }
            }
        }
        return steps;
    }

    // Sobrescribir executeStep para usar nuevos algoritmos
    const originalExecuteStep = window.executeStep;
    window.executeStep = function () {
        const algo = algoSelect.value;
        const start = document.getElementById('dijkstra_start').value;
        const target = targetSelect.value;

        if (!window.dijkstra_steps || window.dijkstra_steps.length === 0) {
            if (!start) return;

            if (algo === 'dijkstra') {
                window.dijkstra_steps = runDijkstra(dijkstra_graph, start);
            } else if (algo === 'dijkstra_path') {
                if (!target || target === start) return;
                window.dijkstra_steps = runDijkstraPath(dijkstra_graph, start, target);
            } else if (algo === 'astar') {
                if (!target || target === start) return;
                window.dijkstra_steps = runAStar(dijkstra_graph, start, target);
            }

            window.dijkstra_stepIndex = 0;
            const logDiv = document.getElementById('dijkstra_log');
            if (logDiv) logDiv.textContent = '';
        }

        if (window.dijkstra_stepIndex < window.dijkstra_steps.length) {
            const step = window.dijkstra_steps[window.dijkstra_stepIndex];
            const logDiv = document.getElementById('dijkstra_log');
            const distDiv = document.getElementById('dijkstra_distances');

            if (logDiv) {
                const line = document.createElement('div');
                line.textContent = formatStepNew(step);
                logDiv.appendChild(line);
                logDiv.scrollTop = logDiv.scrollHeight;
            }

            const distances = step.distances || step.gScore;
            if (distances && distDiv) {
                distDiv.innerHTML = '';
                Object.entries(distances).forEach(([node, dist]) => {
                    const div = document.createElement('div');
                    div.textContent = `${node}: ${dist === Infinity ? '∞' : Math.round(dist * 10) / 10}`;
                    distDiv.appendChild(div);
                });
            }

            // Actualizar visualización del grafo
            updateGraphVisualization(step);

            window.dijkstra_stepIndex++;

            if (window.dijkstra_stepIndex >= window.dijkstra_steps.length && window.dijkstra_playing) {
                stopPlay();
            }
        }
    };

    function updateGraphVisualization(step) {
        const svg = document.getElementById('dijkstra_svg');
        if (!svg) {
            console.error('SVG no encontrado');
            return;
        }

        if (step.type === 'visit') {
            // Marcar nodo como visitado y actual
            const circles = svg.querySelectorAll('circle');
            circles.forEach(circle => {
                if (circle.dataset.id === step.node) {
                    circle.style.fill = '#fde68a'; // Amarillo para actual
                    circle.style.stroke = '#d97706';
                }
            });
        } else if (step.type === 'relax') {
            // Resaltar arista relajada
            const lines = svg.querySelectorAll('line');
            lines.forEach(line => {
                if ((line.dataset.u === step.from && line.dataset.v === step.to) ||
                    (line.dataset.u === step.to && line.dataset.v === step.from)) {
                    line.style.stroke = '#f59e0b'; // Naranja para relajación
                    line.style.strokeWidth = '3';
                }
            });
        } else if (step.type === 'path_found') {
            // Resaltar camino final

            // Marcar aristas del camino
            for (let i = 0; i < step.path.length - 1; i++) {
                const from = step.path[i];
                const to = step.path[i + 1];
                const lines = svg.querySelectorAll('line');
                lines.forEach(line => {
                    if ((line.dataset.u === from && line.dataset.v === to) ||
                        (line.dataset.u === to && line.dataset.v === from)) {
                        line.style.stroke = '#16a34a'; // Verde para camino final
                        line.style.strokeWidth = '4';
                    }
                });
            }

            // Marcar nodos del camino
            const circles = svg.querySelectorAll('circle');
            circles.forEach(circle => {
                if (step.path.includes(circle.dataset.id)) {
                    circle.style.fill = '#16a34a'; // Verde para camino final
                    circle.style.stroke = '#15803d';
                }
            });
        }
    }

    // Función para resetear visualización
    function resetGraphVisualization() {
        const svg = document.getElementById('dijkstra_svg');
        if (!svg) return;

        svg.querySelectorAll('.dijkstra-node').forEach(node => {
            node.classList.remove('visited', 'current', 'queued', 'path');
        });
        svg.querySelectorAll('.dijkstra-edge').forEach(edge => {
            edge.classList.remove('relaxed', 'shortest');
        });
    }

    // Sobrescribir resetAlgorithm para incluir reset visual
    const originalReset = window.resetAlgorithm;
    window.resetAlgorithm = function () {
        if (originalReset) originalReset();
        resetGraphVisualization();
        window.dijkstra_steps = [];
        window.dijkstra_stepIndex = 0;
    };

    function formatStepNew(step) {
        switch (step.type) {
            case 'init':
                return 'INICIALIZAR distancias';
            case 'visit':
                if (step.f !== undefined) return `VISITAR ${step.node} (g:${Math.round(step.g * 10) / 10}, f:${Math.round(step.f * 10) / 10})`;
                return `VISITAR ${step.node} (distancia: ${step.dist})`;
            case 'relax':
                if (step.newF !== undefined) return `RELAJAR ${step.from}→${step.to}: g=${Math.round(step.newG * 10) / 10}, f=${Math.round(step.newF * 10) / 10}`;
                return `RELAJAR ${step.from}→${step.to}: nueva distancia ${step.newDist}`;
            case 'path_found':
                return `🎯 CAMINO ENCONTRADO: ${step.path.join('→')} (distancia: ${Math.round(step.distance * 10) / 10})`;
            default:
                return JSON.stringify(step);
        }
    }

    // Inicializar
    populateTarget();
}, 1000);


    document.addEventListener('DOMContentLoaded', function() {
    const stepBtn = document.getElementById('dijkstra_step');
    if(!stepBtn) return;

    let currentStep = 0;
    let steps = [];
    let playing = false;
    let timer = null;

    // Botón Play
    const playBtn = document.getElementById('dijkstra_play');
    if(playBtn) {
    playBtn.addEventListener('click', function() {
    if(playing) {
    // Pausar
    playing = false;
    playBtn.textContent = 'Play';
    if(timer) {
    clearInterval(timer);
    timer = null;
}
} else {
    // Iniciar play
    if(steps.length === 0) {
    const startSel = document.getElementById('dijkstra_start');
    if(!startSel || !startSel.value) return;

    const start = startSel.value;
    steps = window.runAStarReal(dijkstra_graph, start, 'E');
    currentStep = 0;

    const logDiv = document.getElementById('dijkstra_log');
    if(logDiv) logDiv.textContent = '';
}

    playing = true;
    playBtn.textContent = 'Pause';

    timer = setInterval(() => {
    if(currentStep < steps.length) {
    const step = steps[currentStep];

    const logDiv = document.getElementById('dijkstra_log');
    if(logDiv) {
    const line = document.createElement('div');
    line.textContent = formatStepSimple(step);
    logDiv.appendChild(line);
    logDiv.scrollTop = logDiv.scrollHeight;
}

    if(step.gScore) {
    const distDiv = document.getElementById('dijkstra_distances');
    if(distDiv) {
    distDiv.innerHTML = '';
    Object.entries(step.gScore).forEach(([node, dist]) => {
    const div = document.createElement('div');
    div.textContent = `${node}: ${dist === Infinity ? '∞' : Math.round(dist * 10) / 10}`;
    distDiv.appendChild(div);
});
}
}

    updateColors(step);
    currentStep++;
} else {
    // Terminar play
    playing = false;
    playBtn.textContent = 'Play';
    if(timer) {
    clearInterval(timer);
    timer = null;
}
}
}, 1000); // 1 segundo entre pasos
}
});
}

    stepBtn.addEventListener('click', function() {
    if(steps.length === 0) {
    const startSel = document.getElementById('dijkstra_start');
    if(!startSel || !startSel.value) return;

    const start = startSel.value;
    steps = window.runAStarReal(dijkstra_graph, start, 'E');
    currentStep = 0;

    const logDiv = document.getElementById('dijkstra_log');
    if(logDiv) logDiv.textContent = '';
}

    if(currentStep < steps.length) {
    const step = steps[currentStep];

    const logDiv = document.getElementById('dijkstra_log');
    if(logDiv) {
    const line = document.createElement('div');
    line.textContent = formatStepSimple(step);
    logDiv.appendChild(line);
    logDiv.scrollTop = logDiv.scrollHeight;
}

    if(step.gScore) {
    const distDiv = document.getElementById('dijkstra_distances');
    if(distDiv) {
    distDiv.innerHTML = '';
    Object.entries(step.gScore).forEach(([node, dist]) => {
    const div = document.createElement('div');
    div.textContent = `${node}: ${dist === Infinity ? '∞' : Math.round(dist * 10) / 10}`;
    distDiv.appendChild(div);
});
}
}

    updateColors(step);
    currentStep++;
}
});

    // Reset button
    const resetBtn = document.getElementById('dijkstra_reset');
    if(resetBtn) {
    resetBtn.addEventListener('click', function() {
    // Detener play si está corriendo
    if(playing) {
    playing = false;
    if(playBtn) playBtn.textContent = 'Play';
    if(timer) {
    clearInterval(timer);
    timer = null;
}
}

    currentStep = 0;
    steps = [];

    const logDiv = document.getElementById('dijkstra_log');
    if(logDiv) logDiv.textContent = '';

    const distDiv = document.getElementById('dijkstra_distances');
    if(distDiv) distDiv.textContent = '';

    const svg = document.getElementById('dijkstra_svg');
    if(svg) {
    svg.querySelectorAll('circle').forEach(circle => {
    circle.style.fill = '#fff';
    circle.style.stroke = '#0b5cff';
});
    svg.querySelectorAll('line').forEach(line => {
    line.style.stroke = '#cbd5e1';
    line.style.strokeWidth = '2';
});
}

});
}

    // Función para formatear pasos con valores g y f
    function formatStepSimple(step) {
    switch(step.type) {
    case 'init': return 'INICIALIZAR distancias';
    case 'visit':
    if(step.g !== undefined && step.f !== undefined) {
    return `VISITAR ${step.node} (g:${step.g}, f:${step.f})`;
} else if(step.dist !== undefined) {
    return `VISITAR ${step.node} (distancia: ${step.dist})`;
} else {
    return `VISITAR ${step.node}`;
}
    case 'relax':
    if(step.newG !== undefined && step.newF !== undefined) {
    return `RELAJAR ${step.from}→${step.to}: g=${step.newG}, f=${step.newF}`;
} else if(step.newDist !== undefined) {
    return `RELAJAR ${step.from}→${step.to}: nueva distancia ${step.newDist}`;
} else {
    return `RELAJAR ${step.from}→${step.to}`;
}
    case 'path_found': return `🎯 CAMINO ENCONTRADO: ${step.path.join('→')} (distancia: ${step.distance})`;
    default: return JSON.stringify(step);
}
}

    // Función para actualizar colores
    function updateColors(step) {
    const svg = document.getElementById('dijkstra_svg');
    if(!svg) return;

    if(step.type === 'visit') {
    const circles = svg.querySelectorAll('circle');
    circles.forEach(circle => {
    if(circle.dataset && circle.dataset.id === step.node) {
    circle.style.fill = '#fde68a';
    circle.style.stroke = '#d97706';
}
});
} else if(step.type === 'relax') {
    const lines = svg.querySelectorAll('line');
    lines.forEach(line => {
    if(line.dataset &&
    ((line.dataset.u === step.from && line.dataset.v === step.to) ||
    (line.dataset.u === step.to && line.dataset.v === step.from))) {
    line.style.stroke = '#f59e0b';
    line.style.strokeWidth = '3';
}
});
} else if(step.type === 'path_found') {
    // Colorear camino final
    for(let i = 0; i < step.path.length - 1; i++) {
    const from = step.path[i];
    const to = step.path[i + 1];
    const lines = svg.querySelectorAll('line');
    lines.forEach(line => {
    if(line.dataset &&
    ((line.dataset.u === from && line.dataset.v === to) ||
    (line.dataset.u === to && line.dataset.v === from))) {
    line.style.stroke = '#16a34a';
    line.style.strokeWidth = '4';
}
});
}

    const circles = svg.querySelectorAll('circle');
    circles.forEach(circle => {
    if(circle.dataset && step.path.includes(circle.dataset.id)) {
    circle.style.fill = '#16a34a';
    circle.style.stroke = '#15803d';
}
});
}
}

    // Función A* global
    window.runAStarReal = function(g, start, target) {
    function heuristic(node1, node2) {
    const nodes = dijkstra_nodes;
    const n1 = nodes.find(n => n.id === node1);
    const n2 = nodes.find(n => n.id === node2);
    if(!n1 || !n2) return 0;
    return Math.sqrt(Math.pow(n1.x - n2.x, 2) + Math.pow(n1.y - n2.y, 2)) / 50;
}

    const gScore = {}, fScore = {}, previous = {}, visited = new Set(), openSet = [], steps = [];

    Object.keys(g).forEach(node => {
    gScore[node] = node === start ? 0 : Infinity;
    fScore[node] = node === start ? heuristic(start, target) : Infinity;
    previous[node] = null;
});

    openSet.push({node: start, f: fScore[start]});
    steps.push({type: 'init', gScore: {...gScore}});

    while(openSet.length > 0) {
    openSet.sort((a, b) => a.f - b.f);
    const current = openSet.shift();

    if(visited.has(current.node)) continue;
    visited.add(current.node);
    steps.push({
    type: 'visit',
    node: current.node,
    g: Math.round(gScore[current.node] * 10) / 10,
    f: Math.round(fScore[current.node] * 10) / 10,
    gScore: {...gScore}
});

    if(current.node === target) {
    const path = [];
    let node = target;
    while(node !== null) {
    path.unshift(node);
    node = previous[node];
}
    steps.push({type: 'path_found', path, distance: gScore[target], gScore: {...gScore}});
    break;
}

    const neighbors = g[current.node] || [];
    for(const neighbor of neighbors) {
    if(!visited.has(neighbor.node)) {
    const tentativeG = gScore[current.node] + neighbor.weight;
    if(tentativeG < gScore[neighbor.node]) {
    gScore[neighbor.node] = tentativeG;
    fScore[neighbor.node] = tentativeG + heuristic(neighbor.node, target);
    previous[neighbor.node] = current.node;
    openSet.push({node: neighbor.node, f: fScore[neighbor.node]});
    steps.push({
    type: 'relax',
    from: current.node,
    to: neighbor.node,
    newG: Math.round(tentativeG * 10) / 10,
    newF: Math.round(fScore[neighbor.node] * 10) / 10,
    gScore: {...gScore}
});
}
}
}
}
    return steps;
};
});
