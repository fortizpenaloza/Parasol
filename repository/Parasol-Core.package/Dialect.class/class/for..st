instance creation
for: aBrowserName

	| subclass |

	subclass := self subclasses detect: [ :class | class canHandle: aBrowserName ].

	^ subclass new