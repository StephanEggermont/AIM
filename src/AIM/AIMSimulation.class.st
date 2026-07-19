Class {
	#name : 'AIMSimulation',
	#superclass : 'Object',
	#instVars : [
		'clock'
	],
	#category : 'AIM-Core',
	#package : 'AIM',
	#tag : 'Core'
}

{ #category : 'as yet unclassified' }
AIMSimulation >> afterStep [
]

{ #category : 'as yet unclassified' }
AIMSimulation >> beforeStep [
]

{ #category : 'accessing' }
AIMSimulation >> clock [
	^ clock
]

{ #category : 'accessing' }
AIMSimulation >> clock: anObject [
	clock := anObject
]

{ #category : 'as yet unclassified' }
AIMSimulation >> gtOverviewFor: aView [
<gtView>
	^ aView columnedList
		title: 'Overview';
		priority: 10;
			items: {
				'Time' -> self time};
		column: 'Property'
			text: [ :assoc | assoc key ];
		column: 'Value'
			text: [ :assoc | assoc value printString ].
]

{ #category : 'as yet unclassified' }
AIMSimulation >> initialize [
	super initialize.
	clock := AIMClock new
]

{ #category : 'as yet unclassified' }
AIMSimulation >> step [
	self beforeStep.
	clock step.
	self afterStep
]

{ #category : 'as yet unclassified' }
AIMSimulation >> step: anInteger [
	anInteger timesRepeat: [self step]
]

{ #category : 'as yet unclassified' }
AIMSimulation >> time [
	^clock time
]
