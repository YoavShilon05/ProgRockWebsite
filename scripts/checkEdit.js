function checkEdit() {
    return validatePassword() && validateRealName() && validateUsername();
}

// 4-16 characters long, only letters, numbers, underscore and dash
function validateUsername() {
    let username = document.getElementById("username").value;
    let regex = /^\w{4,16}$/;
    if (!regex.test(username)) {
        document.getElementById("jsError").innerText = "Username must be 4-16 characters long and only have latin characters or underscore";
        document.getElementById("csError").innerText = "";
    }
    return regex.test(username);
}

// 1 lowercase, 1 uppercase, 1 digit and 4-32 characters long
function validatePassword() {
    let password = document.getElementById("password").value;
    let regex = /(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9]).{4,32}/;
    if (!regex.test(password)) {
        document.getElementById("jsError").innerText = "Password must be 4-32 characters long and have 1 lowercase, 1 uppercase and 1 digit";
        document.getElementById("csError").innerText = "";
    }
    return regex.test(password);
}

// 0-32 characters long
function validateRealName() {
    if (document.getElementById("realname").value.length > 32) {
        document.getElementById("jsError").innerText = "Real name must be 0-32 characters long";
        document.getElementById("csError").innerText = "";
    }
    return document.getElementById("realname").value.length <= 32;
}