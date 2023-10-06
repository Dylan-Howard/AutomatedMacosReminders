# Mac OS Reminders Script Documentation

## Introduction
This script is designed to assist students in organizing their schoolwork and managing their time more effectively within macOS. It addresses the limitation of macOS, which lacks a built-in way to import reminders or create bulk reminders. With this script, students can easily convert their assignment lists, provided in a CSV format, into reminders within the macOS Reminders app. Whether you have a list of assignments, deadlines, or tasks, simply format the CSV data, and let the script handle the rest.

## Usage
You can run this script from the command-line using `osascript`:
  1. Open your Mac's terminal.
  2. Navigate to the directory where you downloaded the script.
  3. Execute the following command: `osascript path/to/downloaded/script`
  4. The script will execute, creating reminders based on the provided CSV data.

## CSV Data Format
To use this script, your CSV data should include the following headers: "title," "due," and "note." Your CSV should also use a comma "," as the delimiter. Create your CSV file based on the above format, ensuring that each entry under these headers contains the appropriate information for your reminders.

## Example Data
Here's a sample data set ([assignments.csv](https://github.com/Dylan-Howard/AutomatedMacosReminders/blob/main/assignments.csv)) that demonstrates the required format for creating reminders:

| title                                     | due              | note                          |
|-------------------------------------------|------------------|--------------------------------|
| Prerequisites: Syllabus Quiz & Course Agreement | 10/16/23 12:00 PM | www.school.com/my-course     |
| Lecture 01: Course Introduction            | 10/16/23 12:00 PM | www.school.com/my-course     |
| Lecture 02: Historical Overview Part 1     | 10/16/23 12:00 PM | www.school.com/my-course     |
| Lecture 03: Historical Overview Part 2     | 10/18/23 12:00 PM | www.school.com/my-course     |
| Lecture 04: Methods                       | 10/20/23 12:00 PM | www.school.com/my-course     |
| Lecture 05: Luther Part 1                 | 10/20/23 12:00 PM | www.school.com/my-course     |
| Lecture 06: Luther Part 2                 | 10/20/23 12:00 PM | www.school.com/my-course     |
| Reading Reflection 1                      | 10/22/23 12:00 PM | www.school.com/my-course     |
| Discussion Forum: Introductions            | 10/22/23 12:00 PM | www.school.com/my-course     |

## License
This documentation is released under the [MIT License](https://opensource.org/licenses/MIT).

## Credits and Acknowledgments
I'd like to acknowledge the assistance of [GitHub user n8henrie](https://gist.github.com/n8henrie) and their [GitHub Gist](https://gist.github.com/n8henrie/c3a5bf270b8200e33591), which provided essential help during the development of this script.