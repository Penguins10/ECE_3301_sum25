#include    <xc.inc>
    
 
     
    least_num_a	    equ 0x40
    least_num_b	    equ 0x42
    least_num_c	    equ 0x52
    second_least_a  equ 0x30
    second_least_b  equ	0x60
    second_least_c  equ 0x51
    most_num_a	    equ	0x20
    most_num_b	    equ	0x70
    most_num_c	    equ	0x50
	    
	
	    
	    
    //Least Significant Digit    
	    
    ;B5 = 181 in decimal
    movlw  181
    movwf least_num_a, f, a
    
    //clrf WREG, a
    
    ;w = 04
    movlw   04
    movwf   least_num_b,   f,	a
    
    
   
    
    clrf WREG
    
    movf    least_num_a, w, a
    addwfc   least_num_b, w, a
    
    movwf   least_num_c, f, a
    
    
     clrf least_num_b, a
    
    
    //Second Significant Digit
    
     ;B5 = 145 in decimal
    movlw  145
    movwf second_least_a, f, a
    
    //clrf WREG, a
    
    ;w = 162
    movlw   162
    movwf   second_least_b,  f,	a
    
    clrf WREG
    
    movf    second_least_a, w, a
    addwf   second_least_b, w, a
    
    movwf   second_least_c, f, a
    
    //Most Significant Digit
    
     ;F1 = 241 in decimal
    movlw  241
    movwf most_num_a, f, a
    
    //clrf WREG, a
    
    ;w = 07
    movlw   07
    movwf   most_num_b,  f,	a
    
    clrf WREG
    
    movf    most_num_a, w, a
    addwfc   most_num_b, w, a
    
    movwf   most_num_c, f, a
    
    
   end


