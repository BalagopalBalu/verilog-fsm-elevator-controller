`timescale 1ns / 1ps

module tb_elevator_controller;

reg clk;
reg reset;
reg [2:0] request_floor;

wire [2:0] current_floor;
wire motor_up;
wire motor_down;
wire door_open;

elevator_controller DUT(
    .clk(clk),
    .reset(reset),
    .request_floor(request_floor),
    .current_floor(current_floor),
    .motor_up(motor_up),
    .motor_down(motor_down),
    .door_open(door_open)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    reset = 1'b1;
    request_floor = 3'd0;

    // Reset
    #20;
    reset = 1'b0;

    // Move to floor 3
    #20;
    request_floor = 3'd3;
    #60;

    // Move to floor 1
    request_floor = 3'd1;
    #50;

    // Move to floor 0
    request_floor = 3'd0;
    #40;

    // Move to floor 4
    request_floor = 3'd4;
    #100;

    #20;
    $finish;
end

initial begin
    $monitor("Time=%0t | Req=%0d | Current=%0d | UP=%b | DOWN=%b | DOOR=%b",
             $time, request_floor, current_floor,
             motor_up, motor_down, door_open);
end

endmodule
