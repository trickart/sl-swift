// The Swift Programming Language
// https://docs.swift.org/swift-book

@preconcurrency import Darwin
@preconcurrency import Darwin.ncurses
import Foundation

var ACCIDENT = false
var LOGO     = false
var FLY      = false
var C51      = false

for arg in ProcessInfo.processInfo.arguments {
    if arg.first == "-" {
        switch arg.last {
        case "a": ACCIDENT = true
        case "F": FLY      = true
        case "l": LOGO     = true
        case "c": C51      = true
        default: break
        }
    }
}

initscr()
signal(SIGINT, SIG_IGN)
noecho()
curs_set(0)
nodelay(stdscr, true)
leaveok(stdscr, true)
scrollok(stdscr, true)

let length: Int32
if LOGO {
    length = Int32(LOGOLENGTH)
} else if C51 {
    length = Int32(C51LENGTH)
} else {
    length = Int32(D51LENGTH)
}
for i in 0..<(COLS + length) {
    if LOGO {
        add_sl(COLS - i)
    } else if C51 {
        add_C51(COLS - i)
    } else {
        add_D51(COLS - i)
    }
    getch()
    refresh()
    usleep(40000)
}

mvcur(0, COLS - 1, LINES - 1, 0)
endwin()
