import { Link } from "react-router-dom";
import GaugeComponent from "react-gauge-component";
import "./main-page.css";

function SummaryListRow({ dictator }) {
  return (
    <tr key={dictator.id} className="shadow">
      <td>
        <Link
          to={`/dictatorprofile/${dictator.sanitizedName}`}
          state={{ dictator }}
        >
          <img
            src={`/images/profile/${dictator.id}.jpg`}
            alt="Portrait of a dictator"
            className="rounded portraitImage"
          />
        </Link>
      </td>
      <td>
        <Link
          to={`/dictatorprofile/${dictator.sanitizedName}`}
          state={{ dictator }}
          className="nameLink"
        >
          <h4>{dictator.name}</h4>
        </Link>
      </td>
      <td>{dictator.country}</td>
      <td className="text-center">
        {(
          (new Date() - new Date(dictator.dateLastTakenPower)) /
          (1000 * 60 * 60 * 24 * 365.25)
        ).toFixed(1)}
      </td>
      <td>{dictator.party}</td>
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
      </td>
      <td>{dictator.next2StepsToTakeToFullAutocracy}</td>
    </tr>
  );
}

export default SummaryListRow;
