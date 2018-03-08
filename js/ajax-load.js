function loadPage(pageId) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
     document.getElementById("page-content").innerHTML = this.responseText;
  };
  xhttp.open("GET", pageId + ".php", true);
  xhttp.send();
}