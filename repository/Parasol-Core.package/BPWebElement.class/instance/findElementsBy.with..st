private
findElementsBy: selectorString with: valueString

	^driver handleResponse: (driver
				httpPost: (self baseElementURL , 'elements')
				jsonData: (Dictionary new
						at: 'using' put: selectorString;
						at: 'value' put: valueString;
						yourself))
		onSuccess: 
			[:result |
			(result at: 'value')
				collect: [:element | self class driver: driver elementID: (element at: driver webElementIdentifier)]]