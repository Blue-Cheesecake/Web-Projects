import React, { useState } from "react";

// Components
import Header from "../components/header/header.component";
import Unit from "../components/unit/unit.component";

import {
  LengthConverter,
  VolumeConverter,
  MassConverter,
} from "../utilities/converter.utilities";

const HomePage: React.FC = () => {
  const [num, setNum] = useState<number>(0);

  const headTextLength: string = "Length (Meter/Feet)";
  const headTextVolume: string = "Volume (Liters/Gallons)";
  const headTextMass: string = "Mass (Kilograms/Pounds)";

  console.log(num);

  return (
    <div className="w-screen h-screen dark:bg-darkBlue">
      <Header num={num} setNum={setNum} />
      <div className="flex flex-col justify-center items-center bg-white dark:bg-darkBlue">
        <Unit
          category={new LengthConverter()}
          headText={headTextLength}
          unit1="meters"
          unit2="feet"
          num={num}
        />
        <Unit
          category={new VolumeConverter()}
          headText={headTextVolume}
          unit1="liters"
          unit2="gallons"
          num={num}
        />
        <Unit
          category={new MassConverter()}
          headText={headTextMass}
          unit1="kilos"
          unit2="pounds"
          num={num}
        />
      </div>
    </div>
  );
};

export default HomePage;
