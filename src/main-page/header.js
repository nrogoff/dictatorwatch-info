import React from "react";
import logo from "./logo192.png";

const Header = ({ subtitle }) => (
  <header className="row">
    <div className="col-md-7">
      <img src={logo} className="logo" alt="logo" />
    </div>
    <div className="col-md-7 title">
      <h1 className="display-1">Dictator Watch</h1>
    </div>
    <div className="col-md-7 mt-5 subtitle">{subtitle}</div>
  </header>
);

export default Header;
