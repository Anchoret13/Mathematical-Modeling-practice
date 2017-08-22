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

int DANRENMOSHI(){
    int *OrderLists;
    int OrderNum;
    for(i=0;i<OrderNum;i++){
        OrderLists[i] = new Orders;
    }
}
