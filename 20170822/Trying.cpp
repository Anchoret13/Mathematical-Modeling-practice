#include<iostream>
using namespace std;

class Orders{
private:
    //订单内容
    int Foods;
    int drinks;
    int dailys;
    int es;
    int souvs;
    int sum = Foods+drinks+dailys+es+souvs;
    bool condition;

    int t1,t2,t3,t4,t5;//五个阶段的时间
public:
    Orders(foods,drinks,dailys,es,souvs){
        this foods = foods;
        this drinks = drinks;
        this dailys = dailys;
        this es = es;
        this souvs = souvs;
    }
}

class Wokers{
private:
    //工人
    int no;
    int effi;
    bool busy;
public:
    Wokers(no,effi){
        this no = no;
        this effi = effi;
    }
}

int main(){
    
}
//所谓串行单人模式
int DANRENMOSHI(){
    int *OrderLists;
    int OrderNum;
    for(i=0;i<OrderNum;i++){
        OrderLists[i] = new Orders;//在考虑是不是要存个指针指向实例化的对象
        OrderLists[i].
    }
}
