<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "12345678";
$dbname = "product";
$per_page = 10;

$con = mysqli_connect($servername, $username, $password, $dbname);
if (!$con)
    die("Connnect mysql database fail!!" . mysqli_connect_error());

$send_id = $_SESSION['send_id'];
$sql = "SELECT * FROM `orderproduct`,`orderdetail`,`product` WHERE `orderproduct`.ID = `orderdetail`.Order_ID AND `orderdetail`.Product_ID =  `product`.ID AND `orderdetail`.Order_ID=$send_id";
$result = mysqli_query($con, $sql);

if (mysqli_num_rows($result) > 0) {
    
    echo "<table border=2px double><tr><th>order_id</th><th>name</th><th>fname</th><th>lname</th><th>address</th><th>mobile</th><th>price</th></tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr><td>" . $row["order_id"] . "</td><td>" . $row["name"] . "</td><td>" . $row["FName"] . "</td><td>";
        echo $row["Lname"] . "</td><td>" . $row["Address"] . "</td><td>";
        echo $row["Mobile"] . "</td><td>" . $row["price"] . "</td></tr>";
    }
    $total = 0;
    for ($i = 0; $i < count($_SESSION["cart"]); $i++) {
        $item = $_SESSION["cart"][$i];
        $total += $item['Price'];
    }
    echo "<h1>ราคาสินค้าทั้งหมด $total บาท</h1>";
    echo "</table>";
} else {
    echo "0 results";
}

// echo $_SESSION["send_id"];
?>