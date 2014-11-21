<?php

// configuration
require("../includes/config.php");

// else if user reached page via POST (as by submitting a form via POST)
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    // TODO
    if (empty($_POST['deposit']))
    {
        apologize("Enter amount to deposit"); 
    }
        
        $deposit = htmlentities($_POST['deposit']);
        $id = $_SESSION['id'];  
        // check to see if user enters negative amount
        if($deposit < 0 )
        {
            apologize("Deposit amount must be positive");
        }
        
        // enter deposit into database
        $newDeposit = query("UPDATE users SET cash = cash + ? WHERE id = ?", "{$deposit}", "{$id}"); 
        print "Your deposite was a success"; 
        
        redirect('/');
        
      
}       
else 
{
    
    render("deposit_form.php");
    
    
}
?>
