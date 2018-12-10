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
1. 矩阵加减
```
A + B
A - B
```
2. 矩阵乘法
```
A * B
```
3. 矩阵除法
```
A / B   %相当于A * B的逆矩阵
A \ B   %相当于B / A
```
4. 点运算
```
A .* B  %对应矩阵元素相乘
A ./ B  %对应矩阵元素相除
A .\ B  %相当于B ./ A
A .^ B  %对应元素乘方运算
```

## 字符串
MATLAB的字符串可以看成一维向量，也就是单行矩阵  
```
abs('A')    %取字符A的ASCII码数值
ans = 65

char(65)    %取数值65对应的字符
ans = 'A'

eval('...') %转换字符串为MATLAB语句并执行
```
## 数据结构
MATLAB有两种常用数据结构  
1. 结构数据
```
% 有点类似C语言的结构体
% MATLAB可以直接创建结构数据，不需提前定义
student(1).name = 'Denis'
student(1).id   = 555
student(2).name = 'ThatGirl'
student(2).id   = 666
```
2. 单元数据
```
% 将不同属性的数据整合到一个变量中
class = {'Denis',555; 'ThatGirl',666}
```
## 程序设计
### 程序控制结构
1. if-else
2. switch-case
3. try-catch
### 函数
1. 一个函数写成一个文件，函数名与文件名一致
![](https://raw.githubusercontent.com/Oslomayor/Markdown-Imglib/master/Imgs/MATLAB_function1.png)  
2. 查询函数  
![](https://raw.githubusercontent.com/Oslomayor/Markdown-Imglib/master/Imgs/MATLAB_function2.png)  
3. 调用函数  
![](https://raw.githubusercontent.com/Oslomayor/Markdown-Imglib/master/Imgs/MATLAB_function3.png)  
### 调试
