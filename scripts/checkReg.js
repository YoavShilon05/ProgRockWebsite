function checkReg() {
    return emailValid() && usernameValid() && realNameValid() && passwordValid() && confirmPassword();
}

// {string}@{string}.{string}
function emailValid() {
    let email = document.getElementById("email").value;
    let regex = /^[^\s@]+@[^\s@]+\.[^\s@]{0,320}$/;
    if (!regex.test(email)) {
        document.getElementById("jsError").innerText = "Email is not valid";
        document.getElementById("email").style.borderColor = "#b32515";
        document.getElementById("csError").innerText = "";
    }
    return regex.test(email);
}

// 4-16 characters long, only letters, numbers, underscore and dash
function usernameValid() {
    let username = document.getElementById("username").value;
    let regex = /^\w{4,16}$/;
    if (!regex.test(username)) {
        document.getElementById("jsError").innerText = "Username must be 4-16 characters long and only have latin characters or underscore";
        document.getElementById("username").style.borderColor = "#b32515";
        document.getElementById("csError").innerText = "";
    }
    return regex.test(username);
}

// 0-32 characters long
function realNameValid() {
    let nameLen = document.getElementById("realname").value.length;
    if (!(nameLen <= 32 && nameLen > 0)) {
        document.getElementById("jsError").innerText = "Real name must be 0-32 characters long";
        document.getElementById("realname").style.borderColor = "#b32515";
        document.getElementById("csError").innerText = "";
    }
    return nameLen <= 32 && nameLen > 0;
}

// 1 lowercase, 1 uppercase, 1 digit and 4-32 characters long
function passwordValid() {
    let password = document.getElementById("password").value;
    let regex = /(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9]).{4,32}/;
    if (!regex.test(password)) {
        document.getElementById("jsError").innerText = "Password must be 4-32 characters long and have 1 lowercase, 1 uppercase and 1 digit";
        document.getElementById("password").style.borderColor = "#b32515";
        document.getElementById("csError").innerText = "";
    }
    return regex.test(password);
}

// password and confirm password match
function confirmPassword() {
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirmpassword").value;
    if (confirmPassword !== password) {
        document.getElementById("jsError").innerText = "Password and Confirm password must match";
        document.getElementById("confirmpassword").style.borderColor = "#b32515";
        document.getElementById("csError").innerText = "";
    }
    return confirmPassword === password;
}