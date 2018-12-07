# MATLAB-Script
MATLAB 除了不会生孩子，其它的都可以  

## 矩阵基础  
### 建立矩阵  
```MATLAB
A = [1,2,3;4,5,6]  
A = [0:1:10]
```
### 扩展矩阵  
```MATLAB
A = [A,A]
A = [A;A]
A(100,100) = x   %将下标(100,100)的元素置为x,未赋值的矩阵元素被赋值为0  
```
### 引用矩阵元素  
```
A =   
[ 1 2 3  
  4 5 6 ]  
```  
1. 下标引用  
```
A(1,2)    %按行列坐标编号
ans = 2
```
2. 序号引用  
```
A(3)      %按列的顺序编号
ans = 2
```
### 矩阵重排列  
```
A =   
[ 1 2 3  
  4 5 6 ]
```
1. reshape  
```
A = reshap(A,3,2)
A = 
[ 1 5
  4 3
  2 6 ]
```  
2. 冒号运算  
```
A(:)
```
堆叠成1列矩阵  
### 矩阵拆分  
1. 切片  
```
A(:,j)    %表示取第j列元素
A(i,:)    %表示取第i行元素
A(end,:)  %表示取最后一行元素
```
2. 删除矩阵的行列  
```
A(n:m,:) = []       %表示删除矩阵的n至m行
A(:,[1 3 5]) = []   %表示删除矩阵的第1,3,5列  
```

## 矩阵运算



