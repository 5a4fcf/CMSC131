TITLE LAB6 (SIMPLIFIED .EXE )
.MODEL SMALL
;____________________________________________________________________________________________________________________________________

.DATA


GAME_START DB 0ah,0dh

DB "                       _                 _   _                   ",0AH,0DH  
DB "                  *   | |         +-    | | (_)              `    ",0AH,0DH  
DB "                     _| |__   ___   ___ | |_ _ _ __   __ _       ",0AH,0DH  
DB "                  / __| '_ \ / _ \ / _ \| __| | '_ \ / _` |      ",0AH,0DH  
DB "             .    \__ \ | | | (_) | (_) | |_| | | | | (_| |      ",0AH,0DH  
DB "                * |___/_| |_|\___/ \___/ \__|_|_| |_|\__, |      ",0AH,0DH  
DB "            +                   | |                   __/ |      ",0AH,0DH  
DB "          .     .            ___| |_ __ _ _ _`_   |  |___/      ",0AH,0DH  
DB "                            / __| __/ _` | '__|   -+--        `           ",0AH,0DH  
DB "               )            \__ \ || (_| | |       |    .                 ",0AH,0DH  
DB "                            |___/\__\__,_|_|                 .        +    ",0AH,0DH  
DB "        .                                                           ",0AH,0DH
DB "                     *         | |      ((             *           ",0AH,0DH
DB "              *                |'|       `    ._____               ",0AH,0DH
DB "                  +     ___    |  |   *        |.   |' .---         ",0AH,0DH
DB "                _    .-'   '-. |  |     .--'|  ||   | _|    |       ",0AH,0DH
DB "             .-'|  _.|  |    ||   '-__  |   |  |    ||      |       ",0AH,0DH
DB "             |' | |.    |    ||       | |   |  |    ||      |       ",0AH,0DH
DB "_____________|__'-'_____'____||_______'-'___'-.'____'`______|___________________",0AH,0DH
DB "________________________________________________________________________________",0AH,0DH,"$" 
              

MAIN_SCREEN_BORDER DB 0AH,0DH
  DB  "  ",0C9H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BBH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0C9H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BBH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"   arrow up - go up       ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"   arrow down - go down   ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"   space bar - shoot      ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"   q - quit               ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0C8H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BCH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"     S H O O T I N G  S T A R S",0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0C9H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BBH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0BAH,"                          ",0BAH,0AH,0DH
  DB  "  ",0BAH,"                                     ", 0BAH,"    ",0C8H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BCH,0AH,0DH
  DB "  ",0C8H,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0CDH,0BCH,0AH,0DH,"$"



  
  PRESS_ENTER DB "PRESS ENTER $"
  SCORELABEL DB "SCORE: $"
  LIVESLABEL DB "LIVE(S): $"
  HIGHSCORE_LABEL DB "HIGHSCORE: $"

