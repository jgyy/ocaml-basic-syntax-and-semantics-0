# OCaml Basic Syntax and Semantics - 0

**Version: 1.00**

## Summary
In this first OCaml module, you will discover the basic syntax and semantics of the language: values, types, operators, let bindings, functions and recursion.

## Table of Contents
1. [Foreword](#foreword)
2. [General Rules](#general-rules)
3. [OCaml Modules, General Rules](#ocaml-modules-general-rules)
4. [Day-Specific Rules](#day-specific-rules)
5. [Exercise 00: ft_test_sign](#exercise-00-ft_test_sign)
6. [Exercise 01: ft_countdown](#exercise-01-ft_countdown)
7. [Exercise 02: ft_power](#exercise-02-ft_power)
8. [Exercise 03: ft_print_alphabet](#exercise-03-ft_print_alphabet)
9. [Exercise 04: ft_print_comb](#exercise-04-ft_print_comb)
10. [Exercise 05: ft_print_rev](#exercise-05-ft_print_rev)
11. [Exercise 06: ft_string_all](#exercise-06-ft_string_all)
12. [Exercise 07: ft_is_palindrome](#exercise-07-ft_is_palindrome)
13. [Exercise 08: ft_rot_n](#exercise-08-ft_rot_n)
14. [Exercise 09: ft_print_comb2](#exercise-09-ft_print_comb2)
15. [Submission and Peer Evaluation](#submission-and-peer-evaluation)

## Foreword
Black metal is an extreme subgenre and subculture of heavy metal music. Common traits include fast tempos, a shrieking vocal style, highly or heavily distorted guitars played with tremolo picking, raw (lo-fi) recording, unconventional song structures and an emphasis on atmosphere. Artists often appear in corpse paint and adopt pseudonyms.

During the 1980s, several thrash and death metal bands formed a prototype for black metal. This so-called first wave included bands such as Venom, Bathory, Mercyful Fate, Hellhammer and Celtic Frost. A second wave arose in the early 1990s, spearheaded by Norwegian bands such as Mayhem, Darkthrone, Burzum, Immortal and Emperor. The early Norwegian black metal scene developed the style of their forebears into a distinct genre. Norwegian-inspired black metal scenes emerged throughout Europe and North America, although some other scenes developed their own styles independently.

## General Rules
- Your project must be realized in a virtual machine.
- Your virtual machine must have all the necessary software to complete your project. These softwares must be configured and installed.
- You can choose the operating system to use for your virtual machine.
- You must be able to use your virtual machine from a cluster computer.
- You must use a shared folder between your virtual machine and your host machine.
- During your evaluations you will use this folder to share with your repository.
- Your functions should not quit unexpectedly (segmentation fault, bus error, double free, etc) apart from undefined behaviors. If this happens, your project will be considered non functional and will receive a 0 during the evaluation.
- We encourage you to create test programs for your project even though this work won't have to be submitted and won't be graded. It will give you a chance to easily test your work and your peers' work. You will find those tests especially useful during your defence.
- Submit your work to your assigned git repository. Only the work in the git repository will be graded. If Deepthought is assigned to grade your work, it will be done after your peer-evaluations. If an error happens in any section of your work during Deepthought's grading, the evaluation will stop.

## OCaml Modules, General Rules
- Every output goes to the standard output, and will be ended by a newline, unless specified otherwise.
- The imposed filenames must be followed to the letter, as well as class names, function names and method names, etc.
- Unless otherwise explicitly stated, the keywords `open`, `for` and `while` are forbidden. Their use will be flagged as cheating, no questions asked.
- Turn-in directories are ex00/, ex01/, ..., exn/.
- You must read the examples thoroughly. They can contain requirements that are not obvious in the exercise's description.
- You are only allowed to use the OCaml syntaxes you learned about since the OCaml module 00 up this current module or project. You are not allowed to use any additional syntax, modules and libraries unless explicitly stated otherwise.
- The assignments must be done in order. The graduation will stop at the first failed assignment.
- The compiler to use is ocamlopt. When you are required to turn in a function, you must also include anything necessary to compile a full executable. That executable should display some tests that prove that you've done the exercise correctly.
- Remember that the special token ";;" is only used to end an expression in the interpreter. Thus, it must never appear in any file you turn in. Regardless, the interpreter is a powerful ally, learn to use it at its best as soon as possible!
- No coding style is enforced during the OCaml piscine. You can use any style you like, no restrictions. Keep in mind that a code your peer-evaluator can't read is a code they can't grade.

## Day-Specific Rules
For this day, you must follow directions and outputs precisely. A single character mismatch means that the exercise is incorrect, although you are still free to format these outputs as you wish. For instance, the first exercise of the day expects the words "positive" or "negative," each followed by a new line.

Example of correct output:
```bash
$> ocamlopt ft_test_sign.ml
$> ./a.out
positive
positive
negative
$>
```

Also correct:
```bash
$> ocamlopt ft_test_sign.ml
$> ./a.out
Test with [42]: positive
Test with [0]: positive
Test with [-42]: negative
$>
```

WRONG output:
```bash
$> ocamlopt ft_test_sign.ml
$> ./a.out
positive positive negative
$>
```

Also WRONG:
```bash
$> ocamlopt ft_test_sign.ml
$> ./a.out
Test with [42]: [positive]
Test with [0]: [positive]
Test with [-42]: [negative]
$>
```

## Exercise 00: ft_test_sign
- Turn-in directory: `ex00/`
- Files to turn in: `ft_test_sign.ml`
- Allowed functions: `print_endline`

Write a function `ft_test_sign` of type `int -> unit` that displays "positive" or "negative", each followed by a new line, depending on the sign of the parameter. The value 0 is always considered positive.

Examples in the interpreter:
```ocaml
# ft_test_sign 42;;
positive
- : unit = ()
# ft_test_sign 0;;
positive
- : unit = ()
# ft_test_sign (-42);;
negative
- : unit = ()
#
```

Be sure to provide a test suite to demonstrate that your function works as intended during peer evaluation.

## Exercise 01: ft_countdown
- Turn-in directory: `ex01/`
- Files to turn in: `ft_countdown.ml`
- Allowed functions: `print_int` and `print_char`

Write a function `ft_countdown` of type `int -> unit` that displays a countdown from the parameter's value down to 0, with a new line after each value. If the value is negative, display only 0 followed by a new line.

Examples in the interpreter:
```ocaml
# ft_countdown 3;;
3
2
1
0
- : unit = ()
# ft_countdown 0;;
0
- : unit = ()
# ft_countdown (-1);;
0
- : unit = ()
#
```

Be sure to provide a test suite to demonstrate that your function works as intended during peer evaluation.

## Exercise 02: ft_power
- Turn-in directory: `ex02/`
- Files to turn in: `ft_power.ml`
- Allowed functions: Nothing

Write a function `ft_power` of type `int -> int -> int` that returns the first parameter raised to the power of the second parameter. Both parameters will always be positive or equal to 0, but they will never both be 0 at the same time.

Examples in the interpreter:
```ocaml
# ft_power 2 4;;
- : int = 16
# ft_power 3 0;;
- : int = 1
# ft_power 0 5;;
- : int = 0
#
```
