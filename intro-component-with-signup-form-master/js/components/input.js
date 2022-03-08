import {
  remove_margin_bottom_1o25em_class_by_id,
  add_margin_bottom_o05em_class_by_id,
  show_node_by_id,
} from "../utils/utilities.js";

const checkValidity = () => {
  const ids_var = {
    fn: "firstname",
    ln: "lastname",
    em: "email",
    pw: "password",
    fn_warn: "fn_div",
    ln_warn: "ln_div",
    em_warn: "em_div",
    pw_warn: "pw_div",
  };

  let fnNode = document.getElementById(ids_var.fn);
  let lnNode = document.getElementById(ids_var.ln);
  let emNode = document.getElementById(ids_var.em);
  let pwNode = document.getElementById(ids_var.pw);

  // Check if it's not empty
  // if empty =>
  //  remove mb-1-25em on input,
  //  add mb-05em on input,
  //  show warning text

  if (fnNode.value === "") {
    remove_margin_bottom_1o25em_class_by_id(ids_var.fn);
    add_margin_bottom_o05em_class_by_id(ids_var.fn);
    show_node_by_id(ids_var.fn_warn);
  }
};
