tests
test_AST
	self assert:
	(
		(AST new: #abcd) % (Str new: 456) / (Int new: 123)
		/ (Int new: 2) / (Int new: 3) / (Int new: 4)
	) asString equals: (
		String cr , '<ast:abcd> # ' ,
		String cr , String tab , '456 = <str:456> # ' ,
		String cr , String tab , '0 : <int:123> # ' ,
		String cr , String tab , '1 : <int:2> # ' ,
		String cr , String tab , '2 : <int:3> # ' ,
		String cr , String tab , '3 : <int:4> # '
	)