
    function Validate1() {
        var newpassword = document.getElementById("newpassword").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        if (newpassword != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
