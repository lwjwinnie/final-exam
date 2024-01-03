function incrementQuantity(element) {
    var quantityInput = element.parentElement.querySelector('.quantity');
    var currentQuantity = parseInt(quantityInput.value);
    quantityInput.value = currentQuantity + 1;
}

function decrementQuantity(element) {
    var quantityInput = element.parentElement.querySelector('.quantity');
    var currentQuantity = parseInt(quantityInput.value);
    if (currentQuantity > 1) {
        quantityInput.value = currentQuantity - 1;
    }
}


function deleteItem(element) {
    var shoppingItem = element.parentElement.parentElement;
    shoppingItem.remove();
}

function addToCart(message) {
    // 执行添加到购物车的逻辑
    // ...

    // 弹出提示窗口
    alert(message);
}

document.addEventListener("DOMContentLoaded", function () {
    // 找到最外層的div
    const starRating = document.getElementById("star-rating");

    // 找到所有的icon
    const starIcons = starRating.querySelectorAll(".star-icon");

    // 將所有的icon加上click事件
    starIcons.forEach((starIcon) => {
      starIcon.addEventListener("click", function () {
        // 找到點擊的icon的data-index 並轉成數字
        const clickedIndex = parseInt(this.getAttribute("data-index"));

        // starsIcons是一個陣列，所以可以用forEach來判斷 跑迴圈 全部都跑一遍
        starIcons.forEach((icon, index) => {
          // 如果index小於點擊的index，就加上selected的class，並且改變icon
          if (index < clickedIndex) {
            icon.setAttribute("icon", "material-symbols:star");
          }
          // 如果index小於點擊的index，就加上selected的class，並且改變icon 變成空心
          else {
            icon.setAttribute("icon", "material-symbols:star-outline");
          }
        });

        // 在這裏你可以將 clickedIndex 送到後端，並更新資料庫

        console.log("Selected Rating: " + clickedIndex);
      });
    });
  });
