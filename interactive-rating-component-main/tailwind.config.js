module.exports = {
  content: [
    "./src/*.{js, jsx}",
    "./src/**/*.{js, jsx}",
    "./public/*.{js, html}",
  ],
  theme: {
    extend: {
      colors: {
        lightGrey: "hsl(217, 12%, 63%)",
        mediumGrey: "hsl(216, 12%, 54%)",
        lightBlue: "#202630",
        darkBlue: "hsl(213, 19%, 18%)",
        veryDarkBlue: "hsl(216, 12%, 8%)",
        primaryOrange: "hsl(25, 97%, 53%)",
      },
      fontFamily: {
        Overpass: ["Overpass", "sans-serif"],
      },
      spacing: {
        88: "350px",
      },
    },
  },
  plugins: [],
};
