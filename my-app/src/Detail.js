import React from "react";
import { useLocation } from 'react-router-dom';
import { Link } from "react-router-dom";
const Detail=()=> {
    const location = useLocation();
    const data = location.state;
    console.log(data);

    const show_blink =((item)=>{
       
        return (<tr key={item.id}><td>{item.id}</td><td><img src={item.image}/></td><td>{item.name}</td><td>{item.price}</td>   
            </tr>)
    })

    return(
        <div>
            <table border='1'><thead><tr><td>id</td><td>Image</td><td>name</td><td>price</td><td></td></tr></thead><tbody>{show_blink(data)}</tbody></table>
            <Link to="/"><button>ย้อนกลับ</button></Link>
        </div>
    );
}

export default Detail;
