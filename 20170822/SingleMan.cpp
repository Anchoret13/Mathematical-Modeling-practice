//单人模式
#include<math.h>
#include<iostream>
#include<stdlib.h>
#include<time.h>
using namespace std;
#define N 10000
class Order{
private:
    int numA, numB, numC, numD, numE;//单个订单中的数字
public:
    double DANRENTime;
    Order(){
        //获得随机值
        numA=rand()%100+1;
        numB=rand()%100+1;
        numC=rand()%100+1;
        numD=rand()%100+1;
        numE=rand()%100+1;
    }
    void getDANRENTime(){
        DANRENTime = (numA+numB+numC+numD+numE)/8;//假定每个人的效率为8（最理想）
    }
}; 

int main(){
    Order *OrderLists;
    int OrderNum=N;
    int TotalT=0;//j=1到j=N/15的求和
    int tdan=0,EffiDan;
    for(int i=0;i<OrderNum/15;i++){
        for(int j=0;j<15;j++){
            //OrderLists[j] = new Orders;//在考虑是不是要存个指针指向实例化的对象
            OrderLists[j]={Order()};
            TotalT+=OrderLists[j].DANRENTime;

            if(OrderLists[j].DANRENTime>tdan){
                tdan=OrderLists[j].DANRENTime;
            }
        }
    }
    EffiDan = TotalT/tdan;
}
