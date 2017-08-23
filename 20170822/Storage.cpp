//仓库模式
#include<stdlib.h>
#include<iostream>
#include<math.h>
#include<time.h>
#define N 10000
using namespace std;

class Orders{
private:
    int numA, numB, numC, numD, numE;//单个订单中的数字
public:
	double ta, tb, tc, td, te;//订单的每个部分在仓库中的时间
    int sum=numA+numB+numC+numD+numE;
    Orders(){
        //获得一个随机值
        srand(time(NULL));
        numA=rand()%100+1;
        numB=rand()%100+1;
        numC=rand()%100+1;
        numD=rand()%100+1;
        numE=rand()%100+1;
    }
};

int main(){
    Orders *OrderLists;
    int OrderNum=N;
    double TA=0;
    double *t;
    double *Effi;
    
    for(int j=1;j<OrderNum;j++){
        OrderLists[j]={Orders()};
        OrderLists[j].ta=max(OrderLists[j].ta,OrderLists[j-1].tb);
        OrderLists[j].tb=max(OrderLists[j].tb,OrderLists[j-1].tc-OrderLists[j].ta+OrderLists[j-1].tb);
        OrderLists[j].tc=max(OrderLists[j].tc,OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb+OrderLists[j-1].tb);
        OrderLists[j].td=max(OrderLists[j].td,OrderLists[j-1].tb-OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb-OrderLists[j].tc);
        OrderLists[j].te=OrderLists[j].te;
        TA+=OrderLists[j].ta;
        t[j]=TA+OrderLists[j].tb+OrderLists[j].tc+OrderLists[j].td+OrderLists[j].te;
        Effi[j]=(OrderLists[j].sum)/t[j];
        cout<<Effi[j];
    }
}
