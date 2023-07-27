#include <stdio.h>

int main(){
  int i, upTo, sum;
  scanf("%d", &upTo);
  sum = 0;

  for(i=0; i<upTo; i++)
    sum += i*i;

  printf("The result is %d\n", sum);

  return 0;
}
