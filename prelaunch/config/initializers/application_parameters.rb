# Application specific parameters

# using a parameter file rather than ActiveRecord as this is a "one page" application
# and doesn't need CRUD operations

Prelaunch::Application.config.title = "Prelaunch"
Prelaunch::Application.config.company = "SEVEN BROOMS"
Prelaunch::Application.config.tagline = "EXTRA THIN BROOMS SO YOU CAN DO MORE TASKS AT ONCE ..."
Prelaunch::Application.config.social = { :twitter => "http://twitter.com/#!/getix6", :gplus => "getix6+", :facebook => "getix6-like", :linkedin => "getix6-in" }