module Decoder3to8(w2,w1,w0,y7,y6,y5,y4,y3,y2,y1,y0);
input w2,w1,w0;
output y7,y6,y5,y4,y3,y2,y1,y0;

assign y7 = (w2)&(w1)&(w0);
assign y6 = (w2)&(w1)&(~w0);
assign y5 = (w2)&(~w1)&(w0);
assign y4 = (w2)&(~w1)&(~w0);
assign y3 = (~w2)&(w1)&(w0);
assign y2 = (~w2)&(w1)&(~w0);
assign y1 = (~w2)&(~w1)&(w0);
assign y0 = (~w2)&(~w1)&(~w0);

endmodule
