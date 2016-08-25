var colors = ["blue", "red", "orange", "yellow"];
var names = ["Ed", "Pete", "George", "Frank"];

// create function that accepts a string and adds to colors array
// create function that adds string to names array

function newColor(str){
	colors.push(str);
}

function newName(str){
	names.push(str);
}
/* Create empty object
iterate through colors and names arrays
use for loop to iterate through arrays and add to object
add names as key
adds colors as value
print object
*/

function makeObject(array1,array2){
	var object = {};
		for (var i = 0; i <= array1.length-1; i++){
			object[array1[i]] = array2[i];
		}
	console.log(object)
}


newColor("pink");
console.log(colors);
newName("Aidan");
console.log(names);
makeObject(names, colors);

/* Create constructer for Car
properties for Car: type, speed, capacity, color, function that honks horn
*/

function Car(type, speed, capacity, color){
	this.type = type;
	this.speed = speed;
	this.capacity = capacity;
	this.color = color;
	this.honk = function(){
		console.log('Honk! Honk!!');
	};
}

var newCar = new Car('Sedan', 65, 5, 'Black');
console.log(newCar);
newCar.honk();
var fordMustangCoupe = new Car('Sports Car', 120, 2, 'Gun Metal');
console.log(fordMustangCoupe);
fordMustangCoupe.honk();
var ferrariEnzo = new Car('Sports Car', 250, 2, 'Matte Black');
ferrariEnzo.honk();

