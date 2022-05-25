import React from "react";

// Commons
import NavBar from "./common/NavBar";

// data
import cardsInfo from "./data/cardsinfo.js";

// Components
import Card from "./components/card/Card";

export default function App() {
  const cards = cardsInfo.map(
    ({ country, location, date, description, imagePath }, index) => {
      if (index !== 0) {
        return (
          <div>
            <hr className="my-5"></hr>
            <Card
              country={country}
              location={location}
              date={date}
              description={description}
              imagePath={imagePath}
            />
          </div>
        );
      }
      return (
        <div>
          <div className="mb-14"></div>
          <Card
            country={country}
            location={location}
            date={date}
            description={description}
            imagePath={imagePath}
          />
        </div>
      );
    }
  );

  return (
    <div className="font-inter">
      <NavBar />
      <main className="px-10">{cards}</main>
    </div>
  );
}
