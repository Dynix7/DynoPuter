'inndef DEFINES_VH
'define DEFINES_VH

// Main Opcodes
//alu operatations
localparam OP_NOP = 4'h0;
localparam OP_ADD = 4'h1;
localparam OP_SUB = 4'h2;
localparam OP_ADDI = 4'h3;

//memory operations and stuff
localparam OP_LOAD = 4'h4;
localparam OP_STORE = 4'h5;
localparam OP_LI = 4'h6;

//branching conditonals
localparam OP_JMP = 4'h7;
localparam OP_JZ = 4'h8;
localparam OP_JNZ = 4'h9;

//bitwise operations
localparam OP_XOR = 4'hA;
localparam OP_AND = 4'hB;
localparam OP_OR = 4'hC;
localparam OP_NOT = 4'hD;

localparam OP_SPEC = 4'hE; //basically unused for now 

//Extended op codes
localparam OP_EXT = 4'hF;


'endif