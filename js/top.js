// 網頁向下滑動 100px 出現"返回頂部"button
window.onscroll = function () {
  scrollFunction();
};

function scrollFunction() {
  console.log(121);
  if (
    document.body.scrollTop > 100 ||
    document.documentElement.scrollTop > 100
  ) {
    document.getElementById("totop").style.display = "block";
  } else {
    document.getElementById("totop").style.display = "none";
  }
}

// 點擊按鈕，返回頂部
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
