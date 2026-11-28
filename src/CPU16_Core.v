`default_nettype none
`include "defines.vh"

module CPU16_Core(
    input wire clk,
    input wire rst_n,
    input wire en,

    output reg mem_req, // to request a read or write
    output reg mem_wq, // 1 for write and 0 to read
    output reg [WORD_WIDTH-1:0] mem_addr, // the target address

    output reg [WORD_WIDTH-1:0] mem_wdata, //data to write
    input reg [WORD_WIDTH-1:0] mem_rdata, //data to read

    input wire mem_ready, // asserted when memory operation is done

    //IO out and debug
    output reg halt, //high when halted
    output reg out_sig, // pulse when io out
    output reg [WORD_WIDTH-1:0] out_data, //16 bit so might only use first 8 bits or change to [7:0] later
    output reg [WORD_WIDTH-1:0] pc
);



endmodule