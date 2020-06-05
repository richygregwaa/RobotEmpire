# RobotEmpire
Robot Empire

I am following a tutorial of 24 videos on YouTube by Manish (Software Testing Mentor).
It's called 'Robot Framework Tutorial': 

    https://www.youtube.com/playlist?list=PLL34mf651faORDOyJrk0E6k9FM-wKgfPV

It's an automation framework for selenium using python.

I've been following on my macbook without any problems. This can be used on PC as well. 
The only issue I had was in the initial couple of videos where I set a path file. After setting it I was hoping that when I 
executed the code, it would be able to find the browser (in my case chrome) driver. Updating path file made no difference. 
I got around this problem by placing a copy of the chrome driver in the projects location in sub-folders venv / bin. ie.:

    /Users/YourUserName/PycharmProjects/RobotEmpire/venv/bin/chromedriver
