### Linked List Notes ### 
---
- you allocate as you go 
- you have to start at the beginning everytime if you were to wan tot find a certain element 
- next after last element is always nil 
- they will end up in a lot of different places in memory 


##### Why use linked lists? ####

- you can save space 
- you don't have to have an idea of how much memory you're going to use 
- array can be expensive to insert or delete (you need to shift everything over for something)


##### Linked List Attributes #####

data -> data inside 
next -> next node 

head -> instance variable 



*Encapsulation:* Prevent someone from iteracting with the internal workings of class, hide implementation details 



Single linked: one way 

Double linked: linked both ways, back and forth 


*to delete a node: change the node before to the current nodes next* 
- check if head is nil 
  - return if so 
- if head node is the node to be deleted 
  - update head to head.next 
  - return 

while current.next is not nil 
  current.next == next 


Add Node: 

head = new Node ()


*Memory Link:* when a program manages memory allocation poorly 

- programs can crash because of this 


