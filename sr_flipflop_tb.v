// Testbench for SR Flip-Flop
`timescale 1ns/1ps

module sr_flipflop_tb;

reg clk;
reg reset;
reg s;
reg r;
wire q;

// Instantiate SR Flip-Flop
sr_flipflop uut (
    .clk(clk),
    .reset(reset),
    .s(s),
    .r(r),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence
initial begin

    $monitor("Time=%0t | Reset=%b | S=%b | R=%b | Q=%b",
             $time, reset, s, r, q);

    // Initial reset
    reset = 1;
    s = 0;
    r = 0;
    #10;

    // Release reset
    reset = 0;

    // Hold
    s = 0;
    r = 0;
    #10;

    // Set
    s = 1;
    r = 0;
    #10;

    // Hold
    s = 0;
    r = 0;
    #10;

    // Reset
    s = 0;
    r = 1;
    #10;

    // Hold
    s = 0;
    r = 0;
    #10;

    // Finish
    $finish;
end

endmodule
