SECTION "Reserved Bytes", ROMX
ds 4  ; reserve 4 bytes

GetMaxLevel:
  ld hl, wKantoBadges

  bit EARTHBADGE, [hl]
  ld a, 8
  jr nz, .exit

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
