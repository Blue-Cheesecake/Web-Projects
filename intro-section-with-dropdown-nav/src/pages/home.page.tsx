import React from "react";

import imageHeroDesktop from "../images/image-hero-desktop.png";
import imageHeroMobile from "../images/image-hero-mobile.png";
import imageClientAudiophile from "../images/client-audiophile.svg";
import imageClientDatabiz from "../images/client-databiz.svg";
import imageClientMaker from "../images/client-maker.svg";
import imageClientMeet from "../images/client-meet.svg";

// Common
import { NavBar } from "../common/nav-bar/navbar.common";

export const Home: React.FC = () => {
  return (
    <div className="font-epilogue w-screen h-screen overflow-hidden">
      <NavBar />
      <img
        src={imageHeroMobile}
        alt="image hero mobile"
        className="md:hidden w-full h-auto"
      />
      <main className="px-6 py-12 md:py-8 md:px-24 w-full flex justify-center items-center">
        <section className="md:mr-40">
          <h1 className="text-center text-3xl font-bold  md:text-left md:text-8xl mb-8 md:mb-12">
            Make <br className="hidden md:block" /> remote work
          </h1>
          <p className="mb-8 md:mb-16 px-8 md:px-0 md:pr-36 text-center md:text-left text-xs scale-125 md:scale-100 md:text-xl text-mediumGray font-medium">
            Get your team in sync, no matter your location. Streamline
            processes, create team rituals, and watch productivity soar.
          </p>
          <div className="flex justify-center items-center md:block">
            <button className="bg-almostBlack hover:bg-almostWhite text-almostWhite hover:text-almostBlack py-3 px-4 md:py-4 md:px-9 rounded-xl border border-almostBlack text-base md:text-lg">
              Learn more
            </button>
          </div>
          <div className="mt-8 md:mt-16 w-full flex justify-between items-center md:px-4">
            <img
              src={imageClientDatabiz}
              alt="image client databiz"
              className="w-20 md:w-auto"
            />
            <img
              src={imageClientAudiophile}
              alt="image client audiophile"
              className="w-10 md:w-auto"
            />
            <img
              src={imageClientMeet}
              alt="image client meet"
              className="w-20 md:w-auto"
            />
            <img
              src={imageClientMaker}
              alt="image client maker"
              className="w-20 md:w-auto"
            />
          </div>
        </section>
        <img
          src={imageHeroDesktop}
          alt="image"
          className="max-w-md hidden md:block"
        />
      </main>
    </div>
  );
};
