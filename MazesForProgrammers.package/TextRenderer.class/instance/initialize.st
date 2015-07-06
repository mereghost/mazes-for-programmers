initialization
initialize
	super initialize.
	gridBuffer := WriteStream with: String cr.
	bodyBuffer := WriteStream with: ''.
	bottomBuffer := WriteStream with: ''