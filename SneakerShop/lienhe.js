function check() {
    console.log("Hello world!");
    if (document.getElementById('usernameL').value == "") {
        alert("Nhập tên");
        document.getElementById('usernameL').focus();
    }

    else if (document.getElementById('Email').value == "") {
        alert("Nhập Email");
        document.getElementById('Email').focus();
    }

    else if (document.getElementById('Review').value == "") {
        alert("Nhập Review");
        document.getElementById('Review').focus();

    }


};