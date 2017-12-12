TITLE LAB6 (SIMPLIFIED .EXE )
.MODEL SMALL
;____________________________________________________________________________________________________________________________________

.DATA


GAME_START DB 0ah,0dh
DB "    ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              .",0AH,0DH
DB "      ` : | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    :  ",0AH,0DH 
DB "         .' ':  ||  |:  |  '       ` || | : | |: : |   .  `           .   :.  ",0AH,0DH
DB "         .-.                                                 .-.              ",0AH,0DH
DB "   .--.-'   /                 /  .-.                   .--.-'   /             ",0AH,0DH
DB "  (  (_)   /-.  .-._..-._.---/---`-'.  .-.    .-.     (  (_)---/---.-.    ).--.",0AH,0DH 
DB "   `-.    /   |(   )(   )   /   /    )/   )  (   )     `-.    /   (  |   /     ",0AH,0DH 
DB " _    )_.'    | `-'  `-'   / _.(__. '/   (    `-/-'  _    )  /     `-'-'/      ",0AH,0DH
DB "(_.--'                                    `--._/    (_.--'                     ",0AH,0DH
DB "        .            .   . *    .   .  ` |||.  +        + '| |||  .  ||`       ",0AH,0DH
DB "     .             *              .     +:`|!             . ||||  :.||`        ",0AH,0DH
DB " +                      .                ..!|*          . | :`||+ |||`         ",0AH,0DH
DB "     .                         +      : |||`        .| :| | | |.| ||`     .    ",0AH,0DH
DB "       *     +   '               +  :|| |`     :.+. || || | |:`|| `            ",0AH,0DH
DB "                            .      .||` .    ..|| | |: '` `| | |`  +           ",0AH,0DH
DB "  .       +++                      ||        !|!: `       :| |                 ",0AH,0DH
DB "              +         .      .    | .      `|||.:      .||    .      .    `  ",0AH,0DH 
DB "          '                           `|.   .  `:|||   + ||'     `             ",0AH,0DH
DB "  __    +      *                         `'       `'|.    `:                   ",0AH,0DH
DB " '  `---'''----....____,..^---`^``----.,.___          `.    `.  .    ____,.,-  ",0AH,0DH
DB "    ___,--'```---''   ^  ^ ^        ^       ''''---,..___ __,..---``'          ",0AH,0DH
DB "--''                           ^                         ``--..,__ D. Rice     ",0AH,0DH,"$"

MAIN_SCREEN_BORDER DB 0AH,0DH
  DB "  ",0C9H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BBH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB "  ",0C8H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BCH,0AH,0DH,"$"


  GAME_OVER DB 0AH,0DH
  DB "GAME OVER !!!","$"

  
  DISP_HTP DB 0ah,0dh
  DB "  ===== P R E S S   U P  A N D  D O W N  K E Y S  T O MOVE THE SHOOTER =====",0AH,0DH
  DB "      ===== P R E S S   S P A C E  B A R  T O S H O O  T =====" ,0f8h,0AH,0DH
  DB "      ===== P R E S S  Q  T O G O B A C K T O M A I N M E N U  =====" ,0f8h, "$"




  NEW_INPUT   DB    ?
  ROW DB ?
  COL DB ?
  FLAG DB "F$"
  FLAGC DB "F$"
  FLAGB DB "F$"
  
  ROWSTAR DB ?
  COLSTAR DB ?
  
  SHOOTER_DEFPOS DB ?
  BULLET_DEFPOS DB ?
  STAR_DEFPOS DB ?
  LIVES DW ?
  
  BULLET_ROW DB ?
  
  INPUT_SHOOTER DB ?
  INPUT_BULLET DB ?

  
  

  SCORELABEL DB "SCORE: $"
  SCORE DW ?
  SCORESTR DB '$$$$$'
  LIVESLABEL DW ?
  HIGHSCORE_LABEL DB "HIGHSCORE: $"

  


  SHOOTER DB ">$"
  STAR DB "O$"
  BULLET DB "-$"

  ERROR1_STR    DB 'Error in creating file.$'
  ERROR2_STR    DB 'Error writing in file.$'
  ERROR3_STR    DB 'Record not written properly.$'
  ERROR4_STR    DB 'Error in opening file.$'
  ERROR5_STR    DB 'Error reading from file.$'
  ERROR6_STR    DB 'No record read from file.$'

  PATHFILENAME  DB 'highscore.txt', 00H
  FILEHANDLE    DW ?

  HIGHSCORE_WRT    DB '0' ;length = 35 characters
  RECORD_STR    DB 3 DUP('$')

  HIGHSCORE_NUM DW 0 

