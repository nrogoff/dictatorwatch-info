import React from "react";
import { useLocation } from "react-router-dom";
import GaugeComponent from "react-gauge-component";

function DictatorProgress() {
  const location = useLocation();
  const { dictator } = location.state || {};

  if (!dictator) {
    return <h1>Dictator not found</h1>;
  }

  return <div className="card shadow"></div>;
}

export default DictatorProgress;
