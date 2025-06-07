

#### $file
```C

#include<stdio.h>

int main(){
    printf("Hello World"); 
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    FILE *fptr;
    int num1, num2, num3;
    fptr = fopen("file.txt", "r");
    fscanf(fptr, "%d %d %d", &num1, &num2, &num3); 
    printf("The values are %d %d %d \n", num1, num2, num3);
    
    fclose(fptr);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    FILE *fptr; 
    int num=4;
    fptr = fopen("table.txt", "w");

    for (int i = 0; i < 10; i++)
    {
        fprintf(fptr, "%d", num*(i+1));
        fprintf(fptr, "%c", '\n');
    }
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    char ch;
    FILE *ptr;
    FILE *ptr2;

    ptr = fopen("harry.txt", "r");
    ptr2 = fopen("harry3.txt", "a");
    while (1)
    {
       
        ch = fgetc(ptr); 
        // when all the content of a file has been read break
        if (ch == EOF)
        {
            break;
        }
        else{
            fprintf(ptr2, "%c", ch);
            fprintf(ptr2, "%c", ch);
            printf("%c", ch);
        }
    }
        return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    FILE *ptr;
    char name1[34], name2[34];
    int salary1, salary2;
    ptr = fopen("salary.txt", "w");

    printf("Enter the name of Employee \n");
    scanf("%s", name1);

    printf("Enter the salary of Employee \n");
    scanf("%d", &salary1);

    printf("Enter the name of Employee 2\n");
    scanf("%s", name2);

    printf("Enter the salary of Employee 2\n");
    scanf("%d", &salary2);

    fprintf(ptr, "%s", name1);
    fprintf(ptr, "%s", ", ");
    fprintf(ptr, "%d", salary1);
    fprintf(ptr, "%c", '\n');
     fprintf(ptr, "%s", name2);
    fprintf(ptr, "%s", ", ");
    fprintf(ptr, "%d", salary2);
    fprintf(ptr, "%c", '\n');

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    FILE *ptr;  
    int num;
    ptr = fopen("int.txt", "r");
    fscanf(ptr, "%d", &num); 

    fclose(ptr);

    ptr = fopen("int.txt", "w");
    fprintf(ptr, "%d", 2*num); 

    fclose(ptr);
 

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    FILE *ptr;
    ptr = fopen("harry.txt", "r");
    int num;
    fscanf(ptr, "%d", &num);
    printf("The value of num is %d \n", num);

    fscanf(ptr, "%d", &num);
    printf("The value of num is %d \n", num);

    fclose(ptr);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    FILE *ptr;
    ptr = fopen("harry2.txt", "r");

    if(ptr == NULL){
        printf("The file does not exist sorry! \n");
        
    }
    else{

    int num;
    fscanf(ptr, "%d", &num);
    printf("The value of num is %d \n", num);

    fscanf(ptr, "%d", &num);
    printf("The value of num is %d \n", num);

    fclose(ptr);
    
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    FILE *fptr;
    fptr = fopen("harry.txt", "a");
    int num = 432;
    fprintf(fptr, "%d", num);
    fclose(fptr);

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    FILE *ptr;
    ptr = fopen("harry.txt", "a");
    // char c = fgetc(ptr); // used to read a character from file
    // printf("%c", c);
    fputc('c', ptr);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    char ch;
    FILE *ptr;
    ptr = fopen("harry.txt", "r");
    while (1)
    {
        ch = fgetc(ptr); 
        printf("%c", ch);
        // when all the content of a file has been read break
        if (ch == EOF)
        {
            break;
        }
    }
        return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main(){ 
    int n = 6;
    int* ptr;
    ptr = (int*) malloc(n*sizeof(int));
    ptr[0] = 45;
    printf("%d \n", ptr[0]);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n = 6;
    int *ptr;
    ptr = (int *)malloc(n * sizeof(int));

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &ptr[i]);
    }

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n = 6;
    int *ptr;
    ptr = (int *)calloc(n,  sizeof(int));

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &ptr[i]);
    }

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n = 5;
    int *ptr;
    ptr = (int *)calloc(n, sizeof(int));

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &ptr[i]);
    }

    printf("The Array is \n");

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    n = 10;
    ptr = (int *)realloc(ptr, 10 * sizeof(int));

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &ptr[i]);
    }

    printf("The Array is \n");

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n = 10;
    int *ptr;
    ptr = (int *)malloc(n *sizeof(int));

    for (int i = 0; i < n; i++)
    {
      ptr[i] = 7 * (i+1);
    }

    printf("The Array is \n");

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    n = 15;
    ptr = (int *)realloc(ptr, 10 * sizeof(int));

    for (int i = 0; i < n; i++)
    {
        ptr[i] = 7 * (i+1);
    }

    printf("The Array is \n");

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n = 10;
    int *ptr;
    ptr = (int *)calloc(n, sizeof(int));

    for (int i = 0; i < n; i++)
    {
      ptr[i] = 7 * (i+1);
    }

    printf("The Array is \n");

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    n = 15;
    ptr = (int *)realloc(ptr, 10 * sizeof(int));

    for (int i = 0; i < n; i++)
    {
        ptr[i] = 7 * (i+1);
    }

    printf("The Array is \n");

    for (int i = 0; i < n; i++)
    {
        printf("%d \n", ptr[i]);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main(){
    int n;
    int* ptr;
    scanf("%d", &n);
    ptr = (int*) malloc(n * sizeof(int));
    // int arr[n]; // Not allowed in c
    ptr[0] = 3;
    ptr [1]= 6;
    printf("%d", ptr[0]);
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main(){
    float n = 5;
    float* ptr; 
    ptr = (float*) malloc(n * sizeof(float)); 

    ptr[0] = 3.345;
    ptr [1]= 16.345; 
    ptr [2]= 6.345; 
    ptr [3]= 56.345; 
    ptr [4]= 66.345; 

    printf("%.2f\n", ptr[0]);
    printf("%.2f\n", ptr[1]);
    printf("%.2f\n", ptr[2]);
    printf("%.2f\n", ptr[3]);
    printf("%.2f\n", ptr[4]); 
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main(){
    int n;
    int* ptr;
    scanf("%d", &n);
    ptr = (int*) calloc(n, sizeof(int));
    // int arr[n]; // Not allowed in c
    ptr[0] = 3; 
    printf("%d", ptr[0]);
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main(){
    int n;
    int* ptr;
    scanf("%d", &n);
    ptr = (int*) malloc(n * sizeof(int));
    // int arr[n]; // Not allowed in c
    ptr[0] = 3; 
    free(ptr);
    printf("%d", ptr[0]);
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>

int main(){
    int n = 5;
    int* ptr; 
    ptr = (int*) malloc(n * sizeof(int)); 
    ptr[0] = 3;  
    printf("%d", ptr[0]);

    ptr = (int*) realloc(ptr, 10 * sizeof(int)); 
    printf("%d", ptr[0]);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // int length = 3;
    // int breadth = 6;
    int length, breadth;
    printf("Enter length\n");
    scanf("%d", &length);

    printf("Enter breadth\n");
    scanf("%d", &breadth);

    printf("The area of this rectangle is %d", length*breadth);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int r = 6;
    int height = 10;
    printf("The area of circle with radius %d is %f\n", r, 3.14*r*r);
    printf("The volume of cylinder with radius %d and height %d is %f", r, height,  3.14*r*r*height);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    float c = 37.0, f;

    f = ((9.0/5.0)*c) + 32;
    printf("The value in Fahrenheit is %f", f);

    return 0;
}
```




