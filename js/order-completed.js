//進度圓圈

// Inspired by https://codepen.io/davatron5000/pen/jzMmME

const meters = document.querySelectorAll("svg[data-value] .meter");
meters.forEach((path) => {
  let length = path.getTotalLength();
  let value = parseInt(path.parentNode.getAttribute("data-value"));
  let to = length * ((100 - value) / 100);
  path.getBoundingClientRect();
  path.style.strokeDashoffset = Math.max(0, to);
  path.nextElementSibling.textContent = "✔";
});
