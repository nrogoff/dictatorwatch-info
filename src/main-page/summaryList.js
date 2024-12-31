import React, { useEffect, useState, useMemo } from "react";

const SummaryList = () => {
  // Create a state variable to store the dictators
  const [allDictators, setAllDictators] = useState([]);

  // Create a state variable to store the search term
  const [searchTerm, setSearchTerm] = useState("");

  // Fetch the dictators from the file when the component mounts
  useEffect(() => {
    const fetchDictators = async () => {
      const response = await fetch("/dictators.json");
      const dictators = await response.json();
      // Store the dictators in the state variable
      setAllDictators(dictators);
    };
    fetchDictators();
  }, []);

  // Use useMemo to filter the dictators based on the search term
  const filteredDictators = useMemo(() => {
    return allDictators.filter((dictator) =>
      dictator.name.toLowerCase().includes(searchTerm.toLowerCase())
    );
  }, [allDictators, searchTerm]);

  return (
    <div>
      <input
        type="text"
        placeholder="Search dictators"
        value={searchTerm}
        onChange={(e) => setSearchTerm(e.target.value)}
      />
      <table>
        <thead>
          <tr>
            <th>Portrait</th>
            <th>Name</th>
            <th>Country</th>
            <th>Years in Power</th>
            <th>Party</th>
            <th>Progress to full autocracy</th>
            <th>Next Step</th>
          </tr>
        </thead>
        <tbody>
          {filteredDictators.map((dictator) => (
            <tr key={dictator.id}>
              <td>
                <img src={`/images/profile/${dictator.id}.jpg`} alt="Portrait of a dictator" className="img-fluid rounded portraitImage" />
              </td>
              <td>{dictator.name}</td>
              <td>{dictator.country}</td>
              <td>{dictator.yearsInPower}</td>
              <td>{dictator.party}</td>
              <td>{dictator.percProgFullAuto}</td>
              <td>{dictator.nextStep}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default SummaryList;
