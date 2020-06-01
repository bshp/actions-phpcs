# SquizLabs PHP CodeSniffer

````
.github/workflows/phpcs.yml
````
with.dir: the_directory_to_sniff  
    
````
name: phpcs
on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: SquizLabs PHP CodeSniffer (phpcs)
        uses: bshp/actions-phpcs@master
        with:
          dir: sonis/
````          
