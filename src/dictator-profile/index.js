import "./dictator-profile.css";

const dictatorProfile = ({dictator}) => {
    return ( 
        <div>
            <h1>{dictator.name}</h1>
            <p>{dictator.description}</p>
            <img src={dictator.image} alt={dictator.name} />
        </div>
     );
}
 
export default dictatorProfile;