# symbols

This small library defines constants, aliases and some originial math functionality for a lot of UTF-8 symbols and combinations thereof.

Warning: This gem pollutes the Kernel module and extends built-in classes. If you don't like that, don't use it.

## install

There seems to be a problem with RDoc, ri and UTF-8 characters. So install the gem manually without documentation like this

    gem install symbols --no-rdoc --no-ri

## example

Here are some examples (See the tests for more examples):

### constants

e, i, π, ∞, etc. are all defined.

    e**(i*π)+1

### fractions

Most common fractions are defined, for example:

    ⅛, ⅕, ¼, ⅓, ½, ¾, ⅚ and ⅞

### comparison

Short cuts for comparison operators

    3.≤ 4
    4.≥ 3
    5.≠ 10
    ϵ.≈ 0.0

### logarithm

For any number _n_ between 1 and 10, a log_n_ function is defined, with _n_ as subscript:

    log₂(64)
    log₁₀(10)

### plus-minus

The plus-minus and minus-plus operators are defined. With them, you can calculate e.g. the quadratic formula like this:

    (-b.±(√(b.²-4*a*c)))/2*a

### power

For any number _n_ between 0 and 9, there is a function n defined on Numeric, where _n_ is a superscript, that calculates the _n_th power of the caller.

    4 == 2.²
    16 == 2.⁴

### root

There is a root function:

    √(4) == 2

For common roots, constants are defined:

    √2
    √3
    √5

Also, for any number _n_ between 1 and 9, there is a function defined that calculates the _n_th root:

    ³√(8)
    ⁴√(16)
    ⁵√(32)

### sets

Common set operators are defined:

    [1,2,3].⊆([1,2,3,4,5])
    [1,2,3].⊂([1,2,3,4,5])
    [1,2,3,4,5].⊇([1,2,3,4,5])
    [1,2,3,4,5].⊃([1,2,3])
    [1,2].∪([5,6])
    [1,2,5].∩([2,5,6])
    [1,2,5].∖([2,5,6])

"Element of" and "Not element of" are defined on Object. They work for classes, containers and anything that responds to "include?":

    4.∈([4,5,6])
    "foo".∈(["foo", "bar", "baz"])
    4.∈(1..10)
    5.∉(1..3)
    5.0.∉(Fixnum)
    3.∉(String)

### number sets

The following sets are defined (Warning: These are not just capital letters; they are the double-struck capital letters you know from math lessons):

    ℤ - Integers
    ℕ - Positive integers
    ℚ - Rational numbers
    ℝ - Floats
    ℂ - Complex
    𝔹 - Booleans

Use them in combination with the "Element of" function:

    20.∈(ℕ)
    -1.∈(ℤ)
    Rational(4,5).∈(ℚ)
    π.∈(ℝ)
    i.∈(ℂ)
    false.∈(𝔹)

### ruby

The lambda function got the short cut λ:

    λ { |x| x ** 2 }

# fork

Feel free to fork and submit pull requests!
