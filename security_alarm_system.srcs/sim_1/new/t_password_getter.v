`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 20:09:05
// Design Name: 
// Module Name: t_password_getter
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

module t_password_getter();

    reg [3:0] digit;
    reg confirm;
    reg reset;
    reg clk;

    wire [11:0] password;

    password_getter_sync UUT(
        .i_digit(digit),
        .i_confirm(confirm),
        .i_reset(reset),
        .i_clk(clk),
        .o_password(password)
    );

    integer i;

    initial begin
        $monitor("[%t]\tdigit = %h\tconfirm = %b\treset = %b\tpassword = %h", $time, digit, confirm, reset, password);
    end

    initial clk = 0;
    always #1 clk = ~clk;

    initial begin
        reset = 1;
        #2 reset = 0;
        
        for (i = 0; i < 6; i = i + 1) begin
            #2 digit = $random;
            confirm = 1;
            #2 confirm = 0;
        end

        #2 reset = 1;
        #5 $stop;
    end

endmodule