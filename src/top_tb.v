`timescale 100ns / 10ns

module top_tb ;

    // 信号を定義
    reg     r_clk           ;
    wire    w_timer_1r0sec  ; // 1.0sec
    wire    w_timer_0r3sec  ; // 0.3sec
    wire    w_timer_2r8sec  ; // 2.8sec

    // 1MHzクロック信号を生成
    initial 
        r_clk = 0 ;
    always #(5) 
        r_clk <= ~r_clk ;

    // topモジュールを読み出す
    top top_inst (
         .i_clk         (r_clk          )
        ,.o_timer_1r0sec(w_timer_1r0sec )
        ,.o_timer_0r3sec(w_timer_0r3sec )
        ,.o_timer_2r8sec(w_timer_2r8sec )
    ) ;

endmodule