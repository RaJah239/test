BillPhoneDayGreetingText:
	text "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneGenericText:
	text "<PLAY_G>, is it?"
	line "Hang on a sec…"
	done

BillPhoneNotFullText:
	text  "<PLAY_G>, your BOX"
	line "has room for @"
	text_ram wStringBuffer3
	text_start
	cont "more #MON."
	done

BillPhoneNearlyFullText:
	text "<PLAY_G>, your BOX"
	line "has room for only"
	cont "@"
	text_ram wStringBuffer3
	text " more #MON."
	done

BillPhoneFullText:
	text "<PLAY_G>, your BOX"
	line "is full!"

	para "You'll have to"
	line "switch BOXES if"

	para "you want to catch"
	line "more #MON."
	done

BillPhoneNewlyFullText:
	text "Hi, <PLAY_G>?"
	line "It's me, BILL!"

	para "Thanks for using"
	line "my STORAGE SYSTEM."

	para "That last #MON"
	line "you sent filled"
	cont "your BOX up."

	para "You'll have to"
	line "switch BOXES if"

	para "you want to catch"
	line "more #MON."

	para "Bye now!"
	done
