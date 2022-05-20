import React, { useState } from "react";

export default function RatingButton({ value, state }) {
  const [isClicked, setIsClicked] = useState(false);

  if (isClicked) {
    return (
      <button
        onClick={() => {
          setIsClicked(false);
          state(value);
        }}
        className=" bg-primaryOrange px-5 py-4 rounded-full flex justify-center items-center text-white"
      >
        <span className="text-sm">{value}</span>
      </button>
    );
  }

  return (
    <button
      onClick={() => setIsClicked(true)}
      className=" bg-darkBlue px-5 py-4 rounded-full flex justify-center items-center text-mediumGrey  hover:bg-lightGrey hover:text-white"
    >
      <span className="text-sm">{value}</span>
    </button>
  );
}
