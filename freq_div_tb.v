`timescale 1ns / 1ps


module freq_div_tb();
reg clk_i, rst_i;
wire led_o;

freq_div test(clk_i, rst_i, led_o);

initial
clk_i = 1'b0;

always
#5 clk_i = ~clk_i;

initial
    begin
    rst_i = 1'b0;
    #60
    rst_i = 1'b1;
    #5
    rst_i = 1'b0;
    end
endmodule
