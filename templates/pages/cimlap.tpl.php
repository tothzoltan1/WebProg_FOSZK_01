<style>
    .kesek-tartalom {
        font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
        background-color: #ffffff;
        color: #343a40;
        line-height: 1.7;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.08);
        max-width: 800px;
        margin: 0 auto;
    }

    .kesek-tartalom h2 {
        text-align: center;
        font-size: 2.5rem;
        margin-top: 0;
        color: #212529;
        text-transform: uppercase;
        letter-spacing: 2px;
        border-bottom: 3px solid #d35400;
        padding-bottom: 15px;
        margin-bottom: 30px;
    }

    .kesek-tartalom h3 {
        color: #212529;
        font-size: 1.5rem;
        margin-top: 35px;
        margin-bottom: 15px;
        display: flex;
        align-items: center;
    }

    .kesek-tartalom h3::before {
        content: '';
        display: inline-block;
        width: 5px;
        height: 24px;
        background-color: #d35400;
        margin-right: 12px;
        border-radius: 3px;
    }

    .kesek-tartalom p {
        font-size: 1.1rem;
        color: #6c757d;
        text-align: justify;
    }

    .kesek-tartalom .hero-image {
        width: 100%;
        height: auto;
        max-height: 400px;
        object-fit: cover;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        margin-bottom: 20px;
    }

    .kesek-tartalom ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .kesek-tartalom ul li {
        background: #f8f9fa;
        margin-bottom: 12px;
        padding: 15px 20px;
        border-radius: 8px;
        border-left: 4px solid #d35400;
        font-size: 1.05rem;
        color: #343a40;
        box-shadow: 0 2px 5px rgba(0,0,0,0.03);
    }

    .kesek-tartalom strong {
        color: #212529;
    }

    .kesek-tartalom .map-wrapper {
        position: relative;
        padding-bottom: 56.25%; /* 16:9 arány */
        height: 0;
        overflow: hidden;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        margin-top: 40px;
    }

    .kesek-tartalom .map-wrapper iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 0;
    }

    /* Két oszlopos videó elrendezés (Flexbox) */
    .kesek-tartalom .video-container {
        display: flex;
        gap: 15px; /* Távolság a két videó között */
        margin-top: 15px;
    }

    .kesek-tartalom .video-column {
        flex: 1; /* Mindkét oszlop egyforma széles */
        position: relative;
    }

    /* YouTube iframe konténer */
    .kesek-tartalom .video-wrapper {
        position: relative;
        padding-bottom: 56.25%; /* 16:9 arány */
        height: 0;
        overflow: hidden;
        border-radius: 8px;
        background-color: #000;
    }

    .kesek-tartalom .video-wrapper iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 0;
    }

    /* Saját helyi videó stílus */
    .kesek-tartalom .local-video {
        width: 100%;
        aspect-ratio: 16 / 9; /* Modern CSS képarány tartás */
        border-radius: 8px;
        object-fit: cover;
        background-color: #000;
        display: block;
    }
    
    /* Videó forrásmegjelölés stílusa */
    .kesek-tartalom .video-source {
        font-size: 0.85rem;
        color: #868e96;
        text-align: right;
        margin-top: 5px;
        font-style: italic;
    }

    /* Kisebb képernyőkön (mobilokon) egymás alá kerülnek a videók */
    @media (max-width: 600px) {
        .kesek-tartalom .video-container {
            flex-direction: column;
        }
    }
</style>

<div class="kesek-tartalom">
    <h2>A Kések Világa</h2>
    
    <img src="./images/kesek.jpg" alt="Illusztráció" class="hero-image">
    
        <p>A kés az emberiség egyik legrégebbi és legfontosabb eszköze. A kőkorszaki pattintott obszidián pengéktől a bronz- és vaskoron át a modern, rozsdamentes acélötvözetekig hatalmas fejlődésen ment keresztül, folyamatosan kísérve és segítve a civilizáció felemelkedését.</p>
    
    <h3>Mire használjuk őket?</h3>
    <p>Funkciójukat tekintve elengedhetetlenek a legkülönfélébb területeken, így az idők során számos specializált változatuk alakult ki:</p>
    <ul>
        <li><strong>Konyha és gasztronómia:</strong> Ételek előkészítése, húsok filézése, precíziós szeletelés és aprítás.</li>
        <li><strong>Természetjárás és túlélés:</strong> Vadászati feladatok, tűzifa előkészítése (batoning), menedéképítés, famunka.</li>
        <li><strong>Mindennapok (EDC):</strong> Csomagbontás, kötélvágás és az apróbb, hirtelen felmerülő vágási feladatok.</li>
        <li>
            <strong>Szakipar:</strong> Orvosi beavatkozások (szikék), fafaragás, bőrözés és mentési munkálatok.
            
            <!-- Videók konténere -->
            <div class="video-container">
                <!-- 1. oszlop: YouTube beágyazás -->
                <div class="video-column">
                    <div class="video-wrapper">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/_ofD54yAmZo?si=ozal478fA5IphTPZ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    </div>
                </div>
                
                <!-- 2. oszlop: Saját mp4 videó és forrás -->
                <div class="video-column">
                    <video class="local-video" controls>
                        <source src="./video/video2.mp4" type="video/mp4">
                        A böngésződ nem támogatja a videó lejátszását.
                    </video>
                    <div class="video-source">Forrás: Gemini AI</div>
                </div>
            </div>
            
        </li>
    </ul>
    
    <h3>Hogyan csoportosítjuk őket?</h3>
    <p>Bár a felhasználási cél alapján is osztályozhatók (pl. taktikai, konyhai, munkakés), szerkezeti kialakításuk alapján alapvetően két nagy kategóriát különböztetünk meg:</p>
    <ul>
        <li><strong>Fix pengés kések:</strong> Masszív, kiemelkedően teherbíró eszközök, amelyeknél a penge és a markolattüske nincs megszakítva. Nincs mozgó alkatrészük, így ideálisak nehéz munkákhoz.</li>
        <li><strong>Összecsukható kések:</strong> A penge a markolatba rejthető, gyakran zárszerkezettel rögzül. Kompakt, könnyen és biztonságosan hordozható zsebkések, kiválóak a mindennapi feladatok ellátására.</li>
    </ul>

    <div class="map-wrapper">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d943.1288431346456!2d21.618490446269846!3d47.5410298747027!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47470de357bb907d%3A0xc05c3d028a3da3c8!2zS8Opc3ZpbMOhZw!5e0!3m2!1shu!2shu!4v1793737628146!5m2!1shu!2shu" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="strict-origin-when-cross-origin"></iframe>
    </div>
</div>