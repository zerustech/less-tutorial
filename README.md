# Less Tutorial #
This project is a tutorial of [less][3].

::: info-box note

This tutorial is based on Less 3.0, which is the latest releases at the time of
documentation.

:::

## Directory Structure ##

The directory structure of this project is as follows:

```bash
<base>             # project base directory
  \_ bin
  |   \_ task      # scripts for starting/stopping test cases
  |
  |_ docs          # documents
  |_ test-cases
  |   \_ less      # less test cases
  |   |_ test.sh   # the test script that runs the test cases
  |
  |_ var                   # log and pid files

```

## How to Use This Tutorial ##

### Install Composer Dependencies ###

```bash
$ cd <base>
$ composer install
```

### Change Configuration ###

Edit `<base>/bootstrap.sh` and configure the following variables according to your
enviornment:

```bash
#!/bin/bash
...
php_home=<path_to_php_base_directory>
varnish_home=<path_to_varnish_base_directory>

```

### Test Cases ###

This project organizes all test cases in `<base>/test-cases/less`

### Run Multiple Test Cases ###

```bash
$ cd <base>
$
$ # run all test cases interactively in verbose mode.
$ bin/tasks/task.all.run
$
$ # run all test cases in less folder interactively in verbose mode.
$ bin/tasks/task.all.run test-cases/less
$
$ # run all test cases automatically.
$ bin/tasks/task.all.run -a
$
$ # run all test cases in scilent mode.
$ bin/tasks/task.all.run -s
$
$ # run all test cases in verbose mode.
$ bin/tasks/task.all.run -v
$
$ # Usage of task.all.run:
$ # task.all.run: usage: task.all.run [-avs] [-l log_file] [-e task_exec]
$ # [-p path_pattern] [-n name_pattern] [-d depth|min+|min-max] path
$ # [task_arguments ...]
$ #
$ # The options are as follows:
$ # -a Run all tasks automatically.
$ # -v Run all tasks in verbose mode: display output from tasks to stdout.
$ # -s Run all tasks in scilent mode: hide output from tasks.
```

### Run Single Test Case ###

Take the variables.less test case for example:
```bash
$ cd <base>/test-cases
$ ./test.sh ./less/variables.less
```

# References #
* [The zerustech/cli project][2]

[1]: https://opensource.org/licenses/MIT "The MIT License (MIT)"
[2]: https://github.com/zerustech/cli "zerustech/cli"
[3]: http://lesscss.org/ "Less"

# License #
This tutorial is published under the [MIT License][1].
