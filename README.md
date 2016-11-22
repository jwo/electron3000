Electron 3000
============

A Rails App you can use to vote on things.

We use it for Fake Thanksgiving: our friends each bring a side or dessert and
you vote on them.

1. 1st place: 3 votes
1. 2nd place: 2 votes
1. 3rd place: 1 vote


Workflow
--------

* Connect your Twilio and Amazon S3 accounts
* Push to Heroku
* Create an Event on "/admin"
* Take photos of your entries and upload them on "/admin"
* Send link to your participants.
* They enter their phone number and get texted a link to vote
* They vote
* People view results on "/results"

Get Started
-----------

1. copy the `.env.sample` to `.env` and fill out they keys

LICENSE
-------

The MIT License (MIT)

Copyright (c) 2016 Jesse Wolgamott

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
