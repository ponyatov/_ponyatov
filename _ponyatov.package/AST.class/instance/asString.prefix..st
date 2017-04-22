converting
asString: depth prefix: aPrefix
	| s n |
	s := String cr , (self pad: depth) , aPrefix , self header.
	attr do: [ :it | s := s , (it asString: depth + 1 prefix: it val , ' = ') ].
	n := 0.
	nest do: [ :it | s := s , (it asString: depth + 1 prefix: n asString , ' : '). n := n + 1 ].
	^ s