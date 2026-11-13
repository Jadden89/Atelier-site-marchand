<?php

require_once "connexion.php";

$sql = "SELECT * FROM Livre LIMIT 5";
$requete = $pdo->query($sql);

$livres = $requete->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site Marchand</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <div class="header">
            <img src="../Comics/images/bg-header.jpg" alt="bandeau de fond" class="banniere">
            <div class="texte">
                <a class="Titre" href="index.php">
                    <h1 class="Titre">SIO Comics</h1>
                </a>
                <div class="recherche">
                    <label for="site-search"></label>
                    <input type="search" id="site-search" name="q" />
                    <button>Rechercher</button>
                </div>
            </div>
        </div>
        <nav class="nav">
            <a href="index.php">Accueil</a>
            <a href="nouveautes.html">Nouveautés</a>
            <div class="menu">
                <button class="deroulant-boutton">Albums ▾</button>
                <div class="deroulant-contenu">
                    <a href="Album/omnibus.php">Omnibus</a>
                    <a href="Album/deluxe.html">Deluxe</a>
                    <a href="Album/integrales.html">Intégrales</a>
                    <a href="Album/absolute.html">Absolute</a>
                    <a href="Album/hardcover.html">Hardcover</a>
                </div>
            </div>
            <div class="menu">
                <button class="deroulant-boutton">Éditeurs ▾</button>
                <div class="deroulant-contenu">
                    <a href="Editeurs/dc.html">DC Comics</a>
                    <a href="Editeurs/marvel.php">Marvel Comics</a>
                </div>
            </div>
            <a href="contact.html">Nous contacter</a>
        </nav>
    </header>
    <div class="entete">
        <h2>SIO Comics : La sélection des meilleurs comics en VF !</h2>
        <?php echo "Ceci est du <strong>texte</strong>"; ?>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus porro a facere beatae ducimus qui amet nesciunt? Dolorum magni temporibus expedita odio adipisci dicta, corrupti praesentium aliquid, nisi eligendi veritatis?</p>
    </div>

    <h2 class="nouveautes">NOUVEAUTÉS</h2>


    <div class="liste-livres">

        <?php foreach ($livres as $livre): ?>

            <div class="carte-livre">

                <img
                    src="<?= htmlspecialchars($livre['images']) ?>"
                    alt="<?= htmlspecialchars($livre['Titre_Livre']) ?>">

                <h3>
                    <?= htmlspecialchars($livre['Titre_Livre']) ?>
                </h3>

                <p class="prix">
                    <?= number_format((float)$livre['Prix'], 2, ',', ' ') ?> €
                </p>

                <button>Voir le produit</button>

            </div>

        <?php endforeach; ?>

    </div>
</body>

</html>