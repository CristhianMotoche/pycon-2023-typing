# Get the Best of Type Hints

Cristhian Motoche @ Stack Builders 🇪🇨

***

## History

PEP 484 (Created on Sep 29, 2014)


***

## Typing - Type Alias

```python
Code = int
Number = int

def send_sms(x: Code, y: Number) -> None:
  print(f'Sending SMS to +{x} {y}')

send_sms('+57', 987654321)

^^^
main.py:7: error: Argument 1 to "send_sms" has incompatible type "str";
expected "int"  [arg-type]
```
