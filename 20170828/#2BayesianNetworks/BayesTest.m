N=5;  %�ĸ��ڵ�ֱ��ǹ�������C,ѧУ����U,����ѹ����W,����״����B��������D
dag=zeros(N,N);  %�������Ӿ����ʼ��
M=1;T=2;A=3;R=4;D=5;  %��ʼ���ڵ�˳��
dag(M,T)=1;  %����ڵ�֮������ӹ�ϵ
dag(T,[A R])=1;
dag(A,D)=1;
dag(R,D)=1;
discrete_nodes=1:N;  %��ɢ�ڵ�
node_sizes=2*ones(1,N);  %�ڵ�״̬��


bnet=mk_bnet(dag,node_sizes,'names',{'������������(M)','����ô��ɶ(T)','��������(A)','ruaruaruaruaruarua(R)''���(D)'},'discrete',discrete_nodes);

bnet.CPD(M)=tabular_CPD(bnet,M,[0.1,0.9]);
bnet.CPD(T)=tabular_CPD(bnet,T,[0.95 0.01 0.05 0.99]);
bnet.CPD(A)=tabular_CPD(bnet,A,[0.9 0.05 0.1 0.95]);
bnet.CPD(R)=tabular_CPD(bnet,R,[0.3 0.01 0.7 0.99]);
bnet.CPD(D)=tabular_CPD(bnet,D,[0.335 0.3 0.05 0 0.665 0.7 0.95 1]);
figure
draw_graph(dag);