//#############################################################################
//# Function: Gray to binary encoder                                          #
//#############################################################################


module std_gray2bin #(parameter DW = 32) // width of data inputs
(
	input [DW-1:0] gray, //gray encoded input
	output [DW-1:0] bin //binary encoded output
);

always_comb begin
	for(integer i = 0; i < DW; i = i + 1) begin
		bin[i] <= ^(gray >> i);
	end
end

endmodule // std_gray2bin


