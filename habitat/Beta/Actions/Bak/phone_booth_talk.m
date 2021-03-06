;
;	phone_booth_talk.m
;
;	Action code for the dial-or-talk-on-the-pay-phone operation.
;	This is the 'talk' behavior for phone booth objects.
;
;	This file should be assembled as position independent code.
;
;	Chip Morningstar
;	Lucasfilm Ltd.
;	6-May-1986
;
	include	"action_head.i"

	actionStart

	jsr	v_adjacency_check
	if (!carry) {
		chainTo v_dial_or_talk
	}
	ldx #0
	chainTo v_talk

	actionEnd
