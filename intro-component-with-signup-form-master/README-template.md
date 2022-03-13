# Frontend Mentor - Intro component with sign up form solution

This is a solution to the [Intro component with sign up form challenge on Frontend Mentor](https://www.frontendmentor.io/challenges/intro-component-with-signup-form-5cf91bd49edda32581d28fd1). Frontend Mentor challenges help you improve your coding skills by building realistic projects.

## Table of contents

- [Overview](#overview)
  - [The challenge](#the-challenge)
  - [Screenshot](#screenshot)
  - [Links](#links)
- [My process](#my-process)
  - [Built with](#built-with)
  - [What I learned](#what-i-learned)
  - [Continued development](#continued-development)
  - [Useful resources](#useful-resources)
- [Author](#author)
- [Acknowledgments](#acknowledgments)

**Note: Delete this note and update the table of contents based on what sections you keep.**

## Overview

### The challenge

Users should be able to:

- View the optimal layout for the site depending on their device's screen size
- See hover states for all interactive elements on the page
- Receive an error message when the `form` is submitted if:
  - Any `input` field is empty. The message for this error should say _"[Field Name] cannot be empty"_
  - The email address is not formatted correctly (i.e. a correct email address should have this structure: `name@host.tld`). The message for this error should say _"Looks like this is not an email"_

### Screenshot

![](./screenshots/home.png)

![](./screenshots/empty1.png)

![](./screenshots/empty2.png)

### Links

- Solution URL: [GitHub](https://github.com/Blue-Cheesecake/Web-Projects/tree/main/intro-component-with-signup-form-master)
- Live Site URL: [Vercel Live](https://intro-component-five.vercel.app/)

## My process

### Built with

- Semantic HTML5 markup
- CSS custom properties
- CSSFlexbox
- [Tailwind]() framework
- Javascript

### What I learned

Using Tailwind framework, more attribute of HTML tag, and organize folder of CSS and Javascript. Practice to have many CSS class applied on HTML tags. I coded and refactored many functions in javascript in order to easy to read and maintain.

New input properties
```html
<input
  class="input-box mb-1-25em text-xl p-5 pl-10 font-medium white-border"
  type="text"
  name="firstname"
  id="firstname"
  placeholder="First Name"
  onblur="checkValidity_by_id('firstname','fn_div')"
/>
```


### Continued development

I would like to learn more about Tailwind, CSS properties, HTML properties, and how to connect HTML to JS in the best practices.

### Useful resources

- [W3 school](https://www.w3schools.com/jsref/event_onblur.asp) - Help me in use input properties properly and learn something useful for this project

## Author

- GitHub - [Blue-Cheesecake](https://github.com/Blue-Cheesecake)
- Frontend Mentor - [Blue-Cheesecake](https://www.frontendmentor.io/profile/Blue-Cheesecake)
