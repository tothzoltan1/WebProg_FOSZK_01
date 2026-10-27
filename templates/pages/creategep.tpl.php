
<?php
require_once __DIR__ . '/../../includes/db.inc.php';

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    if (
        $_POST['gyarto'] != "" &&
        $_POST['tipus'] != "" &&
        $_POST['ar'] != "" &&
        $_POST['processzorid'] != "" &&
        $_POST['oprendszerid'] != "" &&
        $_POST['db'] != ""
    ) {
        $stmt = $db->prepare('
        INSERT INTO gep
        (gyarto, tipus, kijelzo, memoria, merevlemez,
                             videovezerlo, ar, processzorid, oprendszerid, db)
        VALUES
        (:gyarto, :tipus, :kijelzo, :memoria, :merevlemez,
                             :videovezerlo, :ar, :processzorid, :oprendszerid, :darab)
        ');

        $stmt->execute(array(
            ':gyarto' => $_POST['gyarto'],
            ':tipus' => $_POST['tipus'],
            ':kijelzo' => $_POST['kijelzo'],
            ':memoria' => $_POST['memoria'],
            ':merevlemez' => $_POST['merevlemez'],
            ':videovezerlo' => $_POST['videovezerlo'],
            ':ar' => $_POST['ar'],
            ':processzorid' => $_POST['processzorid'],
            ':oprendszerid' => $_POST['oprendszerid'],
            ':darab' => $_POST['db']
        ));

        header("Location: /gep");
        exit;
    }
}

$processzorok = $db->query(
    'SELECT * FROM processzor ORDER BY gyarto, tipus'
)->fetchAll(PDO::FETCH_ASSOC);

$oprendszerek = $db->query(
    'SELECT * FROM oprendszer ORDER BY nev'
)->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>Új gép hozzáadása</h2>

<form method="POST">
<table>
<tr>
<td>Gyártó:</td>
<td><input type="text" name="gyarto" required></td>
</tr>
<tr>
<td>Típus:</td>
<td><input type="text" name="tipus" required></td>
</tr>
<tr>
<td>Kijelző:</td>
<td><input type="text" name="kijelzo"></td>
</tr>
<tr>
<td>Memória:</td>
<td><input type="text" name="memoria"></td>
</tr>
<tr>
<td>Merevlemez:</td>
<td><input type="text" name="merevlemez"></td>
</tr>
<tr>
<td>Videóvezérlő:</td>
<td><input type="text" name="videovezerlo"></td>
</tr>
<tr>
<td>Ár (Ft):</td>
<td><input type="number" name="ar" min="0" step="0.01" required></td>
</tr>
<tr>
<td>Processzor:</td>
<td>
<select name="processzorid" required>
<option value="">Válassz processzort!</option>
<?php foreach ($processzorok as $p) { ?>
    <option value="<?= (int)$p['id'] ?>">
    <?= htmlspecialchars($p['gyarto'] . ' ' . $p['tipus']) ?>
    </option>
    <?php } ?>
    </select>
    </td>
    </tr>
    <tr>
    <td>Operációs rendszer:</td>
    <td>
    <select name="oprendszerid" required>
    <option value="">Válassz operációs rendszert!</option>
    <?php foreach ($oprendszerek as $o) { ?>
        <option value="<?= (int)$o['id'] ?>">
        <?= htmlspecialchars($o['nev']) ?>
        </option>
        <?php } ?>
        </select>
        </td>
        </tr>
        <tr>
        <td>Darabszám:</td>
        <td><input type="number" name="db" min="0" step="1" value="1" required></td>
        </tr>
        <tr>
        <td colspan="2">
        <button type="submit">Mentés</button>
        <a href="/gep">Vissza a gépekhez</a>
        </td>
        </tr>
        </table>
        </form>
