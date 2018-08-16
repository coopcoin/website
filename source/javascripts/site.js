// without jQuery (doesn't work in older IEs)
document.addEventListener('DOMContentLoaded', function(){
  console.log(document.getElementById("hamburger"), 'HALLO')
  document.getElementById("hamburger").addEventListener('click', function(e){
    console.log(document.getElementById("menu"), 'HALLO')
    document.getElementById("menu").classList.toggle('asOpen')
  }, false)
}, false);
