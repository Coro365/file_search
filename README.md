# FileSearch

Generates from an array of directories an array of the files they contain.
Support recursive search.

## Installation

`gem install file_search`

## Usage

```
require 'file_search'

p ['~/Downloads'].file_search
# => ["/home/user/Downloads/test1.txt", "/home/user/Downloads/a/test2.txt"]

p ['~/Downloads'].file_search(recursive: false)
# => ["/home/user/Downloads/test1.txt"]
```

## Test

`ruby test/file_search_test.rb`

## Credit
Copyright (C) Coro365
Licensed under the [MIT](LICENSE) license.


## Code of Conduct

Everyone interacting in the FileSearch project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Coro365/file_search/blob/master/CODE_OF_CONDUCT.md).
