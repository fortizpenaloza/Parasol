json
jsonOn: stream

	"Pharo specific override to render the receiver."

	(Dictionary new
		at: driver webElementIdentifier put: elementID;
		yourself) jsonOn: stream