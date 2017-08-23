function Orders(){
    this.numA = Math.floor(Math.random()*100+1);
    this.numB = Math.floor(Math.random()*100+1);
    this.numC = Math.floor(Math.random()*100+1);
    this.numD = Math.floor(Math.random()*100+1);
    this.numE = Math.floor(Math.random()*100+1);
    this.ta=0;
    this.tb=0;
    this.tc=0;
    this.td=0;
    this.te=0;
    this.sum = this.numA+this.numB+this.numC+this.numD+this.numE;
};

function CreateOrderlists{
    var orderNum = 10000;
    var OrderLists = new Array();
    var TA=0;
    var t=new Array();
    var Effi=new Array();
    for(let j=1;j<orderNum;j++){
        Order[j] = new Orders();
        OrderLists[j].ta=max(OrderLists[j].ta,OrderLists[j-1].tb);
        OrderLists[j].tb=max(OrderLists[j].tb,OrderLists[j-1].tc-OrderLists[j].ta+OrderLists[j-1].tb);
        OrderLists[j].tc=max(OrderLists[j].tc,OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb+OrderLists[j-1].tb);
        OrderLists[j].td=max(OrderLists[j].td,OrderLists[j-1].tb=OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb-OrderLists[j].tc);
        OrderLists[j].te=OrderLists[j].te;
        TA+=OrderLists[j].ta;
        t[j]=TA+OrderLists[j].tb+OrderLists[j].tc+OrderLists[j].td+OrderLists[j].te;
        Effi[j]=(OrderLists[j].sum)/t[j];
        console.log(Effi[j]);
    }
}
CreateOrderlists();
