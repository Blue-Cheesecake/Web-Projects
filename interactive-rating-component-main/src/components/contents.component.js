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
      <span className="bg-darkBlue rounded-full px-2 py-2">
        <img src={starLogo} className="inline scale-75"></img>
      </span>
      <h2 className="text-xl text-white">{head}</h2>
      <p className="text-sm text-lightGrey">{body}</p>
    </div>
  );
}
