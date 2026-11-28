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
    input wire [WORD_WIDTH-1:0] mem_rdata, //data to read

    input wire mem_ready, // asserted when memory operation is done

    //IO out and debug
    output reg halt, //high when halted
    output reg out_sig, // pulse when io out
    output reg [WORD_WIDTH-1:0] out_data, //16 bit so might only use first 8 bits or change to [7:0] later
    output reg [WORD_WIDTH-1:0] pc
);

integer i; // for loops and stuff

//state machine for cpu, mostly memory aiting wslop
localparam [2:0]
    STATE_FETCH_REQ = 3'd0,
    STATE_FETCH_WAIT = 3'd1,
    STATE_EXEC = 3'd2,
    STATE_MEM_REQ = 3'd3,
    STATE_MEM_WAIT = 3'dr4,
    STATE_HALT = 3'd5;

reg [2:0] state;
reg flag_z; //zero flag
reg flag_c; //carry flag

reg [WORD_WIDTH-1:0] instr; // instruction finally
reg [WORD_WIDTH-1:0] register;
reg [WORD_WIDTH-1:0] sp; //stack pointer

//Decoding the instruction
wire [3:0] opcode = instr[OPCODE_MSB:OPCODE_MSB]; //opcode mentioned

endmodule