GAME_OVER DB 0ah,0dh
DB "         ______        ___  __________ ",0AH,0DH
DB "        / ____|   /\   |  \/  |  ____| ",0AH,0DH  
DB "       | |  __   /  \  | \  / | |__    ",0AH,0DH  
DB "       | | |_ | / /\ \ | |\/| |  __|   ",0AH,0DH  
DB "       | |__| |/ ____ \| |  | | |____  ",0AH,0DH  
DB "       \_____/_/    \_\_|__|_|______| ",0AH,0DH  
DB "       / __ \ \    / /  ____|  __ \   ",0AH,0DH  
DB "       | |  | \ \  / /| |__  | |__) |       _____      ",0AH,0DH  
DB "       | |  | |\ \/ / |  __| |  _  /    ___/     \___  ",0AH,0DH  
DB "       | |__| | \  /  | |____| | \ \   `-._)     (_,-` ",0AH,0DH  
DB "        \____/   \/   |______|_|  \_\      \O _ O/     ",0AH,0DH  
DB "                                            \ - /      ",0AH,0DH 
DB "                                             `-(      ",0AH,0DH
DB "                                             _||_      ",0AH,0DH
DB "                                            |-..-|   PRESS SPACE  ",0AH,0DH
DB "                                            |/. \|        TO TRY AGAIN",0AH,0DH
DB "          ESC KEY TO EXIT                   |\__/|     ",0AH,0DH
DB "                                          ._|//\\|_,     ",0AH,0DH
DB "                                          `-((  ))-'     ",0AH,0DH,"$"  

  
  DISP_HTP DB 0ah,0dh
  DB "                       H  O  W     T  O     P   L   A  Y                            ",0AH,0DH,0AH,0DH
  DB "                    Try to shoot as many stars as you can.  ",0AH,0DH
  DB "                          You are given 5 lives.            ",0AH,0DH,0ah,0dh 
  DB "                      A miss would mean a less on lives.    ",0ah,0DH,0ah,0dh
  db "                            SPACEBAR TO SHOOT               ", 0ah,0dh
  db "                           ARROW UP TO MOVE UP              ", 0ah,0dh
  db "                         ARROW DOWN TO MOVE DOWN            ", 0ah,0dh
  DB "                      === PRESS ESC TO CONTINUE ===      ", "$"



  NEW_INPUT   DB    ?
  ROW DB 03H
  COL DB 01H
  ROWSTAR DB ?
  COLSTAR DB 03H

  
  SHOOTER_DEFPOS DB ?
  BULLET_DEFPOS DB 04H
  STAR_DEFPOS DB ?
  BULLET_ROW DB ?

  FLAG DB "F$"
  FLAGC DB "F$"
  FLAGB DB "F$"
  


  LIVES DW ?
  SCORE DW ?

  SCORESTR DB "$$$$$"
  SHOOTER DB ">$"
  STAR DB "*$"
  BULLET DB "-$"

  ERROR1_STR    DB 'Error in creating file.$'
  ERROR2_STR    DB 'Error writing in file.$'
  ERROR3_STR    DB 'Record not written properly.$'
  ERROR4_STR    DB 'Error in opening file.$'
  ERROR5_STR    DB 'Error reading from file.$'
  ERROR6_STR    DB 'No record read from file.$'

  PATHFILENAME  DB 'high.txt', 00H
  FILEHANDLE    DW ?

  HIGHSCORE_WRT    DB 32 DUP('$')
  RECORD_STR    DB 3 DUP('$')

  HIGHSCORE_NUM DW ? 
  TEN DW ?
  HS_NUM DW ?
  COUNTER DW ?
  RES  DW 100 DUP ('$')
  MSG DB 32 DUP('$') 


;____________________________________________________________________________________________________________________________________

.CODE

;____________________________________________________________________________________________________________________________________

MAIN PROC FAR
  MOV AX, @data
  MOV DS, AX

;----- run the game -------

  _RUN:

  CALL WELCOME_SCREEN   ;set first screen

  
  MOV DL, 10H             ;set the cursor passing dl and dh
  MOV DH, 1H
  CALL SET_CURSOR         ;for title text


  LEA   DX, GAME_START  ;display content(title text)
  CALL PRINTF           ;of first screen 

  MOV DL, 20H           ;set the cursor passing dl and dh
  MOV DH, 10H
  CALL SET_CURSOR       ;for press enter text

  LEA DX, PRESS_ENTER
  CALL PRINTF           ;print press enter text

  MOV BP, 3             ;set delay
  MOV SI, 3
  CALL DELAY
  CALL GET_INPUT        ;listen to key input
  
  CMP NEW_INPUT,01H     ;if input == esc
  JE EXIT               ;exit
  CMP NEW_INPUT,1CH     ;if input == enter
  JE ENTER_GAME         ;enter game

  JMP _RUN              ;else keep screen running
  
  ENTER_GAME:           ; game start
  CALL HTP_SCREEN       ;with how to play screen


  JMP EXIT
;-------------------------------

DISPLAY_ERROR1:         ;for error checkings in 
  LEA DX, ERROR1_STR    ;file manipulations
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

EXIT:           ;end program
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
  MOV CX, COUNTER            ;record length
  LEA DX, RES    ;address of output area
  INT 21H
  JC DISPLAY_ERROR2     ;cf = 1 means error in writing
  CMP AX, COUNTER         ;after writing, set AX to size of chars nga na write
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
  MOV CX,2000           ;record length
  INT 21H
  JC DISPLAY_ERROR5
  CMP AX, 00            ;zero bytes read?
  JE DISPLAY_ERROR6
  RET
READ_FILE ENDP
;____________________________________________________________________________________________________________________________________

WELCOME_SCREEN PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 00011110B     ;BLUE background (0001), YELLOW foreground (1110)
  MOV CX, 0000H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H

  RET
WELCOME_SCREEN ENDP

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
;set screen colors
  MOV AX, 0600H   ;full screen
  MOV BH, 20H     ;black background (0), cyan foreground (B)
  MOV CX, 0000H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H

;set cursor for contents
  MOV DL, 10
  MOV DH, 5
  CALL SET_CURSOR
    
;print how to play text
  LEA DX, DISP_HTP
  CALL PRINTF

