The Clone Projects
===============

As part of learning Ruby and Rails I decided I need to write code. I've read a few RoR books, followed the examples, read numerous online resources but I know that at the end of the day there's _nothing_ like actually writing code.

The problem with "just writing code" is deciding what to write, and then actually not spending all your time pixel-wrangling in order to get the website looking nice. 

So, what do we do? __STEAL WITH PRIDE!__

I've been playing around with the [Zurb Foundation Framework](http://foundation.zurb.com/) and one of tutorials I found is to [recreate a wireframe using Foundation](http://www.netmagazine.com/tutorials/quickly-build-prototype-test-any-device) and one thing led to another and I thought _"why not recreate some other sites / apps?"_ and so the [__"Clone Project"__](http://github/christiet/clone_project) was born.

Each app in the project tries to recreate the look and feel and functionality of a site (or app) that I found interesting or allowed me to try out a different technique. As much as I can (_as a nuby(?)_) I'm trying to follow best practices, TDD, DRY and all those buzz-cronyms.

__NOTE: Just to be 100% clear, these are developed as I learn, they will have issues, be feature incomplete, only implement what I'm interested in trying out and should not be used for anything other than laughing at the noob!__

The apps so far are:

[Prelaunch](http://github/christiet/clone_project/prelaunch)
===============
A pre-launch "coming soon" page in the vein of [these](http://sixrevisions.com/design-showcase-inspiration/25-beautiful-examples-of-coming-soon-pages/).

__Features__

* company name
* logo
* background image or style
* tag line
* e-mail address collector (linking to mail chimp or the like)
* various "follow-us" buttons to social network apps - dynamically created on options

_I'm thinking about rewriting this as a ruby static page generator, there's nothing in this that can't be done client-side in javascript_


