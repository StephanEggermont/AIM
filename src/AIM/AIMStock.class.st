Class {
	#name : 'AIMStock',
	#superclass : 'Object',
	#instVars : [
		'value',
		'history'
	],
	#category : 'AIM-Core',
	#package : 'AIM',
	#tag : 'Core'
}

{ #category : 'as yet unclassified' }
AIMStock >> changeBy: anAmount [
	value := value+anAmount.
	history add: value
]

{ #category : 'as yet unclassified' }
AIMStock >> decreaseBy: anAmount [
	self changeBy: anAmount negated
]

{ #category : 'as yet unclassified' }
AIMStock >> gtOverviewFor: aView [
<gtView>
	^aView columnedList
		title: 'Overview';
		items: {
			'Value' -> self value.
			'Observations' -> self history size};
		column: 'Property'
			text: [:association | association key];
		column: 'Value'
			text: [:association | association value]
]

{ #category : 'as yet unclassified' }
AIMStock >> history [
	^history copy
]

{ #category : 'as yet unclassified' }
AIMStock >> increaseBy: anAmount [
	self changeBy: anAmount
]

{ #category : 'as yet unclassified' }
AIMStock >> initialize [
	super initialize.
	self initializeWith: 0.
]

{ #category : 'as yet unclassified' }
AIMStock >> initializeWith: anAmount [
	value := anAmount.
	history := OrderedCollection with: anAmount
]

{ #category : 'as yet unclassified' }
AIMStock >> value [
	^value
]
