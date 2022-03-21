Soccer code exercise instructions
===

The `soccer.csv` file contains the results from the English Premier League.

Write a program to read the file, then print the following stats:

- Show the team with the smallest difference in 'for' and 'against' goals.
- List the top 10 teams with the highest win percentage.
- Full stats for team with the most draws (include all columns available in CSV file)

All output should be directed to STDOUT and instructions on how to run the program should be included in a README file.



I have implemented the program in soccer.rb. To execute the program, the command, ruby ./soccer.rb needs to be executed in the
directory where the soccer.rb and the soccer.csv files are located.

I have implemented the program in OOD format by creating a class and methods and attributes. I have also created test
file soccer_spec.rb based on rspec gem. 

You need to install rspec gem, by executing "gem install rspec" at the terminal

In order to execute the program, at the terminal execute "ruby soccer.rb"
In order to execute the test program , at the terminal execute "rspec soccer_spec.rb"