;listens to key input     
  HTP_LOOP:
    CALL GET_INPUT
    CMP NEW_INPUT, 01H ;if esc is pressed
    JE INIT_GL         ;initialize game loop
    JMP HTP_LOOP
    
  INIT_GL:
    CALL INITIALIZE
    
HTP_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

;initializes variables before entering game loop
INITIALIZE PROC
    MOV SHOOTER_DEFPOS, 09H
    CALL CREATE_STAR
    MOV STAR_DEFPOS, al
    MOV COLSTAR, 03H
    MOV FLAGB, 'F'
    MOV LIVES, 3
    MOV SCORE, 0
    MOV BP, 3
    MOV SI, 3
    CALL DELAY
    CALL GAME_LOOP
INITIALIZE ENDP

;____________________________________________________________________________________________________________________________________

CREATE_STAR PROC

RAND_STAR: 
  mov ah, 2ch  ; Set function code
  int 21h      ; get time from MS-DOS
  mov al, dl   ; DH=seconds, DL=hundredths of second
  and al, 0fh  ; keep only the 4 last bits of the hundredth of seconds
    

  CMP AL, 5    ;if al is less than 5
  JL RAND_STAR ;randomize al again 
  RET
CREATE_STAR ENDP
;____________________________________________________________________________________________________________________________________

MAIN_SCREEN PROC

    MOV AX, 0600H   ;full screen
    MOV BH, 00111110b     ;black background (0), cyan foreground (C)
    MOV CX, 0000H   ;upper left row:column (0:0)
    MOV DX, 184FH   ;lower right row:column (24:79)
    INT 10H


  ;set cursor  
    MOV DL, 05H
    MOV DH, 01H
    CALL SET_CURSOR

BORDERS:
    LEA DX, MAIN_SCREEN_BORDER
    CALL PRINTF

  ;set cursor  
    MOV DL, 30H
    MOV DH, 10H
    CALL SET_CURSOR
    
;display "score: "
    LEA DX, SCORELABEL
    CALL PRINTF

;convert score num to printable string
    mov  si, offset SCORESTR
    mov  ax, SCORE
    call number2string    ;RETURNS NUMSTR.

;print printable score
    mov  dx, offset SCORESTR
    CALL PRINTF

;set cursor
    MOV DL, 30H
    MOV DH, 12H
    CALL SET_CURSOR
XOR BP,BP

;display "HIGHSCORE: "
    LEA DX, HIGHSCORE_LABEL
    CALL PRINTF


;open highscore file
  LEA DX, PATHFILENAME
  CALL OPEN_FILE
  LEA DX, HIGHSCORE_WRT
  CALL READ_FILE
   LEA DX, HIGHSCORE_WRT
    CALL PRINTF
  CALL STR2HEX
  CALL CLOSE_FILEHANDLE


;set cursor
  MOV DL, 30H
  MOV DH, 14H
  CALL SET_CURSOR

;convert num of lives to printable string
  mov  si, offset SCORESTR
  mov  ax, LIVES
  call number2string    ;RETURNS NUMSTR.


;print "live(s)"
  mov dx, offset LIVESLABEL
  CALL PRINTF
;print num of lives
  mov  dx, offset SCORESTR
  CALL PRINTF

MOV DL, 0H
MOV DH, COL
CALL SET_CURSOR
    
    RET
MAIN_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

RENDER_STAR PROC NEAR
;SET CURSOR FOR STAR
    MOV DL, STAR_DEFPOS
    MOV DH, COLSTAR
    CALL SET_CURSOR
;PRINT STAR    
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
        
  RET
RENDER_SHOOTER ENDP
;____________________________________________________________________________________________________________________________________

RENDER_BULLET PROC NEAR

  MOV BP, 3
  MOV SI, 3
  CALL DELAY

;SET CURSOR FOR BULLET
  MOV DL, BULLET_DEFPOS
  MOV DH, BULLET_ROW
  CALL SET_CURSOR

;PRINT SHOOTER
  LEA DX, BULLET
  CALL PRINTF
  RET
RENDER_BULLET ENDP
;____________________________________________________________________________________________________________________________________

GAME_LOOP PROC NEAR
 
 ;display main game screen
  CALL MAIN_SCREEN
;render star
  CALL RENDER_STAR
;render shooter
  CALL RENDER_SHOOTER


  MOV AL, 'F'
  CMP FLAGB, al   ;checks if bullet is fired
  JNE BULLET_FIRED ;if true, bullet is fired
  JMP COLLISION_   ;check COLLISION otherwise

;starts firing bullet
BULLET_FIRED:
  CALL RENDER_BULLET
    
 ;checks collision 
