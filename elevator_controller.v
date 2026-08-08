`timescale 1ns / 1ps

module elevator_controller(
    input  clk,
    input  reset,
    input  [2:0] request_floor,
    output reg [2:0] current_floor,
    output reg motor_up,
    output reg motor_down,
    output reg door_open
);

parameter IDLE      = 2'b00;
parameter MOVE_UP   = 2'b01;
parameter MOVE_DOWN = 2'b10;
parameter OPEN_DOOR = 2'b11;

reg [1:0] state;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state         <= IDLE;
        current_floor <= 3'd0;
        motor_up      <= 1'b0;
        motor_down    <= 1'b0;
        door_open     <= 1'b0;
    end
    else begin
        case (state)

            IDLE: begin
                motor_up   <= 1'b0;
                motor_down <= 1'b0;
                door_open  <= 1'b0;

                if (request_floor > current_floor)
                    state <= MOVE_UP;
                else if (request_floor < current_floor)
                    state <= MOVE_DOWN;
            end

            MOVE_UP: begin
                motor_up   <= 1'b1;
                motor_down <= 1'b0;
                door_open  <= 1'b0;
                current_floor <= current_floor + 1'b1;

                if (current_floor + 1'b1 == request_floor)
                    state <= OPEN_DOOR;
            end

            MOVE_DOWN: begin
                motor_up   <= 1'b0;
                motor_down <= 1'b1;
                door_open  <= 1'b0;
                current_floor <= current_floor - 1'b1;

                if (current_floor - 1'b1 == request_floor)
                    state <= OPEN_DOOR;
            end

            OPEN_DOOR: begin
                motor_up   <= 1'b0;
                motor_down <= 1'b0;
                door_open  <= 1'b1;
                state <= IDLE;
            end

            default: begin
                state <= IDLE;
                motor_up <= 1'b0;
                motor_down <= 1'b0;
                door_open <= 1'b0;
            end

        endcase
    end
end

endmodule
