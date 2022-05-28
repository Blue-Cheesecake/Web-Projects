import React, { useState } from "react";

interface Props {
  num: number;
  setNum: React.Dispatch<React.SetStateAction<number>>;
}

const Header: React.FC<Props> = ({ num, setNum }: Props) => {
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>): void => {
    e.preventDefault();
    console.log(num);
  };

  return (
    <div className="pt-12 pb-8 bg-gradient-to-r from-lightPink to-lightBlue">
      <div className="">
        <h1 className="text-center font-extrabold text-white text-xl">
          Metric/Imperial unit conversion
        </h1>
      </div>
      <form
        action=""
        onSubmit={(e) => {
          handleSubmit(e);
        }}
        className="flex justify-center items-center"
      >
        <input
          type="number"
          value={num}
          onChange={(e) => setNum(Number(e.target.value))}
          className="text-center bg-transparent outline-none font-extrabold text-white text-7xl"
        />
      </form>
    </div>
  );
};

export default Header;
