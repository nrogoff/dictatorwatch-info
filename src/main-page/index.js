// import React, { useEffect, useState, useMemo } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import "./main-page.css";
import Header from "./header";
import SummaryList from "./summaryList";

function App() {

  return (
    <Router>
      <div className="container">
        <Header subtitle="Coming Soon - We keep an eye on their progress, so you don't have to ;-)" />
        <Routes>
          <Route path="/" element={<SummaryList />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