COLLISION_:
  CALL CHECK_COLLISION
  MOV BL,FLAGC
  CMP BL,'F'
  JE NO_COLLISION
  JMP NEXT

;if no collision and star is already gone
;subtract one life
NO_COLLISION:
  CMP COLSTAR,20
  JE DEC_LIFE
  JMP NEXT

;updates life and checks if game is
;already over (life == 0)
DEC_LIFE:
  CALL UPDATE_LIFE
  CMP LIVES,0
  JE GAME_IS_OVER
  JMP NEXT

;display game over screen
GAME_IS_OVER:
    CALL GAME_OVER_SCREEN
    CALL ESCAPE
ESCAPE:
  MOV AH, 4CH
  INT 21H

NEXT:
  INC BULLET_DEFPOS   ; move bullet to the right 
  MOV BP, 5
  MOV SI, 5
  CALL DELAY
  CALL MOV_STARS      ;mov stars down and/or reset
  CALL GET_INPUT      ;check input
  CALL CHECK_INPUT

  CALL GAME_LOOP

GAME_LOOP ENDP
;____________________________________________________________________________________________________________________________________

CHECK_INPUT PROC NEAR
  JZ  COMP
  CMP NEW_INPUT,10H             ;if esc key
  JE ESCAPE                     ;exit
  CMP NEW_INPUT, 48h            ;if arrow up
  JE S_UP       ;SHOOTER UP
  CMP NEW_INPUT, 50H            ;if arrow down
  JE S_DOWN     ;SHOOTER DOWN
  CMP NEW_INPUT, 39H            ;if spacebar
  JE SET_FLAG                   ;fire
;else  
COMP: 
  MOV BL, "T"
  CMP FLAG, BL                  ;check if bullet is fired
  JE SHOOT      ;SHOOT
  
  RET
  
  S_UP:
    DEC SHOOTER_DEFPOS      ;go up 
    CMP SHOOTER_DEFPOS, 3   ;check if shooter hits border
    JLE WS_UP               ;wrap if true
    RET
  S_DOWN:
    INC SHOOTER_DEFPOS      ;go down
    CMP SHOOTER_DEFPOS, 21  ;check if shooter hits border
    JGE WS_DOWN             ;wrap if true
    RET
  WS_DOWN:                  ;WRAP SHOOTER DOWN
    MOV SHOOTER_DEFPOS, 21
    RET
  WS_UP:                    ;WRAP SHOOTER DOWN
    MOV SHOOTER_DEFPOS, 3
    RET

  SET_FLAG:
    MOV BL, "T"             ;firing = true
    MOV FLAG,BL
  
;initialize bullet firing after spacebar is pressed
  INIT_SHOOT:
    MOV BL,"T"
    MOV FLAGB,BL
    MOV BULLET_DEFPOS, 3
    MOV DL, SHOOTER_DEFPOS
    MOV BULLET_ROW, DL

;check if bullet exceeds border
  SHOOT:
    CMP BULLET_DEFPOS, 25
    JGE BULLET_END
    INC BULLET_DEFPOS
    RET
;end bullet if it exceeds border
  BULLET_END:
    MOV BL, "F"
    MOV FLAGB, BL
    RET
    
CHECK_INPUT ENDP
;____________________________________________________________________________________________________________________________________

GAME_OVER_SCREEN PROC
    MOV AX, 0600H   ;full screen
    MOV BH, 01001010b     ;black background (0), cyan foreground (C)
    MOV CX, 0000H   ;upper left row:column (0:0)
    MOV DX, 184FH   ;lower right row:column (24:79)
    INT 10H

;set cursor
    MOV DL, ROW
    MOV DH, COL
    CALL SET_CURSOR

;convert string from file to number
 ;   MOV SI, OFFSET RECORD_STR     ;pass string to convert 

;    CALL STRTONUM                  ;returns number in bx

;    mov dx, offset RECORD_STR
;    call printf
;    mov dx, 't'
;    call printf
    

;convert score num to printable string
;    mov  si, offset SCORESTR
;    mov  ax, bx
 ;   call number2string    ;RETURNS NUMSTR.

;compare if score>=highscore
 ;   CMP SCORE,BX
 ;   JGE STORE_NEW_HIGHSCORE   ;store new highscore if true
  ;  JMP PRINT_GAME_OVER

MOV AX, SCORE 
CALL HEX2DEC

CALL GETSIZE
MOV AX, HS_NUM
CMP SCORE,AX

JG STORE_NEW_HIGHSCORE
JMP PRINT_GAME_OVER


