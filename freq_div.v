`timescale 1ns / 1ps
module freq_div(clk_i, rst_i, led_o);
    input clk_i, rst_i;
    output led_o;
    integer N = 10;
    integer temp = 0;
    integer led = 0;
    
    always @(posedge clk_i)
        begin
            if(temp < N/2)
                led = 0;
            else if( temp >= N/2)
                led = 1;
                
            temp = temp + 1;
            
            if (temp == N)
                temp = 0;
        end
        
    assign led_o = led;
    
    always @(posedge rst_i)
        temp = 0;
endmodule
