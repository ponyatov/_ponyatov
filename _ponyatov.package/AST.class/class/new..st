instance creation
new: aVal
	| inst |
	inst := self new.
	inst val: aVal asString.
	^ inst