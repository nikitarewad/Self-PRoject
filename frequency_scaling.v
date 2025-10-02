
module frequency_scaling (
    input clk_50M,
    output reg clk_3125KHz
);

initial begin
    clk_3125KHz = 0;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////
reg [3:0] count = 8;
reg [3:0] counter = 0;

always @(posedge clk_50M) begin
    counter <= counter + 1'b1;
	 clk_3125KHz <= (counter < count);
end
//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule
