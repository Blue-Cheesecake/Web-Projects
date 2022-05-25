import React from "react";

import Dropdown from "../components/dropdown/dropdown.component";

import Icons from "../constants/Icons";

export default function Header() {
  const dropdownFeature = {
    text: "Features",
    arrow: {
      up: Icons.arrow_up,
      down: Icons.arrow_down,
    },
    listItems: [
      ["Todo List", "#", Icons.todo],
      ["Calendar", "#", Icons.calendar],
      ["Reminder", "#", Icons.reminder],
      ["Planning", "#", Icons.planning],
    ],
  };

  return (
    <div>
      <p>This is header</p>
      <Dropdown
        text={dropdownFeature.text}
        arrow={dropdownFeature.arrow}
        listItems={dropdownFeature.listItems}
      />
    </div>
  );
}
