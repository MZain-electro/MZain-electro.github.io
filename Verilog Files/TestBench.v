`timescale 1ns / 1ps

module top_tb();

  // Declare clock and reset signals
  reg clk;
  reg reset;

  // Declare receiving data line
  reg RxD;

  // Declare output signals


wire [7:0] leds2;
  // Instantiate the DUT
  receiver dut(
    .clk(clk),
    .reset(reset),
    .RxD(RxD),
    .RxData(leds2)
  );

  // Clock period
  parameter PERIOD = 10;
parameter Baud_rate=104166.666667;
  // Define initial values for the input signals
  initial begin
    clk = 0;
    reset = 1;
    RxD = 1;
    #PERIOD;
reset=0;
  end

  // Generate a clock signal
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    #Baud_rate;
    RxD = 0;
    #Baud_rate;
    RxD = 1;
    #Baud_rate;
    RxD = 0;
     #Baud_rate;
    RxD = 1;
     #Baud_rate;
    RxD = 1;
     #Baud_rate;
    RxD = 1;
     #Baud_rate;
    RxD = 0;
     #Baud_rate;
    RxD = 0;
     #Baud_rate;
    RxD = 1;
     #Baud_rate;
    RxD = 1;
    
   
  end

endmodule
