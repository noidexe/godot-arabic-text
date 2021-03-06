var db = preload("res://addons/arabic-text/bidi/unicode_db.gd").new()
var index1 = db.index1
var index2 = db.index2
var Database_Records = db.Database_Records
var bidi_names = db.BidirectionalNames

var SHIFT = 7


enum DatabaseRecord {
	bidirectional=2, 
	mirrored=3
	} 

func bidirectional(ch):
	var code = ch.ord_at(0)
	var index = 0
	if code >= 0x110000:
		index = 0;
	else:
		var sh1 = code>>SHIFT
		index = index1[sh1]
		var n = code&((1<<SHIFT) - 1)
		var sh2 = (index<<SHIFT) + n
		index = index2[sh2]
	
	var record = Database_Records[index]
	var bidi = record[DatabaseRecord.bidirectional]
	var name = bidi_names[bidi];
	return name

func mirrored(ch):
	var code = ch.ord_at(0)
	var index = 0
	if code >= 0x110000:
		index = 0;
	else:
		index = index1[code>>SHIFT]
		var lsh = index << SHIFT
		var added = code&(1<<SHIFT - 1)
		var i = lsh + added
		index = index2[i]

	return Database_Records[index][DatabaseRecord.mirrored];
