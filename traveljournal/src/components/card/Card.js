import React from "react";

// image

import pin_logo from "../../images/pin_logo.png";

export default function Card({
  country,
  location,
  date,
  description,
  imagePath,
}) {
  return (
    <div className="flex justify-start items-center">
      <img
        src={imagePath}
        alt="location image"
        className="w-32 h-40 rounded-lg mr-5"
      ></img>
      <div>
        <div className="flex justify-start items-center">
          <img src={pin_logo} alt="pin logo" className="w-2 h-auto mr-1"></img>
          <p className="mr-3 font-normal text-2sm uppercase tracking-widest">
            {country}
          </p>
          <a
            href="#"
            className="font-normal text-2sm text-gray-500 cursor-pointer underline"
          >
            View on Google Maps
          </a>
        </div>
        <h3 className="font-bold text-2xl mb-3">{location}</h3>
        <h4 className="font-bold text-2sm">{date}</h4>
        <p className="font-light text-2sm">{description}</p>
      </div>
    </div>
  );
}
