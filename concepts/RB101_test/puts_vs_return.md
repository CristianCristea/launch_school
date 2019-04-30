# puts vs return

- every method definition implicitly returns the last line
- the `return` keyword can be used to explicitly return a value
- `return` inside a method definition will return the value and 'exit' so the lines after `return` will not be executed
- `puts arg` is a method, usually called without (), that will print the argument to the screen(terminal) and return `nil`
- when is on the last line inside a method defintion, the method will return `nil`
