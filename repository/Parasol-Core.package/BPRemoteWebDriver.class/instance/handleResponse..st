private
handleResponse: response

	response httpStatus ~= 204
		ifTrue:
			[ self handleResponse: response onSuccess: [ :result | dialect handle: result ] ]