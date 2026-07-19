Class {
	#name : 'AIMSimulationTest',
	#superclass : 'TestCase',
	#category : 'AIM-Tests',
	#package : 'AIM',
	#tag : 'Tests'
}

{ #category : 'as yet unclassified' }
AIMSimulationTest >> testSimulationStartsAtZero [
	self assert: AIMSimulation new time equals: 0
]

{ #category : 'as yet unclassified' }
AIMSimulationTest >> testSimulationSteps [
	|sim|
	sim := AIMSimulation new.
	sim step.
	self assert:  sim time equals: 1
]

{ #category : 'as yet unclassified' }
AIMSimulationTest >> testStepMany [
	|sim|
	sim := AIMSimulation new.
	sim step: 25.
	self assert:  sim time equals: 25
]
