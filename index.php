<html>
    <head>
        <meta charset="utf-8">
        <title>Memy</title>
    </head>
    <link rel="stylesheet" href="styl4.css">
    
        <?php
        $con = new mysqli("127.0.0.1", "root", "", "memes");
        $page = 1;
        $limit = 10;
        $offset = ($page * $limit) -$limit;
        $q="SELECT id, file FROM memesw offset $offset limit $limit";
            
            ?>
    <body>
        <div class="menu">
            <h2>MENU</h2>
        </div>
        <div class="obok"></div>
        
        <?php
        if ($wynik=$con->query($q)) {
        while ($row-$wynik->fetch_array()) {
            echo '        
        <div class="przerwa">
            <p class="data">DATA</p>
            <h3>Tytuł:</h3>
        </div>
        <div class="mem">
            <img src="Featured-Dying-Light-2-how-to-get-honey.jpg" width="100%" height="100%">
        </div>
        '
        }    
        } else {
            echo $con->errno . "" . $con->error;
        }
        ?>
        <div class="przerwa">
            <p class="data">DATA</p>
            <h3>Tytuł:</h3>
        </div>
        <div class="mem">
            <img src="Featured-Dying-Light-2-how-to-get-honey.jpg" width="100%" height="100%">
        </div>
            <br>
            <br>
        <div class="koncowa">
            <button type="button" href="memy2.html">1</button>
            <a href="memy2.html"><button type="button">2</button></a>
            <button type="button" href="memy2.html">3</button>
            <button type="button" href="memy2.html">4</button>
        </div>
        
        <div class="obok"></div>
    </body>

</html>