

<?php

    // configuration
    require("../includes/config.php"); 

    // TODO
    $rows = query("SELECT symbol, shares FROM portfolio WHERE id = ?", $_SESSION["id"]);
    
    // prepare empty array
    $positions = [];
    
    // run through stocks
    foreach($rows as $row)
    {
       
        $stock = lookup($row["symbol"]);
        if ($stock !== false)
        {
            $positions[] = [
                "name" => $stock["name"],
                "price" => $stock["price"],
                "shares" => $row["shares"],
                "symbol" => $row["symbol"]
            ];
            
        }
    }
    
    // user account
    $account = query("SELECT cash FROM users WHERE id = ?", $_SESSION["id"]);
    $cash = $account[0];

 
    // pass information to portfolio page
   render("portfolio.php", ["cash" =>$cash, "positions" => $positions]);
   
 

?>
