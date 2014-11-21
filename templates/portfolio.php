
<table class="table text-center">
    <thead class="text-center">
        <tr>
            <th class="align-left">SYMBOL</th>
            <th>NAME</th>
            <th>SHARE</th>
            <th>COST</th>
            <th>TOTAL</th>
        </tr>
    </thead>

    <tbody>
       
        <?php foreach ($positions as $position):
        
    
         ?>
        
        
        
        <tr>    
            <td class="align-left"><?= $position["symbol"] ?></td>
            <td><?= $position["name"] ?></td>
            <td><?= $position["shares"] ?></td>
            <td><?= "$" . $position["price"] ?></td>
            <td><?= "$" . number_format($position["price"] * $position["shares"], 2)?></td>
        </tr>

        <?php endforeach ?>
    
        
        
        
       
    </tbody>
</table>

<ul class="nav nav-pills" role="tablist">
  <?php extract($cash);?>
  <li role="presentation" class="active"><a href="#">BALANCE <span class="badge"><?= "$". number_format($cash,2) ?></span></a></li>
</ul>

