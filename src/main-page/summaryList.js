import React, { useEffect, useState, useMemo } from "react";
import SummaryListRow from "./summary-list-row";
import "./main-page.css";

const SummaryList = () => {
  // Create a state variable to store the dictators
  const [allDictators, setAllDictators] = useState([]);

  // Create a state variable to store the search term
  const [searchTerm, setSearchTerm] = useState("");

  // Fetch the dictators from the file when the component mounts
  useEffect(() => {
    const fetchDictators = async () => {
      const response = await fetch("/dictatorsProfiles.json");
      const dictators = await response.json();
      // Store the dictators in the state variable
      const sortedDictators = dictators.sort(
        (a, b) =>
          b.percentageOfProgressToFullAutocracy -
          a.percentageOfProgressToFullAutocracy
      );
      setAllDictators(sortedDictators);
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
      <table className="table align-middle">
        <thead>
          <tr>
            <th scope="col"></th>
            <th scope="col">Name</th>
            <th scope="col">Country</th>
            <th scope="col" className="text-center">
              Years in Power
            </th>
            <th scope="col">Party</th>
            <th scope="col" className="text-center">
              Progress to<br/>full autocracy
            </th>
            <th scope="col">Next Step</th>
          </tr>
        </thead>
        <tbody className="table-group-divider">
          {filteredDictators.map((dictator) => (
            <SummaryListRow key={dictator.id} dictator={dictator} />
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default SummaryList;
