import React, { useState } from 'react';
import { Link } from "react-router-dom";
const Product=()=>{
    var bill= 0;
    const myInputRef= React.createRef();
    const [listBlinkshop, setListBlinkshop] = useState({
        Blink_list:[
            
        ]
    });
    const [productState,setProductState]=useState({
    product_list:[
        {   
            id:1,
            name: "YVES SAINT LAURENT",
            price: 4500,
            detail:"น้ำหอมสำหรับคุณผู้หญิง Libre ขนาด 50 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds23596986-1.jpg"
        },
        {   
            id:2,
            name: "DIOR",
            price: 3150,
            detail:"น้ำหอมผู้ชาย Sauvage Eau de Toilette 60 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds10163030.jpg"
        },
        {   
            id:3,
            name: "DIOR",
            price: 5130,
            detail:"Miss Dior Blooming Bouquet Eau de toilette 100 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds95140735.jpg"
        },
        {   
            id:4,
            name: "JO MALONE LONDON",
            price: 3600,
            detail:"English Pear & Freesia Cologne 50 mL.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds21208010.jpg"
        },
        {   
            id:5,
            name: "TOM FORD BEAUTY",
            price: 10000,
            detail:"Soleil Neige",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds22809643-1.jpg"
        },
        {   
            id:6,
            name: "CALVIN KLEIN",
            price: 2736,
            detail:"น้ำหอม CK BE EDT 100 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds14546563.jpg"
        },
        {   
            id:7,
            name: "CALVIN KLEIN",
            price: 2736,
            detail:"นำหอม CK One Eau De Toilette 100 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds14546587.jpg"
        },
        {   
            id:8,
            name: "YVES SAINT LAURENT",
            price: 4770,
            detail:"น้ำหอมสำหรับคุณผู้ชาย Y EDP ขนาด 100 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds18547818-1.jpg"
        },
        {   
            id:9,
            name: "GIORGIO ARMANI",
            price: 5610,
            detail:"SI PASSIONE EDP V100ML",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds15818355.jpg"
        },
        {   
            id:10,
            name: "YVES SAINT LAURENT",
            price: 5850,
            detail:"น้ำหอมสำหรับคุณผู้หญิง Mon Paris EDP ขนาด 90 มล.",
            image:"https://backend.central.co.th/media/catalog/product/c/d/cds12048946-1.jpg"
        },
        ]
    });
    const addProduct =(item)=>{
        console.log("come function add")
        const Blink_list=[...listBlinkshop.Blink_list];
        console.log(Blink_list)
        Blink_list.push(item);
        setListBlinkshop({
            Blink_list:Blink_list
       });
        

    }

    const onDeleteallProduct=()=>{
        setListBlinkshop({
            Blink_list:[]
        });
    }

    const onDeleteProduct=(deleteKey)=>{
        const Blink_list=[...listBlinkshop.Blink_list];
        console.log("Delete: ",Blink_list)
        const deleteIndex = Blink_list.findIndex((item)=>{
            return item.id===deleteKey;
        });
        Blink_list.splice(deleteIndex,1);
        setListBlinkshop({
            Blink_list:Blink_list
        });
    }

   
    const onUpdateProduct=(updateKey,data)=>{
        console.log(data);
        const product_list=[...productState.product_list];
        const updateIndex = product_list.findIndex((item)=>{
            return item.id===updateKey;
        });
        product_list[updateIndex]=data;
        setProductState({
             product_list:product_list
        });
    }
     const onOkClick=(item)=>{
            const updatedata={
                id: item.id,
                name: myInputRef.current.value,
                price: item.price
            };
            console.log(myInputRef.current.value);
            onUpdateProduct(item.id,updatedata);
    }


    const show_product = productState.product_list.map((item)=>{
        return (<tr key={item.id}><td>{item.id}</td><td><img src={item.image}/></td><td><Link state={item} to="/Detail">{item.name}</Link></td><td>{item.price}</td><td>
            <button onClick={addProduct.bind(this, item)}>ลงตะกร้า</button></td>
            </tr>)
    })

    const show_blink = listBlinkshop.Blink_list.map((item)=>{
        bill += item.price
        return (<tr key={item.id}><td>{item.id}</td><td><img src={item.image}/></td><td>{item.name}</td><td>{item.price}</td><td>
            <button onClick={onDeleteProduct.bind(this, item)}>ลบ</button></td>
            
            </tr>)
    })

    
    return (
                <div>

                    <table border='1'><thead><tr><td>id</td><td>Image</td><td>name</td><td>price</td><td></td></tr></thead><tbody>{show_product}</tbody></table>
    
                <h1>ตะกร้าสินค้า</h1>
                <table border='1'><thead><tr><td>id</td><td>Image</td><td>name</td><td>price</td><td></td></tr></thead><tbody>{show_blink}</tbody></table>
                <button onClick={onDeleteallProduct.bind(this)}>ลบทั้งหมด</button>
                
                <h1>เงินรวม</h1>
                {bill}

                
            </div>);
}
export default Product;