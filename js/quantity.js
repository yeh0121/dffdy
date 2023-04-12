// 數量增減按鈕 輸入框
$(function () {
  $("[data-decrease]").click(decrease);
  $("[data-increase]").click(increase);
  $("[data-value]").change(valueChange);
});

function decrease() {
  var value = $(this).parent().find("[data-value]").val();
  if (value > 1) {
    value--;
    $(this).parent().find("[data-value]").val(value);
  }
}

function increase() {
  var value = $(this).parent().find("[data-value]").val();
  if (value < 50) {
    value++;
    $(this).parent().find("[data-value]").val(value);
  }
}

function valueChange() {
  var value = $(this).val();
  if (value == undefined || isNaN(value) == true || value <= 0) {
    $(this).val(1);
  } else if (value >= 51) {
    $(this).val(50);
  }
}