;____________________________________________________________________________________________________________________________________

.CODE

;____________________________________________________________________________________________________________________________________

MAIN PROC FAR
  MOV AX, @data
  MOV DS, AX


  MOV ROW, 03H
  Mov COL, 01H

  MOV COLSTAR, 03H
  MOV BULLET_DEFPOS, 04H

  _RUN:

  ;clear the screen
  CALL CLEAR_SCREEN



  ;set the cursor
  MOV DL, ROW
  MOV DH, COL
  CALL SET_CURSOR


  LEA   DX, GAME_START
  CALL PRINTF


  MOV BP, 1
  MOV SI, 3
  CALL DELAY
  CALL GET_INPUT
  
  CMP NEW_INPUT,01H
  JE EXIT
  CMP NEW_INPUT,1CH
  JE ENTER_GAME
  JMP _RUN
  
  ENTER_GAME:
  CALL HTP_SCREEN

  JMP EXIT

DISPLAY_ERROR1:
  LEA DX, ERROR1_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR2:
  LEA DX, ERROR2_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR3:
  LEA DX, ERROR3_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR4:
  LEA DX, ERROR4_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR5:
  LEA DX, ERROR5_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR6:
  LEA DX, ERROR6_STR
  CALL PRINTF
  JMP EXIT

EXIT:
  MOV AH, 4CH
  INT 21H


MAIN ENDP

;____________________________________________________________________________________________________________________________________

CREATE_FILE PROC
  ;create file
  MOV AH, 3CH           ;request create file
  MOV CX, 00            ;normal attribute
  LEA DX, PATHFILENAME  ;load path and file name
  INT 21H
  JC DISPLAY_ERROR1     ;1-error carry flag
  MOV FILEHANDLE, AX
  RET
CREATE_FILE ENDP
;____________________________________________________________________________________________________________________________________

WRITE_TO_FILE PROC
   
  ;write file
  MOV AH, 40H           ;request write record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, 2             ;record length
  LEA DX, HIGHSCORE_WRT    ;address of output area
  INT 21H
  JC DISPLAY_ERROR2     ;cf = 1 means error in writing
  CMP AX, 2           ;after writing, set AX to size of chars nga na write
  JNE DISPLAY_ERROR3
  RET
WRITE_TO_FILE ENDP

;____________________________________________________________________________________________________________________________________

CLOSE_FILEHANDLE PROC 
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
  INT 21H
  RET
CLOSE_FILEHANDLE ENDP

;____________________________________________________________________________________________________________________________________

OPEN_FILE PROC
  ;open file
  MOV AH, 3DH           ;requst open file
  MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
  LEA DX, PATHFILENAME
  INT 21H
  JC DISPLAY_ERROR4
  MOV FILEHANDLE, AX
  RET
OPEN_FILE ENDP

;____________________________________________________________________________________________________________________________________

READ_FILE PROC
;read file
  MOV AH, 3FH           ;request read record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, 2        ;record length
  LEA DX, RECORD_STR   ;address of input area
  INT 21H
  JC DISPLAY_ERROR5
  CMP AX, 00            ;zero bytes read?
  JE DISPLAY_ERROR6
  RET
READ_FILE ENDP
;____________________________________________________________________________________________________________________________________

CLEAR_SCREEN PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 0EH     ;white background (7), blue foreground (1)
  MOV CX, 0000H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H

  RET
CLEAR_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

DELAY PROC NEAR
  DELAY2:
    DEC BP
    NOP
    JNZ DELAY2
    DEC SI
    CMP SI, 0
    JNZ DELAY2
    RET
DELAY ENDP
;____________________________________________________________________________________________________________________________________


HTP_SCREEN PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 0bH     ;white background (7), blue foreground (1)
  MOV CX, 0000H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H

  MOV DL, 50
  MOV DH, 10
  CALL SET_CURSOR
    

  LEA DX, DISP_HTP
  CALL PRINTF
    
  HTP_LOOP:
    CALL GET_INPUT
    CMP NEW_INPUT, 01H
    JE INIT_GL
    JMP HTP_LOOP
    
  INIT_GL:
    CALL INITIALIZE
    
HTP_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

