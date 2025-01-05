`timescale 1ns / 1ps

module parking_controller (
    input wire clk,            // Clock input
    input wire reset,          // Reset input
    input wire a,              // Input untuk mobil masuk
    input wire b,              // Input untuk mobil keluar
    output wire [19:0] led_slot // Output untuk status LED slot
);
    // Wires untuk menghubungkan modul
    wire [7:0] occupancy;      // Output dari counterpark untuk occupancy

    // Instansiasi Modul CounterPark (modul pertama)
    counterpark uut_counterpark (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .occupancy(occupancy) // Menghubungkan output occupancy
    );

    // Instansiasi Modul ParkingSlotMonitoring (modul kedua)
    parking_slot_monitoring #(20) uut_parking_slot_monitoring (
        .occupancy(occupancy), // Menghubungkan output occupancy dari counterpark
        .led_slot(led_slot)    // Output LED slot yang akan ditampilkan
    );

endmodule

