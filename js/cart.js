//購物車內 數量增減按鈕 數值變化 總金額變化 刪除功能
$(function () {
  $(".num-jia").click(function () {
    const quantity = $(this).parents().eq(1).find("input[class*=input-num]");
    quantity.val(parseInt(quantity.val()) + 1);
    updateQuantity(quantity);
  });
  $(".num-jian").click(function () {
    const quantity = $(this).parents().eq(1).find("input[class*=input-num]");
    quantity.val(parseInt(quantity.val()) - 1);
    if (parseInt(quantity.val()) < 1) {
      quantity.val(1);
    }
    updateQuantity(quantity);
  });
});
function updateQuantity(quantity) {
  var productRow = $(quantity);
  var productPrice = parseInt(
    $(quantity).parents().eq(5).find(".one-price-num").text(),
    10
  );
  var productQuantity = $(quantity).val();
  var rowTotal = productPrice * productQuantity;
  console.log(rowTotal);
  $(quantity).parents().eq(5).find(".all-price-num").text(rowTotal);
  recalculate();
}
function recalculate() {
  var total = 0;
  $(".product").each(function () {
    total += Number($(this).children().find(".all-price-num").text(), 10);
    console.log(total);
    $(this).parent().find(".total-price-num").text(total);
  });
}
$(".delete").click(function () {
  removeItem(this);
});
function removeItem(removeButton) {
  var productRow = $(removeButton).parent();
  productRow.fadeOut(200, function () {
    productRow.remove();
    recalculate();
  });
}
