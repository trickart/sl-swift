//
//  sl.swift
//  sl-swift
//
//  Created by trickart on 2025/06/20.
//

@preconcurrency import Darwin.ncurses

let D51HEIGHT = 10
let D51FUNNEL: Int32 = 7
let D51LENGTH = 83
let D51PATTERNS = 6

let D51STR1 = "      ====        ________                ___________ "
let D51STR2 = "  _D _|  |_______/        \\__I_I_____===__|_________| "
let D51STR3 = "   |(_)---  |   H\\________/ |   |        =|___ ___|   "
let D51STR4 = "   /     |  |   H  |  |     |   |         ||_| |_||   "
let D51STR5 = "  |      |  |   H  |__--------------------| [___] |   "
let D51STR6 = "  | ________|___H__/__|_____/[][]~\\_______|       |   "
let D51STR7 = "  |/ |   |-----------I_____I [][] []  D   |=======|__ "

let D51WHL11 = "__/ =| o |=-~~\\  /~~\\  /~~\\  /~~\\ ____Y___________|__ "
let D51WHL12 = " |/-=|___|=    ||    ||    ||    |_____/~\\___/        "
let D51WHL13 = "  \\_/      \\O=====O=====O=====O_/      \\_/            "

let D51WHL21 = "__/ =| o |=-~~\\  /~~\\  /~~\\  /~~\\ ____Y___________|__ "
let D51WHL22 = " |/-=|___|=O=====O=====O=====O   |_____/~\\___/        "
let D51WHL23 = "  \\_/      \\__/  \\__/  \\__/  \\__/      \\_/            "

let D51WHL31 = "__/ =| o |=-O=====O=====O=====O \\ ____Y___________|__ "
let D51WHL32 = " |/-=|___|=    ||    ||    ||    |_____/~\\___/        "
let D51WHL33 = "  \\_/      \\__/  \\__/  \\__/  \\__/      \\_/            "

let D51WHL41 = "__/ =| o |=-~O=====O=====O=====O\\ ____Y___________|__ "
let D51WHL42 = " |/-=|___|=    ||    ||    ||    |_____/~\\___/        "
let D51WHL43 = "  \\_/      \\__/  \\__/  \\__/  \\__/      \\_/            "

let D51WHL51 = "__/ =| o |=-~~\\  /~~\\  /~~\\  /~~\\ ____Y___________|__ "
let D51WHL52 = " |/-=|___|=   O=====O=====O=====O|_____/~\\___/        "
let D51WHL53 = "  \\_/      \\__/  \\__/  \\__/  \\__/      \\_/            "

let D51WHL61 = "__/ =| o |=-~~\\  /~~\\  /~~\\  /~~\\ ____Y___________|__ "
let D51WHL62 = " |/-=|___|=    ||    ||    ||    |_____/~\\___/        "
let D51WHL63 = "  \\_/      \\_O=====O=====O=====O/      \\_/            "

let D51DEL   = "                                                      "

let COAL01 = "                              "
let COAL02 = "                              "
let COAL03 = "    _________________         "
let COAL04 = "   _|                \\_____A  "
let COAL05 = " =|                        |  "
let COAL06 = " -|                        |  "
let COAL07 = "__|________________________|_ "
let COAL08 = "|__________________________|_ "
let COAL09 = "   |_D__D__D_|  |_D__D__D_|   "
let COAL10 = "    \\_/   \\_/    \\_/   \\_/    "

let COALDEL = "                              "

let d51 = [[D51STR1, D51STR2, D51STR3, D51STR4, D51STR5, D51STR6, D51STR7, D51WHL11, D51WHL12, D51WHL13, D51DEL],
           [D51STR1, D51STR2, D51STR3, D51STR4, D51STR5, D51STR6, D51STR7, D51WHL21, D51WHL22, D51WHL23, D51DEL],
           [D51STR1, D51STR2, D51STR3, D51STR4, D51STR5, D51STR6, D51STR7, D51WHL31, D51WHL32, D51WHL33, D51DEL],
           [D51STR1, D51STR2, D51STR3, D51STR4, D51STR5, D51STR6, D51STR7, D51WHL41, D51WHL42, D51WHL43, D51DEL],
           [D51STR1, D51STR2, D51STR3, D51STR4, D51STR5, D51STR6, D51STR7, D51WHL51, D51WHL52, D51WHL53, D51DEL],
           [D51STR1, D51STR2, D51STR3, D51STR4, D51STR5, D51STR6, D51STR7, D51WHL61, D51WHL62, D51WHL63, D51DEL]]
