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


  // Get the button:
let mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
function updateInfo() {
  // 獲取新的資料
  var newName = document.getElementById('newName').value;
  var newAge = document.getElementById('newAge').value;
  var newAddress = document.getElementById('newAddress').value;

  // 更新顯示在網頁上的資料
  document.getElementById('name').textContent = newName;
  document.getElementById('age').textContent = newAge;
  document.getElementById('address').textContent = newAddress;

  // 清空輸入框
  document.getElementById('newName').value = '';
  document.getElementById('newAge').value = '';
  document.getElementById('newAddress').value = '';
}


  function addToCart(productName, price) {
      // 執行加入購物車的相關邏輯，這裡只是一個簡單的提示框示例
      showAddedToCartMessage(productName, price);
  }

  function showAddedToCartMessage(productName, price) {
      alert(`已將商品 "${productName}" 加入購物車，價格：NT$${price}`);
  }
  document.getElementById('searchIcon').addEventListener('click', function () {
    var searchBox = document.getElementById('searchBox');
    searchBox.style.display = (searchBox.style.display === 'none' || searchBox.style.display === '') ? 'block' : 'none';
});