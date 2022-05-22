import React from "react";

// images
import starLogo from "../images/icon-star.svg";

/**
 * @param {string} head
 * @param {string} body
 */
export default function Contents({ head, body }) {
  return (
    <div>
      <span className="bg-darkBlue relative p-6 rounded-full inline-block">
        <img
          src={starLogo}
          className="absolute translate-x-1/2 translate-y-1/2 bottom-1/2 right-1/2 "
        ></img>
      </span>
      <h2 className="text-2xl text-white mt-4 mb-4">{head}</h2>
      <p className="text-sm text-lightGrey mb-6">{body}</p>
    </div>
  );
}
