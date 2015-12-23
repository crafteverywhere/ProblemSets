# exercise

## 1.1

### 1
> Q:Give a real-world example that requires sorting or a real-world example that requires computing a convex hull.

```
排序：比赛成绩排序；考试排名；淘宝比价。
凸包计算：(游戏中的)碰撞检测计算；图像识别。
```

### 2
> Q:Other than speed, what other measures of efficiency might one use in a real-world setting?

```
在实际的工程中，除耗时外算法的这些方面也很重要：空间复杂度；实现难度；可维护性；健壮性；安全性；可扩展性等等。
```

### 3
> Select a data structure that you have seen previously, and discuss its strengths and limitations.

```
数组>优势:访问速度，简单；局限：长度无法扩展。
链表>优势:插入删除都上O(1)，随机读取为O(n)。
```

### 4
> How are the shortest-path and traveling-salesman problems given above similar? How are they different?

```
相同点：都需要在图中求路径距离。
不同点：最短路径会指定两个点求最短距离，旅行商问题需要遍历全部点计算路径距离。
```

### 5
> Come up with a real-world problem in which only the best solution will do. Then come up with one in which a solution that is "approximately" the best is good enough.

```
必须最佳解的问题距离：固定大小数组求最大值；二元一次方程求解（某些p问题)。
可以近似解的问题举例：求圆周率；超越方程求解(np问题和某些不需要精确解的p问题)。
```

## 1.2

### 1
> Give an example of an application that requires algorithmic content at the application level, and discuss the function of the algorithms involved.

```
gps导航（求最短路径问题）；图像处理类应用（矩阵运算，凸包等）。
```

### 2
> Suppose we are comparing implementations of insertion sort and merge sort on the same machine. For inputs of sizen, insertion sort runs in 8n^2 steps, while merge sort runs in 64nlgn steps. For which values of n does insertion sort beat merge sort?

```
编程求8n^2 - 64nlgn = 0的解。
```

### 3
> What is the smallest value of n such that an algorithm whose running time is  runs faster than an algorithm whose running time is  on the same machine?

```
编程求解100n^2 - 2^n = 0的解。
```
