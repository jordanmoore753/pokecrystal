LevelCapsTable:
  db 5
  db 10
  db 20
  db 30

GetMaxLevel:
  ld hl, wJohtoBadges

	bit RISINGBADGE, [hl]
	ld a, MAX_LEVEL + 1
	jr nz, .exit

	; stormbadge
	bit STORMBADGE, [hl]
	ld a, 70
	jr nz, .exit

	; fogbadge
	bit FOGBADGE, [hl]
	ld a, 50
	jr nz, .exit

	; hivebadge
	bit HIVEBADGE, [hl]
	ld a, 10
	jr nz, .exit

	; no badges
	ld a, 5
  jr .exit

.exit
  ld b, a
  ret
