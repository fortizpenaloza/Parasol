remote responde handling
handle: aRemoteResponse

	(aRemoteResponse at: #value) ifNotNil: [ self error: 'Value unexpectedly not JSON nil' ]