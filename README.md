# L-KZ01_beadando
 
Csoport tagok:
@FabMon-GAMF
@MBranko-90
@tothzoltan1
@ilyeslaszlo87
@szendreaitavi
*****************************
stilus.css-ből kivett elemek
****************************
nav {
    margin: 0px 10px 0px 0px;
    top: 0px;
    border-radius: 10px;
    background-color: #FF6600;
}

nav ul {
    list-style-type: none;
    margin: 0px;
    padding: 15px 0px;
}

nav ul li {
    padding: 0px 15px;;
}

nav ul li.active {
    border-right: 5px solid blue;
}

nav ul a {
    text-decoration: none;
    color: blue;
}

Függyőleges menü kivéve:
<!--
    <div id="wrapper">
        <aside id="nav">
            <nav>
                <ul>
					<?php foreach ($oldalak as $url => $oldal) { ?>
						<?php if(! isset($_SESSION['login']) && $oldal['menun'][0] || isset($_SESSION['login']) && $oldal['menun'][1]) { ?>
							<li<?= (($oldal == $keres) ? ' class="active"' : '') ?>>
							<a href="<?= ($url == '/') ? '.' : $url ?>">
							<?= $oldal['szoveg'] ?></a>
							</li>
						<?php } ?>
					<?php } ?>
                </ul>
            </nav>
        </aside>
        <div id="content">
            <?php include("./templates/pages/{$keres['fajl']}.tpl.php"); ?>
        </div>
    </div>
    -->
