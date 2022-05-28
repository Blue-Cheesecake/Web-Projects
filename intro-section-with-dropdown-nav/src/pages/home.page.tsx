import React from "react";

import imageHeroDesktop from "../images/image-hero-desktop.png";
import imageClientAudiophile from "../images/client-audiophile.svg";
import imageClientDatabiz from "../images/client-databiz.svg";
import imageClientMaker from "../images/client-maker.svg";
import imageClientMeet from "../images/client-meet.svg";

// Common
import { NavBar } from "../common/nav-bar/navbar.common";

export const Home = () => {
  return (
    <div className="font-epilogue">
      <NavBar />
      <main className="flex justify-center items-center p-24">
        <section className="mr-48">
          <h1 className="text-8xl font-bold mb-12">Make remote work</h1>
          <p className="mb-16 pr-36">
            Get your team in sync, no matter your location. Streamline
            processes, create team rituals, and watch productivity soar.
          </p>
          <button className="bg-almostBlack hover:bg-almostWhite text-almostWhite hover:text-almostBlack py-4 px-9 rounded-xl border border-almostBlack text-lg">
            Learn more
          </button>
          <div className="mt-10 w-full flex justify-between items-center px-4">
            <img src={imageClientDatabiz} alt="image client databiz" />
            <img src={imageClientAudiophile} alt="image client audiophile" />
            <img src={imageClientMeet} alt="image client meet" />
            <img src={imageClientMaker} alt="image client maker" />
          </div>
        </section>
        <img src={imageHeroDesktop} alt="image" className="w-1/3" />
      </main>
    </div>
  );
};
