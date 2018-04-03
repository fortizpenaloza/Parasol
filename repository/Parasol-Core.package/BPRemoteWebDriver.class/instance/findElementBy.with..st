private
findElementBy: selectorString with: valueString

	^self handleResponse: (self
				httpPost: (self baseSessionURL , 'element')
				jsonData: (Dictionary new
						at: 'using' put: selectorString;
						at: 'value' put: valueString;
						yourself))
		onSuccess: 
			[:result |
			BPWebElement driver: self elementID: ((result at: 'value') at: 'element-6066-11e4-a52e-4f735466cecf')]