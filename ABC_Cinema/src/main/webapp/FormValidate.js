function validate()
{

    const secret = "iloveu";
    const myInput = document.getElementById("passwordForgot");
    const letter = document.getElementById("letter");
    const capital = document.getElementById("capital");
    const number = document.getElementById("number");
    const length = document.getElementById("length");

// When the user clicks on the password field, show the message box
    myInput.onfocus = function() {
        document.getElementById("message").style.display = "block";
    }

// When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
        document.getElementById("message").style.display = "none";
    }

// When the user starts to type something inside the password field
    myInput.onkeyup = function() {
        // Validate lowercase letters
        const lowerCaseLetters = /[a-z]/g;
        if(myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
        }

        // Validate capital letters
        const upperCaseLetters = /[A-Z]/g;
        if(myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }

        // Validate numbers
        const numbers = /[0-9]/g;
        if(myInput.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
        }

        // Validate length
        if(myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
    }

    //const regExp1 = /^(\d{1,2})\/(\d{1,2})\/(\d{2})$/;
    //const regExp2 = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;
    //const result1 = document.form1.text1.value.match(regExp1);
    //const result2 = document.form1.text1.value.match(regExp2);
    if (document.passwordForgot.adminUsername.value == "")
    {
        alert("Please Enter Your User Name!")
        return false
    }


    if (document.passwordForgot.adminPassword.value == "")
    {
        alert("Please Enter Your New Password!")
        return false
    }
    if (document.passwordForgot.confirmPassword.value == "")
    {
        alert("Please Enter Confirm Password Password!")
        return false
    }
    if (document.passwordForgot.confirmPassword.value != document.passwordForgot.adminPassword.value)
    {
        alert("Password Dont match with the confirm password")
        return false
    }
    if (document.passwordForgot.secret.value == "")
    {
        alert("Please Enter secret code!")
        return false
    }
    if(document.passwordForgot.secret.value != secret)
    {
        alert("invalid secret code!")
        return false
    }


    else
    {
        document.passwordForgot.submit()
    }
}
