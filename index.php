
<?php
include('./includes/config.inc.php');

$oldal = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$oldal = trim($oldal, '/');

if ($oldal != "") {
	if (isset($oldalak[$oldal]) && file_exists("./templates/pages/{$oldalak[$oldal]['fajl']}.tpl.php")) {
		$keres = $oldalak[$oldal];
	} else {
		$keres = $hiba_oldal;
		header("HTTP/1.0 404 Not Found");
	}
} else {
	$keres = $oldalak['/'];
}

include('./templates/index.tpl.php');
?>
