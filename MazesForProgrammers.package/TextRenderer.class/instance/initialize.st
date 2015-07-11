initialization
initialize
	super initialize.
	gridBuffer := WriteStream with: ''.
	bodyBuffer := WriteStream with: ''.
	bottomBuffer := WriteStream with: ''