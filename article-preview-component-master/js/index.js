const ids = {
  hide_class: "hidden",
  share_option_div: "share_options",
};

/**
 * @param {string} id
 */
const hide_node_by_id = (id) => {
  document.getElementById(id).classList.add(ids.hide_class);
};

/**
 * @param {string} id
 */
const show_node_by_id = (id) => {
  const node = document.getElementById(id);
  // check if it contain hidden. If it's hidden -> remove hidden class
  if (!node.classList.contains(ids.hide_class)) return;
  node.classList.remove(ids.hide_class);
};

const share_option_onclick = () => {
  const node = document.getElementById(ids.share_option_div);
  // If hide -> display it
  if (node.classList.contains("hidden")) {
    show_node_by_id(ids.share_option_div);
    return;
  }
  // Hide
  hide_node_by_id(ids.share_option_div);
};
