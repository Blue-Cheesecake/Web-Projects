module.exports = {
  content: ["*.{html, js}"],
  theme: {
    extend: {
      fontFamily: {
        manrope: ["Manrope"],
      },
      colors: {
        darkGrayishBlue: "hsl(217, 19%, 35%)",
        unsaturatedDarkBlue: "hsl(214, 17%, 51%)",
        grayishBlue: "hsl(212, 23%, 69%)",
        lightGrayishBlue: "hsl(210, 46%, 95%)",
      },
      backgroundImage: {
        drawers: "url('/images/drawers.jpg')",
        avatar: "url('/images/avatar-michelle.jpg')",
        facebookIcon: "url('/images/icon-facebook.svg')",
        pinterestIcon: "url('/images/icon-pinterest.svg')",
        shareIcon: "url('/images/icon-share.svg')",
        twitterIcon: "url('/images/icon-twitter.svg')",
      },
      maxWidth: {
        "2xl": "46rem",
      },
    },
  },
  plugins: [],
};
