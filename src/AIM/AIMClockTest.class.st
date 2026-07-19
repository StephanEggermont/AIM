Class {
	#name : 'AIMClockTest',
	#superclass : 'TestCase',
	#category : 'AIM-Tests',
	#package : 'AIM',
	#tag : 'Tests'
}

{ #category : 'as yet unclassified' }
AIMClockTest >> testManySteps [
	|clock|
	clock := AIMClock new.
	100 timesRepeat: [clock step].
	self assert: clock time equals: 100
]

{ #category : 'as yet unclassified' }
AIMClockTest >> testStartsAtZero [
	|clock|
	clock := AIMClock new.
	self assert: clock time equals: 0
]

{ #category : 'as yet unclassified' }
AIMClockTest >> testStep [
	|clock|
	clock := AIMClock new.
	clock step.
	self assert: clock time equals: 1
]
