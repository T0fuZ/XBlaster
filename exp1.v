module led_blink (
    input wire clk,    // clock 50mhz
    output reg led,
	 output reg led2
);
    reg [24:0] counter; // 25-bit count

    always @(posedge clk) begin
        counter <= counter + 1; 
      if (counter == 10_000_000) begin // 1/5th of second
            led <= ~led;  // togle led
				led2 <= led; // same jura
            counter <= 0; // counter nulli
        end
    end
endmodule
