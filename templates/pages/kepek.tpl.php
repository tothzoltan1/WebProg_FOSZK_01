<style type="text/css">
div.kep { 
    display: inline-block; 
    margin: 10px;
    text-align: center;
}
div.kep img { 
    width: 200px; 
}
</style>

<h1>Galéria</h1>

<?php if (isset($_SESSION['login'])) { ?>
    <h2>Feltöltés a galériába:</h2>
    <?php
    if (!empty($uzenet)) {
        echo '<ul>';
        foreach ($uzenet as $u) {
            echo "<li>$u</li>";
        }
        echo '</ul>';
    }
    ?>
    <form action="?oldal=kepek" method="post" enctype="multipart/form-data">
        <label>Kép:
            <input type="file" name="fajl" required>
        </label>
        <input type="submit" name="kuld" value="Küldés">
    </form>
    <br><hr><br>
<?php } else { ?>
    <p>Képfeltöltéshez kérjük, jelentkezzen be!</p>
<?php } ?>

<div id="galeria">
<?php
foreach ($kepek as $fajl => $datum) {
?>
    <div class="kep">
        <a href="/galeria_kepek/<?php echo $fajl ?>" target="_blank">
            <img src="/galeria_kepek/<?php echo $fajl ?>">
        </a>
        <p>Név: <?php echo $fajl; ?></p>
        <p>Dátum: <?php echo date($DATUMFORMA, $datum); ?></p>
    </div>
<?php
}
?>
</div>