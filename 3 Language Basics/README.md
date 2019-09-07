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

Expression: something that has a value 

##### Pairs, triples and more 

Pairs are allowed to be heteregonous 

```haskell
(5,"hello") --pair
(1,2,"foo") --triple
(1,2,3,4) -- and we can continue as long as we want
```

In general, pairs, triples and so on are called tuples and hold a fixed amount of data. 

##### Lists 

Data structure that can hold an arbitrary number of elements. 

```haskell
[1,2,3]
```

We can add elements using the colon operator 

```haskell
0:[1,2] --[0,1,2]
3:2:1:4:[]
```

However, **lists**  must be *homogenous*. 

**Lists** have two basic functions: 

	1. ```head```: returns the first element of the list.
 	2. ```tail```: returns all the elements of the list except for the first one.

##### Strings 

A **string** is a simple list of characters. 

```haskell
['H','e','l','l','o'] --"Hello"
"Hello " ++ "World" -- "Hello World"
```

**Non-string** values can be converted to strings using the ```show``` function. 

```haskell
"Five squared is " ++ show(5*5) --"Five squared is 25"
```

and **strings** can be converted to **non-string** values using the ```read``` function. 

##### Simple list functions 

1. ```map```: takes a list as a paramter and a function that will be applied to every element on the list.

   ```haskell
   map show [5,4,3,2,1] --["5","4","3","2","1"]
   ```

2. ```filter```: removes certain elements from the list depending on their value.

   ```haskell
   filter (<4) [1,2,3,4] --[1,2,3]
   ```

3. ```foldr```: this function takes three arguments. A list, an initial value, and a function. 

   ```haskell
   foldr (+) 0 [1,2,3] --6
   foldr (+) 1 [1,2,3] --7
   ```

Some peculiar example: 

In addition to ```foldr```, Haskell also has ```foldl``` which works the same way as ```foldr``` but instead of performing the function with the initial value in the right hand side of the operation, it performs the operation in the left hand side. Thus ```foldr``` --> fold right and ```foldl``` --> fold left. 

```haskell
foldr (-) 1 [4,8,5] -- 0
foldl (-) 1 [4,8,5] -- -16
```



