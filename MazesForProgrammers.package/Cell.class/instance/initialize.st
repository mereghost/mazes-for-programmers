initialization
initialize
	super initialize.
	passages := Set new.
	walls := Set new
		add: #north;
		add: #south;
		add: #west;
		add: #east;
		yourself
		