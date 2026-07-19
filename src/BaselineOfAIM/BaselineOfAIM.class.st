Class {
	#name : 'BaselineOfAIM',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAIM',
	#package : 'BaselineOfAIM'
}

{ #category : 'loading' }
BaselineOfAIM class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'AIM' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : 'baseline' }
BaselineOfAIM >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'AIM'
		]
]
