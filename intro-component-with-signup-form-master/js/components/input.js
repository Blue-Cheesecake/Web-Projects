const utilities_css_class = {
  hide_class: "hidden",
  mb_1_25em_class: "mb-1-25em",
  mb_05em_class: "mb-05em",
  red_border_class: "primary-red-border",
  white_border_class: "white-border",
  warn_icon_class: "warn-icon-bg",
};

/**
 * @param {string} id
 */
const hide_node_by_id = (id) => {
  document.getElementById(id).classList.add(utilities_css_class.hide_class);
};

/**
 * @param {string} id
 */
const show_node_by_id = (id) => {
  let node = document.getElementById(id);
  // check if it contain hidden class
  if (node.classList.contains(utilities_css_class.hide_class))
    node.classList.remove(utilities_css_class.hide_class);
};

/**
 * @param {string} id
 */
const remove_margin_bottom_1o25em_class_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.mb_1_25em_class);
};

/**
 * @param {string} id
 */
const add_margin_bottom_1o25em_class_by_id = (id) => {
  document
    .getElementById(id)
    .classList.add(utilities_css_class.mb_1_25em_class);
};

/**
 * @param {string} id
 */
const remove_margin_bottom_o05em_class_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.mb_05em_class);
};

/**
 * @param {string} id
 */
const add_margin_bottom_o05em_class_by_id = (id) => {
  document.getElementById(id).classList.add(utilities_css_class.mb_05em_class);
};

/**
 * @param {string} id
 */
const make_red_border_by_id = (id) => {
  document
    .getElementById(id)
    .classList.add(utilities_css_class.red_border_class);
};

/**
 * @param {string} id
 */
const remove_red_border_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.red_border_class);
};

const make_white_border_by_id = (id) => {
  document
    .getElementById(id)
    .classList.add(utilities_css_class.white_border_class);
};

const remove_white_border_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.white_border_class);
};

const add_warn_icon_by_id = (id) => {
  document
    .getElementById(id)
    .classList.add(utilities_css_class.warn_icon_class);
};

const remove_warn_icon_by_id = (id) => {
  document
    .getElementById(id)
    .classList.remove(utilities_css_class.warn_icon_class);
};

const checkValidity_by_id = (id_input, id_warn) => {
  // Not Empty
  const inputObj = document.getElementById(id_input);

  if (inputObj.value !== "") {
    // if it's empty state -> change it to be bormal

    let empty_state = document
      .getElementById(id_warn)
      .classList.contains(utilities_css_class.hide_class);

    if (!empty_state) {
      // reverse from empty state
      add_margin_bottom_1o25em_class_by_id(id_input);
      remove_margin_bottom_o05em_class_by_id(id_input);
      remove_warn_icon_by_id(id_input);
      hide_node_by_id(id_warn);
      make_white_border_by_id(id_input);
      remove_red_border_by_id(id_input);
    }

    return;
  }

  // Empty state
  remove_margin_bottom_1o25em_class_by_id(id_input);
  add_margin_bottom_o05em_class_by_id(id_input);
  add_warn_icon_by_id(id_input);
  show_node_by_id(id_warn);
  remove_white_border_by_id(id_input);
  make_red_border_by_id(id_input);
};

function myFunction(e) {
  console.log(e);
  var x = document.getElementById("firstname");
  x.value = x.value.toUpperCase();
}

// document.getElementById("testc").addEventListener("click", checkValidity);
