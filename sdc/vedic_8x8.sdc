create_clock -name clk -period 10  
set_input_delay -clock clk 1 { a b }
set_output_delay -clock clk 1 {result}