#### $file
```C

 #include <stdio.h>
 
 int main(){
    float p = 34.1;
    int r = 8;
    int t = 5;
    printf("The value of simple interest is %f ", (p*r*t)/100);
    return 0;
 }
```




#### $file
```C

#include<stdio.h>

int main(){
    int a; // Variable declaration
    a = 6; // Variable initialization
    printf("The output of this program is %d", a);
    return 0;
}
```




#### $file
```C

#include<stdio.h>

int main(){
    int harry;
    int Harry; 
    int harry_good;
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    // int a;
    // a = 1;
    int a = 1;

    // float b = 1.4;
    float b;
    b = 1.4;

    // char c = 'a';
    char c;
    c = 'a';

    printf("The value of a is %d\n", a);
    printf("The value of b is %f\n", b);
    printf("The value of c is %c\n", c);
}
```




#### $file
```C

#include <stdio.h>

int main() {
    printf("Size of int: %zu bytes\n", sizeof(int));
    printf("Size of char: %zu byte\n", sizeof(char));
    printf("Size of float: %zu bytes\n", sizeof(float));
    return 0;
}

```




#### $file
```C

/*
Program: 05_comments.c
Author: Harry
Date: 3 October 2030
*/
#include<stdio.h>

int main(){
    
    // I am writing this just for fun. This line doesnt do anything
    printf("Hello World");
    // Return 0 is returning 0 to the OS
    return 0; // This is return 
}
```




#### $file
```C

#include<stdio.h>

int main(){
    int a; 
    scanf("%d", &a);
    printf("The value of a is %d", a);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a;
    char ch = 'a';
    ch = 'c';
    ch = '\n'; // represents a new line
    printf("Hey I am good \\n nice");
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    // Which of the following is invalid in C?
    int a = 1;
    int b = a;
    int v = 3 * 3;
    // char dt = '21 dec 2020'; // Wrong!
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    float a = 3.0/8 - 2;
    printf("The value of a is %f", a);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // int a = 2342354;
    int a = 3349895;
    printf("The value of a%97 is %d", a%97);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // Explain step by step evaluation of 3*x/y – z+k, where x=2, y=3, z=3, k=1
    int x=2, y=3, z=3, k=1;
    float e = 3*x/y - z+k;
    // 3*x/y - z+k;
    // 6/y - z+k;
    // 2-z+k;
    // -1+k 
    // -1 + 1 
    // 0
    printf("The value of e is %f", e);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    float a = 3.0 + 1 ;
    printf("The value of a is %f", a);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int i = 10; // Declare and initialize 'i' with 10
    int j = i;
    int a = 2, b = 3, c = 4, d = 5;
    // %d is called format specifier
    // %d is for int, %f is for float and %c is for char
    printf("The value of i is %d and value of j is %d\n", i, j );
    printf("The value of a is %d and value of b is %d\n", a, b );
    printf("The value of c is %d and value of d is %d\n", c, d );
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a = 5;
    int b = 3;
    int c = a + b;
    printf("The value of a is %d and value of b is %d and sum is %d\n", a, b, c);
    // Modulus operator is used to get the remainder
    printf("The remainder when a is divided by b is: %d\n", a%b);

    // This does not work for exponentiation in c
    // int d = a^b;

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    float a = 9.0;
    int b = 2;
    float c = a/b;
    int d = 6.7;
    printf("The value of a/b is %f\n", c);
    printf("The value of d is %d", d);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a = 3;
    int b = 6;
    int c = 9;

    printf("The value is %d\n", a*b/c + 7);
    printf("The value is %d", 3*b/2*c + 7*a);
    // 3*b/2*c + 7*a
    // 3*b/2*c + 21
    // 18/2*c + 21
    // 9*c + 21
    // 81 + 21
    // 102
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n = 45;
    float m = 32.23;

    n = (int) m; // convert the data type to int
    printf("%d\n", n);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int a = 10;
    if (a = 11)
        printf("I am 11"); 
    else
        printf("I am not 11"); 
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int marks1, marks2, marks3;
    // int value_of_harrys_marks;
    // int value_of_rohans_marks;
    // printf("%d",value_of_harrys_marks )
    printf("Enter marks1: \n");
    scanf("%d", &marks1);
    printf("Enter marks2: \n");
    scanf("%d", &marks2);
    printf("Enter marks3: \n");
    scanf("%d", &marks3);
    printf("The marks are %d %d and %d\n", marks1, marks2, marks3);

    if(marks1<33 || marks2<33 || marks3<33){
        printf("You are failed due to less marks in individual subject(s)\n"); 
    }
    else if((marks1 + marks2 + marks3)/3 <40){
        printf("You are failed due less percentage\n"); 
    }
    else{
        printf("You are passed!");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int income;
    float tax=0; 
    printf("Enter income: \n");
    scanf("%d", &income);
    if(income<=250000){
        tax = 0;
    }
    else if(income>250000 && income<=500000){
        tax = 0.05 * (income - 250000);
    }
    else if(income>500000 && income<=1000000){
        tax = 0.05 * (500000 - 250000) + 0.2 * (income- 500000);
    }
    else {
        tax = 0.05 * (500000 - 250000) + 0.2 * (1000000- 500000) + 0.3 * (income - 1000000);
    }
    printf("The total tax you need to pay is %.3f", tax);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int year; 
    printf("Enter year: \n");
    scanf("%d", &year);

    if((year %4==0 && year%100!=0) || year %400==0){
        printf("This is a leap year");
    }
    else{
        printf("This is not a leap year");
    }


    return 0;
}
```




