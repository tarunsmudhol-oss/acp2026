#include<stdio.h>
void input(int n, float arr[]);
int find_max(int n, float arr[]);
void output(float arr[], int max_index);

int main()
{
    int n;
    
    printf("Enter number of the array");
    scanf("%d", &n);

    if(n <= 0)
    {
        printf("Invaild Input\n");
        return 0;
    }

    float arr[n];

    input(n, arr);
    
     int max_index=find_max(n,arr);

     output(arr, max_index);

     return 0;
}

void input(int n, float arr[])
{
   for(int i=0;i<n;i++)
    {
        printf("Enter the Array Element [%d]",i);
        scanf("%f", &arr[i]);
    }
}

int find_max(int n, float arr[])
{
    int max_index=0;
    
    for(int i=1;i<n;i++)
    {
        if(arr[i]>arr[max_index])
        {
            max_index=i;
        }
    }

    return max_index;
}

void output(float arr[], int max_index)
{
 printf("The Maxium Index is =  %.2f\n", arr[max_index]);
 printf("Index of maximum value = %d\n", max_index );
}
