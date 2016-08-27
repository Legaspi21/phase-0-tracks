/* Pseudocode Release 1
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
/* Pseudocode Release 2
Create function that takes two object as a parameter
Loop through both objects and isolate the keys and values in separate variables
Compare items 
print true if there is a matching key value pair
print false if there is not a match
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
// Release 1
function matchingPair(object1,object2){
	var obj1Keys = [];
	var obj1Values = [];
	var obj2Keys = [];
	var obj2Values = [];
	for (var key in object1){
		obj1Keys.push(key);
		obj1Values.push(object1[key]);
	}
	for (var key2 in object2){
		obj2Keys.push(key2);
		obj2Values.push(object2[key2]);
	}
	for (i = obj1Keys.length-1; i >= 0; i--){
		if (obj1Keys[i] == obj2Keys[i] && obj1Values[i] == obj2Values[i]){
			console.log(true);
		}	
		else if (obj1Keys[i] != obj2Keys[i]){
			console.log(false);
		}
	}

}


// Release 0 Driver code
console.log(longestItem(["Britney Spears", "N'Sync", "Backstreet Boys",]));
console.log(longestItem(["Hello","Good Bye Larry","Umm what is this?","Geez Louis", "Halleluja Howdy Do Ya", "By Golly Oh My", "Oh My Word How?", "And Thats It", "Thats All", "Folks"]));
console.log(longestItem(["Barking Up The Wrong Tree","Knuckle Down","Goody Two-Shoes","Wake Up Call"]))
// Release 1 Driver code
matchingPair({name: "Steven", age: 55}, {name: "Tamir", age: 55});
matchingPair({name: "Steven", age: 55}, {name: "Tamir", number: 55});


