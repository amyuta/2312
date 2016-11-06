.global  _start
    
_start:
	MOV R7, #4          
 	MOV R0, #1          
	MOV R2, #13         
	LDR R1,=hello_str   
	SWI 0               
	B   _exit           
    
_exit:   
	MOV R7, #1          
	SWI 0               

.data
hello_str:
.ascii "Hello World!\n"
