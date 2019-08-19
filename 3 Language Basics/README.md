### Chapter 3 

---

#### Language Basics 

1. Haskell is a *lazy* language which means that no computation will take place unless it is forced to take place. 
2. Haskell is case sensitive and uses case to give meaning. Haskell distinguishes between *values* and *types*. Haskell *requires* that the names given to functions and vaues begin with a lower-case letter and that the names given to types begin with a upper-case letter. 
3. Haskell is a *functional* language which means that it eschews side effects. A side effect is something that happens in the course of executing a function that is not related to the output produced by that function. Functions that do not have side effects are called *pure functions*. 
4. Haskell does not allows for *destructive updates*. For example, in Haskell there is no way we could have the following code: 

```c
int x = 5;
x = x +1; //destructive update
```

---

#### Arithmetic







