tests
testParseWebElement

	| json parsed |
	json := '{"element-6066-11e4-a52e-4f735466cecf":"0"}'.
	parsed := BPSmalltalkPlatform current jsonRead: json.
	self assert: (parsed at: 'element-6066-11e4-a52e-4f735466cecf') = '0'