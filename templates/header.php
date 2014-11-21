<!DOCTYPE html>

<html>

    <head>

        <link href="/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="/css/bootstrap-theme.min.css" rel="stylesheet"/>
        <link href="/css/styles.css" rel="stylesheet"/>

        <?php if (isset($title)): ?>
            <title>C$50 Finance: <?= htmlspecialchars($title) ?></title>
        <?php else: ?>
            <title>C$50 Finance</title>
        <?php endif ?>

        <script src="/js/jquery-1.11.1.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/scripts.js"></script>

    </head>

    <body>

        <div class="container">
        
            <div>
                <ul class="nav nav-pills" role="tablist">
                    <li><a href="qoute.php">Quote</a></li>
                    <li><a href="sell.php">Sell</a></li>
                    <li><a href="index.php">Profile</a></li>
                    <li><a href="buy.php">Buy</a></li>  
                     <li><a href="deposit.php">Deposit</a></li>   
                     <li><a href="history.php">History</a></li>   
                    <li class="active"><a href="logout.php"><strong>Log Out</strong></a></li>
                </ul>
            </div>

           <div class="page-header">
                <h1>C$50 <small>Finance</small></h1>
           </div>

            <div id="middle" class="well-sm">
