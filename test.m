load('../../code/CVPR09-ScSPM/ScSPM-20/dictionary/Z_E_Caltech101_1024.mat','tr_fea','tr_label');
X{1}=tr_fea;
Q{1}=tr_label;
%LRR without label
%[Z,ZZ,E]=multi_NNLRS(X,0.5,1,0);
%LRR with label
[Z,ZZ,E]=lslrr(X,Q,16,15,560);

save('Z.mat');

