Class {
	#name : 'AIMStockTest',
	#superclass : 'TestCase',
	#category : 'AIM-Tests',
	#package : 'AIM',
	#tag : 'Tests'
}

{ #category : 'as yet unclassified' }
AIMStockTest >> testDecrease [
	|stock|
	stock := AIMStock new initializeWith: 100.
	stock decreaseBy: 25.
	self assert:  stock value equals: 75
]

{ #category : 'as yet unclassified' }
AIMStockTest >> testHistory [
	|stock|
	stock := AIMStock new.
	stock increaseBy: 10.
	stock increaseBy: 20.
	self assert: stock history equals: #(0 10 30) asOrderedCollection
]

{ #category : 'as yet unclassified' }
AIMStockTest >> testHistoryIsProtected [
	|stock|
	stock := AIMStock new.
	stock history add: 999.
	self assert: stock history equals: #(0) asOrderedCollection
]

{ #category : 'as yet unclassified' }
AIMStockTest >> testIncrease [
	|stock|
	stock := AIMStock new.
	stock increaseBy: 10.
	self assert:  stock value equals: 10
]

{ #category : 'as yet unclassified' }
AIMStockTest >> testInitialValue [
	self assert: AIMStock new value equals: 0
]

{ #category : 'as yet unclassified' }
AIMStockTest >> testInitialValueCanBeSpecified [
	|stock|
	stock := AIMStock new initializeWith: 100.
	self assert:  stock value equals: 100
]
