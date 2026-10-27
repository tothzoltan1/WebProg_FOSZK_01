
<?php
require_once __DIR__ . '/../../includes/db.inc.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $stmt = $db->prepare('DELETE FROM gep WHERE id = :id');
    $stmt->execute([':id' => (int)$_GET['id']]);
}

header('Location: /gep');
exit;
?>
