# Get the Best of Type Hints

Cristhian Motoche @ Stack Builders 🇪🇨

```python [1-2|3]
print(x, y, z)
print(x, y, z)
print(x, y, z)
print(x, y, z)
```

***

### Dynamic & Strong

| Dynamic         | Strong     |
|--------------|-----------|
| The type is associated with run-time values, and not named variables | The value of a type does not change in unexpected ways |
|  | Every change of type requires an explicit conversion |

***

### Dynamic & Strong

```python
year = 2023
print(type(year))
# > <class 'int'>  <-- Every value has a type at *runtime*

conf_name = "PyCon"
print(type(conf_name))
# > <class 'str'>  <-- Every value has a type at *runtime*


full_conf_name = conf_name + year
# > ^-- Without explicit casting it throws an error at *runtime*
# >
# > Traceback (most recent call last):
# >   File "main.py", line 7, in <module>
# >     full_conf_name = conf_name + year
# > TypeError: can only concatenate str (not "int") to str


full_conf_name = conf_name + str(year)
# > Requires explicit conversion --^
```

It would be nice to avoid these types of errors before runtime...

***

### PEPs related to Typing

|ID|Title|Created at|
|--|--|--|
|**PEP 484**|Type Hints|29-Sep-2014|
|PEP 586|Literal Types|14-Mar-2019|
|PEP 561|Packaging Type Information|09-Sep-2017|
|...|


https://peps.python.org/topic/typing/

***

### PEP 484 - Goals

- Provide a standard syntax for type annotations
- Static analysis and refactoring
- Potential runtime type checking
- Support for off-line type checkers

***

### Type Hints - Syntax

```python
def format_number(x: int, y: int) -> str:
    return f'+{x}{y}'
```

***

### Type Hints - Type check

```python
format_number('+57', 987654321)
# ^-- won't type check!
#
# main.py:3: error: Argument 1 to "format_number" has incompatible type "str";
# expected "int"  [arg-type]

format_number(57, 987654321)
# ^-- will type check!
```

***

...

***

# Thank you!
