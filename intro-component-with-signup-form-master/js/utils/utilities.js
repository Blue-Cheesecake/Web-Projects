const utilities_css_class = {
  hide_class: "hidden",
  mb_1_25em_class: "mb-1-25em",
  mb_05em_class: "mb-05em",
};

/**
 * @param {string} id
 * @return {undefined}
 */
export const hide_node_by_id = (id) =>
  document.getElementById(id).classList.add(utilities_css_class.hide_class);

/**
 * @param {string} id
 * @return {undefined}
 */
export const show_node_by_id = (id) => {
  let node = document.getElementById(id);
  // check if it contain hidden class
  if (node.classList.contains(hide_class))
    node.classList.remove(utilities_css_class.hide_class);
};

/**
 * @param {string} id
 * @return {undefined}
 */
export const remove_margin_bottom_1o25em_class_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.mb_1_25em_class);
};

/**
 * @param {string} id
 * @return {undefined}
 */
export const add_margin_bottom_1o25em_class_by_id = (id) => {
  document
    .getElementById(id)
    .classList.add(utilities_css_class.mb_1_25em_class);
};

/**
 * @param {string} id
 * @return {undefined}
 */
export const remove_margin_bottom_o05em_class_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.mb_05em_class);
};

/**
 * @param {string} id
 * @return {undefined}
 */
export const add_margin_bottom_o05em_class_by_id = (id) => {
  document.getElementById(id).classList.add(utilities_css_class.mb_05em_class);
};
