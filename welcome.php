<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Saint Seiya Online Bienvenue</title>
    <meta name="keywords" content="Page avec message de bienvenue suite à l'inscription" />
    <meta name="description"
        content="Jeu de rôle/PVP sur le jeu en ligne (MMO) Saint Seiya Online. Rejoignez nous dans l'aventure et devenez Chevalier d'Athéna, Marinas de Poseidon ou Spectre d'Hades !" />
    <link rel="icon" href="img/url0.ico">
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <header class="sticky">
        <nav class="navbar">
            <div class="navbar-container container">
                <input type="checkbox" name="" id="">
                <div class="hamburger-lines">
                    <span class="line line1"></span>
                    <span class="line line2"></span>
                    <span class="line line3"></span>
                </div>
                <ul class="menu-items">
                    <li><button class="btn-add-event--register--nav"><a href="index.html">Accueil</a></button></li>
                    <li><input type="checkbox" id="athena-toggle">
                        <button class="btn-add-event--register--nav"><a href="#">Athena</a></button>
                        <ul class="submenu">
                            <li><a href="athenaGold.html">Gold</a></li>
                            <li><a href="athenaSilver.html">Argent</a></li>
                            <li><a href="athenaBronze.html">Bronze</a></li>
                        </ul>
                    </li>
                    <li>
                        <input type="checkbox" id="athena-toggle">
                        <button class="btn-add-event--register--nav"><a href="#">Poseidon</a></button>
                        <ul class="submenu">
                            <li><a href="generauxPoseidon.html">Marinas</a></li>
                        </ul>
                    </li>
                    <li>
                        <input type="checkbox" id="athena-toggle">
                        <button class="btn-add-event--register--nav"><a href="#">Hades</a></button>
                        <ul class="submenu">
                            <li><a href="hadesJuges.html">Juges</a></li>
                            <li><a href="hadesSpectres.html">Spectres</a></li>
                        </ul>
                    </li>
                    <li><button class="btn-add-event--register--nav"><a
                                href="calendrier/calendar.html">Calendrier</a></button>
                    </li>
                    <li><button class="btn-add-event--register--nav"><a href="carousel/carousel.html">Le
                                jeu</a></button></li>
                    <li><button class="btn-add-event--register--nav"><a href="login.html">Connexion</a></button></li>
                </ul>
            </div>
        </nav>
    </header>
    <section>
        <article>
            <div class="texte-position textebackground">
                <h1>Bienvenue sur Saint Seiya Online RôlePlay / PVP<?php echo htmlspecialchars($Login); ?> !</h1>
                <p>Vous allez être redirigé vers la page d'accueil...</p>
                <script>
                    setTimeout(function () {
                        window.location.href = 'index.php';
                    }, 10000);
                </script>
            </div>
        </article>
    </section>
</body>

</html>