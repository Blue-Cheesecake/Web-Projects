import React, { useState } from "react";

// Components
import { DropDown } from "../../components/dropdown/dropdown.component";

// icons
import icon_todo from "../../images/icon-todo.svg";
import icon_calendar from "../../images/icon-calendar.svg";
import icon_reminders from "../../images/icon-reminders.svg";
import icon_planning from "../../images/icon-planning.svg";
import icon_menu from "../../images/icon-menu.svg";
import icon_close_menu from "../../images/icon-close-menu.svg";
import DisclosureItem from "../../components/disclosure/disclosure.component";

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
  const [isDisplayingMobileNavbar, setIsDisplayingMobileNavbar] =
    useState(false);

  return (
    <nav className="bg-white w-full">
      <div className="p-8 hidden md:flex justify-between items-center">
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
          <a href="#" className="mr-8">
            Login
          </a>
          <a
            href="#"
            className="bg-almostWhite text-mediumGray hover:text-almostBlack py-3 px-3 md:py-4 md:px-7 rounded-2xl border-2 border-mediumGray hover:border-almostBlack text-sm md:text-base"
          >
            Register
          </a>
        </div>
      </div>

      {/* Mobile menu */}
      <div className="relative md:hidden flex justify-between items-center p-5">
        <h2 className="text-4xl text-black mr-11 font-semibold">snap</h2>
        <div className="z-40">
          <button
            onClick={(e) => {
              setIsDisplayingMobileNavbar(!isDisplayingMobileNavbar);
            }}
          >
            <img
              src={!isDisplayingMobileNavbar ? icon_menu : icon_close_menu}
              alt="icon menu"
            />
          </button>
        </div>
        <div
          className={
            isDisplayingMobileNavbar
              ? "absolute bg-red-300 w-60 transform top-0 right-0 z-30"
              : "hidden"
          }
        >
          <div className="mt-20 w-full px-6 h-screen">
            <DisclosureItem
              dropdownText={featuresDropdown.dropdownText}
              items={featuresDropdown.items}
            />
            <DisclosureItem
              dropdownText={companyDropdown.dropdownText}
              items={companyDropdown.items}
            />
            <a href="#" className="block mb-3">
              Careers
            </a>
            <a href="#" className="block mb-8">
              About
            </a>
            <div className="flex flex-col justify-center items-center">
              <a href="#" className="mb-5">
                Login
              </a>
              <a
                href="#"
                className="block w-full border border-almostBlack rounded-xl text-center py-3"
              >
                Register
              </a>
            </div>
          </div>
        </div>
      </div>
    </nav>
  );
};
