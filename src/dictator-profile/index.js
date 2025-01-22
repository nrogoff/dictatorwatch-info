import React from "react";
import { useLocation } from "react-router-dom";
import GaugeComponent from "react-gauge-component";
import "./dictator-profile.css";

const DictatorProfile = () => {
  const location = useLocation();
  const { dictator } = location.state || {};

  if (!dictator) {
    return <h1>Dictator not found</h1>;
  }

  return (
    <div className="card shadow">
      <div className="card-body">
        <div className="row align-items-center">
          <div className="col-md-3">
            <img
              src={`/images/profile/${dictator.id}.jpg`}
              alt={dictator.name}
              className="rounded bioImage shadow"
            />
          </div>
          <h1 className="display-2 card-title col">{dictator.name}</h1>
          <div className="col-md-3">
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
              value={dictator.percentageOfProgressToFullAutocracy}
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
          </div>
        </div>
        <p className="card-text">{dictator.shortBiography}</p>
      </div>
      <ul className="list-group list-group-flush">
        <li className="list-group-item">
          <strong>Birth Date:</strong> {dictator.dateOfBirth}
        </li>
        <li className="list-group-item">
          <strong>Country of Birth:</strong> {dictator.countryOfBirth}
        </li>
        <li className="list-group-item">
          <strong>Education:</strong> {dictator.education}
        </li>
        <li className="list-group-item">
          <strong>Highest Academic Qualification:</strong>{" "}
          {dictator.highestAcademicQualification}
        </li>
        <li className="list-group-item">
          <strong>Religion:</strong> {dictator.religion}
        </li>
        <li className="list-group-item">
          <strong>Est. Net Worth:</strong> {dictator.estimatedNetWorth}
        </li>
        <li className="list-group-item">
          <strong>Official Annual Salary:</strong>{" "}
          {dictator.officialAnnualSalary}
        </li>
        <li className="list-group-item">
          <strong>Known Hobbies:</strong> {dictator.knownHobbies.join(", ")}
        </li>
        <li className="list-group-item">
          <strong>Current Status:</strong> {dictator.currentStatus}
        </li>
        <li className="list-group-item">
          <strong>Political Party:</strong> {dictator.politicalParty}
        </li>        
        <li className="list-group-item">
          <strong>Country of rule:</strong> {dictator.country}
        </li>
        <li className="list-group-item">
          <strong>Key Policies:</strong> {dictator.keyPolicies.join(", ")}
        </li>        
        <li className="list-group-item">
          <strong>Years in Power:</strong>{" "}
          {(
            (new Date() - new Date(dictator.dateLastTakenPower)) /
            (1000 * 60 * 60 * 24 * 365.25)
          ).toFixed(1)}
        </li>
        <li className="list-group-item">
          <strong>Notable Events:</strong> {dictator.notableEvents.join(", ")}
        </li>

        <li className="list-group-item">
          <strong>Progress to Full Autocracy:</strong>{" "}
          {dictator.percentageOfProgressToFullAutocracy}% complete
        </li>
        <li className="list-group-item">
          <strong>Next Steps:</strong>{" "}
          {dictator.next2StepsToTakeToFullAutocracy.join(", ")}
        </li>
        <li className="list-group-item">
          <strong>Type of Government:</strong> {dictator.typeOfGovernment}
        </li>
        <li className="list-group-item">
          <strong>Succession Plan:</strong> {dictator.successionPlan}
        </li>
      </ul>
    </div>
  );
};

export default DictatorProfile;
