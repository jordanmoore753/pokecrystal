GetLevelCap:
  call GetBadgeCount   ; Get the badge count (result in A)
  ld hl, LevelCapsTable ; Load the start address of the level caps table
  add a, l             ; Add badge count to the low byte of HL
  ld l, a              ; Store the result back in L
  ld a, [hl]           ; Load the level cap value from the table
  ret                  ; Return with the level cap in A
