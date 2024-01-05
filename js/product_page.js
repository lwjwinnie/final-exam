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

document.addEventListener("DOMContentLoaded", function () {
    
    const starRating = document.getElementById("star-rating");

    
    const starIcons = starRating.querySelectorAll(".star-icon");

    
    starIcons.forEach((starIcon) => {
      starIcon.addEventListener("click", function () {
        
        const clickedIndex = parseInt(this.getAttribute("data-index"));

      
        starIcons.forEach((icon, index) => {
         
          if (index < clickedIndex) {
            icon.setAttribute("icon", "material-symbols:star");
          }
          
          else {
            icon.setAttribute("icon", "material-symbols:star-outline");
          }
        });

        

        console.log("Selected Rating: " + clickedIndex);
      });
    });
  });
