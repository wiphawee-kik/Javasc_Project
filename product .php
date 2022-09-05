<!DOCTYPE html>
<html>
    <head>
        <h1>Parfum_Product</h1>
    </head>
    <body>
        
        <?php
           $Myproduct = [
            [
            "id" => 01, "name"=> "DIOR Sauvage Eau De Parfum", "price"=> 5300,
            "img"=> "https://cf.shopee.co.th/file/e3ce4055a64b0fe87e059f52553d9ca8"
            ],
           [
            "id"=> 02, "name"=> "DIOR Miss Dior Eau de Parfum Spray", "price"=> 5100,
            "img"=> "https://cdn.shopify.com/s/files/1/0463/7432/2326/products/Y0996347_C099600764_E01_GHC_1024x.jpg?v=1659289117"
           ],
           [
            "id"=> 03, "name"=> "LANVIN Eclat D'Arpege Edp", "price"=> 3950,
            "img"=> "https://s2.konvy.com/static/team/2018/0606/15282593573708.jpg"
           ],
           [
            "id"=> 04, "name"=> "CHANEL BLEU DE CHANEL", "price"=> 5950,
            "img"=> "http://p-th.ipricegroup.com/uploaded_c1ec23ef88ac74293a0a22f9493dc096.jpg"
           ],
           [
            "id"=> 05, "name"=> "GIORGIO ARMANI Si Passione EDP", "price"=> 3450,
            "img"=> "https://backend.central.co.th/media/catalog/product/c/d/cds29086153-1_1.jpg"
           ],
           [
            "id"=> 06, "name"=> "VERSACE Dylan Blue Eau De Toilette", "price"=> 2400,
            "img"=> "https://s2.konvy.com/static/team/2020/0114/15789770116393.jpg.webp"
           ],
           [
            "id"=> 07, "name"=> "VERSACE Eros Parfum ", "price"=> 5700,
            "img"=> "https://img.fruugo.com/product/7/19/148090197_max.jpg"
           ],
           [
            "id"=> 8, "name"=> "VERSACE Parfum ", "price"=> 4500,
            "img"=> "https://backend.central.co.th/media/catalog/product/c/d/cds17224567_1.jpg?impolicy=resize&width=400"
           ],
           [
            "id"=> 9, "name"=> "YVES SAINT LAURENT Mon Paris EDT", "price"=> 1290,
            "img"=> "https://img10.jd.co.th/n0/jfs/t19/169/1771181175/104864/95ba6c78/5dd3d897Nc12a5037.jpg!q70.jpg"
           ],
           [
            "id"=> 10, "name"=> "COACH Eau De Toilette'  ", "price"=> 4300,
            "img"=> "https://th-live-01.slatic.net/p/80cc4eddd84a64e9f8f2c4d6c8386b84.jpg"
           ],
        ];
        ?>

        <table width=1000, border=2><tr align=center bgcolor=#FF4500 >
                <th>id</th>
                <th>name</th>
                <th>price</th>
                <th>img</th>
                </tr>

        <?php foreach($Myproduct as $value){
             $r = rand(0,256);
             $g = rand(0,256);
             $b = rand(0,256);
             $Style = " style='color:rgb($r,$g,$b)' ";
            ?>
            <tr align=center bgcolor=#FFCCFF >  
                <td <?=$Style?>><?=$value['id']?></td>
                <td <?=$Style?>><?=$value['name']?></td>
                <td <?=$Style?>><?=$value['price']?></td>
                <td <?=$Style?>><img width=500 height=400 src = <?=$value['img']?> ></td>
                </tr>
        <?php } ?>

        
    </body>
    
</html> 