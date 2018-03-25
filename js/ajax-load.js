function loadPage(pageId) {
  var xhttp = new XMLHttpRequest();
  var page = $('#page-content');
  xhttp.onreadystatechange = function() {
    document.getElementById("page-content").innerHTML = this.responseText;
  };
  page.fadeOut(function () {
    page.load('', function () {
      xhttp.open("GET", pageId + ".php", true);
      xhttp.send();
      page.fadeIn();
    });
  })
}