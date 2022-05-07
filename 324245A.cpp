#include <iostream>
using namespace std;

int arr[8];
int main(){
    
    for (int i = 0; i < 8; i++)
        cin>>arr[i];
    

    
    int maximum = 0;
    int result = 0;
    for (int i = 0,j = 3; i < 8;j++){
        if(j == 8)
            j = 0;
        if(j-i != 4){
            result+=arr[j];
        }else{
            result-=arr[i]; i++;
            result+=arr[j];
        }
        maximum = max(maximum, result);
    }
    
    cout << maximum;

    return 0;
}