import React from "react";

export default function Submit({ setFinal, value }) {
  return (
    <button
      onClick={() => {
        setFinal(value);
      }}
      className="bg-primaryOrange text-white min-w-full flex justify-center items-center rounded-full py-2 uppercase tracking-widest hover:bg-white hover:text-primaryOrange"
    >
      <span>Submit</span>
    </button>
  );
}