let coal = [COAL01, COAL02, COAL03, COAL04, COAL05, COAL06, COAL07, COAL08, COAL09, COAL10, COALDEL]

let LOGOHEIGHT = 6
let LOGOFUNNEL: Int32 = 4
let LOGOLENGTH = 84
let LOGOPATTERNS = 6

let LOGO1 = "     ++      +------ "
let LOGO2 = "     ||      |+-+ |  "
let LOGO3 = "   /---------|| | |  "
let LOGO4 = "  + ========  +-+ |  "

let LWHL11 = " _|--O========O~\\-+  "
let LWHL12 = "//// \\_/      \\_/    "

let LWHL21 = " _|--/O========O\\-+  "
let LWHL22 = "//// \\_/      \\_/    "

let LWHL31 = " _|--/~O========O-+  "
let LWHL32 = "//// \\_/      \\_/    "

let LWHL41 = " _|--/~\\------/~\\-+  "
let LWHL42 = "//// \\_O========O    "

let LWHL51 = " _|--/~\\------/~\\-+  "
let LWHL52 = "//// \\O========O/    "

let LWHL61 = " _|--/~\\------/~\\-+  "
let LWHL62 = "//// O========O_/    "

let LCOAL1 = "____                 "
let LCOAL2 = "|   \\@@@@@@@@@@@     "
let LCOAL3 = "|    \\@@@@@@@@@@@@@_ "
let LCOAL4 = "|                  | "
let LCOAL5 = "|__________________| "
let LCOAL6 = "   (O)       (O)     "

let LCAR1 = "____________________ "
let LCAR2 = "|  ___ ___ ___ ___ | "
let LCAR3 = "|  |_| |_| |_| |_| | "
let LCAR4 = "|__________________| "
let LCAR5 = "|__________________| "
let LCAR6 = "   (O)        (O)    "

let DELLN = "                     "

let sl = [[LOGO1, LOGO2, LOGO3, LOGO4, LWHL11, LWHL12, DELLN],
          [LOGO1, LOGO2, LOGO3, LOGO4, LWHL21, LWHL22, DELLN],
          [LOGO1, LOGO2, LOGO3, LOGO4, LWHL31, LWHL32, DELLN],
          [LOGO1, LOGO2, LOGO3, LOGO4, LWHL41, LWHL42, DELLN],
          [LOGO1, LOGO2, LOGO3, LOGO4, LWHL51, LWHL52, DELLN],
          [LOGO1, LOGO2, LOGO3, LOGO4, LWHL61, LWHL62, DELLN]]
let sl_coal = [LCOAL1, LCOAL2, LCOAL3, LCOAL4, LCOAL5, LCOAL6, DELLN]
let sl_car = [LCAR1, LCAR2, LCAR3, LCAR4, LCAR5, LCAR6, DELLN]

let C51HEIGHT = 11
let C51FUNNEL: Int32 = 7
let C51LENGTH = 87
let C51PATTERNS = 6

let C51DEL = "                                                       "

let C51STR1 = "        ___                                            "
let C51STR2 = "       _|_|_  _     __       __             ___________"
let C51STR3 = "    D__/   \\_(_)___|  |__H__|  |_____I_Ii_()|_________|"
let C51STR4 = "     | `---'   |:: `--'  H  `--'         |  |___ ___|  "
let C51STR5 = "    +|~~~~~~~~++::~~~~~~~H~~+=====+~~~~~~|~~||_| |_||  "
let C51STR6 = "    ||        | ::       H  +=====+      |  |::  ...|  "
let C51STR7 = "|    | _______|_::-----------------[][]-----|       |  "

let C51WH61 = "| /~~ ||   |-----/~~~~\\  /[I_____I][][] --|||_______|__"
let C51WH62 = "------'|oOo|==[]=-     ||      ||      |  ||=======_|__"
let C51WH63 = "/~\\____|___|/~\\_|   O=======O=======O  |__|+-/~\\_|     "
let C51WH64 = "\\_/         \\_/  \\____/  \\____/  \\____/      \\_/       "

let C51WH51 = "| /~~ ||   |-----/~~~~\\  /[I_____I][][] --|||_______|__"
let C51WH52 = "------'|oOo|===[]=-    ||      ||      |  ||=======_|__"
let C51WH53 = "/~\\____|___|/~\\_|    O=======O=======O |__|+-/~\\_|     "
let C51WH54 = "\\_/         \\_/  \\____/  \\____/  \\____/      \\_/       "

