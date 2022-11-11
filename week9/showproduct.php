<!DOCTYPE html>
<html>
<head>
    <title>PHP connect Mysql</title>
    <style>
        body{
            display:flex;
            position: relative;
            flex-direction:column;
            background-color: white;
            justify-content:center;
            align-items:center;
        }
        td,tr,th{
            border: 3px double black;
            border-radius:10px;
            position:relative;
            max-width:auto;
        }
        table {
            border: 8px double black;
            border-radius:10px;
            max-width: auto; 
        }
        div{
            margin: 2rem;

        }
        td,tr{
            margin: 7px 10px;
            padding: 0.7rem 0.5rem;
            
            
        }
        th{
            background:rgb(242 144 137);
            color:black;
            padding: 0.7rem 0.5rem;
            font:small-caps 800 22px Acme;
        }
        td{
            background:rgb(255 255 255);
            color:black;
            padding: 0.7rem 0.5rem;
            font: 600 16px Acme;
        }
        a{
            background:rgb(255 255 255);
            border: 1px solid #ddd;
            padding:0.1rem 0.2rem;
            margin: 0.1rem;
            font:small-caps 200 16px Acme;
            color:black;
        }
        h1{
            margin:2.8% 4.5%;
            color:#fff;
            font: 800 20px Acme;
            color:black;
        }
    </style>
</head>
<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "12345678";
$dbname = "product";
$per_page = 10;
$page = isset($_GET["page"])? $_GET["page"] : 0;

if (isset($_GET["page"]))
    $start_page = $_GET["page"] * $per_page;
else
    $start_page = 0;

$con = mysqli_connect($servername, $username, $password, $dbname);
if (!$con)
    die("Connnect mysql database fail!!" . mysqli_connect_error());
$sql = "SELECT ID,Name,Price,Description FROM product";
$result = mysqli_query($con, $sql);
$numrow = mysqli_num_rows($result);

for ($i = 0; $i < ceil($numrow / $per_page); $i++)
    $sql = "SELECT ID,Name,Price,Description,Image FROM product LIMIT $start_page,$per_page";
$result = mysqli_query($con, $sql);
if (mysqli_num_rows($result) > 0) {

    echo "<table border=2px double><tr><th>ID</th><th>Name</th><th>Description</th><th>Price</th><th></th></tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        $url_id = $row["Image"];
        echo "<tr><td>" . $row["ID"] . "</td><td>" . $row["Name"] . "</td><td>" . "<img src='$url_id' style='width:150px;height:150px;'border=2px blue''><br>";
        echo $row["Description"] . "</td><td>" . $row["Price"] . "</td>";
        echo "<td><a href = 'addproduct.php?ID=" . $row['ID'] . "'>ใส่ตะกร้า</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

echo "<div>";
for ($i = 0; $i < ceil($numrow / $per_page); $i++) {
    if ($i == 0) {
        if ($page == 0) {
            echo "<a href=" . $_SERVER['PHP_SELF'] . "?page=" . (0) . " > < </a>";
        } else {
            echo "<a href=" . $_SERVER['PHP_SELF'] . "?page=" . ($page - 1) . " > < </a>";
        }

    }

    echo "<a href=" . $_SERVER['PHP_SELF'] . "?page=" . ($i) . " >" . ($i + 1) . "</a>";
    if ($i == 5) {
        if ($page == 5) {
            echo "<a href=" . $_SERVER['PHP_SELF'] . "?page=" . (5) . " > > </a>";
        } else {
            echo "<a href=" . $_SERVER['PHP_SELF'] . "?page=" . ($page + 1) . " > > </a>";
        }

    }
}

if (isset($_SESSION["cart"])) {
    $total = 0;
    echo "<h1>ตะกร้าสินค้า</h1>";
    echo "<table border=2px double><tr><th>ลำดับ</th><th>ID</th><th>Name</th><th>Price</th><th>Delete</th></tr>";
    for ($i = 0; $i < count($_SESSION["cart"]); $i++) {
        $item = $_SESSION["cart"][$i];
        echo "<tr><td>" . ($i + 1) . "</td>";
        echo "<td>" . $item['ID'] . "</td>";
        echo "<td>" . $item['Name'] . "</td>";
        echo "<td>" . $item['Price'] . "</td>";
        echo "<td><a href='delcart.php?i=" . $i . "'>";
        echo "<font color='black'>Delete</font></a></td></tr>";
        $total += $item['Price'];
    }
    echo "</table>";
    echo "<h1>ราคาสินค้า $total บาท</h1>";
    echo "<h2><a href='delall.php'>ลบทั้งหมด</a></h2>";
    echo "<h2><a href='checkout.php'>สั่งซื้อ</a></h2>";
}
mysqli_close($con);
?>