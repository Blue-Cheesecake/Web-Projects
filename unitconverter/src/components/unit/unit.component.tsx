import React from "react";
import {
  LengthConverter,
  VolumeConverter,
  MassConverter,
} from "../../utilities/converter.utilities";

interface Props {
  category: LengthConverter | VolumeConverter | MassConverter;
  headText: string;
  unit1: string;
  unit2: string;
  num: number;
}

const Unit: React.FC<Props> = ({
  category,
  headText,
  unit1,
  unit2,
  num,
}: Props) => {
  let convertedNum1: number = 0;
  let convertedNum2: number = 0;

  if (category instanceof LengthConverter) {
    convertedNum1 = LengthConverter.meter_to_feet(num);
    convertedNum2 = LengthConverter.feet_to_meter(num);
  }
  if (category instanceof VolumeConverter) {
    convertedNum1 = VolumeConverter.liters_to_gallons(num);
    convertedNum2 = VolumeConverter.gallons_to_liters(num);
  }
  if (category instanceof MassConverter) {
    convertedNum1 = MassConverter.kilos_to_pounds(num);
    convertedNum2 = MassConverter.pounds_to_kilos(num);
  }

  return (
    <div className="mt-7 dark:text-white">
      <h2 className="font-semibold text-sm sm:text-lg text-center mb-1">
        {headText}
      </h2>
      <p className="font-normal text-sm sm:text-lg text-center">
        {num} {unit1} = {convertedNum1.toFixed(3)} {unit2} | {num} {unit2} ={" "}
        {convertedNum2.toFixed(3)} {unit1}
      </p>
    </div>
  );
};

export default Unit;
