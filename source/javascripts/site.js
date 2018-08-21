// without jQuery (doesn't work in older IEs)
document.addEventListener('DOMContentLoaded', function(){
  document.getElementById("hamburger").addEventListener('click', function(e){
    document.getElementById("menu").classList.toggle('asOpen')
  }, false)

  var links = document.getElementsByClassName("pdf-download");
  for (var i = 0; i < links.length; i++) {
    links[i].addEventListener('click', function(e) {
      dataLayer.push({'event': 'pdf-download', 'file': this.href});
    }, false);
  }
}, false);


