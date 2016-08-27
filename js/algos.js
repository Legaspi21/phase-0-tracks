/* Pseudocode 
Create function that takes an array as a parameter
Create a variable for length and set it to 0
Create a variable for item to store the longest item
Loop through array
For each item in the array find the length of that item
For each item evaluate if it is longer than the value of length
If it is longer add the length to length variable
Also add the item at the current index to the item variable
Return the item with the greatest length at the end of function
*/

function longestItem(array){
	var length = 0;
	var item = '';
	for (i = array.length-1; i >= 0; i--){
		if (array[i].length >= length){
			length = array[i].length;
			item = array[i];
		}
	}
	return item;
}

console.log(longestItem(["Britney Spears", "N'Sync", "Backstreet Boys",]));
console.log(longestItem(["Hello","Good Bye Larry","Umm what is this?","Geez Louis", "Halleluja Howdy Do Ya", "By Golly Oh My", "Oh My Word How?", "And Thats It", "Thats All", "Folks"]));
console.log(longestItem(["Barking Up The Wrong Tree","Knuckle Down","Goody Two-Shoes","Wake Up Call"]))



