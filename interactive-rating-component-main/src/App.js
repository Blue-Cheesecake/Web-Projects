import React, { useState } from "react";

// Css
import "./styles/vendors/tailwind-output.css";

// Components
import Card from "./components/card.component";
import CardResult from "./components/cardResult.component";

export default function App() {
  const [currentValue, setCurrentValue] = useState(-1);

  if (currentValue !== -1) {
    return (
      <div className="flex justify-center items-center h-screen font-Overpass bg-veryDarkBlue">
        <CardResult value={currentValue} />
      </div>
    );
  }

  return (
    <div className="flex justify-center items-center h-screen font-Overpass bg-veryDarkBlue">
      <Card state={setCurrentValue} />
    </div>
  );
}