INITIALIZE PROC
    MOV SHOOTER_DEFPOS, 09H
    CALL CREATE_STAR
    MOV STAR_DEFPOS, al
    MOV LIVES, 10
    MOV SCORE, 0
    CALL GAME_LOOP
INITIALIZE ENDP

;____________________________________________________________________________________________________________________________________

CREATE_STAR PROC

RAND_STAR: 
  mov ah, 2ch  ; Set function code
  int 21h      ; get time from MS-DOS
  mov al, dl   ; DH=seconds, DL=hundredths of second
  and al, 0fh  ; keep only the 4 last bits of the hundredth of seconds
    

  CMP AL, 5
  JL RAND_STAR
  RET
CREATE_STAR ENDP
;____________________________________________________________________________________________________________________________________

MAIN_SCREEN PROC
    MOV AX, 0600H   ;full screen
    MOV BH, 0CH     ;white background (7), blue foreground (1)
    MOV CX, 0000H   ;upper left row:column (0:0)
    MOV DX, 184FH   ;lower right row:column (24:79)
    INT 10H

    MOV DL, 30H
    MOV DH, 10H
    CALL SET_CURSOR
    

    LEA DX, SCORELABEL
    CALL PRINTF

    mov  si, offset SCORESTR
    mov  ax, SCORE
    call number2string    ;RETURNS NUMSTR.

    mov  dx, offset SCORESTR
    CALL PRINTF

    MOV DL, 30H
    MOV DH, 12H
    CALL SET_CURSOR


    LEA DX, HIGHSCORE_LABEL
    CALL PRINTF


  CALL OPEN_FILE
  CALL READ_FILE

  ;display record
  LEA DX, RECORD_STR
  CALL PRINTF

  CALL CLOSE_FILEHANDLE


    MOV DL, 30H
    MOV DH, 14H
    CALL SET_CURSOR


    mov  si, offset SCORESTR
    mov  ax, LIVES
    call number2string    ;RETURNS NUMSTR.

    mov  dx, offset SCORESTR
    CALL PRINTF

    ;HEART
      MOV AH,6
      MOV DL, 3     ;3 for heart
      INT 21H

MOV DL, 0H
MOV DH, COL
CALL SET_CURSOR
BORDERS:
    LEA DX, MAIN_SCREEN_BORDER
    CALL PRINTF
    
    RET
MAIN_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

RENDER_STAR PROC NEAR
;SET CURSOR FOR STARS
    MOV DL, STAR_DEFPOS
    MOV DH, COLSTAR
    CALL SET_CURSOR
    
    LEA DX, STAR
    CALL PRINTF
    RET
RENDER_STAR ENDP

;____________________________________________________________________________________________________________________________________

RENDER_SHOOTER PROC NEAR

;SET CURSOR FOR SHOOTER?

  MOV DL, ROW
  MOV DH, SHOOTER_DEFPOS
  CALL SET_CURSOR

  ;PRINT SHOOTER
  LEA DX, SHOOTER
  CALL PRINTF

  MOV BP, 4
  MOV SI, 4
  CALL DELAY
        
  RET
RENDER_SHOOTER ENDP
;____________________________________________________________________________________________________________________________________

RENDER_BULLET PROC NEAR
;SET CURSOR FOR BULLET
  MOV DL, BULLET_DEFPOS
  MOV DH, BULLET_ROW
  CALL SET_CURSOR

  ;PRINT SHOOTER
  LEA DX, BULLET
  CALL PRINTF
  MOV BP, 2
  MOV SI, 2
  CALL DELAY
  RET
RENDER_BULLET ENDP
;____________________________________________________________________________________________________________________________________

GAME_LOOP PROC NEAR
        
  CALL MAIN_SCREEN
  CALL RENDER_STAR
  CALL RENDER_SHOOTER

  MOV AL, 'F'
  CMP FLAGB, AL
  JNE BULLET_FIRED
  JMP COLLISION_

BULLET_FIRED:
  CALL RENDER_BULLET
    
  
COLLISION_:
  CALL CHECK_COLLISION
  MOV BL,FLAGC
  CMP BL,'F'
  JE NO_COLLISION
  JMP NEXT

NO_COLLISION:
  CMP COLSTAR,20
  JE DEC_LIFE
  JMP NEXT

DEC_LIFE:
  CALL UPDATE_LIFE
  CMP LIVES,0
  JE GAME_IS_OVER
  JMP NEXT

