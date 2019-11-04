syntax keyword Conditional if then else endif while do endwhile break continue
syntax match Operator /[=+\-*\/%!]/
syntax match xOperatorDeref /[\[\]]/
syntax match Comment /\/\/.*/
syntax match xUnalias /^.*__unalias__.*$/
syntax match String /".*"/
syntax match Label /[a-zA-Z_][a-zA-Z_0-9]*:/
syntax keyword xBuiltin restore call alias return ireturn
syntax keyword xBackup  backup multipush
syntax keyword xRestore restore multipop
syntax keyword xPrint   print
syntax keyword xBreakpoint breakpoint
syntax keyword xReg     R0 R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15
syntax keyword Constant EX_HANDLER TIMER DISK CONSOLE
syntax keyword Constant INT_4 INT_5 INT_6 INT_7 INT_8 INT_9 INT_10
syntax keyword Constant INT_11 INT_12 INT_13 INT_14 INT_15 INT_16 INT_17 INT_18
syntax keyword Constant MOD_0 MOD_1 MOD_2 MOD_3 MOD_4 MOD_5 MOD_6 MOD_7
syntax keyword Constant INT_CREATE INT_OPEN INT_CLOSE INT_DELETE INT_WRITE INT_SEEK INT_READ
syntax keyword Constant INT_FORK INT_EXEC INT_EXIT INT_GETPID INT_GETPPID INT_WAIT INT_SIGNAL
syntax keyword Constant INT_SEMGET INT_SEMRELEASE INT_SEMLOCK INT_SEMUNLOCK
syntax keyword Constant INT_SHUTDOWN
syntax keyword Constant INT_NEWUSR INT_REMUSR INT_SETPWD INT_GETUNAME INT_GETUID INT_LOGIN INT_LOGOUT
syntax keyword Constant INT_TEST0 INT_TEST1 INT_TEST2 INT_TEST3

syntax keyword Constant RESOURCE_MANAGER PROCESS_MANAGER MEMORY_MANAGER FILE_MANAGER DEVICE_MANAGER
syntax keyword Constant CONTEXT_SWITCH SCHEDULER PAGER_MODULE BOOT_MODULE

syntax keyword Constant ACQUIRE_BUFFER RELEASE_BUFFER ACQUIRE_DISK ACQUIRE_INODE RELEASE_INODE
syntax keyword Constant ACQUIRE_SEMAPHORE RELEASE_SEMAPHORE ACQUIRE_TERMINAL RELEASE_TERMINAL

syntax keyword Constant GET_PCB_ENTRY FREE_USER_AREA_PAGE EXIT_PROCESS FREE_PAGE_TABLE KILL_ALL

syntax keyword Constant GET_FREE_PAGE RELEASE_PAGE GET_FREE_BLOCK RELEASE_BLOCK GET_CODE_PAGE GET_SWAP_BLOCK

syntax keyword Constant BUFFERED_WRITE BUFFERED_READ OPEN CLOSE

syntax keyword Constant DISK_STORE DISK_LOAD TERMINAL_WRITE TERMINAL_READ

syntax keyword Constant SWAP_OUT SWAP_IN


syntax keyword Constant LIBRARY INIT LOGIN SHELL IDLE SWAPPER BUFFER

syntax keyword Constant EXCLUSIVE OPEN_ACCESS

syntax keyword Constant ROOT DATA EXEC

syntax keyword Constant FILE SEMAPHORE

syntax keyword Constant KERNEL INODE_ROOT

syntax keyword Constant READY RUNNING CREATED TERMINATED WAIT_DISK WAIT_FILE WAIT_BUFFER WAIT_TERMINAL WAIT_PROCESS WAIT_SEMAPHORE WAIT_MEM ALLOCATED

syntax keyword Constant MEM_LOW MEM_HIGH MAX_TICK

syntax keyword Constant EXCEPTION RESOURCE_TABLE_OFFSET PAGE_SIZE NUM_MEM_PAGES XFS_BSIZE MAX_FILE_BLOCKS DISK_SWAP_AREA DISK_FREE_AREA DISK_SIZE MAX_PROC_NUM PT_ENTRY_SIZE MAX_OPENFILE_NUM MAX_MEM_PAGE MAX_SEM_COUNT MAX_PROC_PAGES MAX_BUFFER BUFFER_BASE MAX_FILE_NUM MAX_FILE_SIZE MAX_USER_NUM

syntax keyword Constant PROCESS_TABLE OPEN_FILE_TABLE SEMAPHORE_TABLE MEMORY_FREE_LIST FILE_STATUS_TABLE DISK_STATUS_TABLE SYSTEM_STATUS_TABLE TERMINAL_STATUS_TABLE PAGE_TABLE_BASE BUFFER_TABLE DISK_MAP_TABLE INODE_TABLE USER_TABLE DISK_FREE_LIST ROOT_FILE

syntax keyword Constant IDLE_PROCESS INIT_PROCESS LOGIN_PROCESS SHELL_PROCESS SWAPPER_DAEMON

syntax keyword Constant ZERO ONE

function InvalidPattern(tableConstant, entrySize)
    return a:tableConstant . '\s*\+\s*[^*\]]+\*(\s*'.a:entrySize.'([^0-9]|$))@![^\]=;]*'
endfunction

let b:current_syntax = "spl"
highlight def xOperatorDeref ctermfg=Red guifg=#ff5555
highlight def xBuiltin ctermfg=Blue guifg=#7777ff
highlight def xReg ctermfg=Green guifg=#66AA66
highlight def xPrint ctermfg=Red guifg=#ffff44
highlight def xBreakpoint ctermfg=Red guifg=#ff4444
highlight def link xUnalias Comment
highlight def xBackup guifg=#ff4444
highlight def xRestore guifg=#44ff44
highlight xInvalid guibg=#ff4444 guifg=#333333

execute 'match xInvalid /\v'.InvalidPattern("PROCESS_TABLE", "16").'/'
execute 'match xInvalid /\v'.InvalidPattern("PAGE_TABLE_BASE", "20").'/'
execute 'match xInvalid /\v'.InvalidPattern("OPEN_FILE_TABLE", "4").'/'
execute 'match xInvalid /\v'.InvalidPattern("SEMAPHORE_TABLE", "4").'/'
execute 'match xInvalid /\v'.InvalidPattern("FILE_STATUS_TABLE", "4").'/'
execute 'match xInvalid /\v'.InvalidPattern("BUFFER_TABLE", "4").'/'
execute 'match xInvalid /\v'.InvalidPattern("INODE_TABLE", "16").'/'
execute 'match xInvalid /\v'.InvalidPattern("ROOT_FILE", "8").'/'
execute 'match xInvalid /\v'.InvalidPattern("USER_TABLE", "2").'/'
execute 'match xInvalid /\v'.InvalidPattern("PTBR", "2").'/'
