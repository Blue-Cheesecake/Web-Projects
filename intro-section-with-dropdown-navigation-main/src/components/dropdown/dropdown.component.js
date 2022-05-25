import React, { useState } from "react";

export default function Dropdown({ text, listItems, arrow }) {
  const [isClicked, setIsClicked] = useState(false);

  const dropDownHidden =
    "z-10 hidden bg-white divide-y divide-gray-100 rounded shadow w-44 dark:bg-gray-700";
  const dropDownShown =
    "z-10 bg-white divide-y divide-gray-100 rounded shadow w-44 dark:bg-gray-700";

  listItems.map((list) => {
    const text = list[0];
    const path = list[1];
    const icon = list[2];

    console.log(text, path, icon);

    return (
      <li className="flex justify-center items-center ">
        <img src={icon} alt="icon"></img>
        <a href={path}>{text}</a>
      </li>
    );
  });

  return (
    <div>
      <button
        className=" text-almostBlack font-medium rounded-lg text-sm text-center inline-flex items-center "
        type="button"
        onClick={() => (isClicked ? setIsClicked(false) : setIsClicked(true))}
      >
        <span>{text}</span>
        <img src={isClicked ? arrow.down : arrow.up} alt="dropdown arrow"></img>
      </button>

      <div id="dropdown" className={isClicked ? dropDownShown : dropDownHidden}>
        <ul class="py-1 text-sm text-gray-700 dark:text-gray-200">
          <li>
            <a
              href="#"
              class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
            >
              Dashboard
            </a>
          </li>
          <li>
            <a
              href="#"
              class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
            >
              Settings
            </a>
          </li>
          <li>
            <a
              href="#"
              class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
            >
              Earnings
            </a>
          </li>
          <li>
            <a
              href="#"
              class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
            >
              Sign out
            </a>
          </li>
          {listItems}
        </ul>
      </div>
    </div>
  );
}
