/* ACM Class System (I) 2017 Fall Homework 1 
 *
 * Part I: Write an adder in Verilog
 *
 * Implement your naive adder here
 * 
 * GUIDE:
 *   1. Create a RTL project in Vivado
 *   2. Put this file into `Sources'
 *   3. Put `test_adder.v' into `Simulation Sources'
 *   4. Run Behavioral Simulation
 *   5. Make sure to run at least 100 steps during the simulation (usually 100ns)
 *   6. You can see the results in `Tcl console'
 *
 */


module adder(
input [15 : 0] a,
input [15 : 0] b,
output [15 : 0] c
	// TODO: Write the ports of this module here
	//
	// Hint: 
	//   The module needs 3 ports, 
	//     the first 2 ports are 16-bit unsigned numbers as the inputs of the adder
	//     the third port is a 16-bit unsigned number as the output
	// 
);
wire [15 : 0] k;

assign k[0] = 0;
assign c[0] = a[0] ^ b[0];

assign k[1] = (a[0] & b[0]) | ((a[0] ^ b[0]) & k[0]);
assign c[1] = (a[1] ^ b[1]) ^ k[1];

assign k[2] = (a[1] & b[1]) | ((a[1] ^ b[1]) & k[1]);
assign c[2] = (a[2] ^ b[2]) ^ k[2];

assign k[3] = (a[2] & b[2]) | ((a[2] ^ b[2]) & k[2]);
assign c[3] = (a[3] ^ b[3]) ^ k[3];

assign k[4] = (a[3] & b[3]) | ((a[3] ^ b[3]) & k[3]);
assign c[4] = (a[4] ^ b[4]) ^ k[4];

assign k[5] = (a[4] & b[4]) | ((a[4] ^ b[4]) & k[4]);
assign c[5] = (a[5] ^ b[5]) ^ k[5];

assign k[6] = (a[5] & b[5]) | ((a[5] ^ b[5]) & k[5]);
assign c[6] = (a[6] ^ b[6]) ^ k[6];

assign k[7] = (a[6] & b[6]) | ((a[6] ^ b[6]) & k[6]);
assign c[7] = (a[7] ^ b[7]) ^ k[7];

assign k[8] = (a[7] & b[7]) | ((a[7] ^ b[7]) & k[7]);
assign c[8] = (a[8] ^ b[8]) ^ k[8];

assign k[9] = (a[8] & b[8]) | ((a[8] ^ b[8]) & k[8]);
assign c[9] = (a[9] ^ b[9]) ^ k[9];

assign k[10] = (a[9] & b[9]) | ((a[9] ^ b[9]) & k[9]);
assign c[10] = (a[10] ^ b[10]) ^ k[10];

assign k[11] = (a[10] & b[10]) | ((a[10] ^ b[10]) & k[10]);
assign c[11] = (a[11] ^ b[11]) ^ k[11];

assign k[12] = (a[11] & b[11]) | ((a[11] ^ b[11]) & k[11]);
assign c[12] = (a[12] ^ b[12]) ^ k[12];

assign k[13] = (a[12] & b[12]) | ((a[12] ^ b[12]) & k[12]);
assign c[13] = (a[13] ^ b[13]) ^ k[13];

assign k[14] = (a[13] & b[13]) | ((a[13] ^ b[13]) & k[13]);
assign c[14] =( a[14] ^ b[14]) ^ k[14];

assign k[15] = (a[14] & b[14]) | ((a[14] ^ b[14]) & k[14]);
assign c[15] =( a[15] ^ b[15]) ^ k[15];
	// TODO: Implement this module here
	
endmodule