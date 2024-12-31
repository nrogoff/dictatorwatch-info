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
      <ul>
        {filteredDictators.map((dictator) => (
          <li key={dictator.id}>{dictator.name}</li>
        ))}
      </ul>
    </div>
  );
};

export default SummaryList;
