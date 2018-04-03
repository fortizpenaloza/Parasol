evaluating
tryingEvery: anInterval until: aBlockClosure

	| condition |

	condition := aBlockClosure
		value: ExpectedConditionProvider new
		value: LocatorProvider new.

	[ [ condition value: driver ]
		whileFalse: [ (Delay forDuration: anInterval) wait ] ]
		on: BPNoSuchElementException
		do: [ :signal | signal retry ]