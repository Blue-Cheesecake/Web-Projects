import React, { useState } from "react";

// other components
import Contents from "./contents.component";
import RatingButton from "./rating/ratingButton.component";
import Submit from "./rating/submit.component";

export default function Card({ state }) {
  const headContent = "How did we do?";
  const bodyContent =
    "Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering";

  let valuesRating = [1, 2, 3, 4, 5].map((val) => {
    return (
      <div>
        <RatingButton value={val} state={state} />
      </div>
    );
  });

  return (
    <div className="bg-lightBlue p-6 rounded-2xl w-80 sm:w-auto">
      <Contents head={headContent} body={bodyContent} />
      <div className="flex justify-between">{valuesRating}</div>
      <Submit />
    </div>
  );
}
