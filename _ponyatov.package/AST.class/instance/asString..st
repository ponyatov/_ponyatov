converting
asString: depth
	| s |
	s := String cr , (self pad: depth) , self header.
	nest do: [ :it | s := s , (it asString: depth + 1) ].
	^ s