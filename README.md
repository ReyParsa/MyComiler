# MyCompiler: A Custom Compiler for Mathematical and List Operations

This project is a custom compiler built using **Flex** (for lexical analysis) and **Bison** (for parsing). The compiler supports a variety of mathematical and list-based operations, such as checking if a number is even, calculating factorials, finding the maximum value in a list, and more. It is designed as a learning project to understand the basics of compiler construction.

---

## Features

The compiler supports the following operations:

### Mathematical Operations:
- **is_even**: Check if a number is even.
- **factorial**: Calculate the factorial of a number.
- **is_prime**: Check if a number is prime.
- **fibonacci**: Generate the Fibonacci sequence up to a given number.
- **gcd**: Calculate the greatest common divisor of two numbers.
- **lcm**: Calculate the least common multiple of two numbers.

### List Operations:
- **max_in_list**: Find the maximum value in a list.
- **min_in_list**: Find the minimum value in a list.
- **sum_list**: Calculate the sum of all elements in a list.
- **average_list**: Calculate the average of all elements in a list.

### String Operations (Planned):
- **reverse_string**: Reverse a string.
- **is_palindrome**: Check if a string is a palindrome.
- **char_count**: Count the number of characters in a string.

---

## Prerequisites

To build and run this project, you need the following tools installed on your system:

- **Flex**: A fast lexical analyzer generator.
- **Bison**: A parser generator.
- **GCC**: The GNU Compiler Collection for compiling C code.
- **Make**: A build automation tool (optional but recommended).

You can install these tools on a Linux-based system using the following commands:

```bash
sudo apt update
sudo apt install flex bison gcc make
```

---

## How to Build and Run

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ReyParsa/my_compiler.git
   cd MyCompiler
   ```

2. **Build the project**:
   Run the following commands to generate the compiler:
   ```bash
   flex scanner.l
   bison -d -v parser.y
   gcc lex.yy.c parser.tab.c -o mylang -lfl
   ```

3. **Run the compiler**:
   Execute the compiled program:
   ```bash
   ./mylang
   ```

4. **Provide input**:
   Enter commands in the supported syntax. For example:
   ```
   is_even 10;
   factorial 5;
   max_in_list [1, 2, 3, 4, 5];
   sum_list [10, 20, 30];
   ```

5. **View output**:
   The compiler will process the input and display the results:
   ```
   is_even 10: true
   factorial 5: 120
   max_in_list: 5
   sum_list: 60
   ```

---

## Project Structure

- **`scanner.l`**: The Flex file defining the lexical rules for tokenizing input.
- **`parser.y`**: The Bison file defining the grammar and semantic actions.
- **`common.h`**: A shared header file containing common definitions (e.g., the `List` structure).
- **`README.md`**: This file, providing an overview of the project.
- **`Makefile`**: (Optional) A build automation file for compiling the project.

---

## Example Input and Output

### Input:
```
is_even 10;
factorial 5;
max_in_list [1, 2, 3, 4, 5];
sum_list [10, 20, 30];
```

### Output:
```
is_even 10: true
factorial 5: 120
max_in_list: 5
sum_list: 60
```

---

## Contributing

Contributions are welcome! If you'd like to add new features, fix bugs, or improve the documentation, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes.
4. Submit a pull request with a detailed description of your changes.

---

## Acknowledgments

This project was inspired by my studies in compiler design and language processing. I also received valuable assistance from AI tools and instructional videos on YouTube, which greatly enhanced my understanding and ability to implement the features of this compiler. Special thanks to the creators of Flex and Bison for providing such powerful tools.
