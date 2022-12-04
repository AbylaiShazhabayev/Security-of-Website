# Security-of-Website
We used the php, css programming language to create the frontend. We used Brackets to edit the code. Then to raise the database we used MySQL language, for the local server we used XAMPP software.
PHPunit a series of tests, running code snippets to automatically check the correctness of parts (modules) of the website.
We take our code from GitHub, then connect it to Jenkins using SSH-key. We then build our code and test it. After a successful attempt, it checks for changes to our code every 10 minutes, if Jenkins detects any changes, it does a deploy to the AWS cloud. As a result, our code is fully tested and interacts with the AWS cloud.
