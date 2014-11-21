<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("qoute_form.php", ["title" => "Register"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // TODO
        
        // if nothing is submitted
        if(empty($_POST['symbol']))
        {
            apologize("Please enter a stock symbol");
        }
        
        // convert all applicable characters chars to html entities
        $symbol = htmlentities($_POST['symbol']); 
        
        // search yahoo stocks
        $stock = lookup($symbol);
        
        // invalid stock symbol
        if ($stock == [])
        {
            apologize("invalid stock symbol"); 
        }
        
        // pass this data to this page
        render("qoute_display.php", $stock); 
    }

?>