GAME_IS_OVER:
    CALL GAME_OVER_SCREEN
    CALL ESCAPE

NEXT:
  INC BULLET_DEFPOS
  CALL MOV_STARS
  CALL GET_INPUT
  CALL CHECK_INPUT



  ;CALL CHANGE_DIRECTION
  CALL GAME_LOOP

GAME_LOOP ENDP
;____________________________________________________________________________________________________________________________________

CHANGE_DIRECTION PROC NEAR
    CMP NEW_INPUT, 01H
    JNE RIGHT
    JMP ESCAPE
    RIGHT:
        INC ROW
        CMP ROW, 78
        JE  WRAPRIGHT
        JMP GAME_LOOP
    WRAPRIGHT:
        MOV ROW, 1 
        JMP GAME_LOOP
  ESCAPE:
    MOV AH, 4CH
    INT 21H
  
CHANGE_DIRECTION ENDP
;____________________________________________________________________________________________________________________________________

CHECK_INPUT PROC NEAR
  JZ  COMP
  CMP NEW_INPUT,10H
  JE ESCAPE
  CMP NEW_INPUT, 48h
  JE S_UP       ;SHOOTER UP
  CMP NEW_INPUT, 50H
  JE S_DOWN     ;SHOOTER DOWN
  CMP NEW_INPUT, 39H
  JE SET_FLAG
COMP: 
  MOV BL, "T"
  CMP FLAG, BL
  JE SHOOT      ;SHOOT
  
  RET
  
  S_UP:
    DEC SHOOTER_DEFPOS
    CMP SHOOTER_DEFPOS, 3
    JLE WS_UP
    RET
  S_DOWN:
    INC SHOOTER_DEFPOS
    CMP SHOOTER_DEFPOS, 21
    JGE WS_DOWN
    RET
  WS_DOWN:          ;WRAP SHOOTER DOWN
    MOV SHOOTER_DEFPOS, 21
    RET
  WS_UP:          ;WRAP SHOOTER DOWN
    MOV SHOOTER_DEFPOS, 3
    RET
  SET_FLAG:
    MOV BL, "T"
    MOV FLAG,BL
  
  INIT_SHOOT:
    MOV BL,"T"
    MOV FLAGB,BL
    MOV BULLET_DEFPOS, 3
    MOV DL, SHOOTER_DEFPOS
    MOV BULLET_ROW, DL
  SHOOT:
    CMP BULLET_DEFPOS, 25
    JGE BULLET_END
    INC BULLET_DEFPOS
    RET
  BULLET_END:
    MOV BL, "F"
    MOV FLAGB, BL
    RET
    
CHECK_INPUT ENDP
;____________________________________________________________________________________________________________________________________

GAME_OVER_SCREEN PROC
    MOV AX, 0600H   ;full screen
    MOV BH, 0CH     ;white background (7), blue foreground (1)
    MOV CX, 0000H   ;upper left row:column (0:0)
    MOV DX, 184FH   ;lower right row:column (24:79)
    INT 10H

    MOV DL, ROW
    MOV DH, COL
    CALL SET_CURSOR

    mov  si, offset SCORESTR
    mov  ax, SCORE
    call number2string

    mov  dx, offset SCORESTR
    CALL PRINTF 

  MOV SI, OFFSET RECORD_STR     ;pass string to convert 
  CALL STRTONUM       ;returns number in bx



   mov  dx, offset RECORD_STR
  CALL PRINTF 


  JMP PRINT_GAME_OVER
STORE_NEW_HIGHSCORE:
  MOV AL, SCORESTR
  MOV HIGHSCORE_WRT,AL


  CALL CREATE_FILE
  CALL WRITE_TO_FILE
  CALL CLOSE_FILEHANDLE


PRINT_GAME_OVER:
  ;set the cursor
  
  LEA   DX, GAME_OVER
  CALL PRINTF
  RET

GAME_OVER_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

CHECK_COLLISION PROC NEAR
  MOV DL, COLSTAR
  CMP DL, BULLET_ROW
  JE COLLIDED
  RET
COLLIDED:
  MOV DL, STAR_DEFPOS
  CMP DL, BULLET_DEFPOS
  JE COLL
  RET
