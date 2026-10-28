
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['login'])) {
    http_response_code(403);
    echo "<h2>Hozzáférés megtagadva</h2>";
    echo "<p>Az üzeneteket csak bejelentkezett felhasználók tekinthetik meg.</p>";
    return;
}
?>

<?php
try {
    $db = new PDO(
        "mysql:host=localhost;dbname=vaszilij_kapcsolat;charset=utf8mb4",
        "root",
        "",
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );

    $sql = "SELECT nev, email, uzenet, bekuldes_ideje
            FROM kapcsolati_uzenetek
            ORDER BY bekuldes_ideje DESC, id DESC";

    $stmt = $db->query($sql);
    $uzenetek = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch (PDOException $e) {
    $uzenetek = [];
    echo "<p>Hiba történt az üzenetek lekérésekor.</p>";
}
?>

<h2>Beérkezett üzenetek</h2>

<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>Név</th>
        <th>E-mail-cím</th>
        <th>Üzenet</th>
        <th>Beküldés ideje</th>
    </tr>

    <?php foreach ($uzenetek as $uzenet): ?>
    <tr>
        <td><?= htmlspecialchars($uzenet['nev']) ?></td>
        <td><?= htmlspecialchars($uzenet['email']) ?></td>
        <td><?= nl2br(htmlspecialchars($uzenet['uzenet'])) ?></td>
        <td><?= htmlspecialchars($uzenet['bekuldes_ideje']) ?></td>
    </tr>
    <?php endforeach; ?>
</table>
