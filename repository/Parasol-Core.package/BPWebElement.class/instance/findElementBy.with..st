private
findElementBy: selectorString with: valueString

	^driver handleResponse: (driver
				httpPost: (self baseElementURL , 'element')
				jsonData: (Dictionary new
						at: 'using' put: selectorString;
						at: 'value' put: valueString;
						yourself))
		onSuccess: 
			[:result |
			self class driver: driver elementID: ((result at: 'value') at: 'element-6066-11e4-a52e-4f735466cecf')]