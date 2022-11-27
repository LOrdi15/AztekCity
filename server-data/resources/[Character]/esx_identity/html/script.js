$(function() {
	window.addEventListener('message', function(event) {
		if (event.data.type == "enableui") {
			document.body.style.display = event.data.enable ? "flex" : "none";
		}
	});

	document.onkeyup = function (data) {
		if (data.which == 27) { // Escape key
			$.post('http://esx_identity/escape', JSON.stringify({}));
		}
	};
	
	$("#register").submit(function(event) {
		event.preventDefault(); // Prevent form from submitting
		let error = false;
		const firstName = document.querySelector("input[name=first_name]").value;
		const lastName = document.querySelector("input[name=last_name]").value;

		/* BIRTHDAY */
		let birthDay = document.querySelector("select.birth-day").value;
		let birthMonth = document.querySelector("select.birth-month").value;
		let birthYear = document.querySelector("select.birth-year").value;
		if(birthDay.length == 1) birthDay = "0" + birthDay;
		if(birthMonth.length == 1) birthMonth = "0" + birthMonth;
		let birthDate = birthDay + "." + birthMonth + "." + birthYear

		const height = document.querySelector("input[name=height]").value;

		const gender = document.querySelector("input[name=gender]:checked").value;
		const agb = document.querySelector("input[name=agb]").checked;


		if(firstName.length < 3 || lastName.length < 3) {
            error = true;
            errorMessage = "Your first name or last name must contain at least 3 characters."
          }
          else if(firstName.length > 12 || lastName.length > 12) {
            error = true;
            errorMessage = "Your first name or last name can contain a maximum of 12 characters."
          }
		  else if(lastName.split(" ").length > 1) {
            error = true;
            errorMessage = "Your last name must contain only one word."
          }
          else if(!agb) {
            error = true;
            errorMessage = "Please accept our terms of use and privacy policy."
          }


          if(error) {
            $(".error-message").text(errorMessage).show();
          } else {
			$.post('http://esx_identity/register', JSON.stringify({
				firstname: capitalizeFirstLetter(firstName),
				lastname: capitalizeFirstLetter(lastName),
				dateofbirth: birthDate,
				sex: gender,
				height: height
			}));
		  }
	});
});

function capitalizeFirstLetter(string) {
	return string.charAt(0).toUpperCase() + string.slice(1);
  }