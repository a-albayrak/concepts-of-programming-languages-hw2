# CENG212

## Programming Assignment 2

In this programming assignment, you are supposed to write a **Prolog** program for a **path finding game**.

Create a Prolog program that accepts a start point, an exit point, and a list of obstacle locations as input. The program should then output a possible path from the start to the exit while avoiding obstacles in a 5x5 grid.

### 📥 Input Format

The program should take the input in this format:

```prolog
path((startRow,startColumn), (exitRow,exitColumn), [(firstObstacleRow,firstObstacleColumn), (secondObstacleRow,secondObstacleColumn), …], Path).
```

#### Example:

```prolog
path((1,1), (4,5), [(2,2), (3,2), (4,4)], Path).
```

Explanation:

- The first part is starting location: start is in 1st row 1st column (row and column numbers start from 1, not 0)
- The second part is exiting location: exit is in 4th row 5th column
- The third part is obstacle locations: e.g. first one is in 2nd row 2nd column, etc.
- The last part is for the returned answer

### ✅ Expected Output

According to the example input, a possible output should be:

```prolog
Path = [(1,1), (1,2), (1,3), (1,4), (1,5), (2,5), (3,5), (4,5)]
```

---
