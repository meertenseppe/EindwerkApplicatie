function isNew(idCheck, idHidden) {
  if (document.getElementById(idCheck).value == "new") {
    document.getElementById(idHidden).type = "text";

  } else {
    document.getElementById(idHidden).type = "hidden";
  }
}
