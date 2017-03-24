# The Most Excellent Team Six AirBnB

# User Stories
We first worked out the following user stories that we need to implement.

```
As a user,
So I can advertise a space,
I want to be able to add a space on AirBnb

As a user,
So I can accurately advertise my spaces,
I want to add a name, description and price to my space

As a user,
So I can choose where I want to stay,
I want to see a list of spaces

As AirBnb,
So I can provide a secure and reputable service
I want my users to be able to sign up

As a user,
So I can have a secure experience and 'own' my spaces and bookings,
I need to be able to sign up in order to access these services

As a user,
So I can avoid disappointing my customers,
I want to show which dates my space is available or unavailable

As a signed-up user,
So I can get a space to stay in,
I want to be able to request to stay in a space for a night

As a user listing my space,
So I can approve bookings,
I want to be able to accept or reject them

As a listing user,
To avoid double bookings,
I want to prevent booking for unavailable dates

As a user,
So I can manage my potential customer's expectations,
I want my listing to be available on any given date until I've confirmed a booking for that date
```

MVP
-----
We decided the minimum viable product we could present to a client would include:
- adding a space to the listings
- viewing a list of available spaces

We mostly worked in two groups of three, occasionally splitting into 3 pairs when there were multiple user stories that could be worked on concurrently.

Technologies used
-----
Ruby, DataMapper, PostgreSQL, jQuery, rSpec, Capybara, Heroku, Sinatra, bCrypt

Viewing the app
-----
Our app can be viewed here: https://beastmakersbnb.herokuapp.com/

![alt text]()

Decisions we made
----
- We deliberated for a long time about how to deal with date availability for spaces. We decided to use a separate booking class that would contain the date a property was booked on, and would be linked to that property, in a one-to-many relationship. We were then able to filter the spaces by available date using DataMapper
- The next issue was how to display availability in a calendar format on the space's landing page. We wanted to use a jQuery datepicker, and grey out unavailable dates. This meant combining ruby on the back end with Javascript - our solution was to pull the unavailable dates into an array using ruby, and have a script tag convert it to a JavaScript variable that jQuery can access.
- We decided to implement a show/hide password box after reading that 25% of users abandon sign-up when encountering problems with password confirmation boxes.
- In order to allow the user to select dates for their booking via a calendar widget we used a jQuery datepicker.

Issues we encountered
----
- Accessing spaces via bookings, and vice versa. We ended up with a few lengthily chained commands that we would like to refactor.
- Initially we passed several params into the view, which we then refactored, saving them in instance variables within the controller.
- As it was our first time working on a group project, we encountered a few issues with merge conflicts that took time to sort.
