Sun Apr 22 10:14:21 CDT 2018
----------------------------
Time to really understand how to diagnose a screw up and apply revert to 
get back to a known good state.


develop A-------+-+---+
               / /   /
feature   B---+ D F-+    
             /     /    
feature     C     E   

What does something like this look like in git log --oneline or gitk?
Where are the cutpoints I can use to roll back, 
and what are the commands to use?
