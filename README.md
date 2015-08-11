# String Matching with Regular Expressions

## Summary
In this challenge we'll be working with Ruby's [`String`](http://www.ruby-doc.org/core-1.9.3/String.html) and [`Regexp`](http://ruby-doc.org/core-1.9.3/Regexp.html) classes.  More specifically, we'll be searching strings for specific patterns of characters, which we'll be defining as regular expressions.

The Ruby `String` class defines over 100 public methods that give Ruby programmers remarkable power to process, manipulate, and transform textual data.  About a dozen of these string methods can be used with regular expressions in order to allow for high-powered string matching.

What do we mean by high-powered string matching?  Let's begin by looking at an example of low-powered string matching. If we're on a webpage, we can use our browser's search functionality (⌘f on a Mac) to search for a specific word within the page's text. This search is limited because we need to input the exact characters that we're looking for.

What if we wanted to search for something less specific?  Any phone number, or any e-mail address on the page? We wouldn't know the exact digits of any phone number that might be on the page, but we could guess that an American phone number would probably contain 10 digits, probably divided into groups of three, three, and four digits.  This is the type of high-powered matching that regular expressions offer and which we'll be exploring in this challenge.


### Troubleshooting Regular Expressions
Sometimes we think that we've defined a regular expression to match a specific pattern, but when we use it, we realize that there's a bug.  Fortunately, there are many resources available online to help us.  [Rubular](http://rubular.com) is a great online Ruby regular expression editor we can use to develop and debug our regular expressions.

We can also refer to the [Pickaxe Guide](http://www.ruby-doc.org/docs/ProgrammingRuby/html/language.html#UJ) or this [regular expressions overview](http://www.bluebox.net/about/blog/2013/02/using-regular-expressions-in-ruby-part-1-of-3/) if we get stuck.

##Releases

###Release 0

* Use the tests in `source/social_security_numbers_spec.rb` to guide you to a solution
* Add additional tests to make you feel more comfortable with your implementation. For instance, what happens when you pass a string with only a single SSN into the `hide_all_ssns` or `get_all_ssns`  methods?
* Did adding tests help you solve the challenge more effectively? How? Add and commit a file called `tests.md` with your thoughts.

##Resources

* [http://rubular.com](http://rubular.com)
* [Pickaxe Guide](http://www.ruby-doc.org/docs/ProgrammingRuby/html/language.html#UJ)
* [overview](http://www.bluebox.net/about/blog/2013/02/using-regular-expressions-in-ruby-part-1-of-3/)
