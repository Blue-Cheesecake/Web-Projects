import React from "react";

export default function CardResult({ value }) {
  return (
    <div className="bg-lightBlue p-6 rounded-2xl w-80 sm:w-auto">
      <p className="text-white">Got this value: {value}</p>
    </div>
  );
}