#### $file
```C

// https://www.cs.cmu.edu/~pattis/15-1XX/common/handouts/ascii.html

#include <stdio.h>

int main(){
    char ch = 'A';
    printf("The character is %c\n", ch);
    printf("The value of character is %d\n", ch);
    // 97, 122
    if(ch >= 97 && ch<=122){
        printf("This character is lowercase\n");
    }
    else{
         printf("This character not lowecase \n");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a=4, b=2, c=116, d=32;
    if(a>b && a>c && a>d){
        printf("The greatest of all is %d", a);
    }
    else if(b>a && b>c && b>d){
        printf("The greatest of all is %d", b);
    }
    else if(c>a && c>b && c>d){
        printf("The greatest of all is %d", c);
    }
    else if(d>a && d>c && d>b){
        printf("The greatest of all is %d", d);
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int age = 15;

    if(age>10){
        printf("We are inside if\n");
        printf("Your age is greater than 10\n");
    }
    if(age%5==0){
        printf("We are inside another if\n");
        printf("Your age is divisible by 50\n");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int age = 5;

    if(age>10){
        printf("We are inside if\n");
        printf("Your age is greater than 10\n");
    }
    else{
        printf("Your age is not greater than 10");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    
    if(1){
        printf("This if is executed!\n");
    }
    if(2345){
        printf("This if is also executed!\n");
    }
    if(2.74){
        printf("This if is also executed!\n");
    }
    if('c'){
        printf("This character inside if is also executed!\n");
    }
    if(0){
        printf("I am zero - I am not executed\n");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a=1; int b=1;
    printf("The value of a and b is %d\n", a&&b);
    printf("The value of a or b is %d\n", a||b);
    printf("The value of not(a) is %d\n", !a);

    if(a && b){
        printf("both are true\n");
    }
    // is same as writing ....
    if(a){
        if(b){
            printf("both are true");
        }
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int age = 45;

    if(age>60){
        printf("You can drive and you are a senior citizen");
    }
    else if(age>40){
        printf("You can drive and you are elder");
    } 
    else if(age>18){
        printf("You can drive");
    }
    else{
        printf("You cannot drive");
    }


    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // condition ? expression-if-true : expression-if-false
    int a = 345;
    int b= 345452;
    a>b?printf("a is greater"):printf("b is greater");
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a;
    printf("Enter a: ");
    scanf("%d", &a);

    switch(a){
        case 1:
            printf("You entered 1\n");
            break;
        case 2:
            printf("You entered 2\n");
            break;
        case 3:
            printf("You entered 3\n");
            break;
        case 4:
            printf("You entered 4\n");
            break;
        default:
            printf("Nothing matched");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    /*
    Quick Quiz: Write a program to find grade of a student given his marks based on below:
        90 – 100 => A
        80 – 90 => B
        70 – 80 => C
        60 – 70 => D
        50 – 60 => E
        <50 => F
    */
   char grade;
   int marks = 46;
   if(marks<=100 && marks>=90){
    grade = 'A';
   }
   else if(marks<=90 && marks>=80){
    grade = 'B';
   }
   else if(marks<=80 && marks>70){
    grade = 'C';
   }
   else if(marks<=70 && marks>=60){
    grade = 'D';
   }
   else if(marks<=60 && marks>=50){
    grade = 'E';
   }
   else{
    grade = 'F';
   }
    return 0;
}   
```




