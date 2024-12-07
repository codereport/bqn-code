Clear ⇐ { 𝕊:
    e ← @+27 # Escape character for the ANSI escape codes
    •term.RawMode 1
    •Out e∾"[?25l"∾e∾"[2J"∾e∾"[H" # Cursor to origin, hide it and clear screen
}
