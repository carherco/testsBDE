// dark-toggle.js
(function(){
  const toggleBtn = document.getElementById('darkToggle');
  function setDark(d){
    if (d) document.documentElement.classList.add('dark-mode');
    else document.documentElement.classList.remove('dark-mode');
    localStorage.setItem('simulador_dark', d ? '1' : '0');
    if (toggleBtn) toggleBtn.textContent = d ? 'Modo claro' : 'Modo oscuro';
  }
  // init
  const saved = localStorage.getItem('simulador_dark');
  if (saved === '1') setDark(true);
  else setDark(false);
  if (toggleBtn) toggleBtn.addEventListener('click', function(){ setDark(!(localStorage.getItem('simulador_dark')==='1')); });
})();