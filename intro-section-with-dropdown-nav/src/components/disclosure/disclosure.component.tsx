import React from "react";
import { Disclosure } from "@headlessui/react";

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
      <div className="flex justify-start items-center">
        {icon}
        <a href={item.path}>{item.linkText}</a>
      </div>
    );
  });

  return (
    <Disclosure as="div" className="w-full">
      {({ open }: { open: boolean }) => (
        <>
          <Disclosure.Button>
            <div className="flex justify-between items-center mb-3">
              <span className="mr-4 cursor-pointer text-mediumGray hover:text-almostBlack">
                {dropdownText}
              </span>
              <img
                src={open ? icon_arrow_up : icon_arrow_down}
                alt="icon arrow"
              />
            </div>
          </Disclosure.Button>
          <Disclosure.Panel>
            <div>{mappedJSXItems}</div>
          </Disclosure.Panel>
        </>
      )}
    </Disclosure>
  );
};

export default DisclosureItem;
