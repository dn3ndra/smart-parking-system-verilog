module parking_slot_monitoring #(parameter N = 20)(
    input [7:0] occupancy,  // 8-bit occupancy value
    output reg [N-1:0] led_slot  // LED slots output
);
    always @ (occupancy) begin
        // Reset LED slots
        led_slot = 0;
        
        // Set LED based on occupancy
        if (occupancy > 0) begin
            led_slot[0] = 1; // Slot 1
        end
        if (occupancy > 1) begin
            led_slot[1] = 1; // Slot 2
        end
        if (occupancy > 2) begin
            led_slot[2] = 1; // Slot 3
        end
        if (occupancy > 3) begin
            led_slot[3] = 1; // Slot 4
        end
        if (occupancy > 4) begin
            led_slot[4] = 1; // Slot 5
        end
        if (occupancy > 5) begin
            led_slot[5] = 1; // Slot 6
        end
        if (occupancy > 6) begin
            led_slot[6] = 1; // Slot 7
        end
        if (occupancy > 7) begin
            led_slot[7] = 1; // Slot 8
        end
        if (occupancy > 8) begin
            led_slot[8] = 1; // Slot 9
        end
        if (occupancy > 9) begin
            led_slot[9] = 1; // Slot 10
        end
        if (occupancy > 10) begin
            led_slot[10] = 1; // Slot 11
        end
        if (occupancy > 11) begin
            led_slot[11] = 1; // Slot 12
        end
        if (occupancy > 12) begin
            led_slot[12] = 1; // Slot 13
        end
        if (occupancy > 13) begin
            led_slot[13] = 1; // Slot 14
        end
        if (occupancy > 14) begin
            led_slot[14] = 1; // Slot 15
        end
        if (occupancy > 15) begin
            led_slot[15] = 1; // Slot 16
        end
        if (occupancy > 16) begin
            led_slot[16] = 1; // Slot 17
        end
        if (occupancy > 17) begin
            led_slot[17] = 1; // Slot 18
        end
        if (occupancy > 18) begin
            led_slot[18] = 1; // Slot 19
        end
        if (occupancy > 19) begin
            led_slot[19] = 1; // Slot 20
        end
    end
endmodule

