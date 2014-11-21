<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("register_form.php", ["title" => "Register"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // TODO
        if (empty($_POST['username']))
        {
            apologize("You must provide your username."); 
        }
        else if (empty($_POST['password']))
        {
            apologize("You must provide your password."); 
        }
        else if (empty($_POST['confirmation']))
        {
            apologize("You must provide your password confirmation."); 
        }
        else if ($_POST['password'] != $_POST['confirmation'])
        {
            apologize("Your password did not match"); 
        }
        
        $username = htmlentities($_POST['username']);
        $password = htmlentities($_POST['password']);
        $confirm  = htmlentities($_POST['confirmation']);
        
        // query database for user
        $rows = query("SELECT * FROM users WHERE username = ?", "{$username}");
        
        // if user already exists
        if (count($rows) == 1)
        {
            apologize("This username appears to be taken");
        }
        else
        {
            // insert user into database
            query("INSERT INTO users (username, hash, cash) VALUES(?, ?, 5000.00)", "{$username}", crypt("{$password}"));
            
            // user session stored
            $_SESSION["id"] = $rows[0]["id"];
            
            // redirect user to index page
            redirect("/");
        }
       
    }
    

?>