#### $file
```C

#include <stdio.h>

int main(){
    int n;
    scanf("%d", &n);
    for (int i = 1; i <= 10; i++)
    {
        printf("%d X %d = %d\n", n, i, n*i );
    }
   
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n = 10;
    for (int i = 10; i; i--)
    {
        printf("%d X %d = %d\n", n, i, n*i );
    }
   
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main() {
    int i = 1;
    int sum = 0;
    while(i<=10){
        sum +=i;
        i++;
    }
    printf("The sum of first 10 natural numbers is %d", sum);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    // USING DO WHILE LOOP:
    // int i = 1;
    // int sum = 0;
    // do{
    //     sum += i;
    //     i++;
    // } while (i <= 10);

    // USING FOR LOOP:
    int sum = 0;
    for (int i = 1; i <= 10; i++)
    {
        sum += i;
    }
    


    printf("The sum of first 10 natural numbers is %d", sum);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int sum=0;
    for (int i = 1; i <= 10; i++)
    {
        sum += (8*i);
    }
    printf("The sum of the table of 8 is %d", sum);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // 8! = 1 X 2 X 3 X 4 X 5 X 6 X 7 X 8
    // 5! = 1 X 2 X 3 X 4 X 5
    // n! = 1 X 2 X 3 X 4 X 5 ..... X n
    // 0! = 1
    int product=1;
    int n = 1;
    for (int i = 1; i <= n; i++)
    {
        product *=i;
    }
    printf("The factorial is %d", product);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // 8! = 1 X 2 X 3 X 4 X 5 X 6 X 7 X 8
    // 5! = 1 X 2 X 3 X 4 X 5
    // n! = 1 X 2 X 3 X 4 X 5 ..... X n
    // 0! = 1
    int i = 1;
    int product=1;
    int n = 5;
    while(i<=n)
    {
        product *=i;
        i++;
    }
    printf("The factorial of %d is %d", n, product);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int n = 7;
    int not_prime = 0;

    if (n == 0 || n == 1)
    {
        not_prime = 1;
    }
    else
    {

        for (int i = 2; i < n; i++)
        {
            if (n % i == 0 && n != 2)
            {
                not_prime = 1;
                break;
            }
        }
    }
    if (not_prime)
    {
        printf("%d is not prime\n", n);
    }
    else
    {
        printf("%d is prime\n", n);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int n = 4;
    int not_prime = 0;

    if (n == 0 || n == 1)
    {
        not_prime = 1;
    }
    else
    {
        int i =2;
        // while (i < n)
        // {
        //     if (n % i == 0 && n != 2)
        //     {
        //         not_prime = 1;
        //         break;
        //     }
        //     i++;
        // }

        do{
            if (n % i == 0 && n != 2)
            {
                not_prime = 1;
                break;
            }
            i++;
        }while (i < n);
    }
    if (not_prime)
    {
        printf("%d is not prime\n", n);
    }
    else
    {
        printf("%d is prime\n", n);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // Problem: Print Happy Birthday 1 Lakh times
    printf("Happy Birthday!\n"); 
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 0;
    while(i<4){
        printf("Happy Birthday!\n");
        // i = i + 1;
        i++;
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 0;
    while (i<10) {
        printf("The value of i is %d \n", i); 
        i++;
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 0;
    while (2<10) {
        printf("The value of i is %d \n", i); 
        i++;
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    /*
  Quick Quiz: Write a program to print natural numbers from 10 to 20 when initial loop
 counter is initialized to 0.
   */

    int i = 0;
    while(i<=20){
        if(i>=10){
            printf("The value of i is %d\n", i);
        }
        i++;
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 5;
    printf("The value of i is %d\n", i);

    i = i + 5; // 10
    printf("The value of i is %d\n", i);

    printf("The value of i is %d\n", i++); // 10
    printf("The value of i is %d\n", i); // 11
    

    i +=2; // Same as i = i + 2;
    printf("The value of i is %d\n", i); // 13

    // i++ prints i first and then increments i (Post increment Operator)
    // ++i increments i first and then prints i (Post increment Operator)


    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 0;
    do{
       printf("The value of i is %d\n", i);  
       i++;
    } while (i<4);
    
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n, i=1;
    scanf("%d", &n);
    do{
        printf("%d\n", i);
        i++;
    }while(i<=n);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n = 6;
    for(int i =0;i<n;i++){
        printf("The value of i is %d\n");
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n = 12;
    for (int i = 1; i <= n; i++)
    {
        printf("%d\n", i);
    }
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){ 
    int n = 12;
    for (int i=n; i ; i--){
        printf("%d\n",i); 
    }
        
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    for (int i = 0; i < 15; i++)
    {
        if(i==5){
            // break; // exit the loop now!
            continue; // skip this iteration now
        }
        printf("i is %d\n", i);
    }

    printf("For loop is done!");
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

float average(int a, int b, int c);

float average(int a, int b, int c){
    return (a+b+c)/3.0;
}


int main(){
    int a = 3, b=6, c=5;
    printf("The average of a, b and c is %f", average(a, b, c));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

float c2f(float);

float c2f(float c){
    return ((9*c)/5) + 32;
}

int main(){
    float c = 45;
    printf("Celsius to Fahrenheit for %f is %.2f", c, c2f(c));
    return 0;
}
```




#### $file
```C

#include <stdio.h>


float force(float);

float force(float mass){
    return mass*9.8;
}

int main(){
    int m = 45;
    printf("The value of force is %f\n", force(m));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
// fibonacci(n) = fibonacci(n-1) + fibonacci(n-2);

int fibonacci(int);

int fibonacci(int n){
    if(n == 1 || n==2){
        return n-1;
    }
    return fibonacci(n-1) + fibonacci(n-2);
}
 
int main(){
    int n = 7;
    printf("The value of fibonacci series at %d is %d", n, fibonacci(n));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int a = 4; 
    printf("%d %d %d \n", a, ++a, a++);
    // 6 6 4
    // 4 5 5
    return 0;
}
```




#### $file
```C

#include <stdio.h>


int sum_natural(int);

int sum_natural(int n){
    if(n==1){
        return 1;
    }
    // sum_natural(n) = 1 + 2 + 3 + 4 + 5 + ... n-1 + n;
    // sum_natural(n) = sum(n-1) + n;
    return sum_natural(n-1) + n;

}
int main(){
    printf("The sum of first 5 natural numbers is %d", sum_natural(5));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n = 3;
    for (int i = 0; i < n; i++)
    {
        // This loop runs from 0 to 2
        // if i = 0 ---> print 1 star 
        // if i = 1 ---> print 3 stars 
        // if i = 2 ---> print 5 stars 
        // no_of_stars = (2*i+1)

        // This for loop prints (2*i+1) stars 
        for(int j=0; j<2*i+1;j++){
            printf("*");
        }

        // This printf prints a new line 
        printf("\n");
    }
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

// Function prototype
int sum(int, int);


// Function definition
int sum(int x, int y){
    // printf("The sum is %d\n", x+y);
    return x+y;
}

int main(){
    int a = 1;
    int b = 2;

    // int c = a + b;
    // printf("The sum is %d\n", c);
    int c  = sum(a,b); // Function call
    printf("%d\n", c);

    int a1 = 12;
    int b1 = 23;

    // int c1 = a1 + b1;
    // printf("The sum is %d\n", c1);
    int c1 = sum(a1,b1); // Function call
    printf("%d\n", c1);

    int a2 = 2;
    int b2 = 27;

    // int c2 = a2 + b2;
    // printf("The sum is %d\n", c2);
    int c3 = sum(a2, b2); // Function call
    printf("%d\n", c3);

    return 0;
}
```




