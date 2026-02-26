//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Feb 20 17:31:26 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_reset_imp_141ZAL7
   (CLK100MHZ,
    CPU_RESETN,
    peripheral_aresetn,
    sys_clk);
  input CLK100MHZ;
  input CPU_RESETN;
  output [0:0]peripheral_aresetn;
  output sys_clk;

  wire CLK100MHZ_1;
  wire CPU_RESETN_1;
  wire clk_wiz_0_clk_100mhz;
  wire [0:0]source_100mhz_sys_resetn;

  assign CLK100MHZ_1 = CLK100MHZ;
  assign CPU_RESETN_1 = CPU_RESETN;
  assign peripheral_aresetn[0] = source_100mhz_sys_resetn;
  assign sys_clk = clk_wiz_0_clk_100mhz;
  top_level_clk_wiz_0_1 clk_wiz_0
       (.clk_100mhz(clk_wiz_0_clk_100mhz),
        .clk_in1(CLK100MHZ_1));
  top_level_proc_sys_reset_0_0 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(CPU_RESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(source_100mhz_sys_resetn),
        .slowest_sync_clk(clk_wiz_0_clk_100mhz));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (CLK100MHZ,
    CPU_RESETN,
    UART_rxd,
    UART_txd,
    led_blinky,
    led_locked);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK100MHZ, CLK_DOMAIN top_level_CLK100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input CPU_RESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;
  output led_blinky;
  output led_locked;

  wire CLK100MHZ_1;
  wire CPU_RESETN_1;
  wire axi_uartlite_UART_RxD;
  wire axi_uartlite_UART_TxD;
  wire blinky_led;
  wire clk_wiz_1_locked;
  wire [9:0]clock_mgr_0_M_AXI_ARADDR;
  wire clock_mgr_0_M_AXI_ARREADY;
  wire clock_mgr_0_M_AXI_ARVALID;
  wire [9:0]clock_mgr_0_M_AXI_AWADDR;
  wire clock_mgr_0_M_AXI_AWREADY;
  wire clock_mgr_0_M_AXI_AWVALID;
  wire clock_mgr_0_M_AXI_BREADY;
  wire [1:0]clock_mgr_0_M_AXI_BRESP;
  wire clock_mgr_0_M_AXI_BVALID;
  wire [31:0]clock_mgr_0_M_AXI_RDATA;
  wire clock_mgr_0_M_AXI_RREADY;
  wire [1:0]clock_mgr_0_M_AXI_RRESP;
  wire clock_mgr_0_M_AXI_RVALID;
  wire [31:0]clock_mgr_0_M_AXI_WDATA;
  wire clock_mgr_0_M_AXI_WREADY;
  wire [3:0]clock_mgr_0_M_AXI_WSTRB;
  wire clock_mgr_0_M_AXI_WVALID;
  wire clock_mgr_ctl_0_configure;
  wire [31:0]clock_mgr_ctl_0_div_out;
  wire [31:0]clock_mgr_div_out;
  wire [31:0]clock_mgr_freq_out;
  wire [31:0]clock_mgr_ref_clock_freq;
  wire [31:0]clock_mgr_vco_out;
  wire output_clk_clk_out;
  wire source_100mhz_sys_clk;
  wire [0:0]source_100mhz_sys_resetn;
  wire [7:0]system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire system_interconnect_M00_AXI_ARVALID;
  wire [7:0]system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire system_interconnect_M00_AXI_AWVALID;
  wire system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire [31:0]system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire [3:0]system_interconnect_M00_AXI_WSTRB;
  wire system_interconnect_M00_AXI_WVALID;
  wire [63:0]uart_axi_bridge_M_AXI_ARADDR;
  wire uart_axi_bridge_M_AXI_ARREADY;
  wire uart_axi_bridge_M_AXI_ARVALID;
  wire [63:0]uart_axi_bridge_M_AXI_AWADDR;
  wire uart_axi_bridge_M_AXI_AWREADY;
  wire uart_axi_bridge_M_AXI_AWVALID;
  wire uart_axi_bridge_M_AXI_BREADY;
  wire [1:0]uart_axi_bridge_M_AXI_BRESP;
  wire uart_axi_bridge_M_AXI_BVALID;
  wire [31:0]uart_axi_bridge_M_AXI_RDATA;
  wire uart_axi_bridge_M_AXI_RREADY;
  wire [1:0]uart_axi_bridge_M_AXI_RRESP;
  wire uart_axi_bridge_M_AXI_RVALID;
  wire [31:0]uart_axi_bridge_M_AXI_WDATA;
  wire uart_axi_bridge_M_AXI_WREADY;
  wire [3:0]uart_axi_bridge_M_AXI_WSTRB;
  wire uart_axi_bridge_M_AXI_WVALID;

  assign CLK100MHZ_1 = CLK100MHZ;
  assign CPU_RESETN_1 = CPU_RESETN;
  assign UART_txd = axi_uartlite_UART_TxD;
  assign axi_uartlite_UART_RxD = UART_rxd;
  assign led_blinky = blinky_led;
  assign led_locked = clk_wiz_1_locked;
  top_level_blinky_0_0 blinky
       (.clk(output_clk_clk_out),
        .led(blinky_led));
  top_level_clock_mgr_0_0 clock_mgr
       (.M_AXI_ARADDR(clock_mgr_0_M_AXI_ARADDR),
        .M_AXI_ARREADY(clock_mgr_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(clock_mgr_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(clock_mgr_0_M_AXI_AWADDR),
        .M_AXI_AWREADY(clock_mgr_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(clock_mgr_0_M_AXI_AWVALID),
        .M_AXI_BREADY(clock_mgr_0_M_AXI_BREADY),
        .M_AXI_BRESP(clock_mgr_0_M_AXI_BRESP),
        .M_AXI_BVALID(clock_mgr_0_M_AXI_BVALID),
        .M_AXI_RDATA(clock_mgr_0_M_AXI_RDATA),
        .M_AXI_RREADY(clock_mgr_0_M_AXI_RREADY),
        .M_AXI_RRESP(clock_mgr_0_M_AXI_RRESP),
        .M_AXI_RVALID(clock_mgr_0_M_AXI_RVALID),
        .M_AXI_WDATA(clock_mgr_0_M_AXI_WDATA),
        .M_AXI_WREADY(clock_mgr_0_M_AXI_WREADY),
        .M_AXI_WSTRB(clock_mgr_0_M_AXI_WSTRB),
        .M_AXI_WVALID(clock_mgr_0_M_AXI_WVALID),
        .clk(source_100mhz_sys_clk),
        .configure(clock_mgr_ctl_0_configure),
        .div_in(clock_mgr_ctl_0_div_out),
        .div_out(clock_mgr_div_out),
        .freq_out(clock_mgr_freq_out),
        .ref_clock_freq(clock_mgr_ref_clock_freq),
        .resetn(source_100mhz_sys_resetn),
        .test_clk(output_clk_clk_out),
        .vco_out(clock_mgr_vco_out));
  top_level_clock_mgr_ctl_0_1 clock_mgr_ctl
       (.S_AXI_ARADDR(system_interconnect_M00_AXI_ARADDR),
        .S_AXI_ARPROT(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR(system_interconnect_M00_AXI_AWADDR),
        .S_AXI_AWPROT(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA(system_interconnect_M00_AXI_WDATA),
        .S_AXI_WREADY(system_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB(system_interconnect_M00_AXI_WSTRB),
        .S_AXI_WVALID(system_interconnect_M00_AXI_WVALID),
        .clk(source_100mhz_sys_clk),
        .configure(clock_mgr_ctl_0_configure),
        .div_in(clock_mgr_div_out),
        .div_out(clock_mgr_ctl_0_div_out),
        .freq_out(clock_mgr_freq_out),
        .ref_clock_freq(clock_mgr_ref_clock_freq),
        .resetn(source_100mhz_sys_resetn),
        .vco_in(clock_mgr_vco_out));
  top_level_clk_wiz_1_0 output_clk
       (.clk_in1(source_100mhz_sys_clk),
        .clk_out(output_clk_clk_out),
        .locked(clk_wiz_1_locked),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_araddr({1'b0,clock_mgr_0_M_AXI_ARADDR}),
        .s_axi_aresetn(source_100mhz_sys_resetn),
        .s_axi_arready(clock_mgr_0_M_AXI_ARREADY),
        .s_axi_arvalid(clock_mgr_0_M_AXI_ARVALID),
        .s_axi_awaddr({1'b0,clock_mgr_0_M_AXI_AWADDR}),
        .s_axi_awready(clock_mgr_0_M_AXI_AWREADY),
        .s_axi_awvalid(clock_mgr_0_M_AXI_AWVALID),
        .s_axi_bready(clock_mgr_0_M_AXI_BREADY),
        .s_axi_bresp(clock_mgr_0_M_AXI_BRESP),
        .s_axi_bvalid(clock_mgr_0_M_AXI_BVALID),
        .s_axi_rdata(clock_mgr_0_M_AXI_RDATA),
        .s_axi_rready(clock_mgr_0_M_AXI_RREADY),
        .s_axi_rresp(clock_mgr_0_M_AXI_RRESP),
        .s_axi_rvalid(clock_mgr_0_M_AXI_RVALID),
        .s_axi_wdata(clock_mgr_0_M_AXI_WDATA),
        .s_axi_wready(clock_mgr_0_M_AXI_WREADY),
        .s_axi_wstrb(clock_mgr_0_M_AXI_WSTRB),
        .s_axi_wvalid(clock_mgr_0_M_AXI_WVALID));
  top_level_smartconnect_0_0 system_interconnect
       (.M00_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(system_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(uart_axi_bridge_M_AXI_ARADDR),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arready(uart_axi_bridge_M_AXI_ARREADY),
        .S00_AXI_arvalid(uart_axi_bridge_M_AXI_ARVALID),
        .S00_AXI_awaddr(uart_axi_bridge_M_AXI_AWADDR),
        .S00_AXI_awprot({1'b0,1'b0,1'b0}),
        .S00_AXI_awready(uart_axi_bridge_M_AXI_AWREADY),
        .S00_AXI_awvalid(uart_axi_bridge_M_AXI_AWVALID),
        .S00_AXI_bready(uart_axi_bridge_M_AXI_BREADY),
        .S00_AXI_bresp(uart_axi_bridge_M_AXI_BRESP),
        .S00_AXI_bvalid(uart_axi_bridge_M_AXI_BVALID),
        .S00_AXI_rdata(uart_axi_bridge_M_AXI_RDATA),
        .S00_AXI_rready(uart_axi_bridge_M_AXI_RREADY),
        .S00_AXI_rresp(uart_axi_bridge_M_AXI_RRESP),
        .S00_AXI_rvalid(uart_axi_bridge_M_AXI_RVALID),
        .S00_AXI_wdata(uart_axi_bridge_M_AXI_WDATA),
        .S00_AXI_wready(uart_axi_bridge_M_AXI_WREADY),
        .S00_AXI_wstrb(uart_axi_bridge_M_AXI_WSTRB),
        .S00_AXI_wvalid(uart_axi_bridge_M_AXI_WVALID),
        .aclk(source_100mhz_sys_clk),
        .aresetn(source_100mhz_sys_resetn));
  system_reset_imp_141ZAL7 system_reset
       (.CLK100MHZ(CLK100MHZ_1),
        .CPU_RESETN(CPU_RESETN_1),
        .peripheral_aresetn(source_100mhz_sys_resetn),
        .sys_clk(source_100mhz_sys_clk));
  uart_axi_bridge_imp_1TNTD43 uart_axi_bridge
       (.M_AXI_araddr(uart_axi_bridge_M_AXI_ARADDR),
        .M_AXI_arready(uart_axi_bridge_M_AXI_ARREADY),
        .M_AXI_arvalid(uart_axi_bridge_M_AXI_ARVALID),
        .M_AXI_awaddr(uart_axi_bridge_M_AXI_AWADDR),
        .M_AXI_awready(uart_axi_bridge_M_AXI_AWREADY),
        .M_AXI_awvalid(uart_axi_bridge_M_AXI_AWVALID),
        .M_AXI_bready(uart_axi_bridge_M_AXI_BREADY),
        .M_AXI_bresp(uart_axi_bridge_M_AXI_BRESP),
        .M_AXI_bvalid(uart_axi_bridge_M_AXI_BVALID),
        .M_AXI_rdata(uart_axi_bridge_M_AXI_RDATA),
        .M_AXI_rready(uart_axi_bridge_M_AXI_RREADY),
        .M_AXI_rresp(uart_axi_bridge_M_AXI_RRESP),
        .M_AXI_rvalid(uart_axi_bridge_M_AXI_RVALID),
        .M_AXI_wdata(uart_axi_bridge_M_AXI_WDATA),
        .M_AXI_wready(uart_axi_bridge_M_AXI_WREADY),
        .M_AXI_wstrb(uart_axi_bridge_M_AXI_WSTRB),
        .M_AXI_wvalid(uart_axi_bridge_M_AXI_WVALID),
        .UART_rxd(axi_uartlite_UART_RxD),
        .UART_txd(axi_uartlite_UART_TxD),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_aresetn(source_100mhz_sys_resetn));
endmodule

module uart_axi_bridge_imp_1TNTD43
   (M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    UART_rxd,
    UART_txd,
    s_axi_aclk,
    s_axi_aresetn);
  output [63:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input UART_rxd;
  output UART_txd;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [63:0]axi_uart_bridge_M_AXI_ARADDR;
  wire axi_uart_bridge_M_AXI_ARREADY;
  wire axi_uart_bridge_M_AXI_ARVALID;
  wire [63:0]axi_uart_bridge_M_AXI_AWADDR;
  wire axi_uart_bridge_M_AXI_AWREADY;
  wire axi_uart_bridge_M_AXI_AWVALID;
  wire axi_uart_bridge_M_AXI_BREADY;
  wire [1:0]axi_uart_bridge_M_AXI_BRESP;
  wire axi_uart_bridge_M_AXI_BVALID;
  wire [31:0]axi_uart_bridge_M_AXI_RDATA;
  wire axi_uart_bridge_M_AXI_RREADY;
  wire [1:0]axi_uart_bridge_M_AXI_RRESP;
  wire axi_uart_bridge_M_AXI_RVALID;
  wire [31:0]axi_uart_bridge_M_AXI_WDATA;
  wire axi_uart_bridge_M_AXI_WREADY;
  wire [3:0]axi_uart_bridge_M_AXI_WSTRB;
  wire axi_uart_bridge_M_AXI_WVALID;
  wire [31:0]axi_uart_bridge_M_UART_ARADDR;
  wire axi_uart_bridge_M_UART_ARREADY;
  wire axi_uart_bridge_M_UART_ARVALID;
  wire [31:0]axi_uart_bridge_M_UART_AWADDR;
  wire axi_uart_bridge_M_UART_AWREADY;
  wire axi_uart_bridge_M_UART_AWVALID;
  wire axi_uart_bridge_M_UART_BREADY;
  wire [1:0]axi_uart_bridge_M_UART_BRESP;
  wire axi_uart_bridge_M_UART_BVALID;
  wire [31:0]axi_uart_bridge_M_UART_RDATA;
  wire axi_uart_bridge_M_UART_RREADY;
  wire [1:0]axi_uart_bridge_M_UART_RRESP;
  wire axi_uart_bridge_M_UART_RVALID;
  wire [31:0]axi_uart_bridge_M_UART_WDATA;
  wire axi_uart_bridge_M_UART_WREADY;
  wire [3:0]axi_uart_bridge_M_UART_WSTRB;
  wire axi_uart_bridge_M_UART_WVALID;
  wire axi_uartlite_UART_RxD;
  wire axi_uartlite_UART_TxD;
  wire axi_uartlite_interrupt;
  wire source_100mhz_sys_clk;
  wire source_100mhz_sys_resetn;

  assign M_AXI_araddr[63:0] = axi_uart_bridge_M_AXI_ARADDR;
  assign M_AXI_arvalid = axi_uart_bridge_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = axi_uart_bridge_M_AXI_AWADDR;
  assign M_AXI_awvalid = axi_uart_bridge_M_AXI_AWVALID;
  assign M_AXI_bready = axi_uart_bridge_M_AXI_BREADY;
  assign M_AXI_rready = axi_uart_bridge_M_AXI_RREADY;
  assign M_AXI_wdata[31:0] = axi_uart_bridge_M_AXI_WDATA;
  assign M_AXI_wstrb[3:0] = axi_uart_bridge_M_AXI_WSTRB;
  assign M_AXI_wvalid = axi_uart_bridge_M_AXI_WVALID;
  assign UART_txd = axi_uartlite_UART_TxD;
  assign axi_uart_bridge_M_AXI_ARREADY = M_AXI_arready;
  assign axi_uart_bridge_M_AXI_AWREADY = M_AXI_awready;
  assign axi_uart_bridge_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign axi_uart_bridge_M_AXI_BVALID = M_AXI_bvalid;
  assign axi_uart_bridge_M_AXI_RDATA = M_AXI_rdata[31:0];
  assign axi_uart_bridge_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign axi_uart_bridge_M_AXI_RVALID = M_AXI_rvalid;
  assign axi_uart_bridge_M_AXI_WREADY = M_AXI_wready;
  assign axi_uartlite_UART_RxD = UART_rxd;
  assign source_100mhz_sys_clk = s_axi_aclk;
  assign source_100mhz_sys_resetn = s_axi_aresetn;
  top_level_axi_uart_bridge_0_0 axi_uart_bridge
       (.M_AXI_ARADDR(axi_uart_bridge_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi_uart_bridge_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi_uart_bridge_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi_uart_bridge_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi_uart_bridge_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi_uart_bridge_M_AXI_AWVALID),
        .M_AXI_BREADY(axi_uart_bridge_M_AXI_BREADY),
        .M_AXI_BRESP(axi_uart_bridge_M_AXI_BRESP),
        .M_AXI_BVALID(axi_uart_bridge_M_AXI_BVALID),
        .M_AXI_RDATA(axi_uart_bridge_M_AXI_RDATA),
        .M_AXI_RREADY(axi_uart_bridge_M_AXI_RREADY),
        .M_AXI_RRESP(axi_uart_bridge_M_AXI_RRESP),
        .M_AXI_RVALID(axi_uart_bridge_M_AXI_RVALID),
        .M_AXI_WDATA(axi_uart_bridge_M_AXI_WDATA),
        .M_AXI_WREADY(axi_uart_bridge_M_AXI_WREADY),
        .M_AXI_WSTRB(axi_uart_bridge_M_AXI_WSTRB),
        .M_AXI_WVALID(axi_uart_bridge_M_AXI_WVALID),
        .M_UART_ARADDR(axi_uart_bridge_M_UART_ARADDR),
        .M_UART_ARREADY(axi_uart_bridge_M_UART_ARREADY),
        .M_UART_ARVALID(axi_uart_bridge_M_UART_ARVALID),
        .M_UART_AWADDR(axi_uart_bridge_M_UART_AWADDR),
        .M_UART_AWREADY(axi_uart_bridge_M_UART_AWREADY),
        .M_UART_AWVALID(axi_uart_bridge_M_UART_AWVALID),
        .M_UART_BREADY(axi_uart_bridge_M_UART_BREADY),
        .M_UART_BRESP(axi_uart_bridge_M_UART_BRESP),
        .M_UART_BVALID(axi_uart_bridge_M_UART_BVALID),
        .M_UART_RDATA(axi_uart_bridge_M_UART_RDATA),
        .M_UART_RREADY(axi_uart_bridge_M_UART_RREADY),
        .M_UART_RRESP(axi_uart_bridge_M_UART_RRESP),
        .M_UART_RVALID(axi_uart_bridge_M_UART_RVALID),
        .M_UART_WDATA(axi_uart_bridge_M_UART_WDATA),
        .M_UART_WREADY(axi_uart_bridge_M_UART_WREADY),
        .M_UART_WSTRB(axi_uart_bridge_M_UART_WSTRB),
        .M_UART_WVALID(axi_uart_bridge_M_UART_WVALID),
        .UART_INT(axi_uartlite_interrupt),
        .aclk(source_100mhz_sys_clk),
        .aresetn(source_100mhz_sys_resetn));
  top_level_axi_uartlite_0_0 axi_uartlite
       (.interrupt(axi_uartlite_interrupt),
        .rx(axi_uartlite_UART_RxD),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_araddr(axi_uart_bridge_M_UART_ARADDR[3:0]),
        .s_axi_aresetn(source_100mhz_sys_resetn),
        .s_axi_arready(axi_uart_bridge_M_UART_ARREADY),
        .s_axi_arvalid(axi_uart_bridge_M_UART_ARVALID),
        .s_axi_awaddr(axi_uart_bridge_M_UART_AWADDR[3:0]),
        .s_axi_awready(axi_uart_bridge_M_UART_AWREADY),
        .s_axi_awvalid(axi_uart_bridge_M_UART_AWVALID),
        .s_axi_bready(axi_uart_bridge_M_UART_BREADY),
        .s_axi_bresp(axi_uart_bridge_M_UART_BRESP),
        .s_axi_bvalid(axi_uart_bridge_M_UART_BVALID),
        .s_axi_rdata(axi_uart_bridge_M_UART_RDATA),
        .s_axi_rready(axi_uart_bridge_M_UART_RREADY),
        .s_axi_rresp(axi_uart_bridge_M_UART_RRESP),
        .s_axi_rvalid(axi_uart_bridge_M_UART_RVALID),
        .s_axi_wdata(axi_uart_bridge_M_UART_WDATA),
        .s_axi_wready(axi_uart_bridge_M_UART_WREADY),
        .s_axi_wstrb(axi_uart_bridge_M_UART_WSTRB),
        .s_axi_wvalid(axi_uart_bridge_M_UART_WVALID),
        .tx(axi_uartlite_UART_TxD));
endmodule
