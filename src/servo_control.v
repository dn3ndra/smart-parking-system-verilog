module servo_control (
    input wire clk,            // Clock signal
    input wire reset,          // Reset signal
    input wire control_signal, // Signal from another module (1 or 0)
    output reg servo_pwm       // Servo PWM signal
);

    // Servo positions
    localparam SERVO_OPEN  = 1'b1;
    localparam SERVO_CLOSE = 1'b0;

    // Output logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            servo_pwm <= SERVO_CLOSE; // Default state on reset
        end else begin
            servo_pwm <= (control_signal) ? SERVO_OPEN : SERVO_CLOSE;
        end
    end

endmodule

