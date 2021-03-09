#!/usr/bin/python

from datetime import datetime
import os
import webbrowser

links = {
    
}

# format "weekday_hour"
calendar = {
    # monday
    "0_13" : "math32",
    "0_14" : "cse31", "0_15" : "cse31",

    # tuesday
    "1_9" : "santoshOH", "1_10" : "santoshOH",
    "1_13" : "phys8",
    "1_15" : "phys8L",

    # wednesday
    "2_13" : "math32",
    "2_14" : "cse31", "2_15" : "cse31",
    "2_16" : "phys8D",

    # thursday
    "3_13" : "phys8",
    "3_15" : "math32D",

    # friday
    "4_10" : "cse31L",
    "4_13" : "math32",
}

now = str(datetime.today().weekday()) + "_" + str(datetime.now().hour)

if now in calendar :
    link = links[calendar[now]]

    body = "Joining " + calendar[now]

    command = "osascript -e 'Tell application \"System Events\" to display dialog \""+body+"\"'"
    res = os.system(command)

    if res == 0 :
        webbrowser.open(link, new=2)
else:
    body = "No meeting found for the current time " + now

    command = "osascript -e 'Tell application \"System Events\" to display dialog \""+body+"\"'"
    res = os.system(command)