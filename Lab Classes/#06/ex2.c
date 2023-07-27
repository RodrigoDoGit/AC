#include <stdio.h>

int squares[100];

int main(){
  int i, upTo;
  scanf("%d", &upTo);

  for(i=0; i<upTo; i++)
    squares[i] = i*i;

  return 0;
}
