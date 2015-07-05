initialization
initialize
	super initialize.
	links := OrderedCollection new.
	walls := Set new
		add: #north;
		add: #south;
		add: #west;
		add: #east;
		yourself