;store by writing to file the new highscore
STORE_NEW_HIGHSCORE:
    CALL CREATE_FILE
    CALL WRITE_TO_FILE
    CALL CLOSE_FILEHANDLE


PRINT_GAME_OVER:
      LEA DX , GAME_OVER
      CALL PRINTF



RESTART_OR_NO:
      CALL GET_INPUT
      JZ RESTART_OR_NO
      CMP NEW_INPUT, 39H
      JE START_NEW_GAME
      CMP NEW_INPUT, 01H
      JE END_GAME
      JMP RESTART_OR_NO
START_NEW_GAME:
      CALL INITIALIZE
END_GAME:
      MOV AH, 4CH
      INT 21H

GAME_OVER_SCREEN ENDP

;____________________________________________________________________________________________________________________________________

CHECK_COLLISION PROC NEAR

;----------------------------------
;checks column and row location of 
;arrow and bullet
  MOV DL, COLSTAR
  CMP DL, BULLET_ROW
  JE COLLIDED
  RET
COLLIDED:
  MOV DL, STAR_DEFPOS
  CMP DL, BULLET_DEFPOS
  JE COLL
  RET
;if both are equal, collision happened
;--------------------------------
COLL:
  MOV DL, BULLET_DEFPOS
  MOV DH, BULLET_ROW
  CALL SET_CURSOR

;print 'X' to signify collision   
  MOV AL, 'X'
  MOV AH, 02H
  MOV DL, AL
  INT 21H

;set flag for collision to true
  MOV BL, 'T'
  MOV FLAGC, BL
;set flag for bullet to false
  MOV BL, 'F'
  MOV FLAGB,BL
;set delay
  MOV BP, 3
  MOV SI, 3
  CALL DELAY
;update score after collision
  CALL UPDATE_SCORE
  RET
CHECK_COLLISION ENDP
;____________________________________________________________________________________________________________________________________

UPDATE_LIFE PROC NEAR
;decrement number of lives
  DEC LIVES
  RET
UPDATE_LIFE ENDP
;____________________________________________________________________________________________________________________________________

UPDATE_SCORE PROC NEAR
;increments score
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

  JZ    BACKTOGAME    ;if no input, return
    
  MOV   AH, 00H       ;else, get input
  INT   16H
    
  MOV NEW_INPUT, ah   ;and store it

  BACKTOGAME:
    RET
GET_INPUT  ENDP 
;____________________________________________________________________________________________________________________________________
;prints what is stored in dx
PRINTF PROC NEAR
    MOV AH, 09H
    INT 21H
    RET
PRINTF ENDP

;____________________________________________________________________________________________________________________________________
;sets cursor location
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

STR2HEX PROC  
  PUSH AX
  PUSH BX
  PUSH CX
  PUSH DX
  PUSH SI
  
  XOR SI,SI
  XOR AX,AX
  XOR BX,BX
  MOV TEN,10
  MOV HS_NUM,0
  
  
  LOOP0:
  CMP HIGHSCORE_WRT[SI],'$'
  JE END00
  
  MOV CX,TEN
  MOV AX, HS_NUM
  MUL CX
  MOV HS_NUM,AX
  
  XOR AX,AX
  
  MOV AL,HIGHSCORE_WRT[SI]
  SUB AL,30H
  
  ADD HS_NUM,AX

  INC SI
  JMP LOOP0
END00:
      
  POP SI
  POP DX
  POP CX
  POP BX
  POP AX
  
  RET
STR2HEX ENDP

;____________________________________________________________________________________________________________________________________


;____________________________________________________________________________________________________________________________________

HEX2DEC PROC  
  PUSH AX
  PUSH BX
  PUSH CX
  PUSH DX
  PUSH SI
  LEA SI,RES
  MOV CX,0
    MOV BX,10
   
LOOP1: MOV DX,0
       DIV BX
       ADD DL,30H
       PUSH DX
       INC CX
       CMP AX,9
       JG LOOP1
     
       ADD AL,30H
       MOV [SI],AL
     
LOOP2: POP AX
       INC SI
       MOV [SI],AL
       LOOP LOOP2
    
    INC SI
    MOV AL,'$'
    MOV [SI],AL
    
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
HEX2DEC ENDP

;____________________________________________________________________________________________________________________________________

GETSIZE PROC
  MOV COUNTER,0
  XOR SI,SI
COPY10:
  CMP RES[SI],'$'
  JE END10
  INC COUNTER
  INC SI
  JMP COPY10
END10:
  MOV MSG[SI],'$'
  
RET
GETSIZE ENDP

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


END MAIN
