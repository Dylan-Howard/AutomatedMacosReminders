-- Implemented with the help of https://gist.github.com/n8henrie/c3a5bf270b8200e33591

-- Command to split text based on given delimiter.
-- This command returns a list from the given text.
on splitText(theText, theDelimiter)
  set AppleScript's text item delimiters to theDelimiter
  set theTextItems to every text item of theText
  set AppleScript's text item delimiters to ""
  return theTextItems
end splitText

-- Prompts for the list title
set theList to display dialog "In which list would you like to create these reminders?" default answer "Scripted Reminders" with icon note buttons {"Cancel", "Continue"} default button "Continue"

-- Prompts for the data CSV file
set theDocument to choose file with prompt "From which file would you like to create reminders?"

-- Fetches data file contents
set theFileContents to (read file theDocument)
set theLines to paragraphs of theFileContents

-- Seperates the headers from the data rows
set theHeaders to splitText(item 1 of theLines, ",")
set theLines to (items 2 through length of theLines)

-- Checks the data file formatting
if item 1 of theHeaders is not equal to "title" then
  set headerCheckMessage to "The selected file is not formatted correctly."
else if item 2 of theHeaders is not equal to "due" then
  set headerCheckMessage to "The selected file is not formatted correctly."
else if item 3 of theHeaders is not equal to "note" then
  set headerCheckMessage to "The selected file is not formatted correctly."
else if length of theLines is 1 then
  set headerCheckMessage to "The selected file does not contain any data."
else
  set headerCheckMessage to "The selected file is formatted correctly."
end if

-- Iterates through each line to create a reminder
repeat with eachLine in theLines
  -- Splits the row using "," as the delimiter
  set testReminder to splitText(eachLine, ",")

  -- Set a temp value for the due date property
  set tempDue to date (item 2 of testReminder)

  tell application "Reminders"
    set mylist to list theList
    tell mylist
      make new reminder at end with properties {name:(item 1 of testReminder), due date:tempDue, body:(item 3 of testReminder)}
    end tell
  end tell
  
end repeat
