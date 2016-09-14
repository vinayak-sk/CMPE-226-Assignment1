<?php
/**
 * Created by PhpStorm.
 * User: Vedang
 * Date: 9/13/16
 * Time: 4:31 PM
 */

$gender = $_POST['gender'];
$name =  $_POST['name'];

// Create connection
$connection = mysqli_connect("localhost", "root", "", "cmpe226", "3306");


//Check connection
if (!$connection) {
    die("Failed to connect " . mysqli_connect_error());
}

//update query
$update_sql = "UPDATE assignment1 SET name='".$name."', gender='".$gender."' WHERE name='".$name."'";

if (mysqli_query($connection, $update_sql)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($connection);
}

//run the store proc
$result = mysqli_query($connection,
    "select * from assignment1");

while($row = mysqli_fetch_row($result))
{
    for($i=0;$i<4;$i++)
    {
        echo  $row[$i]."<br>";
    }
    echo "<br>";
}

mysqli_close($connection);
?>