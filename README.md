CleanupCity
==========
 
##Overview

Cleanup City is an app that helps residents to identify public safety, environmental issues, upload pictures and report them for resolution.

**"A picture tells thousand words"**

![cleanupcity](app/assets/images/report.jpg)

Cleanup City is a collaborative platform that gives an opportunity for residents, neighborhood groups and associations to focus on cleaning, greening and organize events for the city clean up.

## User stories
	* User can take pictures of the dirty streets, 
	 broken parking meters or anything that needs to be fixed.
	* Upload it in this app about the issue with a small note below it.
	* However, user can sign up/login to have their personalized account,
	  in order to save some pictures to their collection.
	* User can also view all the uploaded pictures by clicking on 
	  "Explore" on the nav bar.
## Motivation

I always find myself wondering, about the dirty stairs or the broken parking meters while I am walking down the streets of San Francisco, it would be helpful if there was a system to keep people aware of the areas that needs to be taken care. This led to the creation of [**CleanupCity**](http://cleanupcity.herokuapp.com/)

* To encourage residents take ownership of their communities.
* To provide opportunities and organize events for community improvement activities.
* To promote leadership for greening, maintenance and environmentally supportive efforts.
* To report issues and resolution in a timely manner.

## Technologies

* Ruby (Back-end programming language)
* Javascript, jQuery, HTML5/CSS3 (Front-end programming language)
* Rails (Back-end framework)
* Bootstrap (Front-end framework)
* Handrolled Rails user authentication
* Amazon S3 (cloud storage) and Paperclip (uploading pictures)
* Postgresql, SQL (Database)
* Google maps API for geotagging the location
* Heroku (Deployment)

## What's next??

* I would let the user manually type in the address.
* And I would use the **Geocoder** gem to geotag the location from where the user takes the picture. 
