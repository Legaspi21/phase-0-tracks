#Release 2: Design and Build a Nested Data Structure
hotel = {
	rooms:{
		penthouse_suite:{
			bedrooms: 5,
			bathrooms: 3,
			perks:[
				'Jacuzzi',
				'Butler',
				'Complimentary Champagne'
				]
			},
		jr_suite:{
			bedrooms: 2,
			bathrooms: 1,
			perks:[
				'King-size beds',
				'Mini bar',
				'60 inch flat screen tv',
				'Balcony'
				]
			},
		double_room:{
			bedrooms: 1,
			bathrooms: 1,
			perks:['Two Queen beds',
				'Coffee maker',
				'40 inch flat screen tv',
				'Mini Fridge'
				]
			},
		single_room:{
			bedrooms: 1,
			bathrooms: 1,
			perks:[
				'Queen bed',
				'Coffee maker',
				'40 inch flat screen tv',
				'Mini Fridge'
				]
			}
		},
	spa:{
		saunas: 2,
		hot_tubs: 2,
		fitness_center:{
			cardio:[
				'Treadmill',
				'Stairmaster',
				'Elliptical'
				],
			weight_training:[
				'Bench Press',
				'Free weights',
				'Smith Machine'
				]
			
			}
		},
	restaurants:{
		five_star_dining:[
			'Stek Haus',
			"Kraab",
			"Mint"
			],
		casual_dining:[
			'Ivory Bar and Grill',
			'Miguels Cocina'
			],
		family_friendly:[
			'Rainforest Cafe',
			'Burgers and Games'
			]
		},
	business_center:[
		'Computers',
		'Fax Machine',
		'Free WiFi',
		'Copier'
		]
}

#List all room types (Keys in a hash)
p hotel[:rooms].keys
#Mini Fridge in double room (Item in array)
p hotel[:rooms][:double_room][:perks][3]
#Treadmill in fitness center
p hotel[:spa][:fitness_center][:cardio][0]
#How many five star restaurants in hotel?
p hotel[:restaurants][:five_star_dining].length    #3 five star restaurants
#Names of first 2 five star restaurants
p hotel[:restaurants][:five_star_dining][0..1] #or [0,2] <-- Begin at 0 and count 2
#Name of second family friendly restaurant
p hotel[:restaurants][:family_friendly][1]
#List categories of restaurants (Keys in a hash)
p hotel[:restaurants].keys
#How many hot tubs? (Value for key in a hash)
p hotel[:spa][:hot_tubs]
#Does the business center have free WiFi?
p hotel[:business_center].include?('Free WiFi') #true
