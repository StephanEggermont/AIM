Class {
	#name : 'AIMClock',
	#superclass : 'Object',
	#instVars : [
		'time'
	],
	#category : 'AIM-Core',
	#package : 'AIM',
	#tag : 'Core'
}

{ #category : 'as yet unclassified' }
AIMClock >> gtOverviewFor: aView [
<gtView>
	^aView textEditor
		title: 'Clock';
		priority: 10;
		text: self time printString
]

{ #category : 'as yet unclassified' }
AIMClock >> initialize [
	super initialize.
	time := 0.
]

{ #category : 'as yet unclassified' }
AIMClock >> step [
	time := time+1
]

{ #category : 'accessing' }
AIMClock >> time [
	^ time
]

{ #category : 'accessing' }
AIMClock >> time: anObject [
	time := anObject
]
