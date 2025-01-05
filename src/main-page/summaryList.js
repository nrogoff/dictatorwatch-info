import React, { useEffect, useState, useMemo } from "react";
import GaugeComponent from "react-gauge-component";

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
            <tr key={dictator.id} className="shadow">
              <td>
                <img
                  src={`/images/profile/${dictator.id}.jpg`}
                  alt="Portrait of a dictator"
                  className="rounded portraitImage"
                />
              </td>
              <td>
                <h4>{dictator.name}</h4>
              </td>
              <td>{dictator.country}</td>
              <td className="text-center">{dictator.yearsInPower}</td>
              <td>{dictator.party}</td>
              {/* <td>{dictator.percProgFullAuto}</td> */}
              <td>
                <GaugeComponent
                  type="semicircle"
                  arc={{
                    gradient: false,
                    width: 0.2,
                    padding: 0.005,
                    cornerRadius: 1,
                    subArcs: [
                      {
                        limit: 50,
                        color: "#EA4228",
                        showTick: true,
                      },
                      {
                        limit: 75,
                        color: "#F58B19",
                        showTick: true,
                      },
                      {
                        limit: 90,
                        color: "#F5CD19",
                        showTick: true,
                      },
                      {
                        limit: 100,
                        color: "#5BE12C",
                        showTick: true,
                      },
                    ],
                  }}
                  value={dictator.percProgFullAuto}
                  pointer={{ type: "arrow", elastic: true }}
                  labels={{
                    valueLabel: {
                      matchColorWithArc: true,
                    },
                    tickLabels: {
                      type: "outer",
                    },
                  }}
                />
              </td>
              <td>{dictator.nextStep}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default SummaryList;
