

<?php
    $JSON = json_decode(file_get_contents('https://api.genelpara.com/embed/hava-durumu.json'), true);
?>
<ul>
    <li>
        <span>Dolar Kuru</span>
        </br>
        <span>Dolar Alış: <?php echo $JSON['USD']['satis']; ?></span>
        </br>
        <span>Dolar Satış: <?php echo $JSON['USD']['alis']; ?></span>
        </br>
    </li>
    
    <li>
        <span>Euro Kuru</span>
        </br>
        <span>Euro Alış: <?php echo $JSON['EUR']['satis']; ?></span>
        </br>
        <span>Euro Satış: <?php echo $JSON['EUR']['alis']; ?></span>
        </br>
    </li>

    <li>
        <span>Bitcoin Kuru</span>
</br>
        <span>Bitcoin Alış: <?php echo $JSON['BTC']['satis']; ?></span>
        </br>
        <span>Bitcoin Satış: <?php echo $JSON['BTC']['alis']; ?></span>
        </br>
    </li>

    <li>
        <span>Etherium Kuru</span>
</br>
        <span>Etherium Alış: <?php echo $JSON['ETH']['satis']; ?></span>
        </br>
        <span>Etherium Satış: <?php echo $JSON['ETH']['alis']; ?></span>
        </br>
    </li>

</ul>
