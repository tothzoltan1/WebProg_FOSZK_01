
<?php
require_once __DIR__ . '/../../includes/db.inc.php';

if (!isset($_GET['id'])) {
    die('Hiányzik a gép azonosítója.');
}

$id = $_GET['id'];

$stmt = $db->prepare('SELECT * FROM gep WHERE id = :id');
$stmt->execute([':id' => $id]);
$gepek = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$gepek) {
    die('Nem található ilyen gép.');
             }
require_once __DIR__ . '/../../includes/db.inc.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($_POST['gyarto'] != "") {
        $stmt = $db->prepare('UPDATE gep SET
        gyarto = :gyarto,
        tipus = :tipus,
        kijelzo = :kijelzo,
        memoria = :memoria,
        merevlemez = :merevlemez,
        videovezerlo = :videovezerlo,
        ar = :ar,
        processzorid = :processzorid,
        oprendszerid = :oprendszerid,
        db = :darab
        WHERE id = :id');

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
            ':darab' => $_POST['db'],
            ':id' => $_GET['id']
        ));
    }

    header("Location: /gep");
    exit;
}

$stmt = $db->prepare('SELECT * FROM gep WHERE id = :id');
$stmt->execute(array(':id' => $_GET['id']));
$gepek = $stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $db->prepare('SELECT * FROM processzor');
$stmt->execute();
$processzorok = $stmt->fetchAll(PDO::FETCH_ASSOC);

$stmt = $db->prepare('SELECT * FROM oprendszer');
$stmt->execute();
$oprendszerek = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<form method="POST">
<div>
<label>Gyártó:</label><br>
<input type="text" value="<?php echo htmlspecialchars($gepek['gyarto']); ?>" name="gyarto" required><br>

<label>Típus:</label><br>
<input type="text" value="<?php echo htmlspecialchars($gepek['tipus']); ?>" name="tipus" required><br>

<label>Kijelző:</label><br>
<input type="text" value="<?php echo htmlspecialchars($gepek['kijelzo']); ?>" name="kijelzo" required><br>

<label>Memória:</label><br>
<input type="text" value="<?php echo htmlspecialchars($gepek['memoria']); ?>" name="memoria" required><br>

<label>Merevlemez:</label><br>
<input type="text" value="<?php echo htmlspecialchars($gepek['merevlemez']); ?>" name="merevlemez" required><br>

<label>Videovezérlő:</label><br>
<input type="text" value="<?php echo htmlspecialchars($gepek['videovezerlo']); ?>" name="videovezerlo" required><br>

<label>Ár (pengő):</label><br>
<input type="number" value="<?php echo htmlspecialchars((string)$gepek['ar']); ?>" name="ar" required><br>

<label>Processzor:</label><br>
<select name="processzorid" required>
<?php foreach ($processzorok as $processzor): ?>
<option value="<?php echo $processzor['id']; ?>"
<?php if ($gepek['processzorid'] == $processzor['id']) echo 'selected'; ?>>
<?php echo htmlspecialchars($processzor['gyarto'] . ' ' . $processzor['tipus']); ?>
</option>
<?php endforeach; ?>
</select><br>

<label>Operációs rendszer:</label><br>
<select name="oprendszerid" required>
<?php foreach ($oprendszerek as $oprendszer): ?>
<option value="<?php echo $oprendszer['id']; ?>"
<?php if ($gepek['oprendszerid'] == $oprendszer['id']) echo 'selected'; ?>>
<?php echo htmlspecialchars($oprendszer['nev']); ?>
</option>
<?php endforeach; ?>
</select><br>

<label>Darabszám:</label><br>
<input type="number" value="<?php echo htmlspecialchars((string)$gepek['db']); ?>" name="db" required><br>

<button type="submit">Mentés</button>
<a href="/gep">Vissza</a>
</div>
</form>
