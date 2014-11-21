<?php
    // configuration
    require("../includes/config.php"); 
    // pull data out
    $positions = query("SELECT transaction, time, symbol, shares, price FROM history WHERE id = ?", $_SESSION["id"]);
    
 
    
    
    // render portfolio
     render("session.php", ["positions" => $positions]);
    
?>
