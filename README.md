# Rails Capstone: Group Our Transactions

This is a capstone project for the Microverse Rails module, it is based on an app for grouping transactions by goal with your family/friends.


## ER Diagram for the basic Models
This is the Relationship Diagram for this project.
The user also has an icon but not selectable by the user, it's randomly selected, that's why it wasn't added to the diagram.

![image](/app/assets/images/GroupOurTransactionsCAPstonePRJ-v2.png)
<!-- [link to file for edition](https://app.diagrams.net/?title=Copy%20of%20Group%20Our%20Transactions%20CAPstonePRJ-v1&client=1#W388c734d24bdc20a%2F388C734D24BDC20A!524 or https://tinyurl.com/ydhpcuee) -->
--
---
## Basic Features and Usage:
- 1. Home screen
- 2. Basic login: You can log into the app or signup with just a user name. *(Icon automatically assigned)*
- 3. Profile view with links to groups and created transactions.
- 4. View all your grouped transactions.
- 5. View all your ungrouped transactions.
- 6. View all the groups made in the app.
- 7. View details for each transaction. *(Can access them from grouped and ungrouped transaction views as well as from the group info view)*
- 8. Make a new transaction, with ot without belonging to a group.
- 9. View details for each group, which include the transactions owned by that group. *(Can access from the all groups view)*
- 10. Make a new group.

### App image description
App             | Screenshots
:--------------:|:------------:
1![image](/app/assets/images/RailsCapstone_RDMe01.png) | 2![image](/app/assets/images/RailsCapstone_RDMe02.png)
3![image](/app/assets/images/RailsCapstone_RDMe03.png) | 4![image](/app/assets/images/RailsCapstone_RDMe04.png)
5![image](/app/assets/images/RailsCapstone_RDMe05.png) | 6![image](/app/assets/images/RailsCapstone_RDMe06.png)
7![image](/app/assets/images/RailsCapstone_RDMe07.png) | 8![image](/app/assets/images/RailsCapstone_RDMe08.png)
9![image](/app/assets/images/RailsCapstone_RDMe09.png) | 10![image](/app/assets/images/RailsCapstone_RDMe10.png)
*From all the views you can go back to the User Profile view with the burguer icon on the navbar's left-hand side.*

## Installation

You can either clone the repo and play with it on your machine, or access the direct link at the bottom of this document.
To clone the repo:

- Cloning the repo:
  ```
  $ git clone git@github.com:NewIncome/MV_Group-Our-Transactions.git
  ```
- cd into the new folder:
  ```
  $ cd MV_Group-Our-Transactions
  ```
- Checkout to the correct branch (for this review _ft/basic-layoutNmodels_):
  ```
  $ git checkout ft/basic-layoutNmodels
  ```
- bundle the necessary gems
  ```
  $ bundle
  ```
- yarn the necessary packages
  ```
  $ yarn install --check-files
  ```
- migrate and seed
  ```
  $ rails db:migrate db:seed
  ```
- launch the developer server
  ```
  $ rails s
  ```
- Loggin with this credentials
  ```
  User: Alfred  //or by signing up
  ```
## Built With
- Ruby
- Ruby on Rails
- Bootstrap
- [Faker](https://github.com/faker-ruby/faker)

## Live Link and Github repo
- [Heroku LIVE Link](https://cryptic-shore-97676.herokuapp.com/)
- [Github Repository](https://github.com/NewIncome/MV_Group-Our-Transactions)

## Authors and acknowledgment
- [General requirements](https://www.notion.so/Group-our-transactions-ccea2b6642664540a70de9f30bdff4ce) by [Microverse](https://www.microverse.org/).
- Design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
- [Design idea info](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=).
- Group Icons thanks to [flaticon.com](https://www.flaticon.com) and each individual designer.

Author | Social Media
:--------------:|:------------:
👤 | - Github: [@NewIncome](https://github.com/NewIncome)
**Alfredo C.** | - Twitter: [@J_A_fredo](https://twitter.com/J_A_fredo)
. | - Linkedin: [Alfredo C.](www.linkedin.com/in/j-alfredo-c)
