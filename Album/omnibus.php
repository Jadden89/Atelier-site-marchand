<?php

require_once "../connexion.php";

$sql = "SELECT * FROM Livre WHERE Type_Album='omnibus'";
$requete = $pdo->query($sql);

$livres = $requete->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site Marchand</title>
    <link rel="stylesheet" href="/Comics/style.css">
</head>
<header>
    <div class="header">
        <img src="../images/bg-header.jpg" alt="bandeau de fond" class="banniere">
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
        <a href="/Comics/index.php">Accueil</a>
        <a href="/Comics/nouveautes.html">Nouveautés</a>
        <div class="menu">
            <button class="deroulant-boutton">Albums ▾</button>
            <div class="deroulant-contenu">
                <a href="omnibus.php">Omnibus</a>
                <a href="deluxe.html">Deluxe</a>
                <a href="integrales.html">Intégrales</a>
                <a href="absolute.html">Absolute</a>
                <a href="hardcover.html">Hardcover</a>
            </div>
        </div>
        <div class="menu">
            <button class="deroulant-boutton">Éditeurs ▾</button>
            <div class="deroulant-contenu">
                <a href="/Comics/Comics/Editeurs/dc.html">DC Comics</a>
                <a href="/Comics/Editeurs/marvel.php">Marvel Comics</a>
            </div>
        </div>
        <a href="/Comics/contact.html">Nous contacter</a>
    </nav>
</header>
<div class="bandeau">
    <img src="../images/marvel-comics.jpg" alt="Marvel Comics" class="image">
    <div class="description">
        <h2 class="nom">Marvel Omnibus</h2>
        <p>Que ce soit pour les collectionneurs avertis de comics VF comme pour les lecteurs les plus assidus, la collection Panini Comics Marvel Omnibus est un incontournable pour apprécier les grandes épopées comme Onslaught, Ultimate Spider-Man, La saga du Clone et bien plus encore. Le tout dans des pavés à la pagination conséquente pour avoir des belles heures de lecture et aussi, en même temps, pour faire de beaux bras musclés !</p>
    </div>
</div>
<div class="liste-livres">

    <?php foreach ($livres as $livre): ?>

        <div class="carte-livre">

            <img
                src="../images/<?= htmlspecialchars($livre['images']) ?>"
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

    </body>

</html>