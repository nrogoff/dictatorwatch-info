// import React, { useEffect, useState, useMemo } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import "./main-page.css";
import Header from "./header";
import SummaryList from "./summaryList";
import DictatorProfile from "../dictator-profile";
import DictatorProgress from "../dictator-progress";

function App() {

  return (
    <Router>
      <div className="container">
        <Header subtitle="Coming Soon - We keep an eye on their progress, so you don't have to ;-)" />
        <Routes>
          <Route path="/" element={<SummaryList />} />
          <Route
            path="/dictatorprofile/:sanitizedName"
            element={<DictatorProfile />}
          />
          <Route
            path="/dictatorprogress/:sanitizedName"
            element={<DictatorProgress />}
          />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
