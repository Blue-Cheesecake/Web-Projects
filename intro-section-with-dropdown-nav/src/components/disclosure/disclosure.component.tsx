import React from "react";
import { Disclosure, Transition } from "@headlessui/react";

// icons
import icon_arrow_up from "../../images/icon-arrow-up.svg";
import icon_arrow_down from "../../images/icon-arrow-down.svg";

interface Item {
  icon: string | undefined;
  linkText: string;
  path: string;
}

interface Props {
  dropdownText: string;
  items: Array<Item>;
}

const DisclosureItem: React.FC<Props> = ({ dropdownText, items }: Props) => {
  const mappedJSXItems: Array<JSX.Element> = items.map((item) => {
    let icon: any = null;
    if (item.icon) icon = <img src={item.icon} alt="icon" />;

    return (
      <div className="flex justify-start items-center ml-6 mb-3">
        {icon}
        <a href={item.path} className="ml-4">
          {item.linkText}
        </a>
      </div>
    );
  });

  return (
    <Disclosure as="div" className="w-full">
      {({ open }: { open: boolean }) => (
        <>
          <Disclosure.Button>
            <div className="mb-3">
              <div className="flex justify-between items-center">
                <div className="mr-4">
                  <span className="cursor-pointer text-mediumGray hover:text-almostBlack">
                    {dropdownText}
                  </span>
                </div>
                <img
                  src={open ? icon_arrow_up : icon_arrow_down}
                  alt="icon arrow"
                />
              </div>
            </div>
          </Disclosure.Button>
          <Transition
            show={open}
            enter="transition duration-100 ease-out"
            enterFrom="transform scale-95 opacity-0"
            enterTo="transform scale-100 opacity-100"
            leave="transition duration-75 ease-out"
            leaveFrom="transform scale-100 opacity-100"
            leaveTo="transform scale-95 opacity-0"
          >
            <Disclosure.Panel static>
              <div>{mappedJSXItems}</div>
            </Disclosure.Panel>
          </Transition>
        </>
      )}
    </Disclosure>
  );
};

export default DisclosureItem;
