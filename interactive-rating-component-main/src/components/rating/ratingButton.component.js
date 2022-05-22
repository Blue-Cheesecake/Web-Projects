import React from "react";

export default function RatingButton({ value, setCurr, currValue }) {
  if (value === currValue) {
    return (
      <button
        onClick={() => {}}
        className=" bg-primaryOrange relative p-6 rounded-full text-white"
      >
        <p className="absolute translate-x-1/2 translate-y-1/2 bottom-1/2 right-1/2  text-sm">
          {value}
        </p>
      </button>
    );
  }

  return (
    <button
      onClick={() => {
        setCurr(value);
        console.log(`[Rating ${value}] Changed Value`);
      }}
      className=" bg-darkBlue relative p-6  rounded-full text-mediumGrey hover:bg-lightGrey hover:text-white"
    >
      <p className="absolute translate-x-1/2 translate-y-1/2 bottom-1/2 right-1/2  text-sm">
        {value}
      </p>
    </button>
  );
}
