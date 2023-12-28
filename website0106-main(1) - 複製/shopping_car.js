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


/*function deleteItem(button) {
    // 找到包含被點擊按鈕的 shopping_item
    var shoppingItem = button.closest('.shopping_item');

    // 從 DOM 中刪除該 shopping_item
    if (shoppingItem) {
        shoppingItem.remove();*/