let C51WH41 = "| /~~ ||   |-----/~~~~\\  /[I_____I][][] --|||_______|__"
let C51WH42 = "------'|oOo|===[]=- O=======O=======O  |  ||=======_|__"
let C51WH43 = "/~\\____|___|/~\\_|      ||      ||      |__|+-/~\\_|     "
let C51WH44 = "\\_/         \\_/  \\____/  \\____/  \\____/      \\_/       "

let C51WH31 = "| /~~ ||   |-----/~~~~\\  /[I_____I][][] --|||_______|__"
let C51WH32 = "------'|oOo|==[]=- O=======O=======O   |  ||=======_|__"
let C51WH33 = "/~\\____|___|/~\\_|      ||      ||      |__|+-/~\\_|     "
let C51WH34 = "\\_/         \\_/  \\____/  \\____/  \\____/      \\_/       "

let C51WH21 = "| /~~ ||   |-----/~~~~\\  /[I_____I][][] --|||_______|__"
let C51WH22 = "------'|oOo|=[]=- O=======O=======O    |  ||=======_|__"
let C51WH23 = "/~\\____|___|/~\\_|      ||      ||      |__|+-/~\\_|     "
let C51WH24 = "\\_/         \\_/  \\____/  \\____/  \\____/      \\_/       "

let C51WH11 = "| /~~ ||   |-----/~~~~\\  /[I_____I][][] --|||_______|__"
let C51WH12 = "------'|oOo|=[]=-      ||      ||      |  ||=======_|__"
let C51WH13 = "/~\\____|___|/~\\_|  O=======O=======O   |__|+-/~\\_|     "
let C51WH14 = "\\_/         \\_/  \\____/  \\____/  \\____/      \\_/       "

let c51 = [[C51STR1, C51STR2, C51STR3, C51STR4, C51STR5, C51STR6, C51STR7, C51WH11, C51WH12, C51WH13, C51WH14, C51DEL],
           [C51STR1, C51STR2, C51STR3, C51STR4, C51STR5, C51STR6, C51STR7, C51WH21, C51WH22, C51WH23, C51WH24, C51DEL],
           [C51STR1, C51STR2, C51STR3, C51STR4, C51STR5, C51STR6, C51STR7, C51WH31, C51WH32, C51WH33, C51WH34, C51DEL],
           [C51STR1, C51STR2, C51STR3, C51STR4, C51STR5, C51STR6, C51STR7, C51WH41, C51WH42, C51WH43, C51WH44, C51DEL],
           [C51STR1, C51STR2, C51STR3, C51STR4, C51STR5, C51STR6, C51STR7, C51WH51, C51WH52, C51WH53, C51WH54, C51DEL],
           [C51STR1, C51STR2, C51STR3, C51STR4, C51STR5, C51STR6, C51STR7, C51WH61, C51WH62, C51WH63, C51WH64, C51DEL]]
let c51_coal = [COALDEL, COAL01, COAL02, COAL03, COAL04, COAL05, COAL06, COAL07, COAL08, COAL09, COAL10, COALDEL]

func my_mvaddstr(_ y: Int32, _ x: Int32, _ str: String) {
    var x = x
    var str = str
    if x < 0 {
        str = String(str.dropFirst(Int(abs(x))))
        x = 0
    }
    for char in str {
        mvaddch(y, x, UInt32(char.asciiValue!))
        x += 1
    }
}

@MainActor func add_sl(_ x: Int32) {
    var py1: Int32 = 0; var py2: Int32 = 0; var py3: Int32 = 0

    if x < -LOGOLENGTH { return }

    var y = LINES / 2 - 3

    if FLY {
        y = (x / 6) + LINES - (COLS / 6) - Int32(LOGOHEIGHT)
        py1 = 2;  py2 = 4;  py3 = 6;
    }
    for i in 0...LOGOHEIGHT {
        my_mvaddstr(y + Int32(i), x, sl[(LOGOLENGTH + Int(x)) / 3 % LOGOPATTERNS][i])
        my_mvaddstr(y + Int32(i) + py1, x + 21, sl_coal[i])
        my_mvaddstr(y + Int32(i) + py2, x + 42, sl_car[i])
        my_mvaddstr(y + Int32(i) + py3, x + 63, sl_car[i])
    }
    if ACCIDENT {
        add_man(y + 1, x + 14)
        add_man(y + 1 + py2, x + 45);  add_man(y + 1 + py2, x + 53)
        add_man(y + 1 + py3, x + 66);  add_man(y + 1 + py3, x + 74)
    }
    add_smoke(y - 1, x + LOGOFUNNEL)
}

