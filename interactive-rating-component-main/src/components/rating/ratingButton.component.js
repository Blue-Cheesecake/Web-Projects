import React, { useState } from "react";

export default function RatingButton({ value, setCurr, currValue }) {
  if (value === currValue) {
    return (
      <button
        onClick={() => {}}
        className=" bg-primaryOrange px-5 py-4 rounded-full flex justify-center items-center text-white"
      >
        <span className="text-sm">{value}</span>
      </button>
    );
  }

  return (
    <button
      onClick={() => {
        setCurr(value);
        console.log(`[Rating ${value}] Changed Value`);
      }}
      className=" bg-darkBlue px-5 py-4 rounded-full flex justify-center items-center text-mediumGrey  hover:bg-lightGrey hover:text-white"
    >
      <span className="text-sm">{value}</span>
    </button>
  );
}
