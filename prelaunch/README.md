Simple "Pre-launch" Webpage Generator
===============

_Part of the "Clone" project_

A pre-launch "coming soon" page in the vein of [these](http://sixrevisions.com/design-showcase-inspiration/25-beautiful-examples-of-coming-soon-pages/).

__Features__

* company name
* logo
* background image or style
* tag line
* e-mail address collector (linking to MailChimp or Campaign Monitor)
* various "follow-us" buttons to social network apps - dynamically created on options

__Implementation__

* Single form
* ActiveRecord-less - uses ActiveModel
* Uses /config/initializers/application_parameter.rb to define config.settings
* Dynamically generates social links based on settings.

__Notes__

* Failing tests - due to a bug(?) in RSpec the submit valid / invalid e-mail tests fail; working on a solution.


Credits
---------------
Uses the awesome social media set from [Designmodo](http://designmodo.com/)

To all the Ruby / Rails sites out there I waded through for information, thanks (and please update old stuff once in a while!)


