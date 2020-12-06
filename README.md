# hw5
 cs-510 awk-based homework #5

9/23/2020 -- 05 - Create and alter text in your directories 
 
This assignment requires two shell scripts. 

For the first, 5.1, write a shell script that will successfully create a directory with 500 subdirectories, each containing a text file with 5 lines of text. 

The name of each subdirectory should end with sequential numbers from 1-500. 

For the second, 5.2, create a shell script that will alter the directory that you created in the previous script. For this, consider using awk. We did not get to cover it in class, but there is a great tutorial on it here: https://www.grymoire.com/Unix/Awk.html (Links to an external site.) Also, in the git-practice-repo/practicefiles folder is an example shell script that uses awk to edit text files (setparameters.sh). 

Your script should change the text according to the rules: 

If the subdirectory ends in the number 1, the fourth line of text should read: "eat beets"
If the subdirectory ends in the number 4, the fourth line of text should read: "squash are great"
If the subdirectory ends in the number 5, the fourth line of text should read: "dogs are better than cats"
If the subdirectory ends in the number 7, the fourth line of text should read: "hello world"
If the subdirectory ends in the number 2, 3, 6, 8, or 9, the fourth line of text should be blank. 
If the subdirectory ends in the number 0, the fourth line of text should be a phrase of your choosing.
The script should run in the directory where the created directory sits. 

Please submit a link a Github folder which contains both scripts (and only both scripts!).