#### $file
```C

#include <stdio.h>

void good_morning();
void good_afternoon();
void good_evening();


void good_morning(){
    printf("good morning\n");
}

void good_afternoon(){
    printf("good afternoon\n");
}

void good_evening(){
    printf("good evening\n");
}

int main(){
    good_morning();
    good_afternoon();
    good_evening();
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int change(int a);

int change(int a) {
    a = 77; // Misnomer
    return 0;
}

int main(){
    int b=22;
    change(b); // The value of b remains 22
    printf("b is %d", b); 

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <math.h>

int main(){
    int a = 5;
    printf("The area of this square is %f\n", pow(a, 2));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int factorial(int);
    // Factorial(5) = 1 X 2 X 3 X 4 X 5
    // Factorial(4) = 1 X 2 X 3 X 4
    // Factorial(3) = 1 X 2 X 3
    // Factorial(n) = 1 x 2 X 3 X .... X n-1 X n
    //  = 1 x 2 X 3 X .... X n-1

int factorial(int n){ 
    if(n == 1 || n == 0){ // Base condition
        return 1;
    }
    // Factorial(n) = Factorial(n-1) X n
    return n * factorial(n-1);
}

int main(){
    int a = 6;
    printf("The factorial of %d is %d", a, factorial(a));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 2;
    int* ptr = &i;
    printf("The address of i is %u\n", &i);
    printf("The value of i is %d\n", *ptr);
    return 0;
}
```




#### $file
```C

#include <stdio.h>


int returning_5(int* ptr){
    printf("The value of ptr is %d\n", ptr); 
    printf("The value at ptr is %d\n", *ptr); 
    return 5;
}
int main(){
    int i = 2;
    int* ptr = &i;
    printf("The address of i is %u\n", &i); 
    returning_5(ptr);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

void change_to_ten_times(int*);

void change_to_ten_times(int* a){
    *a = *a * 10;
}

int main(){
    int x = 45;
    printf("The value of x is %d\n", x);
    change_to_ten_times(&x);
    printf("The value of x is %d\n", x);

    return 0;
}
```




#### $file
```C

#include <stdio.h>

void change_to_thirty_times(int*);

void change_to_thirty_times(int* a){
    *a = *a * 10;
}

int main(){
    int x = 45;
    printf("The value of x is %d\n", x);
    change_to_thirty_times(&x);
    printf("The value of x is %d\n", x);

    return 0;
}
```




#### $file
```C

#include <stdio.h>


int* sum(int a, int b){
    int s = a+b;
    int* ptr = &s;
    printf("The sum is %d\n", s);
    return ptr;
}

float* average(int a, int b){
    float avg =  (a+b)/2.0;
    float * ptr = &avg;
    printf("The average is %f\n", avg);
    return ptr;
}

int main(){
    int x = 4; 
    int y = 6;
    int* ptr1;
    float* ptr2;

    ptr1 = sum(x,y);
    ptr2 = average(x,y);

    printf("The address of sum is %u and of average is %u", ptr1, ptr2 );

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 2;
    int* ptr1 = &i;
    int** ptr2 = &ptr1;
    printf("The address of i is %u\n", &i);
    printf("The value of i is %d\n", *ptr1);
    printf("The value of i is %d\n", **ptr2);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

void change_to_thirty_times(int);

void change_to_thirty_times(int a){
    a = a * 10;
}

int main(){
    int x = 45;
    printf("The value of x is %d\n", x);
    change_to_thirty_times(x);
    printf("The value of x is %d\n", x);

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 72;
    int* j = &i; // j is a pointer pointing to i (j is an integer pointer)
    int k = 67;
    printf("The address of i is %p\n", &i);
    printf("The address of i is %p\n", j);
    printf("The address of i is %p\n", &k);


    printf("The value at address j is %d\n", *(&i));

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    char i = 'A';
    char* j = &i; // j is a pointer pointing to i (j is a character pointer) 

    float k = 5.232;
    float* k1 = &k;
    printf("The address of i is %p\n", &i);
    printf("The address of i is %p\n", j);
    printf("The address of i is %p\n", &k);


    printf("The value at address j is %d\n", *(&i));

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int i = 6;
    int* j = &i;
    int** k = &j;


    printf("The value of i is %d\n", i);
    printf("The value of i is %d\n", *j);
    printf("The value of i is %d\n", *(&i));
    printf("The value of i is %d\n", **(&j));

    return 0;
}


```




#### $file
```C

#include <stdio.h>


int sum(int, int);


int sum(int a, int b){
    a = 6; // Sum function cannot change x using a because copy of x is provided to sum in a
    return a + b;
}

int main(){
    int x = 1, y=6;
    printf("The sum of 1 and 6 is %d\n", sum(x, y));
    printf("The value of x is %d", x);
    return 0;
}
```




