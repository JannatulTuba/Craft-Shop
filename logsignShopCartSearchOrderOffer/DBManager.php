<?php

  function conectionStart()
  {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "craft shop";

    $connection = mysqli_connect($servername, $username, $password, $dbname);

    return $connection;
  }

  function conectionEnd($value)
  {
    mysqli_close($value);
  }


  function fetch($value='')
  {
    $connection = conectionStart();
    $sql = "SELECT * FROM offers WHERE name LIKE '%".$value."%'";
    $result = mysqli_query($connection, $sql);

    if($result) {
      while ($row = mysqlI_fetch_assoc($result)) {

        
        echo " <div class = 'container'><div class='product'>
        <form method='post' action=''>
        
        <input type='hidden' name='code' value=".$row['code']." />
        <div class='image-container'>
        <div class='image'><img src='".$row['image']."' /></div>
        </div>
        <div class='details'>".
        "<div class='name'>" .$row['name']."</div>
        <div class='price'>Price:  $".$row['price']."</div>
           
       <button type='submit' class='buy'>Out of Stock</button></div><br><br>
        </form>
           </div></div>";
      }

    } else {
      echo "Error :".$sql."<br>".mysqli_error($connection);
    }

    conectionEnd($connection);
  }


  if (isset($_GET['search'])) {
    fetch($_GET['search']);
  }

 ?>
