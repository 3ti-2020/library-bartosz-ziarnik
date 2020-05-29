<?php
    $conn = new mysqli("localhost", "root", "", "library", "3308");
    $sql = "INSERT INTO `tytuly`(`id_tytul`, `tytul`) VALUES (NULL, '".$_POST['tytul']."')";
  
    mysqli_query($conn, $sql);
    mysqli_close($conn);
    header("Location:index.php");
    
?>