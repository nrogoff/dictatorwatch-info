import React from "react";
import logo from "./logo192.png";

const Header = ({ subtitle }) => (
  <header>
    <div className="row align-items-center">
      <div className="col col-md-2">
        <img src={logo} className="logo" alt="logo" />
      </div>
      <div className="col col-md-10 title">
        <h1 className="display-1">Dictator Watch</h1>
      </div>
    </div>
    <p className="subtitle">{subtitle}</p>
  </header>
);

export default Header;
