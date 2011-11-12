The Clone Projects
===============

As part of learning Ruby and Rails I decided I need to write code. I've read a few RoR books, followed the examples, read numerous online resources but I know that at the end of the day there's _nothing_ like actually writing code.

The problem with "just writing code" is deciding what to write, and then actually not spending all your time pixel-wrangling in order to get the website looking nice. 

So, what do we do? __STEAL WITH PRIDE!__

I've been playing around with the [Zurb Foundation Framework](http://foundation.zurb.com/) and one of tutorials I found is to [recreate a wireframe using Foundation](http://www.netmagazine.com/tutorials/quickly-build-prototype-test-any-device) and one thing led to another and I thought _"why not recreate some other sites / apps?"_ and so the [__"Clone Project"__](http://github/christiet/clone_project) was born.

Each app in the project tries to recreate the look and feel and functionality of a site (or app) that I found interesting or allowed me to try out a different technique. As much as I can (_as a nuby(?)_) I'm trying to follow best practices, TDD, DRY and all those buzz-cronyms.

__NOTE: Just to be 100% clear, these are developed as I learn, they will have issues, be feature incomplete, only implement what I'm interested in trying out and should not be used for anything other than laughing at the noob!__

The apps so far are:

[Prelaunch](http://github/christiet/clone/prelaunch)
===============
A pre-launch "coming soon" page in the vein of [these](http://sixrevisions.com/design-showcase-inspiration/25-beautiful-examples-of-coming-soon-pages/).

__Features__

* company name
* logo
* background image or style
* tag line
* e-mail address collector (linking to MailChimp or Campaign Monitor)
* various "follow-us" buttons to social network apps - dynamically created on options

Lessons
---------------
As part of the "Clone" project to teach myself Ruby and Rails, I've tried to do the "full" Rails TDD approach, use github and best practices as much as possible. I deliberately chose a very simple application as the first exercise as I knew I'd spend more time on the enviroment and tools than code and here's a few lessons from this exercise:

__1) Google is and isn't your friend__

The great thing about google is you can find a wealth of information out there about any problem you encounter. The problem with google is you can find a wealth of __conflicting__ information about any problem you encounter! Here's a few examples for your amusement:

* Testing methodologies - use Test::Unit, don't use Test::Unit use MiniTest, use RSpec, use Cucumber, don't use Cucumber. 
* Test views in the controller spec, test views in the view spec, don't test views at all!
* Use webrat, use selenium, use ... don't use ... - starting to get the picture?

I think it would really help newcomers to RoR if there was a up-to-date tutorial (Rails 3.1) actually incorporated the _current_ best practices and not just "we're going to use this because it's easy for the reader to understand". Michael Hartl's [Ruby on Rails Tutorial](http://ruby.railstutorial.org/ruby-on-rails-tutorial-book) is excellent, but go look at StackOverflow or any of the Ruby discussion forums and you'll find a million threads asking questions about 3.1 issues with it.

_Michael has added a new chapter "Upgrading to Rails 3.1" at the end, unfortunately 99% of people are going to start at the beginning._

__2) Testing Methodologies__
As you might have guessed from my comments in the previous section, I had some issues with deciding what and how to test. Given that TDD is a fundemental part of the Ruby way, I was keen to get an approach which was a) usable b) understandable c) not laughable d) actually worked. This was harder than I expected! Here's what I choose to do in the end:

* All tests in RSpec
* Using rspec and webrat (required for that handy "has_selector?" call)
* Guard & Spork for autotesting (I'm running on Ubuntu 11.10 and could not get autotest to play nice)

__3) RSpec Syntax__
WTF???? All the tutorials are either very very simple or so damn complex you'd need a brain the size of a planet to understand them. Could someone just write down the "obvious" things for us idiots?.

Here's a really simple example - using RSpec/Webrat for my testing, how do I find this HTML element `<img id="logo" src="#">`?

I don't what to test by URL (`img :href="#"`) as the URL will change, I want to test for `<img id="logo">`. The answers bloodly obvious once you know, it's `have_selector("img#logo")`, but I couldn't find an example, the docs are cryptic, and google was no help (or too much help).

_I know people who are ruby competent are going to look at this list and go "duh, that's obvious" but that's kind of my point._

Wrap-up
---------------
All in all, I spent far more time than I'd planned just fighting the environment, I'd expected to spend some time but it turned out to be a lot more than I'd hoped (As a comparision I wrote the JS equivalent in about 30 mins, and that included figuring out how to submit to Campaign Monitor via JS).

Anyway, after all that, there's still the buzz of seeing that green tick in the corner of the screen and so it's on to the next example.



