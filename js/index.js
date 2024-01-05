let currentIndex = 0;
  const items = document.querySelectorAll('.carousel-item');
  const totalItems = items.length;

  function nextSlide() {
    if (currentIndex < totalItems - 1) {
      currentIndex++;
    } else {
      currentIndex = 0;
    }
    updateCarousel();
  }

  function prevSlide() {
    if (currentIndex > 0) {
      currentIndex--;
    } else {
      currentIndex = totalItems - 1;
    }
    updateCarousel();
  }

  function updateCarousel() {
    const newTransformValue = -currentIndex * 100 + '%';
    document.getElementById('carousel').style.transform = 'translateX(' + newTransformValue + ')';
  }


 
let mybutton = document.getElementById("myBtn");


window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}


function topFunction() {
  document.body.scrollTop = 0; 
  document.documentElement.scrollTop = 0; 
}
function updateInfo() {
  
  var newName = document.getElementById('newName').value;
  var newAge = document.getElementById('newAge').value;
  var newAddress = document.getElementById('newAddress').value;

  
  document.getElementById('name').textContent = newName;
  document.getElementById('age').textContent = newAge;
  document.getElementById('address').textContent = newAddress;

 
  document.getElementById('newName').value = '';
  document.getElementById('newAge').value = '';
  document.getElementById('newAddress').value = '';
}


  function addToCart(productName, price) {
      
      showAddedToCartMessage(productName, price);
  }

  function showAddedToCartMessage(productName, price) {
      alert(`已將商品 "${productName}" 加入購物車，價格：NT$${price}`);
  }
  document.getElementById('searchIcon').addEventListener('click', function () {
    var searchBox = document.getElementById('searchBox');
    searchBox.style.display = (searchBox.style.display === 'none' || searchBox.style.display === '') ? 'block' : 'none';
});