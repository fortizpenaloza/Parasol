running
testSize

	| window1 windowHandle1 windowHandle2 window2 |
	
	window1 := driver manage window.
	window1 setSize: 400@250.
	self assert: window1 getSize = (400@250).
	
	windowHandle1 := driver getWindowHandle.
	(driver findElementByPartialLinkText: 'Wikipedia') click.
	windowHandle2 := (driver getWindowHandles copyWithout: windowHandle1) first.
	driver switchTo window: windowHandle2.

	self flag: 'The following does not work, need to figure out why not'.
"	window2 := driver manage window.
	
	window1 setSize: 210@300.
	window2 setSize: 255@290.
	self assert: window1 getSize = (210@300).
	self assert: window2 getSize = (255@290)."