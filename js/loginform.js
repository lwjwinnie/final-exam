document.addEventListener('DOMContentLoaded', function () {
    
    var loginForm = document.querySelector('.loginForm');

    
    loginForm.addEventListener('submit', function (event) {
        
        event.preventDefault();

        
        var emailOrPhone = loginForm.querySelector('input[type="text"]').value;
        var password = loginForm.querySelector('input[type="password"]').value;

        
        var presetUsername = 'user@example.com'; 
        var presetPassword = 'password123'; 

        
        if (emailOrPhone === presetUsername && password === presetPassword) {
            
            alert('登陸成功！'); 
        } else {
            
            alert('帳號或密碼錯誤！');
        }
    });
});