COLL:
  MOV DL, BULLET_DEFPOS
  MOV DH, BULLET_ROW
  CALL SET_CURSOR
   
  MOV AL, 'X'
  MOV AH, 02H
  MOV DL, AL
  INT 21H
  MOV BL, 'T'
  MOV FLAGC, BL
  MOV BL, 'F'
  MOV FLAGB,BL
  MOV BP, 1
  MOV SI, 3
  CALL DELAY
  CALL UPDATE_SCORE
  RET
DECREMENT_LIFE:
  DEC LIVESLABEL
  RET
CHECK_COLLISION ENDP
;____________________________________________________________________________________________________________________________________

UPDATE_LIFE PROC NEAR
  DEC LIVES
  RET
UPDATE_LIFE ENDP
;____________________________________________________________________________________________________________________________________

UPDATE_SCORE PROC NEAR
  INC SCORE
  RET
UPDATE_SCORE ENDP
;____________________________________________________________________________________________________________________________________

MOV_STARS PROC NEAR
MOV BL, 'T'
CMP FLAGC, BL
JE RESET_STAR  
DOWN:
    INC COLSTAR
    CMP COLSTAR, 23
    JE WDOWN
    RET
WDOWN:
    CALL CREATE_STAR
    MOV STAR_DEFPOS, AL
    MOV COLSTAR, 03H
    RET
RESET_STAR:
    CALL CREATE_STAR
    MOV STAR_DEFPOS,AL
    MOV COLSTAR, 03H
    MOV FLAGC, 'F'
MOV_STARS ENDP
;____________________________________________________________________________________________________________________________________

GET_INPUT PROC NEAR 
    MOV   AH, 01H   ;check for input
      INT   16H

      JZ    BACKTOGAME
    
      MOV   AH, 00H   
      INT   16H
    
    MOV NEW_INPUT, AH
    
    RETURN:
       RET
  BACKTOGAME:
    RET
GET_INPUT  ENDP 
;____________________________________________________________________________________________________________________________________

PRINTF PROC NEAR
    MOV AH, 09H
    INT 21H
    RET
PRINTF ENDP

SET_CURSOR PROC NEAR
  MOV AH, 01H
  MOV CX, 2607H
  INT 10H
  
      MOV AH, 02H
      MOV BH, 00
      INT 10H
      RET

  RET
SET_CURSOR ENDP

;____________________________________________________________________________________________________________________________________

number2string proc 
  CALL DOLLARS
  mov  bx, 10  ;DIGITS ARE EXTRACTED DIVIDING BY 10.
  mov  cx, 0   ;COUNTER FOR EXTRACTED DIGITS.
cycle1:       
  mov  dx, 0   ;NECESSARY TO DIVIDE BY BX.
  div  bx      ;DX:AX / 10 = AX:QUOTIENT DX:REMAINDER.
  push dx      ;PRESERVE DIGIT EXTRACTED FOR LATER.
  inc  cx      ;INCREASE COUNTER FOR EVERY DIGIT EXTRACTED.
  cmp  ax, 0   ;IF NUMBER IS
  jne  cycle1  ;NOT ZERO, LOOP. 
;NOW RETRIEVE PUSHED DIGITS.
cycle2:  
  pop  dx        
  add  dl, 48  ;CONVERT DIGIT TO CHARACTER.
  mov  [ si ], dl
  inc  si
  loop cycle2  

  ret
number2string endp 

;____________________________________________________________________________________________________________________________________

DOLLARS PROC                
  mov  cx, 5
  mov  di, offset SCORESTR
dollars_loop:      
  mov  bl, '$'
  mov  [ di ], bl
  inc  di
  loop dollars_loop

  ret
DOLLARS endp 

;____________________________________________________________________________________________________________________________________

;string to number
;si = passed input (offset input)
;returns output in bx

STRTONUM PROC

;point si to least significant digit
  INC  SI 
  MOV CL, [SI]                       
  MOV CH, 0
  ADD SI, CX 

  MOV BX, 0
  MOV BP, 1 

BY_DIGIT:        
;converting character                   
  MOV AL, [SI]          ;current character
  SUB AL, 48            ;convert to digit
  MOV AH, 0             ;clear AH
  MUL BP                ;multiply al and bp
  ADD BX, AX            ;add result to bx

;increase bp by multiple of 10
  MOV AX, BP
  MOV BP, 10
  MUL BP             ;multiply bp by 10
  MOV BP, AX 

  DEC SI
  LOOP BY_DIGIT

  RET
STRTONUM ENDP   

;____________________________________________________________________________________________________________________________________



END MAIN