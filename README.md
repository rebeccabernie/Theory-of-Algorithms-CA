# Theory of Algorithms Programming Project (30%) 2018  

> Lecturer: Dr Ian McLoughlin  

## Breakdown of Project
This repository contains work on 10 exercises, completed from scratch in the [Racket](https://racket-lang.org/) programming language. Permitted built in functions include `cons, car, cdr, define, lambda, if, null, null?, cond, map, =` and basic numerical operators `(+, -, *, /, modulo)`. Each problem is worth 3%.  

## Explanation of Individual Problems

Jump to: [Problem 1](#problem-1), [Problem 2](#problem-2)

### Problem 1
*Write a function in Racket that uses a brute-force algorithm that takes a single positive integer and returns true if the number is a prime and false otherwise.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/01_Prime.rkt)*  
The function `decide-prime` takes one number as input and checks to see if the number is less than two. If less than two, the given number `p` is not a prime and the program will output "not a prime" and end.  
Otherwise, the given number `p` and a count `n` (starting at 2) will be passed to a second function, `check`. If p and n are equal, the program will output "prime" and end. Otherwise, it will check if the number can be divided by 2 evenly - if so, "not a prime" will be outputted and the program will end. Otherwise, it will pass the given number and (n + 1) back to the `check` function - these steps repeat until p is equal to n, in which case the number is prime.  

[back to top](#explanation-of-individual-problems)  

### Problem 2
*Write, from scratch, a function in Racket that takes a positive integer n0 (x) as input and returns a list by recursively applying the following operation, starting with the input number:*  
*If x is odd => 3(x) + 1. If x is even => x / 2.*  
*End the recursion when (or if) the number becomes 1. The function should return a list whose first element is n0, the second element is n1, and so on.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/02_Collatz.rkt)*  
The function `collatz-list` takes one number, `x`, as input and adds `x`to a list. If x is 1, nothing else will be added to the list and the program will output the list and end. Otherwise, it will perform a certain operation on x (given above) depending on whether x is odd or even, and add the result to the list. The answer is recursively passed back to `collatz-list`, until x equals 1, in which case the program outputs the list and ends.  
*Example input:* **5**. 5=/=1 -> 3(5)+1= **16**, 16=/=1 -> 16/2= **8**, 8=/=1 -> 8/2= **4**, 4=/=1 -> 4/2= **2**, 2=/=1 -> 2/2= **1**, 1=1, end. *Output: '(5 16 8 4 2 1)*.  

[back to top](#explanation-of-individual-problems)  

### Problem 3
*Write, from scratch, two functions in Racket. The first is called lcycle - it takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle - it shifts the list cyclically shifted one place to the right.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/03_Cycle.rkt)*  
The function `lcycle` takes a list as input, constructs a list using the cdr (all elements after the first) of the list and then the car (the first element only) of the list, and outputs the resulting list.  
*Example input:* (list 1 2 3 4 5). `cdr`= '(2 3 4 5), `car` = '(1). `cons` (`cdr list`) (`car list`). *Output: '(2 3 4 5 1).*  
The function `rcycle`is slightly more complex than `lcycle`. It takes a list as input and passes the list `l2` and the length of the list `i` to a separate function, called `recursive`. This function constructs a list using the cdr and car of the list, passing this new list and i - 1 as the length back to `recursive` - a new list will be generated each time until i equals 1, when the given list will outputted and the program will end.  
*Example input:* (list 1 2 3 4 ). Length 4. `cdr`= '(2 3 4), `car` = '(1) --> '(2 3 4 1). New length 3. '(3 4 1) + '(2). '(3 4 1 2) New length 2. '(4 1 2) + '(3). '(4 1 2 3). New length 1 -> output list '(4 1 2 3).  

[back to top](#explanation-of-individual-problems)  