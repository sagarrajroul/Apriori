# Apriori

It is a technique used by large retailers to uncover associations between items. It works by looking for combinations of items that occur together frequently in transactions, providing information to understand the purchase behavior. The outcome of this type of technique is, in simple terms, a set of rules that can be understood as “if this, then that”.

so some main topics of this techniques are 
#Support
supp(x)=total no of occurance of the item / total no of items

#Confidence
conf(X,Y)=total no of occurance of X,Y togather / support(X)

#Lift
lift = conf(X,Y) / supp(X)
