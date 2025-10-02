
module pwm_generator(
    input clk_3125KHz,
    input [3:0] duty_cycle,
    output reg clk_195KHz, pwm_signal
);

initial begin
    clk_195KHz = 0; pwm_signal = 1;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////
reg [3:0] count = 8;
reg [3:0] counter = 0;

always @(posedge clk_3125KHz) begin
    counter <= counter + 1'b1;
    pwm_signal <= (counter < duty_cycle);
	 clk_195KHz <= (counter < count);
end
//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule
