`timescale 1ns / 1ps
`include "top_module.v"  // Mengimpor modul top_module

module top_module_tb;

    // Deklarasi sinyal untuk input dan output
    reg clk;
    reg rst;
    reg car_detected_in;
    reg car_detected_out;
    reg [3:0] digit1_in;
    reg [3:0] digit2_in;
    reg [3:0] digit3_in;
    reg [3:0] digit1_out;
    reg [3:0] digit2_out;
    reg [3:0] digit3_out;
    wire [19:0] led_slot;
    wire servo_pwm_in;
    wire servo_pwm_out;

    // Instansiasi modul top_module
    top_module uut (
        .clk(clk),
        .rst(rst),
        .car_detected_in(car_detected_in),
        .car_detected_out(car_detected_out),
        .digit1_in(digit1_in),
        .digit2_in(digit2_in),
        .digit3_in(digit3_in),
        .digit1_out(digit1_out),
        .digit2_out(digit2_out),
        .digit3_out(digit3_out),
        .led_slot(led_slot),
        .servo_pwm_in(servo_pwm_in),
        .servo_pwm_out(servo_pwm_out)
    );

    // Prosedur untuk menghasilkan clock
    always begin
        #5 clk = ~clk;  // Clock periode 10ns
    end

    // Prosedur awal untuk reset dan stimulus input
    initial begin
        // Inisialisasi sinyal
        clk = 0;
        rst = 0;
        car_detected_in = 0;
        car_detected_out = 0;
        digit1_in = 4'b0000;
        digit2_in = 4'b0000;
        digit3_in = 4'b0000;
        digit1_out = 4'b0000;
        digit2_out = 4'b0000;
        digit3_out = 4'b0000;

        // Memberikan reset
        rst = 1;
        #50;  // Menambahkan waktu reset lebih lama
        rst = 0;

        // State 1: Mobil masuk (deteksi mobil, set input digit)
        car_detected_in = 1;
        digit1_in = 4'b0001;  // Menetapkan digit pertama untuk input
        digit2_in = 4'b0010;  // Menetapkan digit kedua untuk input
        digit3_in = 4'b0011;  // Menetapkan digit ketiga untuk input
        #100;  // Delay lebih panjang

        // State 2: Mobil keluar (deteksi mobil keluar, set digit output)
        car_detected_in = 0;
        car_detected_out = 1;
        digit1_out = 4'b0010;  // Menetapkan digit pertama untuk output
        digit2_out = 4'b0011;  // Menetapkan digit kedua untuk output
        digit3_out = 4'b0100;  // Menetapkan digit ketiga untuk output
        #100;  // Delay lebih panjang

        // State 3: Tidak ada mobil
        car_detected_out = 0;
        #100;  // Delay lebih panjang

        // State 4: Mobil masuk dengan input digit yang berbeda
        car_detected_in = 1;
        digit1_in = 4'b1001;
        digit2_in = 4'b1010;
        digit3_in = 4'b1011;
        #100;  // Delay lebih panjang

        // State 5: Mobil keluar dengan input digit yang berbeda
        car_detected_in = 0;
        car_detected_out = 1;
        digit1_out = 4'b1100;
        digit2_out = 4'b1101;
        digit3_out = 4'b1110;
        #100;  // Delay lebih panjang

        // State 6: Reset sistem, cek jika LED slot dalam keadaan off
        rst = 1;
        #30;
        rst = 0;
        #100;  // Delay lebih panjang

        // State 7: Mobil masuk, cek led_slot
        car_detected_in = 1;
        digit1_in = 4'b0111;
        digit2_in = 4'b0110;
        digit3_in = 4'b0101;
        #100;  // Delay lebih panjang

        // State 8: Mobil keluar setelah masuk, pastikan led_slot berubah
        car_detected_in = 0;
        car_detected_out = 1;
        digit1_out = 4'b1000;
        digit2_out = 4'b1011;
        digit3_out = 4'b1100;
        #100;  // Delay lebih panjang

        // State 9: Mobil masuk dan keluar, simulasi pergerakan berulang
        car_detected_in = 1;
        car_detected_out = 0;
        digit1_in = 4'b0001;
        digit2_in = 4'b0010;
        digit3_in = 4'b0011;
        #50;

        car_detected_in = 0;
        car_detected_out = 1;
        digit1_out = 4'b0010;
        digit2_out = 4'b0011;
        digit3_out = 4'b0100;
        #100;  // Delay lebih panjang

        // State 10: Mobil kembali masuk setelah keluar
        car_detected_in = 1;
        car_detected_out = 0;
        digit1_in = 4'b0001;
        digit2_in = 4'b0010;
        digit3_in = 4'b0011;
        #50;

        // State 11: Mobil keluar setelah beberapa waktu
        car_detected_in = 0;
        car_detected_out = 1;
        digit1_out = 4'b0010;
        digit2_out = 4'b0011;
        digit3_out = 4'b0100;
        #100;  // Delay lebih panjang

        // State 12: Tidak ada mobil di jalur keluar
        car_detected_out = 0;
        #100;  // Delay lebih panjang

        // State 13: Mobil masuk dengan kondisi reset, cek output LED slot
        rst = 1;
        car_detected_in = 1;
        digit1_in = 4'b0001;
        digit2_in = 4'b0011;
        digit3_in = 4'b0101;
        #50;
        rst = 0;
        #50;

        // State 14: Mobil keluar dengan kondisi reset, cek LED slot
        rst = 1;
        car_detected_out = 1;
        digit1_out = 4'b0100;
        digit2_out = 4'b0110;
        digit3_out = 4'b1000;
        #50;
        rst = 0;
        #50;

        // State 15: Semua input dalam kondisi normal setelah reset
        car_detected_in = 1;
        car_detected_out = 1;
        digit1_in = 4'b1010;
        digit2_in = 4'b1100;
        digit3_in = 4'b1110;
        #50;

        // Akhiri simulasi
        $finish;
    end

    // Monitor untuk melihat output
    initial begin
        $monitor("At time %t, led_slot = %b, servo_pwm_in = %b, servo_pwm_out = %b", $time, led_slot, servo_pwm_in, servo_pwm_out);
    end

endmodule

