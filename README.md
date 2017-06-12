# Faculty of Widgetry 

This is a sample Dataface application used in the [Getting Started tutorial](http://xataface.com/documentation/tutorial/getting_started).

## Installation

## Prerequisites

1. A LAMP stack (PHP/MySQL).  If you are working on a desktop computer both [XAMPP](https://www.apachefriends.org/index.html) and [MAMP](https://www.mamp.info/en/) provide double-clickable installers with the full stack.
2. The [Xataface CLI Tool](https://www.npmjs.com/package/xataface)

The Xataface CLI tool requires that NodeJS be installed.

NOTE:  Though the Xataface CLI tool requires NodeJS, Xataface itself is pure PHP and will run on any
LAMP stack - and **does NOT require NodeJS**.

**Installing Xataface CLI Tool:**

Mac/Linux:

~~~
$ sudo npm install -g xataface
~~~

Windows:

~~~
> npm install -g xataface
~~~

## Installing the App Itself

Navigate to a web-accessible directory.  e.g. ` $ cd /path/to/htdocs`.  Then:

~~~
$ xataface clone https://github.com/shannah/faculty_of_widgetry
~~~

Follow the prompts.  This will create a directory named "faculty_of_widgetry" in the current directory,
and it will create a database named "faculty_of_widgetry".

You can access the application by pointing your web browser to the "faculty_of_widgetry" directory that 
was just created.

