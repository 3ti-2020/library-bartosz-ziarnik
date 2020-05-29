<?php
         $conn = new mysqli("localhost", "root", "", "library", "3308");
         $sql = "DELETE FROM `autorzy` WHERE id_autor=".$_POST['id_autor']." "; 
         mysqli_query($conn, $sql);
         header("Location:index.php");
?>