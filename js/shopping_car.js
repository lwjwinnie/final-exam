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
   
    alert(message);
}