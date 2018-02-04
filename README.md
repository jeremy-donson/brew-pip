# Keeping our systems in sync with command-line binaries, python3 modules, and team projects.

## Table of Contents

- [What Is This Tool?](#what-is-this-tool)
- [Why Should I Use This Tool?](#why-should-i-use-this-tool)
- [System Prerequisites](#system-prerequisites)
- [How Do I Use This Tool?](#how-do-i-use-this-tool)

## What Is This Tool

- This tool is for staying in sync on 1+ systems with various team projects that depend upon:

1. Command-line binaries, like git.

2. Python3 modules, which we manage with pip3.

3. The code projects themselves.

## Why Should I Use This Tool

- To avoid the burden of maintaining stable, current and tested across 1+ systems:

1. Command-line binaries, like git.

2. Python3 modules, which we manage with pip3.

3. The code projects themselves.


## How Do I Use This Tool

1. Clone this repo to each system you own.

```
$ mkdir -p ~/projects; cd ~/projects
$ git clone 
```

- Note:  If you are on linux or windows, then simply replace
package manager name 'brew' with either 'apt-get' or '[scoop](http://scoop.sh)', respectively in the main script.

```
cp brew-pip3-update-merge-test.sh retooled-pkg-mgr-pip3-update-merge-test.sh
```

2. Create a github.com free public repo to manage your own systems.

3.  Using the github url of that new remote project:

```
$ git remote rename origin upstream
$ 

```

4. Add tests to support proper testing

