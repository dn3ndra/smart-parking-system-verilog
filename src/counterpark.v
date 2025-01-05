`timescale 1ns / 1ps

module counterpark (
    input wire clk, 
    input wire reset,
    input wire a, 
    input wire b, 
    output reg [7:0] occupancy // Output for occupancy count
);
    // Debouncing
    reg [19:0] q_reg;       // Debounce counter
    wire m_tick;            // 1ms tick
    reg db_a, db_b;         // Debounced inputs for a and b
    reg db_a_d, db_b_d;     // Delayed debounced inputs for edge detection

    // Debouncing Logic: Generate a 1ms tick
    assign m_tick = (q_reg == 20'd9_999_999);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q_reg <= 0;
        else if (m_tick)
            q_reg <= 0;
        else
            q_reg <= q_reg + 1;
    end

    // State machine for debouncing 'a' and 'b'
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            db_a <= 0;
            db_b <= 0;
            db_a_d <= 0;
            db_b_d <= 0;
        end else begin
            db_a <= a;  // Update debounced 'a'
            db_b <= b;  // Update debounced 'b'
            db_a_d <= db_a; // Store the previous state of 'a'
            db_b_d <= db_b; // Store the previous state of 'b'
        end
    end

    // Counter Logic
    reg [7:0] count; // Current count
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 8'd0;       // Initial count set to 0
            occupancy <= 8'd0;   // Initialize occupancy
        end else begin
            // Detect rising edge for 'a' and 'b'
            if (db_a && ~db_a_d && count < 8'd255)  // Increment condition
                count <= count + 1;
            else if (~db_a && db_a_d && count > 8'd0) // Decrement condition
                count <= count - 1;
            else if (~db_a && ~db_a_d) // No change, maintain count
                count <= count;

            // Detect rising edge for 'b' (if needed)
            if (db_b && ~db_b_d && count < 8'd255)  // Increment condition for 'b'
                count <= count + 1;
            else if (~db_b && db_b_d && count > 8'd0) // Decrement condition for 'b'
                count <= count - 1;
            else if (~db_b && ~db_b_d) // No change, maintain count
                count <= count;

            occupancy <= count;  // Update occupancy with the count value
        end
    end

endmodule

