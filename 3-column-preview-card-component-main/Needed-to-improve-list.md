# Things I should improve

based on frontend mentor review

**Me**

-   **Styling**
    -   [x] Add global variables for color.

**Vanza Setia**

-   **Accessibility**

    -   [x] There's no need to have `role` attribute for the link element. If you think that it is a `button` element then use `button` element instead. But if it is a button instead of a link, what is going to happen if the user clicks the button?
    -   [x] Use CSS to uppercase the text. The uppercased word in the HTML will be spelled by the screen reader (spelled letter by letter).
    -   [x] Swap all the `h1` with `h2`. Every page should only contain one `h1` as an identifier. In this case, it's not necessary to have `h1` but, if you want to remove the issue that gets generated, you can have visually hidden `h1` with `sr-only` styling. (There's [an awesome article by A11y about heading](https://www.a11yproject.com/posts/how-to-accessible-heading-structure/), I would recommend reading it to understand how to use headings correctly.)
    -   [x] Create a custom `:focus-visible` styling to any interactive elements (`button`, `links`, `input`, `textarea`). This will make the users can navigate this website using keyboard (by using Tab key) easily.

-   **Styling**
    -   [ ] You have used `rem` and `em` units instead of `px` except for the `border-radius`. I would recommend using `em` unit for it. That way, when the font-size of it gets increased, the border-radius can adjust automatically.
