
<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $nev = isset($_SESSION["login"])
    ? trim($_POST["nev"] ?? "")
    : "Vendég";
    $email = trim($_POST["email"] ?? "");
    $uzenet = trim($_POST["uzenet"] ?? "");

    if ($nev === "" || !filter_var($email, FILTER_VALIDATE_EMAIL) || $uzenet === "") {
        exit("Hibás vagy hiányzó adatok!");
    }

    try {
        $db = new PDO(
            "mysql:host=localhost;dbname=vaszilij_kapcsolat;charset=utf8mb4",
            "root",
            "",
            [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
        );

        $sql = "INSERT INTO kapcsolati_uzenetek (nev, email, uzenet)
                VALUES (:nev, :email, :uzenet)";

        $stmt = $db->prepare($sql);

        $stmt->execute([
            "nev" => $nev,
            "email" => $email,
            "uzenet" => $uzenet
        ]);

        header("Location: /../?kapcsolat&siker=1");
exit;

    } catch (PDOException $e) {
        http_response_code(500);
        echo "Hiba történt az üzenet mentésekor.";
    }
}
?>
