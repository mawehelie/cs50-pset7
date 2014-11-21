
<div class="table-responsive">
    <table class="table">

        <thead>
            <tr class="active">
                <th>TYPE</th>
                <th>DATE</th>
                <th>SYMBOL</th>
                <th>SHARES</th>
                <th>COST</th>
            </tr>
        </thead>

        <tbody>
    
        <?php foreach ($positions as $position): 
        
        ?>
        
            <tr>    
            <td><?= $position["transaction"] ?></td>
            <td><?= $position["time"] ?></td>
            <td><?= $position["symbol"] ?></td>
            <td><?= $position["shares"] ?></td>
            <td><?= "$" . number_format($position["price"], 2)?></td>
            </tr>

        <?php endforeach ?>
        
    </tbody>
</table>
</div>

