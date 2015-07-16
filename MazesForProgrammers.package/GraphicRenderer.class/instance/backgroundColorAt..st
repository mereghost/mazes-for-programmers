rendering
backgroundColorAt: aPoint
	| ratio bright dark |
	ratio := (distances max - (distances at: aPoint)) / distances max.
	bright := (128 + (127 * ratio)) / 255.0.
	dark := 255 * ratio / 255.0.
	^ Color r: dark g: bright b: dark