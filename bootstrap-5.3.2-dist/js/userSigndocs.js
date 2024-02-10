function validate() {
    var unme = document.getElementById("inputUnme").value;
    var mail = document.getElementById("inputEmail3").value;
    var phone = document.getElementById("inputPhNo").value;
    var pswd = document.getElementById("inputPassword3").value;
    var cnfpswd = document.getElementById("inputPassword4").value;

    var unmecheck = /^[a-zA-Z0-9]{1,10}$/;
    var mailcheck = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    var phonecheck = /^91\d{10}$/;
    var pswdcheck = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;


    // if (!unmecheck.test(unme)){
    //     document.getElementById("unme").innerHTML = "Invalid username";
    //     event.preventDefault();
    // }
    // else
    //     document.getElementById("unme").innerHTML = "";

    if (!mailcheck.test(mail)){
        document.getElementById("mail").innerHTML = "Invalid mail";
        event.preventDefault();
    }
    else
        document.getElementById("mail").innerHTML = "";

    if (!phonecheck.test(phone)){
        document.getElementById("phone").innerHTML = "Invalid phone";
        event.preventDefault();
    }
    else
        document.getElementById("phone").innerHTML = "";

    if (!pswdcheck.test(pswd)){
        document.getElementById("pswd").innerHTML = "Invalid password";
        event.preventDefault();
    }
    else
        document.getElementById("pswd").innerHTML = "";

}