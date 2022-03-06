/**
 * Random number [min, max] included
 * @param {number} min
 * @param {number} max
 * @return {number} random number
 */
const randomIntBetween = (min, max) =>
  Math.floor(Math.random() * (max - min + 1) + min);

/**
 * [DOM] Change dice image [class = ["img1", "img2"]] from HTML
 * @return {null}
 */
const change_dice_image = () => {
  const dice_paths = [
    "/images/dice1.png",
    "/images/dice2.png",
    "/images/dice3.png",
    "/images/dice4.png",
    "/images/dice5.png",
    "/images/dice6.png",
  ];

  let min = 1;
  let max = 6;
  let intD1 = randomIntBetween(min, max);
  let intD2 = randomIntBetween(min, max);
  let pathD1 = dice_paths[intD1 - 1];
  let pathD2 = dice_paths[intD2 - 1];
  let result = "Play 1 Wins!";
  if (intD2 > intD1) result = "Player 2 Wins!";
  else if (intD1 === intD2) result = "Draw!";

  console.log("p1 score: ", intD1);
  console.log("p2 score: ", intD2);
  console.log("Result: ", result);

  let image1Node = document.getElementsByClassName("img1")[0];
  let image2Node = document.getElementsByClassName("img2")[0];
  let titleNode = document.getElementById("head-title");

  image1Node.src = pathD1;
  image2Node.src = pathD2;
  titleNode.innerHTML = result;
};
