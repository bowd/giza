# Giza

Simple fisher plugin which abstracts the compile/run steps when running cairo programs.
I felt the need for this more and more when I was playing with short programs.
It's opinionated about what arguments it sets for `cairo-run` and forwards the rest.

## Example

Say we have the program `example.cairo`, you can run:

```
$ giza run example.cairo
Addr  Value
-----------
⋮
0:0   5189976364521848832
0:1   100
0:2   5210805504208502784
0:3   5210805499913535488
0:4   5207427813077843968
0:5   23
0:6   5201798300658794496
0:7   5207427813077647360
0:8   45
0:9   5201798300658794496
0:10  5198420613823168512
0:11  67
0:12  2345108766317314046
⋮
1:0   2:0
1:1   3:0
1:2   100
1:3   10000
1:4   1000000
1:5   230000
1:6   1230000
1:7   4500
1:8   1234500
1:9   1234567

Number of steps: 9 (originally, 9)
Used memory cells: 23
Register values after execution:
pc = 3:0
ap = 1:10
fp = 2:0
```

And it will compile and run, showing the full output

## Installation

```
$ fisher install bowd/giza
```

## Release History

* 0.0.1
    * Very basic function to wrap two calls to `cairo-compile` and `cairo-run`

## Meta

boqdan – [@boqdan_](https://twitter.com/boqdan_)

Distributed under the MIT license. See ``LICENSE`` for more information.

## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
