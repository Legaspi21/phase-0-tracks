/* Pseudocode
Create function that takes a string as a parameter
Create variable for empty string that will hold the newly reversed string
Set the counter to the strings length minus 1
Run until the counter gets to 0
For each time add the character at the index of the counter to the variable for the newly reversed string
This should begin at the last character and add every character in reverse order
*/

function revStr(str){
	var newString = "";
		for (var i = str.length-1; i >= 0 ; i--){
			newString += str[i];
		}
	return newString;
}

var myReversedString = revStr('Reverse this here string please');
if (1 == 1){
console.log(myReversedString);
}


