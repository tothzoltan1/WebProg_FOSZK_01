<?php
require_once __DIR__ . '/../../includes/db.inc.php';
//$stmt = $db->prepare('SELECT * FROM gep Order by id');
//$stmt->execute();
$stmt = $db->prepare("
SELECT
gep.*,
processzor.gyarto AS processzor_gyarto,
processzor.tipus AS processzor_tipus,
oprendszer.nev AS oprendszer_nev
FROM gep
LEFT JOIN processzor ON gep.processzorid = processzor.id
LEFT JOIN oprendszer ON gep.oprendszerid = oprendszer.id
ORDER BY gep.id ASC
");
$stmt->execute();
?>
<a href="creategep"><button>Gép hozzáadása</button></a>
<table>
<thead>
<tr>
<th>id</th>
<th>Gyártó</th>
<th>Típus</th>
<th>Kijelző</th>
<th>Memória</th>
<th>HDD</th>
<th>GPU</th>
<th>Ár</th>
<th>Processzor</th>
<th>OS</th>
<th>DB</th>
<th>Tételek kezelése</th>
</tr>
</thead>
<tbody>
<?php
while ($gepek = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
    <tr>
    <th><?php echo $gepek['id']; ?></th>
    <th><?php echo $gepek['gyarto']; ?></th>
    <td><?php echo $gepek['tipus']; ?></td>
    <td><?php echo $gepek['kijelzo']; ?></td>
    <td><?php echo $gepek['memoria']; ?></td>
    <td><?php echo $gepek['merevlemez']; ?></td>
    <td><?php echo $gepek['videovezerlo']; ?></td>
    <td><?php echo $gepek['ar']; ?> pengő</td>
    <td><?php echo $gepek['processzor_gyarto'] . ' ' . $gepek['processzor_tipus']; ?></td>
    <td><?php echo $gepek['oprendszer_nev']; ?></td>
    <td><?php echo $gepek['db']; ?></td>
    <td>
    <?php
    echo '<a href="editgep?id='.$gepek['id'].'"><button>Szerkesztés</button></a> ';
    echo '<a href="deletegep?id='.$gepek['id'].'"><button>Törlés</button></a>';
    ?>
    </td>
    </tr>
    <?php
}
?>
</tbody>
</table>
