// 7.2
// declares two separate arrays for colors and horses
var colors = ["blue", "red", "brown", "white"];
var names = ["Neigh", "Henny", "Benny", "Timmy"];

// adds color and name to colors and horses respectively
colors.push("orange");
names.push("Tom");

//add color to a horses name
var horses = {};
for (i = 0; i<names.length; i++){
	horses[names[i]] = colors[i];
}
console.log(horses);

//car function
function Car(year, make, model){
	this.year = year;
	this.make = make;
	this.model = model;
	this.honk = function(){console.log("BEEPBEEP")}

}
console.log("Let's build a car");
var newCar = new Car(2015, "Acura", "TLX");
console.log(newCar);
newCar.honk;
var newerCar = new Car(2004, "Honda", "Element");
console.log(newerCar);
newerCar.honk;
var dreamCar = new Car(1969, "Ford", "Mustang");
dreamCar.honk;