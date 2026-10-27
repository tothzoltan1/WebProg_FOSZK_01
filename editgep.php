<?php
require_once __DIR__ . '/includes/db.inc.php';

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    die('Hiányzó vagy hibás azonosító!');
}

$id = (int)$_GET['id'];

$stmt = $db->prepare('SELECT * FROM gep WHERE id = :id');
$stmt->execute([':id' => $id]);
$gepek = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$gepek) {
    die('A keresett gép nem található!');
}

include __DIR__ . '/templates/pages/editgep.tpl.php';
