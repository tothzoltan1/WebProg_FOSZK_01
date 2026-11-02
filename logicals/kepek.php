<?php
$MAPPA = './galeria_kepek/';
$TIPUSOK = array('.jpg', '.png', '.jpeg');
$MEDIATIPUSOK = array('image/jpeg', 'image/png');
$DATUMFORMA = "Y.m.d. H:i";
$MAXMERET = 500 * 1024;

$uzenet = array();


if (isset($_POST['kuld']) && isset($_SESSION['login'])) {
    $fajl = $_FILES['fajl'];

    if ($fajl['error'] == 4) {
        $uzenet[] = "Nem választottál ki fájlt!";
    } elseif (!in_array($fajl['type'], $MEDIATIPUSOK)) {
        $uzenet[] = "Nem megfelelő típus: " . $fajl['name'];
    } elseif ($fajl['error'] == 1 || $fajl['error'] == 2 || $fajl['size'] > $MAXMERET) {
        $uzenet[] = "Túl nagy állomány: " . $fajl['name'];
    } else {
        $vegsohely = $MAPPA . strtolower($fajl['name']);
        if (file_exists($vegsohely)) {
            $uzenet[] = "Már létezik: " . $fajl['name'];
        } else {
            move_uploaded_file($fajl['tmp_name'], $vegsohely);
            $uzenet[] = 'Ok: ' . $fajl['name'];
        }
    }
}


$kepek = array();
$olvaso = opendir($MAPPA);
while (($fajl = readdir($olvaso)) !== false) {
    if (is_file($MAPPA . $fajl)) {
        $vege = strtolower(substr($fajl, strlen($fajl) - 4));
        if (in_array($vege, $TIPUSOK)) {
            $kepek[$fajl] = filemtime($MAPPA . $fajl);
        }
    }
}
closedir($olvaso);

arsort($kepek);
?>