@MainActor func add_D51(_ x: Int32) {
    if x < -D51LENGTH { return }

    var y = LINES / 2 - 5
    var dy: Int32 = 0

    if FLY {
        y = (Int32(x) / 7) + LINES - (COLS / 7) - Int32(D51HEIGHT)
        dy = 1
    }
    for i in 0...D51HEIGHT {
        my_mvaddstr(y + Int32(i), x, d51[(D51LENGTH + Int(x)) % D51PATTERNS][i])
        my_mvaddstr(y + Int32(i) + dy, x + 53, coal[i])
    }
    if ACCIDENT {
        add_man(y + 2, x + 43)
        add_man(y + 2, x + 47)
    }
    add_smoke(y - 1, x + D51FUNNEL)
}

@MainActor func add_C51(_ x: Int32) {
    if x < -C51LENGTH { return }
    var y = LINES / 2 - 5
    var dy: Int32 = 0

    if FLY {
        y = (x / 7) + LINES - (COLS / 7) - Int32(C51HEIGHT)
        dy = 1
    }
    for i in 0...C51HEIGHT {
        my_mvaddstr(y + Int32(i), x, c51[(C51LENGTH + Int(x)) % C51PATTERNS][i])
        my_mvaddstr(y + Int32(i) + dy, x + 55, c51_coal[i])
    }
    if ACCIDENT {
        add_man(y + 3, x + 45)
        add_man(y + 3, x + 49)
    }
    add_smoke(y - 1, x + C51FUNNEL)
}

let man = [["", "(O)"], ["Help!", "\\O/"]]

func add_man(_ y: Int32, _ x: Int32) {
    for i in 0..<2 {
        my_mvaddstr(y + Int32(i), x, man[(LOGOLENGTH + Int(x)) / 12 % 2][i])
    }
}

let SMOKEPTNS = 16

struct Smokes {
    var y, x: Int32
    var ptrn, kind: Int
}

let Smoke = [["(   )", "(    )", "(    )", "(   )", "(  )",
              "(  )" , "( )"   , "( )"   , "()"   , "()"  ,
              "O"    , "O"     , "O"     , "O"    , "O"   ,
              " "                                          ],
             ["(@@@)", "(@@@@)", "(@@@@)", "(@@@)", "(@@)",
              "(@@)" , "(@)"   , "(@)"   , "@@"   , "@@"  ,
              "@"    , "@"     , "@"     , "@"    , "@"   ,
              " "                                          ]]
let SmokeEraser = ["     ", "      ", "      ", "     ", "    ",
                    "    " , "   "   , "   "   , "  "   , "  "  ,
                    " "    , " "     , " "     , " "    , " "   ,
                    " "                                          ]
let Smoke_dy: [Int32] = [2,  1, 1, 1, 0, 0, 0, 0, 0, 0,
                         0,  0, 0, 0, 0, 0             ]
let Smoke_dx: [Int32] = [-2, -1, 0, 1, 1, 1, 1, 1, 2, 2,
                          2,  2, 2, 3, 3, 3             ]
@MainActor var smoke_sum = 0
@MainActor var S: [Smokes] = [Smokes](repeating: Smokes(y: 0, x: 0, ptrn: 0, kind: 0), count: 1000)

@MainActor func add_smoke(_ y: Int32, _ x: Int32) {
    if x % 4 == 0 {
        var i = 0
        repeat {
            my_mvaddstr(S[i].y, S[i].x, SmokeEraser[S[i].ptrn])
            S[i].y    -= Smoke_dy[S[i].ptrn]
            S[i].x    += Smoke_dx[S[i].ptrn]
            S[i].ptrn += (S[i].ptrn < SMOKEPTNS - 1) ? 1: 0
            my_mvaddstr(S[i].y, S[i].x, Smoke[S[i].kind][S[i].ptrn])

            i += 1
        } while i < smoke_sum
        my_mvaddstr(y, x, Smoke[smoke_sum % 2][0])
        S[smoke_sum].y = y; S[smoke_sum].x = x
        S[smoke_sum].ptrn = 0; S[smoke_sum].kind = smoke_sum % 2
        smoke_sum += 1
    }
}
