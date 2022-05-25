import React from "react";

// image
import global_logo from "../images/global_logo.png";

export default function NavBar() {
  return (
    <div className="bg-primary_red flex justify-center items-center py-4">
      <div className="mr-2">
        <img src={global_logo} alt="global logo" className="w-6"></img>
      </div>
      <div>
        <h2 className="text-white text-sm font-medium"> my travel journal</h2>
      </div>
    </div>
  );
}
