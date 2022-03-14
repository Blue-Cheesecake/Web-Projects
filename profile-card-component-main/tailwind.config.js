module.exports = {
  content: ["*.{html, js}"],
  theme: {
    extend: {
      colors: {
        dark_cyan: "hsl(185, 75%, 39%)",
        dark_blue: "hsl(229, 23%, 23%)",
        dark_grayish_blue: "hsl(227, 10%, 46%)",
        dark_gray: "hsl(0, 0%, 59%)",
      },
      fontFamily: {
        kumbhsans: ["Kumbh Sans"],
      },
      backgroundImage: {
        patternTop: "url('/images/bg-pattern-top.svg')",
        patternBottom: "url('/images/bg-pattern-bottom.svg')",
      },
    },
  },
  plugins: [],
};
