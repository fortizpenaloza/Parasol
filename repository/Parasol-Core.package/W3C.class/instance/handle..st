remote responde handling
handle: aRemoteResponse

	(aRemoteResponse at: #value) ifNotEmpty: [ self error: 'Value unexpectedly not JSON empty collection' ]