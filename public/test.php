<?php

echo "PHP is working!\n";
echo "PHP Version: " . PHP_VERSION . "\n";

// Test database connection
try {
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=testsBDE;charset=utf8mb4', 'root', '');
    echo "Database connection: OK\n";
    
    $stmt = $pdo->query("SELECT COUNT(*) as count FROM temas");
    $result = $stmt->fetch();
    echo "Temas count: " . $result['count'] . "\n";
    
} catch (Exception $e) {
    echo "Database error: " . $e->getMessage() . "\n";
}