#### $file
```C

#include <stdio.h>


int sum(int *, int *);


// Sum should change the value of x
int sum(int* a, int* b){
    *a = 6;
    return (*a + *b);
}

int main(){
    int x = 1, y=6;
    printf("The sum of 1 and 6 is %d\n", sum(&x, &y));
    printf("The value of x is %d", x);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

void swap(int* a, int* b);

void swap(int* a, int* b){
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}
int main(){
    int a = 4, b = 6;
    swap(&a, &b);
    printf("The value of a is %d and the value of b is %d", a, b);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int *ptr = a;

    printf("The value at address %u is %d", ptr+2,*(ptr+2));

    return 0;  
    
    
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int arr[10];

    for (int i = 0; i < 10; i++)
    {
        arr[i] = 5* (i+1);
    }

    for (int i = 0; i < 10; i++)
    {
        printf("The value of 5 X %d = %d \n", i+1, arr[i]);
    }
    

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int n;
    scanf("%d", &n);
    int arr[10];

    for (int i = 0; i < 10; i++)
    {
        arr[i] = n* (i+1);
    }

    for (int i = 0; i < 10; i++)
    {
        printf("The value of %d X %d = %d \n", n,  i+1, arr[i]);
    }
    

    return 0;
}
```




#### $file
```C

#include <stdio.h>

void printArray(int a[], int n){
    for (int i = 0; i < n; i++)
    {
       printf("%d ", a[i]);
    }
    printf("\n");
}

void reverse(int arr[], int n){
   /* for  i from 0 to n/2
    arr[i] arr[n-i-1] 
    */
   int temp;
   for (int i = 0; i < n/2; i++)
   {
    temp = arr[i];
    arr[i] = arr[n-i-1];
    arr[n-i-1] = temp;
   }
   
}

int main(){
    int arr[] = {1, 2, 3, 4, 5, 6 };
    printArray(arr, 6);
    reverse(arr, 6);
    printArray(arr, 6);
    return 0;
}


```




#### $file
```C

#include <stdio.h>

int count (int a[], int n){
    int no_of_positive=0;
    for (int i = 0; i < n; i++)
    {
        if(a[i]>0){
            no_of_positive++;
        }
    }
    return no_of_positive;
}

int main()
{
    int a[] = {1, 2, 3, 4, -5, 6, 7, -8, 9, 10}; 

    printf("The no of positive integers is %d", count(a, 10));

    return 0;  
    
    
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int arr[3][10];
    int mul[] = {2, 7, 9};
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            arr[i][j] = mul[i] * (j + 1);
        }
    }

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            printf("The value of arr[i][j] is %d\n", arr[i][j]);
        }
        printf("\n");
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int n1, n2, n3;
    scanf("%d %d %d", &n1, &n2, &n3);
    int arr[3][10];
    int mul[] = {n1, n2, n3};
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            arr[i][j] = mul[i] * (j + 1);
        }
    }

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            printf("The value of arr[i][j] is %d\n", arr[i][j]);
        }
        printf("\n");
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int arr[2][3][4];
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 4; k++)
            {
                printf("%u ", &arr[i][j][k]);
            }
            
        }
        
    }
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int marks[90]; // Reserve space to store 90 integers

    marks[0] = 45;
    marks[1] = 95;
    // We can go all the way till marks[89] 
    printf("Marks 0 and Marks 1 is %d %d", marks[0], marks[1]);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int marks[5];  

    printf("Enter marks of 5 students\n");

    // scanf("%d", &marks[0]);
    // scanf("%d", &marks[1]);
    // scanf("%d", &marks[2]);
    // scanf("%d", &marks[3]);
    // scanf("%d", &marks[4]);
    for (int i = 0; i < 5; i++)
    {
        scanf("%d", &marks[i]);
    }

      for (int i = 0; i < 5; i++)
    {
        printf("The value of marks at index %d is %d\n", i, marks[i]);
    }
    
 
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int cgpa[] = {9, 8, 8};
      for (int i = 0; i < 3; i++)
    {
        printf("The value of array at index %d is %d\n", i, cgpa[i]);
    }
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){

    // POINTER ARITHMETIC USING INTEGER POINTER
    // int a = 5;
    // int *ptr = &a;
    // printf("The address of a is %u\n", &a);
    // printf("The address of a is %u\n", ptr);
    // ptr++;
    // printf("The value of ptr is %u\n", ptr);

    // POINTER ARITHMETIC USING CHARACTER POINTER
    char a = 'A';
    char *ptr = &a;
    printf("The address of a is %u\n", &a);
    printf("The address of a is %u\n", ptr);
    ptr++;
    printf("The value of ptr is %u\n", ptr);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int marks[5];  

    printf("Enter marks of 5 students\n");
 
    for (int i = 0; i < 5; i++)
    {
        scanf("%d", &marks[i]);
    }

      for (int i = 0; i < 5; i++)
    {
        printf("The address of marks at index %d is %u\n", i, &marks[i]);
    }
    
 
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    int marks[] = {12, 34, 53, 66};

    int* ptr = &marks[0];
    // int* ptr = marks; // Same as int* ptr = &marks[0];

    for (int i = 0; i < 4; i++)
    {
        // printf("The marks at index %d is %d\n", i, marks[i]);
        printf("The marks at index %d is %d\n", i, *ptr);
        ptr++;
    }
 
    
    

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    int arr[3][2];

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            printf("Enter the value of arr[%d][%d]\n", i, j);
            scanf("%d", &arr[i][j]);
        }
    }

    // for (int i = 0; i < 3; i++)
    // {
    //     for (int j = 0; j < 2; j++)
    //     {
    //         printf("The value of arr[%d][%d] is %d\n", i, j, arr[i][j]);
    //     }
    // }

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    char str[6];
    // scanf("%s", str);
    for (int i = 0; i < 5; i++)
    {
        scanf("%c", &str[i]); 
        fflush(stdin);
    }
    str[5] = '\0';
    
    printf("%s", str);
    return 0;
}
```




#### $file
```C

#include <stdio.h>


int strlen(char str[]){
    int i=0, count;
    char c = str[i];
    while(c!='\0'){
        c = str[i];
        i++;
    } 
    count = i-1;
    return count;

}
int main(){
    char str[] = "Harry bhai";
    
    printf("%d", strlen(str));
    return 0;
}
```




