# dra -- Douay-Rheims 1899 American Edition Bible on the Command Line

A command line tool for search and reading the Latin Vulgate translated into English by members of the Catholic seminary English College, Douai, France. This translation is the foundation which nearly all English Catholic translations are based on. Revised by Bishop Richard Challoner between 1749 and 1752 to improve reading and comprehension.

Format and original implementation from [bontibon/kjv](https://github.com/bontibon/kjv). Meant to be a companion program.

Forked from Luke Smith's [vul -- Latin Vulgate Bible on the Command Line](https://github.com/LukeSmithxyz/vul) project.

## Usage

    usage: ./dra [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern


## Install

Install `dra` by running:

```
git clone https://github.com/eastrocky/dra.git
cd dra
sudo make install
```

## License

The script is in the public domain.
