import React from "react";
import { Menu, Transition } from "@headlessui/react";

interface Item {
  icon: string | undefined;
  linkText: string;
  path: string;
}

interface Props {
  dropdownText: string;
  items: Array<Item>;
}

export const DropDown: React.FC<Props> = ({ dropdownText, items }: Props) => {
  const mappedJSXItems: Array<JSX.Element> = items.map((item) => {
    let icon: any = null;
    if (item.icon) icon = <img src={item.icon} alt="icon" />;

    return (
      <Menu.Item>
        {({ active }: { active: boolean }) => (
          <div className="mb-3 w-full flex justify-start items-center">
            {icon}
            <a href={item.path} className="ml-4 text-sm">
              {item.linkText}
            </a>
          </div>
        )}
      </Menu.Item>
    );
  });

  return (
    <Menu as="div" className="relative inline-block text-left">
      <Menu.Button
        as="div"
        className="text-mediumGray hover:text-almostBlack cursor-pointer"
      >
        {dropdownText}
      </Menu.Button>
      <Transition
        enter="transition ease-out duration-100"
        enterFrom="transform opacity-0 scale-95"
        enterTo="transform opacity-100 scale-100"
        leave="transition ease-in duration-75"
        leaveFrom="transform opacity-100 scale-100"
        leaveTo="transform opacity-0 scale-95"
      >
        <Menu.Items className="absolute top-3 right-0 pt-3 px-3 mt-2 w-32 rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5">
          {mappedJSXItems}
        </Menu.Items>
      </Transition>
    </Menu>
  );
};
