// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// Generated by Quartus II Version 13.1.0 Build 162 10/23/2013 SJ Web Edition
// Created on Tue Nov 28 16:19:04 2023

// synthesis message_off 10175

`timescale 1ns/1ns

module lab6 (
    reset,clock,dir,
    Q[3:0]);

    input reset;
    input clock;
    input dir;
    tri0 reset;
    tri0 dir;
    output [3:0] Q;
    reg [3:0] Q;
    reg [9:0] fstate;
    reg [9:0] reg_fstate;
    parameter state1=0,state2=1,state3=2,state4=3,state5=4,state6=5,state7=6,state8=7,state9=8,state10=9;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or dir)
    begin
        if (reset) begin
            reg_fstate <= state1;
            Q <= 4'b0000;
        end
        else begin
            Q <= 4'b0000;
            case (fstate)
                state1: begin
                    if (dir)
                        reg_fstate <= state2;
                    else if (~(dir))
                        reg_fstate <= state10;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    Q <= 4'b0001;
                end
                state2: begin
                    if (dir)
                        reg_fstate <= state3;
                    else if (~(dir))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    Q <= 4'b0010;
                end
                state3: begin
                    if (dir)
                        reg_fstate <= state4;
                    else if (~(dir))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    Q <= 4'b0011;
                end
                state4: begin
                    if (dir)
                        reg_fstate <= state5;
                    else if (~(dir))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    Q <= 4'b0100;
                end
                state5: begin
                    if (dir)
                        reg_fstate <= state6;
                    else if (~(dir))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state5;

                    Q <= 4'b0101;
                end
                state6: begin
                    if (dir)
                        reg_fstate <= state7;
                    else if (~(dir))
                        reg_fstate <= state5;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state6;

                    Q <= 4'b0110;
                end
                state7: begin
                    if (dir)
                        reg_fstate <= state8;
                    else if (~(dir))
                        reg_fstate <= state6;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state7;

                    Q <= 4'b0111;
                end
                state8: begin
                    if (dir)
                        reg_fstate <= state9;
                    else if (~(dir))
                        reg_fstate <= state7;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state8;

                    Q <= 4'b1000;
                end
                state9: begin
                    if (dir)
                        reg_fstate <= state10;
                    else if (~(dir))
                        reg_fstate <= state8;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state9;

                    Q <= 4'b1001;
                end
                state10: begin
                    if (dir)
                        reg_fstate <= state1;
                    else if (~(dir))
                        reg_fstate <= state9;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state10;

                    Q <= 4'b1010;
                end
                default: begin
                    Q <= 4'bxxxx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // lab6
