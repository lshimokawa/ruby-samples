Feature: Sexing
	In order to separate the values from the male and female chickens
	As a chicken sexer
	I want to guess the gender with the maximum confidence

	Scenario Outline: Guessing the gender
		Given a number of <bumps>
		When guessing
		Then return <gender> and <factor>

	Examples:
	| bumps | gender	| factor	|
	| 0			| unknown	| 0				|
	| 1			| male		| 80			|
	| 2			| male		| 80			|
	|	3			| female	| 80			|
	| 4			|	female	| 80			|
	| 5			| unknown |	0				|