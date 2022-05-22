import React from "react";

// images
import tyImage from "../images/illustration-thank-you.svg";

export default function CardResult({ value, maxVal }) {
  return (
    <div className="bg-lightBlue px-5 py-9 rounded-2xl w-80 sm:w-88 flex flex-col  justify-center items-center">
      <div className="mb-6">
        <img src={tyImage}></img>
      </div>

      <div className="bg-darkBlue rounded-full px-3 pt-2 pb-1 mb-6 inline-block">
        <p className="text-primaryOrange text-sm">
          You selected {value} out of {maxVal}
        </p>
      </div>

      <h2 className="text-white text-2xl mb-4">Thank you!</h2>

      <p className="text-lightGrey text-sm text-center">
        We appreciate you taking the time to give a rating. If you ever need
        more support, don't hesitate to get in touch!
      </p>
    </div>
  );
}
