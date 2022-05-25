module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}", "./node_modules/flowbite/**/*.js"],
  theme: {
    extend: {
      colors: {
        almostWhite: "hsl(0, 0%, 98%)",
        mediumGrey: "hsl(0, 0%, 41%)",
        almostBlack: "hsl(0, 0%, 8%)",
      },
      fontFamily: {
        Epilogue: ["Epilogue", "sans-serif"],
      },
    },
  },
  plugins: [require("flowbite/plugin")],
};
