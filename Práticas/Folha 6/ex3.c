#include <stdio.h>

int squares[100];

void storeValues(int n) {
   int i;

   for (i = 0; i < n; i++)
      squares[i] = i * i;

   return;
}

int computeSum(int n) {
   int i, sum;

   sum = 0;

   for (i = 0; i < n; i++)
      sum += squares[i];

   return sum;  
}

int main() {
   int upTo;
   scanf("%d", &upTo);
   storeValues(upTo);
   printf("The result is %d\n", computeSum(upTo));

   return 0;
}
