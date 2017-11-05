/* ACM Class System (I) 2017 Fall Homework 1 
 *
 * Part I: Write an adder in Verilog
 *
 * Implement your Carry Look Ahead Adder here
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
wire [15 : 0] g;
assign g[0] = a[0] & b[0];
assign g[1] = a[1] & b[1];
assign g[2] = a[2] & b[2];
assign g[3] = a[3] & b[3];
assign g[4] = a[4] & b[4];
assign g[5] = a[5] & b[5];
assign g[6] = a[6] & b[6];
assign g[7] = a[7] & b[7];
assign g[8] = a[8] & b[8];
assign g[9] = a[9] & b[9];
assign g[10] = a[10] & b[10];
assign g[11] = a[11] & b[11];
assign g[12] = a[12] & b[12];
assign g[13] = a[13] & b[13];
assign g[14] = a[14] & b[14];
assign g[15] = a[15] & b[15];
wire [15 : 0] p;
assign p[0] = a[0] ^ b[0];
assign p[1] = a[1] ^ b[1];
assign p[2] = a[2] ^ b[2];
assign p[3] = a[3] ^ b[3];
assign p[4] = a[4] ^ b[4];
assign p[5] = a[5] ^ b[5];
assign p[6] = a[6] ^ b[6];
assign p[7] = a[7] ^ b[7];
assign p[8] = a[8] ^ b[8];
assign p[9] = a[9] ^ b[9];
assign p[10] = a[10] ^ b[10];
assign p[11] = a[11] ^ b[11];
assign p[12] = a[12] ^ b[12];
assign p[13] = a[13] ^ b[13];
assign p[14] = a[14] ^ b[14];
assign p[15] = a[15] ^ b[15];

assign c[0] = p[0] ^ 0;
assign k[0] = g[0];
assign c[1] = p[1] ^ k[0];
assign k[1] = g[1] | (p[1] & g[0]);
assign c[2] = p[2] ^ k[1];
assign k[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
assign c[3] = p[3] ^ k[2];
assign k[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

assign c[4] = p[4] ^ k[3];
assign k[4] = g[4] | (p[4] & k[3]);
assign c[5] = p[5] ^ k[4];
assign k[5] = g[5] | (p[5] & k[4]);
assign c[6] = p[6] ^ k[5];
assign k[6] = g[6] | (p[6] & g[5]) | (p[6] & p[5] & k[4]);
assign c[7] = p[7] ^ k[6];
assign k[7] = g[7] | (p[7] & g[6]) | (p[7] & p[6] & g[5]) | (p[7] & p[6] & p[5] & k[4]);

assign c[8] = p[8] ^ k[7];
assign k[8] = g[8] | (p[8] & k[7]);
assign c[9] = p[9] ^ k[8];
assign k[9] = g[9] | (p[9] & k[8]);
assign c[10] = p[10] ^ k[9];
assign k[10] = g[10] | (p[10] & g[9]) | (p[10] & p[9] & k[8]);
assign c[11] = p[11] ^ k[10];
assign k[11] = g[11] | (p[11] & g[10]) | (p[11] & p[10] & g[9]) | (p[11] & p[10] & p[9] & k[8]);

assign c[12] = p[12] ^ k[11];
assign k[12] = g[12] | (p[12] & k[11]);
assign c[13] = p[13] ^ k[12];
assign k[13] = g[13] | (p[13] & k[12]);
assign c[14] = p[14] ^ k[13];
assign k[14] = g[14] | (p[14] & g[13]) | (p[14] & p[13] & k[12]);
assign c[15] = p[15] ^ k[14];
assign k[15] = g[15] | (p[15] & g[14]) | (p[15] & p[14] & g[13]) | (p[15] & p[14] & p[13] & k[12]);
	// TODO: Implement this module here
	
endmodule





