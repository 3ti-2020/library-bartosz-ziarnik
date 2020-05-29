<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title></title>
</head>
<body>

    <div class="container">
        <div class="a">aa</div>
        <div class="b">
          <?php
           $conn = new mysqli("localhost", "root", "", "library", "3308");
           $result1 = $conn->query("SELECT id_krzyz, autor, tytul FROM krzyz, autorzy, tytuly WHERE krzyz.id_autor=autorzy.id_autor AND krzyz.id_tytul=tytuly.id_tytul");
            
           echo("<table class='tabelka' border=1");
           echo("<tr>
           <th>ID Książki</th>
           <th>Autor</th>
           <th>Tytuł</th>
           <th>Usuwanie</th>
           </tr>");

           while($row=$result1->fetch_assoc() ){
               echo("<tr>");
               echo("<td>".$row['id_krzyz']."</td>");
               echo("<td>".$row['autor']."</td>");
               echo("<td>".$row['tytul']."</td>");
               echo("<td>
               <form action='delete.php' method='post'>
                   <input type='hidden' name='id' value='".$row['id_krzyz']."'>
                   <input type='submit' value='x'>
               </form>
                      </td>");
               echo("</tr>");
           }
          ?>
        </div>
           <div class="c">
          
                   <h3>Autor</h3>
                   <form action="insert1.php" method="post">
                       <input type="text" name="autor" >
                       <input type="submit" value="Zapisz">
                   </form>
                   <h3>Tytuł</h3>
                   <form action="insert2.php" method="post" >
                       <input type="text" name="tytul" >
                       <input type="submit" value="Zapisz">   
                       </form>
                  <?php
                  $conn = new mysqli("localhost", "root", "", "library", "3308");
                    $result2 = $conn->query("SELECT * FROM autorzy");

                    echo("<form action='insert3.php' method='POST'  >");
                    echo("<select name='auts'>");
                    while($row=$result2->fetch_assoc() ){
                    echo("<option value='".$row['id_autor']."'>".$row['autor']."</option>");
                    }
                    echo("</select>");

                    $result3 = $conn->query("SELECT * FROM tytuly");

                    echo("<select name='tyts'>");
                    while($row=$result3->fetch_assoc() ){
                    echo("<option value='".$row['id_tytul']."'>".$row['tytul']."</option>");
                    }           
                    echo("</select>");

                    echo("<input type='submit' value='Zapisz'>");
                    echo("</form>");
                  ?>
           </div>
            
         
    </div>
    
</body>
</html>