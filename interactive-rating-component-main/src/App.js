import React, { useState } from "react";

// Css
import "./styles/vendors/tailwind-output.css";

// Components
import Card from "./components/card.component";
import CardResult from "./components/cardResult.component";

const maxValue = 5;

export default function App() {
  const [finalValue, setFinalValue] = useState(-1);

  console.log(`[App] Current Value: ${finalValue}`);

  if (finalValue !== -1) {
    return (
      <div className="flex justify-center items-center h-screen font-Overpass bg-veryDarkBlue">
        <CardResult value={finalValue} maxVal={maxValue} />
      </div>
    );
  }

  return (
    <div className="flex justify-center items-center h-screen font-Overpass bg-veryDarkBlue">
      <Card setState={setFinalValue} />
    </div>
  );
}
