module myMux41(w0,w1,w2,w3,s1,s0,Q);
input w0,w1,w2,w3,s1,s0;
output Q;
assign Q = (~s1)&(~s0)&w0 | (~s1)&(s0)&w1 | (s1)&(~s0)&w2 | (s1)&(s0)&w3;
endmodule
