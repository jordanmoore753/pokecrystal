LevelCapsTable:
  db 5
  db 10
  db 20
  db 30

GetMaxLevel:
  ld hl, wBadges       ; Point HL to the start of wBadges (2 bytes)
  ld b, 2              ; Process 2 bytes (16 badges total)
  call CountSetBits    ; Count the number of bits set to 1 in wBadges
  ld a, [wNumSetBits]  ; Load the result into A
  ld hl, LevelCapsTable
	ld c, a
	ld b, 0
	add hl, bc
	ld b, [hl]
  ret
