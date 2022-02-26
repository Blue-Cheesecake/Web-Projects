# Frontend Mentor - 3-column preview card component solution

This is a solution to the [3-column preview card component challenge on Frontend Mentor](https://www.frontendmentor.io/challenges/3column-preview-card-component-pH92eAR2-). Frontend Mentor challenges help you improve your coding skills by building realistic projects.

## Table of contents

-   [Overview](#overview)
    -   [The challenge](#the-challenge)
    -   [Screenshot](#screenshot)
    -   [Links](#links)
-   [My process](#my-process)
    -   [Built with](#built-with)
    -   [What I learned](#what-i-learned)
    -   [Continued development](#continued-development)
    -   [Useful resources](#useful-resources)

**Note: Delete this note and update the table of contents based on what sections you keep.**

## Overview

### The challenge

Users should be able to:

-   View the optimal layout depending on their device's screen size
-   See hover states for interactive elements

### Screenshot

![](/images/screenshot-3column.png)

### Links

-   Solution URL: [GitHub](https://github.com/Blue-Cheesecake/Web-Projects/tree/main/3-column-preview-card-component-main)
-   Live Site URL: [Here](https://3-column-preview-card-self.vercel.app/)

## My process

### Built with

-   Semantic HTML5 markup
-   CSS custom properties
-   CSS Grid

### What I learned

Recap forming HTML structure, basic CSS properties.
Learn more about how to customize border, center element, use relative units, using Grid layout

To see how you can add code snippets, see below:

```css
body {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    min-height: 100vh;
    flex-direction: column;
    background-color: hsla(0, 0%, 100%, 0.75);
}

.main-container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    /*  */
    min-height: 10em;
    width: 63.5em;
    margin: 4em 0em;
}

.learn-butt-sedans {
    font-family: "Lexend Deca", sans-serif;
    font-weight: 400;
    text-decoration: none;
    background-color: hsl(0, 0%, 95%);
    padding: 0.9em 2em;
    border: 0.1em;
    border-style: solid;
    border-color: hsl(0, 0%, 95%);
    border-radius: 28px;
    color: hsl(31, 77%, 52%);
}

.learn-butt-sedans:hover {
    background-color: hsl(31, 77%, 52%);
    color: hsl(0, 0%, 95%);
}
```

### Continued development

I'll learn and practice more about CSS properties

### Useful resources

-   [Grid Layout](https://css-tricks.com/snippets/css/complete-guide-grid/#prop-grid-template-columns-rows) - Learn how to use grid
-   [Grid Layout - Youtube](https://www.youtube.com/watch?v=jV8B24rSN5o) - Learn how to use grid with video.
