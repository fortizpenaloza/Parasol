providing
elementToBeDisplayed: aLocator

	^ [ :driver | 
	| element |

	element := aLocator value: driver.
	element isDisplayed ]