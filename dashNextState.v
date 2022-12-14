module dashNextState(d5,d4,d3,d2,d1,d0,n5,n4,n3,n2,n1,n0);

input d5,d4,d3,d2,d1,d0;
output n5,n4,n3,n2,n1,n0;
reg [5:0] H;

always @ (d5 or d4 or d3 or d2 or d1 or d0)
	begin
		case ({d5,d4,d3,d2,d1,d0})
			6'b000000: H= 6'b000010;
			6'b000001: H= 6'b000100;
			6'b000010: H= 6'b000110;
			6'b000011: H= 6'b001000;
			6'b000100: H= 6'b001010;
			6'b000101: H= 6'b001100;
			6'b000110: H= 6'b001110;
			6'b000111: H= 6'b010000;
			6'b001000: H= 6'b010010;
			6'b001001: H= 6'b101000;
			6'b001010: H= 6'b010101;
			6'b001011: H= 6'b010111;
			6'b001100: H= 6'b011001;
			6'b001101: H= 6'b011011;
			6'b001110: H= 6'b011101;
			6'b001111: H= 6'b011111;
			6'b010000: H= 6'b100000;
			6'b010001: H= 6'b101000;
			6'b010010: H= 6'b100001;
			6'b010011: H= 6'b101000;
			6'b010100: H= 6'b101000;
			6'b010101: H= 6'b100010;
			6'b010110: H= 6'b101000;
			6'b010111: H= 6'b101000;
			6'b011000: H= 6'b101000;
			6'b011001: H= 6'b101000;
			6'b011010: H= 6'b101000;
			6'b011011: H= 6'b101000;
			6'b011100: H= 6'b101000;
			6'b011101: H= 6'b100111;
			6'b011110: H= 6'b011110;
			6'b011111: H= 6'b011111;
			6'b100000: H= 6'b100000;
			6'b100001: H= 6'b100001;
			6'b100010: H= 6'b100010;
			6'b100011: H= 6'b100011;
			6'b100100: H= 6'b100100;
			6'b100101: H= 6'b100101;
			6'b100110: H= 6'b100110;
			6'b100111: H= 6'b100111;
			6'b101000: H= 6'b101000;
			
		endcase
	end
	
assign {n5,n4,n3,n2,n1,n0} = H;
	
endmodule
