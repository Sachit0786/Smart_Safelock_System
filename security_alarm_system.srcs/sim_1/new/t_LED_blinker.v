`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 19:58:21
// Design Name: 
// Module Name: t_LED_blinker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ps/1ps
module t_LED_blinker();

    reg clk;
    reg en;
    reg reset;

    wire blink;

    LED_blinker #(.CLK_IN(500), .FREQ_OUT(5)) UUT(
        .i_clk(clk),
        .i_en(en),
        .i_reset(reset),
        .o_blink(blink)
    );

    initial clk = 0;
    always #1 clk = ~clk;

    initial begin
        reset = 1;
        en = 0;
        #10 reset = 0;
        #500 en = 1;
        #500 $stop; 
    end

endmodule
