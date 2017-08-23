//#2 Alpha Edition
function Orders(){
    this.numA = Math.floor(Math.random()*100+1);
    this.numB = Math.floor(Math.random()*100+1);
    this.numC = Math.floor(Math.random()*100+1);
    this.numD = Math.floor(Math.random()*100+1);
    this.numE = Math.floor(Math.random()*100+1);
    this.ta=this.numA/24;
    this.tb=this.numB/24;
    this.tc=this.numC/24;
    this.td=this.numD/24;
    this.te=this.numE/24;
    this.sum = this.numA+this.numB+this.numC+this.numD+this.numE;
    this.T=(this.numA+this.numB+this.numC+this.numD+this.numE)

};

function CreateOrderlists(){
    var orderNum = 10000;
    var OrderLists = new Array();
    OrderLists[0] = new Orders();
    var TotalTp1=0,TotalTp2=0;
    var Quantum=0;
    var Effi;
    let j=2;
    OrderLists[1] = new Orders();
    OrderLists[1].ta=Math.max(OrderLists[1].ta,OrderLists[1-1].tb);
    OrderLists[1].tb=Math.max(OrderLists[1].tb,OrderLists[1-1].tc-OrderLists[1].ta+OrderLists[1-1].tb);
    OrderLists[1].tc=Math.max(OrderLists[1].tc,OrderLists[1-1].td-OrderLists[1].ta-OrderLists[1].tb+OrderLists[1-1].tb);
    OrderLists[1].td=Math.max(OrderLists[1].td,OrderLists[1-1].tb=OrderLists[1-1].tc+OrderLists[1-1].td-OrderLists[1].ta-OrderLists[1].tb-OrderLists[1].tc);
    //OrderLists[1].te=Orderlists[1].te;
    TotalTp1+=OrderLists[0].ta+OrderLists[0].tb+OrderLists[0].tc+OrderLists[0].td;
    var TotalTp3=OrderLists[0].te+OrderLists[1].te;
    for(let j=2;j<orderNum;j++){
        OrderLists[j] = new Orders();
        OrderLists[j].ta=Math.max(OrderLists[j].ta,OrderLists[j-1].tb);
        OrderLists[j].tb=Math.max(OrderLists[j].tb,OrderLists[j-1].tb+OrderLists[j-1].tc-OrderLists[j].ta);
        OrderLists[j].tc=Math.max(OrderLists[j].tc,OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb,OrderLists[j-1].tb+OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb);
        OrderLists[j].td=Math.max(OrderLists[j].td,OrderLists[j-1].tb+OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb-OrderLists[j].tc,OrderLists[j-1].tb+OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb-OrderLists[j].tc,OrderLists[j-1].tb+OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb-OrderLists[j].tc);
        //OrderLists[j].te=OrderLists[j].te;
        TotalTp2+=(OrderLists[j].ta+OrderLists[j].tb+OrderLists[j].tc+OrderLists[j].td)-(OrderLists[j-1].ta+OrderLists[j-1].tb+OrderLists[j-1].tc+OrderLists[j-1].td);
        TotalTp3+=OrderLists[j].te;
        Quantum+=OrderLists[j].sum;
    }
    var TotalT = TotalTp1+TotalTp2+TotalTp3;
    Effi=Quantum/TotalT;
    console.log(Effi);
}