#### $file
```C

#include <stdio.h>


char* slice(char str[], int m, int n){
    int i=0, count;  
    char *ptr1 = &str[m];
    char *ptr2 = &str[n];

    str = ptr1;
    str[n] = '\0';
    return str;

}
int main(){
    char str[] = "Harry bhai";
    
    printf("%s", slice(str, 1, 7));
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int mystrlen(char str[])
{
    int i = 0, count;
    char c = str[i];
    while (c != '\0')
    {
        c = str[i];
        i++;
    }
    count = i - 1;
    return count;
}

void mystrcpy(char target[], char source[])
{
    for (int i = 0; i < mystrlen(source); i++)
    {
        target[i] = source[i];
    }
    target[mystrlen(source)] = '\0';
}


int main()
{
    char source[] = "harry";
    char target[30];
    mystrcpy(target, source); // target now contains "harry"
    printf("%s %s", source, target);
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

int main(){
    char str[] = "Mera saara paisa takiye ke neeche black poly me hai";
    for (int i = 0; i < strlen(str); i++)
    {
       str[i] = str[i] + 1;
    }

    printf("%s", str);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

int main(){
    char str[] = "Nfsb!tbbsb!qbjtb!ubljzf!lf!offdif!cmbdl!qpmz!nf!ibj";
    for (int i = 0; i < strlen(str); i++)
    {
       str[i] = str[i] - 1;
    }

    printf("%s", str);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

int main(){
    char c = 'r';
    int count = 0;
    char str[] = "Harry";
    for (int i = 0; i < strlen(str); i++)
    {
       if(str[i] == c){
        count++;
       }
    }

    printf("%d", count);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

int main(){
    char c = 'd';
    int contains = 0;
    char str[] = "Harry";
    for (int i = 0; i < 56; i++)
    {
       printf("This is a nice character  \n");  
    }
    
    for (int i = 0; i < strlen(str); i++)
    {
       if(str[i] == c){
        contains = 1;
        break; // This break statement will exit the loop once the character is found!
       }
    }
    if(contains){
        printf("Yes it contains!\n");
    }
    else{
        printf("Does not contain! \n");
        
    }
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // char st[] = {'a', 'b', 'c', '\0'};
    char st[] = "abc"; // Same as doing char st[] = {'a', 'b', 'c', '\0'};
    for (int i = 0; i < 3; i++)
    {
    printf("Character is %c \n", st[i]);  
    }
    
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    // char st[] = {'a', 'b', 'c', '\0'};
    char st[] = "abc"; // Same as doing char st[] = {'a', 'b', 'c', '\0'};
    // for (int i = 0; i < 3; i++){
    //     printf("%c", st[i]);  
    // }

    printf("%s", st);
    
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main(){
    char st[4];
    scanf("%s", st);

    printf("%s", st);

    return 0;
}
```




#### $file
```C

#include <stdio.h>

int main()
{
    char st[30];
    gets(st); // The entered string is stored in st!

    printf("%s", st);
    // puts(st);
    printf("hey");

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

int main()
{
    char st[] = "Harry";
    char s1[56] = "Harry";
    char s2[56] = " bhai";

    // printf("%d", strlen(st));
    char target[30];
    strcpy(target, st); // target now contains "Harry"
    // printf("%s %s", st, target);

    strcat(s1, s2); // s1 now contains "helloharry" <no space in between>
    // printf("%s", s1);

    int a = strcmp("deep", "joke"); // DJ is negative
    printf("%d", a);

    return 0;
}
```




#### $file
```C

#include <stdio.h>

struct vector{
    int i;
    int j;
};

int main(){
    struct vector v = {1, 2};
    printf("The value of vector is %di + %d j", v.i, v.j);
    return 0;
}
```




#### $file
```C

#include <stdio.h>


typedef struct vector{
    int i;
    int j;
} V;

V sumVector(V v1, V v2){
    V v3 = {v1.i + v2.i, v1.j + v2.j};
    return v3;
}

int main(){
    V v1 = {1, 2};
    V v2 = {5, 6};
    V v3 = sumVector(v1, v2);
    printf("The value of vector v3 is %di + %d j", v3.i, v3.j);
    return 0;
}
```




#### $file
```C

#include <stdio.h>
typedef struct emp{
    int salary;
    float score;
} Employee;

int main(){
    Employee e1;
    Employee* ptr = &e1;
    (*ptr).salary = 56;
    (*ptr).score = 45.3;

    // ptr->salary = 56;
    // ptr->score = 45.3;

    printf("The value of salary is %d and the value of score is %.2f \n", ptr->salary, ptr->score);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

typedef struct c{
    int real;
    int imaginary;
} Complex;

int main(){
    Complex c = {1, 2};
    printf("The value of Complex number is %d + %di ", c.real, c.imaginary);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

typedef struct c
{
    int real;
    int imaginary;
} Complex;

void display(Complex c)
{
    printf("The value of Complex number is %d + %di \n", c.real, c.imaginary);
}
int main()
{
    Complex carr[5];
    for (int i = 0; i < 5; i++)
    {
        printf("Enter real part \n");
        scanf("%d", &carr[i].real);
        printf("Enter imaginary part \n");
        scanf("%d", &carr[i].imaginary);
        display(carr[i]);
    }

    return 0;
}
```




