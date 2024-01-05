document.addEventListener('DOMContentLoaded', function () {
    // 获取表单元素
    var loginForm = document.querySelector('.loginForm');

    // 添加表单提交事件监听器
    loginForm.addEventListener('submit', function (event) {
        // 阻止表单的默认提交行为
        event.preventDefault();

        // 获取输入的帐号和密码
        var emailOrPhone = loginForm.querySelector('input[type="text"]').value;
        var password = loginForm.querySelector('input[type="password"]').value;

        // 预设的帐号和密码
        var presetUsername = 'user@example.com'; // 请替换为您的预设帐号
        var presetPassword = 'password123'; // 请替换为您的预设密码

        // 检查帐号和密码是否匹配
        if (emailOrPhone === presetUsername && password === presetPassword) {
            // 帐号和密码匹配，可以执行登录操作
            alert('登陸成功！'); // 请替换为您的实际登录逻辑
        } else {
            // 帐号或密码错误，弹出错误提示窗口
            alert('帳號或密碼錯誤！');
        }
    });
});