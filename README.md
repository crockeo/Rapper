# Rapper

A little Ruby script to pull lyrics off of RapGenius (using Tim Rogers' awesome
library [rapgenius](http://github.com/timrogers/rapgenius) and feeding them into
the Mac's say command. It's for my last (and second) presentation at the Hacker
School.

### Usage

I'm not really too sure how you're supposed to organize Ruby projects (seeing as
this was my first one), so here's just how I made it run:

```bash
$ git clone http://github.com/crockeo/Rapper.git
$ cd Rapper
$ gem install rapgenius
$ make
# or
$ ruby src/main.rb
```

### License

Check out the LICENSE file. (Hint: it's an MIT license)
