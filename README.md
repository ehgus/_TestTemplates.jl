# _TestTemplates

Please execute the following code before the use
```Julia
using _TestTemplates
using FileIO
detect_test(io) = endswith(io.name,".test>")
add_format(format"TEST",detect_test,[".test"], [:_TestTemplates])
```

## Example

```Julia
save("test.test","Hello, world")
load("test.test")
```