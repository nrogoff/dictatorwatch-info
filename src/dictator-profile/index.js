import React from 'react';
import { useParams } from 'react-router-dom';

import "./dictator-profile.css";

const DictatorProfile = ({dictator}) => {
    const { id } = useParams();
     

    return ( 
        <div>
            <h1>{dictator.name}</h1>
            <p>{dictator.description}</p>
            <img src={dictator.image} alt={dictator.name} />
        </div>
     );
}
 
export default DictatorProfile;