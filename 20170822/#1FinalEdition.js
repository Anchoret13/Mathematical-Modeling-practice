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
    this.T=(this.numA+this.numB+this.numC+this.numD+this.numE)

};

function CreateOrderlists(){
    var orderNum = 10000;
    var OrderLists = new Array();
    var TA=0;
    var tSTO=new Array();
    var EffiSTO=new Array();
    var EffiSigl=new Array();
    var EFFTSTO=0;
    var EFFTSIGL=0;
    OrderLists[0] = new Orders();
    OrderLists[0].ta=OrderLists[0].numA/24;
    OrderLists[0].tb=OrderLists[0].numB/24;
    OrderLists[0].tc=OrderLists[0].numC/24;
    OrderLists[0].td=OrderLists[0].numD/24;
    OrderLists[0].te=OrderLists[0].numE/24;

    for(let j=1;j<orderNum;j++){
        OrderLists[j] = new Orders();
        OrderLists[j].ta=Math.max(OrderLists[j].ta,OrderLists[j-1].tb);
        OrderLists[j].tb=Math.max(OrderLists[j].tb,OrderLists[j-1].tc-OrderLists[j].ta+OrderLists[j-1].tb);
        OrderLists[j].tc=Math.max(OrderLists[j].tc,OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb+OrderLists[j-1].tb);
        OrderLists[j].td=Math.max(OrderLists[j].td,OrderLists[j-1].tb-OrderLists[j-1].tc+OrderLists[j-1].td-OrderLists[j].ta-OrderLists[j].tb-OrderLists[j].tc);
        OrderLists[j].te=OrderLists[j].te;
        TA+=OrderLists[j].ta;
        tSTO[j]=TA+OrderLists[j].tb+OrderLists[j].tc+OrderLists[j].td+OrderLists[j].te;
        EffiSTO[j]=(OrderLists[j].sum)/tSTO[j];//仓储模式效率
        EFFTSTO+=EffiSTO[j];
        EffiSigl[j]=(OrderLists[j].sum)/8;//单人模式效率
        EFFTSIGL+=OrderLists[j].sum;
        console.log(`${EffiSTO[j]} ${EffiSigl[j]}`);
    }
    var EFFAVGSTO=EFFTSTO/orderNum;
    var EFFAVGSigl=EFFTSIGL/(8*orderNum);
    var bili=EFFAVGSigl/EFFAVGSTO;
    console.log(`相同随机数据生成的订单，若使用分区的平均效率为${EFFAVGSTO}，而使用单人模式的平均效率为${EFFAVGSigl}，单人模式的效率为分区效率的${bili*100}%`);
}
CreateOrderlists();
