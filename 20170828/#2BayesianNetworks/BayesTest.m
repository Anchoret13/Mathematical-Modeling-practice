N=5;  %四个节点分别是国家政策C,学校政策U,工作压力大W,身体状况差B，过劳死D
dag=zeros(N,N);  %网络连接矩阵初始化
M=1;T=2;A=3;R=4;D=5;  %初始化节点顺序
dag(M,T)=1;  %定义节点之间的连接关系
dag(T,[A R])=1;
dag(A,D)=1;
dag(R,D)=1;
discrete_nodes=1:N;  %离散节点
node_sizes=2*ones(1,N);  %节点状态数


bnet=mk_bnet(dag,node_sizes,'names',{'喵喵喵？？？(M)','这特么是啥(T)','啊啊啊啊(A)','ruaruaruaruaruarua(R)''猝死(D)'},'discrete',discrete_nodes);

bnet.CPD(M)=tabular_CPD(bnet,M,[0.1,0.9]);
bnet.CPD(T)=tabular_CPD(bnet,T,[0.95 0.01 0.05 0.99]);
bnet.CPD(A)=tabular_CPD(bnet,A,[0.9 0.05 0.1 0.95]);
bnet.CPD(R)=tabular_CPD(bnet,R,[0.3 0.01 0.7 0.99]);
bnet.CPD(D)=tabular_CPD(bnet,D,[0.335 0.3 0.05 0 0.665 0.7 0.95 1]);
figure
draw_graph(dag);