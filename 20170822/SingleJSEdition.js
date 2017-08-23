function Orders(){
    this.numA = Math.floor(Math.random()*100+1);
    this.numB = Math.floor(Math.random()*100+1);
    this.numC = Math.floor(Math.random()*100+1);
    this.numD = Math.floor(Math.random()*100+1);
    this.numE = Math.floor(Math.random()*100+1);
    this.T=(this.numA+this.numB+this.numC+this.numD+this.numE)
    this.sum = this.numA+this.numB+this.numC+this.numD+this.numE;
};
function danRenMoshi(){
    var OrderNum = 10000;
    var OrderLists = new Array();
    var tdan=0;
    var EffiDan;
    for(let i=0;i<OrderNum/15;i++){
        for(let j=0;j<15;j++){
            //OrderLists[j] = new Orders;//在考虑是不是要存个指针指向实例化的对象
            OrderLists[j]={Order()};
            TotalT+=OrderLists[j].DANRENTime;

            if(OrderLists[j].DANRENTime>tdan){
                tdan=OrderLists[j].DANRENTime;
            }
        }
    }
    EffiDan = TotalT/tdan;
    console.log(EffiDan);
}
danRenMoshi();