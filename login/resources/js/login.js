

// custom.js

window.onload = function () {
    
    if(document.getElementById('username')){
    var username = document.getElementById('username');
    var log_lab_username = document.getElementById("log_lab_username");
    // Add focus event listener
    username.addEventListener('focus', function () {
        log_lab_username.style.display='block';
        log_lab_username.style.color='#0B6AEA';
    });

    // Add blur event listener
    username.addEventListener('blur', function () {
       // log_lab_username.style.display='none';
       log_lab_username.style.color='#4A5965';
       if(username.value==''){
        log_lab_username.style.display='none';
    }
    });
    }

    if(document.getElementById('password')){
    var password = document.getElementById('password');
    var log_lab_password = document.getElementById("log_lab_password");
    // Add focus event listener
    password.addEventListener('focus', function () {
        log_lab_password.style.display='block';
        log_lab_password.style.color='#0B6AEA';
    });

    // Add blur event listener
    password.addEventListener('blur', function () {
        //log_lab_password.style.display='none';
        log_lab_password.style.color='#4A5965';
        if(password.value==''){
            log_lab_password.style.display='none';
        }
    });
    }

    if(document.getElementById("password_icon")){
    var password_icon = document.getElementById("password_icon");
    var password = document.getElementById('password');
    password_icon.addEventListener('click', function(){
        if(password_icon.value==0)
        {
            password_icon.classList.remove('password_hide_icon');
            password_icon.classList.add('password_show_icon');
            password.type='password';
            password_icon.value=1;
        }
        else{
            password_icon.classList.remove('password_show_icon');
            password_icon.classList.add('password_hide_icon');
            password.type='text';
            password_icon.value=0;
        }
    });
    }

    if(document.getElementById('password-new')){
    //Add password lable
    var password_new = document.getElementById('password-new');
    var log_lab_new_pwd = document.getElementById("log_lab_new_pwd");
    // Add focus event listener
    password_new.addEventListener('focus', function () {
        log_lab_new_pwd.style.display='block';
    });

    // Add blur event listener
    password_new.addEventListener('blur', function () {
        log_lab_new_pwd.style.display='none';
    });
    }
    if(document.getElementById('password-confirm')){
    //Add confirm password lable
    var password_con = document.getElementById('password-confirm');
    var log_lab_con_pwd = document.getElementById("log_lab_con_pwd");
    // Add focus event listener
    password_con.addEventListener('focus', function () {
        log_lab_con_pwd.style.display='block';
    });
    // Add blur event listener
    password_con.addEventListener('blur', function () {
        log_lab_con_pwd.style.display='none';
    });
    }
};