#### $file
```C

#include <stdio.h>

struct bankacc{
    int accNo;
    char name[34];
    char ifsc[12];
    float balance; 
};

int main(){
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

typedef struct Date
{
    int mm;
    int dd;
    int yyyy;
} DT;

int compare(DT d1, DT d2)
{
    // if d1 is in the future, return 1
    if ((d1.yyyy == d2.yyyy) && (d1.mm == d2.mm) && (d1.dd == d2.dd))
    {
        return 0;
    }

    if (d1.yyyy > d2.yyyy)
    {
        return 1;
    }
    else if (d1.yyyy < d2.yyyy)
    {
        return -1;
    }
    else if (d1.mm > d2.mm)
    {
        return 1;
    }
    else if (d1.mm < d2.mm)
    {
        return -1;
    }
    else if (d1.dd > d2.dd)
    {
        return 1;
    }
    else if (d1.dd < d2.dd)
    {
        return -1;
    }
}

int main()
{
    DT d1 = {12, 4, 2154};
    DT d2 = {12, 8, 2154};
    printf("%d", compare(d1, d2));
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

struct employee
{
int code; // This declares a new user defined data type!
float salary;
char name[10];
}; // semicolon is important

int main(){
    struct employee e1, e2;
    e1.code = 4511;
    strcpy(e1.name, "Harry");
    e1.salary = 54.44;

    printf("%d %f %s", e1.code, e1.salary, e1.name);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

struct employee
{
int code; // This declares a new user defined data type!
float salary;
char name[10];
}; // semicolon is important

int main(){
    struct employee e1, e2, e3;

    printf("Enter the value of code\n");
    scanf("%d", &e1.code);

    printf("Enter the value of salary\n");
    scanf("%f", &e1.salary);

    printf("Enter the value of name\n");
    scanf("%s", &e1.name);
    printf("%d %f %s\n", e1.code, e1.salary, e1.name);


    printf("Enter the value of code\n");
    scanf("%d", &e2.code);

    printf("Enter the value of salary\n");
    scanf("%f", &e2.salary);

    printf("Enter the value of name\n");
    scanf("%s", &e2.name);
    printf("%d %f %s\n", e2.code, e2.salary, e2.name);



    printf("Enter the value of code\n");
    scanf("%d", &e3.code);

    printf("Enter the value of salary\n");
    scanf("%f", &e3.salary);

    printf("Enter the value of name\n");
    scanf("%s", &e3.name);
    printf("%d %f %s\n", e3.code, e3.salary, e3.name);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>

struct employee
{
    int code; // This declares a new user defined data type!
    float salary;
    char name[10];
}; // semicolon is important

int main()
{
    struct employee facebook[100]; // an array of structures
    // we can access the data using:
    facebook[0].code = 100;
    facebook[1].code = 77;
    struct employee harry = {100, 71.22, "harry"};
    printf("%d %f %s", harry.code, harry.salary, harry.name);
    return 0;
}
```




#### $file
```C

#include <stdio.h>

struct employee
{
    int code; // This declares a new user defined data type!
    float salary;
    char name[10];
}; // semicolon is important

int main()
{
    struct employee e1;
    e1.code = 56;
    struct employee *ptr;
    ptr = &e1;
    // now we can print structure elements using:
    // printf("%d", (*ptr).code);
    printf("%d", ptr->code); // Exactly same as  (*ptr).code

    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

struct employee
{
    int code; // This declares a new user defined data type!
    float salary;
    char name[10];
}; // semicolon is important

void show(struct employee e); // function prototype


void show(struct employee e){
    printf("Code is %d\nSalary is %f\nName is %s\n", e.code, e.salary, e.name);
}

int main()
{
    struct employee e1;
    e1.code = 4511;
    strcpy(e1.name, "Harry");
    e1.salary = 54.44;
    show(e1);


    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <string.h>

typedef struct employee
{
    int code; // This declares a new user defined data type!
    float salary;
    char name[10];
} Emp; // semicolon is important

int main(){
    // typedef int harry;
    // int a = 88;
    // printf("The value of a is %d \n", a);

    // typedef struct employee Emp;

    Emp e1;
    Emp* ptr1 = &e1;
    e1.code = 4511;
    strcpy(e1.name, "Harry");
    e1.salary = 54.44;

    printf("%d %f %s\n", e1.code, e1.salary, e1.name);
    printf("%d %f %s\n", ptr1->code, ptr1->salary, ptr1->name);
    
    return 0;
}
```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    // Initialize random number generator
    srand(time(0));

    // Generate random number between 1 and 100
    int randomNumber = (rand() % 100) + 1;
    int no_of_guesses = 0;
    int guessed_number;

    // Print the random number
    // printf("Random Number: %d\n", randomNumber);

    do
    {
        printf("Guess the number");
        scanf("%d", &guessed_number);
        if(guessed_number>randomNumber){
            printf("Lower number please!\n");
        }
        else if(guessed_number<randomNumber){
            printf("Higher number please!\n");
        }
        else{
            printf("Congrats!!\n");
        }
        no_of_guesses++;

    } while (guessed_number != randomNumber);

    printf("You guessed the number in %d guesses", no_of_guesses);

    return 0;
}

```




#### $file
```C

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    srand(time(0));
    int player, computer = rand() % 3;
    /*
        0 --> Snake
        1 --> Water
        2 --> Gun
    */
    printf("Choose 0 for Snake, 1 for water and 2 for Gun \n");
    scanf("%d", &player);
    printf("Computer chose %d\n", computer);

    if (player == 0 && computer == 0)
    {
        printf("Its a Draw!\n");
    }
    else if (player == 0 && computer == 1)
    {
        printf("You Win!\n");
    }
    else if (player == 0 && computer == 2)
    {
        printf("You Lose!\n");
    }
    else if (player == 1 && computer == 0)
    {
        printf("You Lose!\n");
    }
    else if (player == 1 && computer == 1)
    {
        printf("Its a Draw!\n");
    }
    else if (player == 1 && computer == 2)
    {
        printf("You win!\n");
    }
    else if (player == 2 && computer == 0)
    {
        printf("You win!\n");
    }
    else if (player == 2 && computer == 1)
    {
        printf("You Lose!\n");
    }
    else if (player == 2 && computer == 2)
    {
        printf("Its a Draw!\n");
    }
    else{
        printf("Something went wrong!");
    }

    return 0;
}
```


