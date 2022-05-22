import React, { useState } from "react";

// other components
import Contents from "./contents.component";
import RatingButton from "./rating/ratingButton.component";
import Submit from "./rating/submit.component";

export default function Card({ setState }) {
  const headContent = "How did we do?";
  const bodyContent =
    "Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!";

  // console.log(`[Card] setCurrentValue func: ${setState}`);

  const [currentValue, setCurrentValue] = useState(-1);
  console.log(`[Card] current value: ${currentValue}`);

  let valuesRating = [1, 2, 3, 4, 5].map((val) => {
    return (
      <div>
        <RatingButton
          value={val}
          setCurr={setCurrentValue}
          currValue={currentValue}
        />
      </div>
    );
  });

  return (
    <div className="bg-lightBlue p-5 rounded-2xl w-80 sm:w-88">
      <Contents head={headContent} body={bodyContent} />
      <div className="flex justify-between mb-6">{valuesRating}</div>
      <Submit setFinal={setState} value={currentValue} />
    </div>
  );
}
