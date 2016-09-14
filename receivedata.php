<?php
/**
 * Created by PhpStorm.
 * User: Vedang
 * Date: 9/13/16
 * Time: 4:31 PM
 */

$major = $_POST['major'];
$name =  $_POST['name'];
//$name = isset($_POST['name']) ? $_POST['name'] : '';
$subject =  $_POST['subject'];

// Create connection
$connection = mysqli_connect("localhost", "root", "", "cmpe226", "3306");


//Check connection
if (!$connection) {
    die("Failed to connect " . mysqli_connect_error());
}

//update query
$update_sql = "UPDATE assignment1 SET subjects='".$subject."', major='".$major."' WHERE name='".$name."'";

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
    for($i=0;$i<10;$i++)
    {
        echo  $row[$i]."<br>";
    }
    echo "<br>";
}

//generate HTML after select query
$query = "SELECT * FROM assignment1";
print "<table border='1'>\n";
                
                // Query the database.
                $data = $con->query($query);
                $data->setFetchMode(PDO::FETCH_ASSOC);
                
                // Construct the HTML table row by row.
                // Start with a header row.
                $doHeader = true;
                foreach ($data as $row) {
                                    
                    // The header row before the first data row.
                    if ($doHeader) {
                        print "        <tr>\n";
                        foreach ($row as $name => $value) {
                            print "            <th>$name</th>\n";
                        }
                        print "        </tr>\n";
                        
                        $doHeader = false;
                    }
                    
                    // Data row.
                    print "            <tr>\n";
                    foreach ($row as $name => $value) {
                        print "                <td>$value</td>\n";
                    }
                    print "            </tr>\n";
                }
                
                print "        </table>\n";

mysqli_close($connection);
?>