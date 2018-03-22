# Theory of Algorithms Programming Project (30%) 2018  

> Lecturer: Dr Ian McLoughlin  

## Breakdown of Project
This repository contains work on 10 exercises, completed from scratch in the [Racket](https://racket-lang.org/) programming language. Permitted built in functions include `cons, car, cdr, define, lambda, if, null, null?, cond, map, =` and basic numerical operators `(+, -, *, /, modulo)`. Each problem is worth 3%.  

## Explanation of Individual Problems

Jump to:  
[Problem 1](#problem-1) - [Problem 2](#problem-2) - [Problem 3](#problem-3) - [Problem 4](#problem-4) - [Problem 5](#problem-5) - [Problem 6](#problem-6) - [Problem 7](#problem-7) - [Problem 8](#problem-8) - [Problem 9](#problem-9) - [Problem 10](problem-10)

-----  

### Problem 1
*Write a function in Racket that uses a brute-force algorithm that takes a single positive integer and returns true if the number is a prime and false otherwise.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/01_Prime.rkt)*  
The function `decide-prime` takes one number as input and checks to see if the number is less than two. If less than two, the given number `p` is not a prime and the program will output "not a prime" and end.  
Otherwise, the given number `p` and a count `n` (starting at 2) will be passed to a second function, `check`. If p and n are equal, the program will output "prime" and end. Otherwise, it will check if the number can be divided by 2 evenly - if so, "not a prime" will be outputted and the program will end. Otherwise, it will pass the given number and `(n + 1)` back to the `check` function - these steps repeat until `p` is equal to `n`, in which case the number is prime.  

*[back to top](#explanation-of-individual-problems)*  

-----  

### Problem 2
*Write, from scratch, a function in Racket that takes a positive integer n0 (x) as input and returns a list by recursively applying the following operation, starting with the input number:*  
*If x is odd => 3(x) + 1. If x is even => x / 2.*  
*End the recursion when (or if) the number becomes 1. The function should return a list whose first element is n0, the second element is n1, and so on.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/02_Collatz.rkt)*  
The function `collatz-list` takes one number, `x`, as input and adds `x`to a list. If `x` is 1, nothing else will be added to the list and the program will output the list and end. Otherwise, it will perform a certain operation on `x` (given above) depending on whether `x` is odd or even, and add the result to the list. The answer is recursively passed back to `collatz-list`, until `x` equals 1, in which case the program outputs the list and ends.  
*Example input:* **5**. 5=/=1 -> 3(5)+1= **16**, 16=/=1 -> 16/2= **8**, 8=/=1 -> 8/2= **4**, 4=/=1 -> 4/2= **2**, 2=/=1 -> 2/2= **1**, 1=1, end. *Output: '(5 16 8 4 2 1)*.  

*[back to top](#explanation-of-individual-problems)*  

-----  

### Problem 3
*Write, from scratch, two functions in Racket. The first is called `lcycle` and should take a list as input and return the list cyclically shifted one place to the left. The second is called `rcycle` and should take a list as input and return the list cyclically shifted one place to the right.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/03_Cycle.rkt)*  
The function `lcycle` takes a list as input, constructs a list using the `cdr` (all elements after the first) of the list and then the `car` (the first element only) of the list, and outputs the resulting list.  
*Example input:* (list 1 2 3 4 5). `cdr`= '(2 3 4 5), `car` = '(1). `cons` (`cdr list`) (`car list`). *Output: '(2 3 4 5 1).*  
The function `rcycle`is slightly more complex than `lcycle`. It takes a list as input and passes the list `l2` and the length of the list `i` to a separate function, called `recursive`. This function constructs a list using the `cdr` and `car` of the list, passing this new list and `i - 1` as the length back to `recursive` - a new list will be generated each time until `i` equals 1, when the given list will outputted and the program will end.  
*Example input:* (list 1 2 3 4 ). Length 4. `cdr`= '(2 3 4), `car` = '(1) --> '(2 3 4 1). New length 3. '(3 4 1) + '(2). '(3 4 1 2) New length 2. '(4 1 2) + '(3). '(4 1 2 3). New length 1 -> output list '(4 1 2 3).  

*Note:*  I used a `flatten-list`function, adapted from [this answer on stack overflow](https://stackoverflow.com/a/28753817), to prevent the program from creating lists within lists.

*[back to top](#explanation-of-individual-problems)*  
  
-----  

### Problem 4
*Write a function `sublsum` in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn't matter.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/04_SublistSum.rkt)*  
The function `sublsum` takes one list as input and returns an empty list if the given list is null, or performs the `combinations` function on the list. The `combinations` function will return a list of all combinations of elements in the input list, or the *powerset of the list*. The `cdr`of this list is passed to the `split` function - only the `cdr` is passed because the first element of a `combinations` generated list is always the empty list, which does not need to be checked.  
The `split` function checks each combination of elements in the given list. If the current combination passed to the `sum` function returns a 0, it constructs a new list containing this combination and passes the remaining lists back to `split`, otherwise it ignores the list and passes the remaining lists back to `split`.  
The `sum` function recursively adds each element in a given list to the remainder of the list, until the list is empty.  

*[back to top](#explanation-of-individual-problems)*  

-----  

### Problem 5
*Write a function `hamming-weight` in Racket that takes a list l as input and returns the number of non-zero elements in it.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/05_HammingW.rkt)*  
The function `hamming-weight` takes one list as input and checks first to see if the list is null, in which case 0 is outputted. If the list is not null, the function checks to see if there is only one element in the list. If so, it outputs that element - `(list 0)` has 0 non-zero elements, `(list 1)` has 1 non-zero elements. If there is more than one element in the list, it passes the list to the `sum` function.  
The `sum` function first checks to see if a given list contains one element. If so, it returns the element (1 or 0). If there is more than one element, it checks to see if the first element is 1. If so, it adds this to a count and passes the remainder back to the `sum` function. If not, it does not add to the count and passes the remainder back. The program will eventually end and print out a total for the number of non-zero elements of a list.  
*Example:* `'(0 1 1 0 0 1 0)` will return 3.  

*[back to top](#explanation-of-individual-problems)*  

-----  

### Problem 6
*Write a function `hamming-distance` in Racket that takes two lists and returns the number of positions in which they diﬀer.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/06_HammingD.rkt)*  
The `hamming-distance` function takes two lists as input. If a list is empty, the function will return the length of the other list. The function then checks if the `car` of both lists is the same, the `cdr` of both lists is passed back to the `hamming-distance` function. If the `car`s are not the same, the count is incremented and the `cdr`s passed back to `hamming-distance`.  
*Example:* `(list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))` => **5** positions where elements differ.  `(list ) (list 1 1 1 1 0 0 0 0))` => **8** positions where elements differ.

*[back to top](#explanation-of-individual-problems)*  

-----  

### Problem 7
*Write a function `maj` in Racket that takes three lists x, y and z of **equal length** and containing only 0’s and 1’s. The function should return a list containing - 1 where two or more of x, y and z contain 1’s, 0 otherwise.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/07_Maj.rkt)*  
The function `maj` takes three lists of equal length as input, and will return an empty list if the first list is empty (if one is, they all must be). The function then checks if `car list1` and `car list2`, or `car list1` and `car list3`, or `car list2` and `car list3` are the same. If any of these are true, the element is added to a list and the `cdr`s of each list passed back to `maj`. If the element only appears in one list, the `cdr`s of each list are passed back to `maj`. 

*[back to top](#explanation-of-individual-problems)*  

-----  

### Problem 8
*Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise.*  

*[Racket file](https://github.com/rebeccabernie/Theory-of-Algorithms-CA/blob/master/08_Chse.rkt)*  
The function `chse` takes three lists as input and first checks to see if the first list is null, returning an empty list if so. Otherwise, the function checks if the `car list1` is 1. If so, the `car list2` will be added to a list and the remaining elements of all three lists passed back to `chse`. Otherwise, the `car list1` must be a 0, so the `car list3` is added to a list and the remaining elements of each list passed back to `chse`.  
*Example:* `(list 0 1 0 1) (list 1 2 3 4) (list 5 6 7 8))` => **'(5 2 7 4)**  

*[back to top](#explanation-of-individual-problems)*  

