# Theory of Algorithms Programming Project (30%) 2018  

> Lecturer: Dr Ian McLoughlin  

## Breakdown of Project
This repository contains work on 10 exercises, completed from scratch in the [Racket](https://racket-lang.org/) programming language. Permitted built in functions include `cons, car, cdr, define, lambda, if, null, null?, cond, map, =` and basic numerical operators `(+, -, *, /, modulo)`. Each problem is worth 3%.  

## Explanation of Individual Problems

#### Problem 1
*Write a function in Racket that uses a brute-force algorithm that takes a single positive integer and returns true if the number is a prime and false otherwise.*  
The function `decide-prime` takes one number as input and checks to see if the number is less than two. If less than two, the given number `p` is not a prime and the program will output "not a prime" and end.  
Otherwise, the given number `p` and a count `n` (starting at 2) will be passed to a second function, `check`. If p and n are equal, the program will output "prime" and end. Otherwise, it will check if the number can be divided by 2 evenly - if so, "not a prime" will be outputted and the program will end. Otherwise, it will pass the given number and (n + 1) back to the `check` function - these steps repeat until p is equal to n, in which case the number is prime.
