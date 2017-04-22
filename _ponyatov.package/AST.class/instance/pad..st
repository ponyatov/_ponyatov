converting
pad: depth
	| s |
	s := ''.
	depth timesRepeat: [ s := s , String tab ].
	^ s