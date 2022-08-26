module ModifiedUpCounterCircuit(s2,s1,s0,w,new2,new1,new0);
input s2,s1,s0,w;
output new2,new1,new0;

assign new2 = s2 | (w&s1&s0);
assign new1 = ~w&s1 | s1&~s0 | w&s2&s0 | w&~s1&s0;
assign new0 = (w ^ s0) | w&s2&s1;

endmodule
