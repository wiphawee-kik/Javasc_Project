<?php
session_start();
$i = $_GET['i'];
if(isset($_SESSION["cart"])){
    array_splice($_SESSION["cart"],$i,1);
}   
?>
<script>
    window.alert("นำสินค้าออกจากตะกร้าเรียบร้อยแล้ว")
    window.location.replace("showproduct.php");
</script>
