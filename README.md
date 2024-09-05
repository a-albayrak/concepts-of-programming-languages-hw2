# Concepts of Programming Languages Homework 2: Prolog Pathfinding in a 5x5 Grid with Obstacles

## Overview

In this programming assignment, you are supposed to write a Prolog program for a path finding
game.
Create a Prolog program that accepts a start point, an exit point, and a list of obstacle locations as
input. The program should then output a possible path from the start to the exit while avoiding
obstacles in a 5x5 grid.
The program should take the input in this format:
```text
path((startRow,startColumn),(exitRow,exitColumn),[(firstObstacleRow,firstObstacleColumn),(
secondObstacleRow,secondObstacleColumn),…], Path).
```

## Example Input
```text
path((1,1),(4,5),[(2,2),(3,2),(4,4)], Path).
1. The first part is starting location: start is in 1st row 1st column (row and column numbers starts
   from 1, not 0)
2. The second part is existing locatioon: exit is in 4th row 5th column (row and column numbers
   starts from 1, not 0)
3. The third part is obstacle locations: first one is in 2nd row 2nd column, … (row and column
   numbers starts from 1, not 0)
4. The last part is for the returned answer.
```

## Example Output
According to this input, a possible output should be:
```text
Path = [(1,1), (1,2), (1,3), (1,4), (1,5), (2,5), (3,5), (4,5)]
