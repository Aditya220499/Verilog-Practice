`include "Comparator.v"
`timescale 1ns / 1ps

module tb_comparator();
wire [2:0]t_Y;
reg [3:0]t_A,t_B;
integer stimulus_file; // File handle for reading inputs
integer response_file; // File handle for writing outputs
integer scan_count;    // Return value of $fscanf
Comparator C (.Y(t_Y), .A(t_A), .B(t_B));

initial
begin
// Open stimulus file for reading
        stimulus_file = $fopen("test_vectors.txt", "r"); 
        if (stimulus_file == 0) begin
            $display("ERROR: Cannot open test_vectors.txt");
            $finish;
        end

        // Open response file for writing
        response_file = $fopen("test_results.txt", "w");
        if (response_file == 0) begin
            $display("ERROR: Cannot open test_results.txt");
            $finish;
        end

$display("Start Simulation");
$fwrite(response_file, "Time(ns)\tA_in\tB_in\tY_out\n"); // Header


while (!$feof(stimulus_file)) begin
    
            
            // Read two 8-bit decimal values from the file
            scan_count = $fscanf(stimulus_file, "%b %b\n", t_A, t_B);

            if (scan_count == 2) begin
                  #5;                       
                // Write the stimulus and the resulting output to the results file
                $fwrite(response_file, "\n %0t\t%b\t%b\t%b", 
                        $time, t_A, t_B, t_Y);
            end else if (scan_count != -1) begin
                // Handle cases where a line might be incomplete
                $display("Warning: Incomplete line read at time %0t", $time);
            end
        end



 // --- Clean Up ---
        $display("Test finished. Closing files.");
        $fclose(stimulus_file);
        $fclose(response_file);
        $finish; 
end
endmodule
