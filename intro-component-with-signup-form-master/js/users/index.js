const show_warning_msg = () => {
  let listNode = document.getElementsByClassName("align-warning-text");
  for (let i = 0; i < listNode.length; i++) {
    const wNode = listNode[i];
    wNode.classList.remove("hidden");
  }
};
