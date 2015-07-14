instance creation
for: aDirection
	| klass |
	klass := self subclasses detect: [ :cls | cls direction = aDirection ].
	^ klass
		from: klass startPoint
		to: klass endPoint
		color: Color black
		width: klass borderSize