import React from "react";
import { Menu } from "@headlessui/react";

// Components
import { DropDown } from "../../components/dropdown/dropdown.component";

// icons
import icon_todo from "../../images/icon-todo.svg";
import icon_calendar from "../../images/icon-calendar.svg";
import icon_reminders from "../../images/icon-reminders.svg";
import icon_planning from "../../images/icon-planning.svg";

interface Item {
  icon: string | undefined;
  linkText: string;
  path: string;
}

interface DropDownItem {
  dropdownText: string;
  items: Array<Item>;
}

const featuresDropdown: DropDownItem = {
  dropdownText: "Features",
  items: [
    { icon: icon_todo, linkText: "Todo List", path: "#" },
    { icon: icon_calendar, linkText: "Calendar", path: "#" },
    { icon: icon_reminders, linkText: "Reminders", path: "#" },
    { icon: icon_planning, linkText: "Planning", path: "#" },
  ],
};

const companyDropdown: DropDownItem = {
  dropdownText: "Company",
  items: [
    { icon: undefined, linkText: "History", path: "#" },
    { icon: undefined, linkText: "Our Team", path: "#" },
    { icon: undefined, linkText: "Blog", path: "#" },
  ],
};

export const NavBar: React.FC = () => {
  return (
    <nav className="bg-white">
      <div className="p-8 flex justify-between items-center">
        <div className="flex justify-between items-center">
          <h2 className="text-4xl text-black mr-11 font-semibold">snap</h2>
          <div className="mr-11">
            <DropDown
              dropdownText={featuresDropdown.dropdownText}
              items={featuresDropdown.items}
            />
          </div>
          <div className="mr-11">
            <DropDown
              dropdownText={companyDropdown.dropdownText}
              items={companyDropdown.items}
            />
          </div>
          <a href="#" className="mr-11">
            Careers
          </a>
          <a href="#" className="">
            About
          </a>
        </div>
        <div>
          <a href="#">Login</a>
          <a href="#">Register</a>
        </div>
      </div>

      {/* Mobile menu */}
      <div className="md:hidden">
        <h2>Hello from mobile</h2>
      </div>
    </nav>
  );
};
