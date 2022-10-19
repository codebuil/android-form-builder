sub closes(a as string)
	shell ("bash -c 'cat 1' >>"+a+".xml")
end sub 
sub texts(a as string)
	shell ("bash -c 'cat 2' >>"+a+".xml")
end sub 
sub buttons(a as string)
	shell ("bash -c 'cat 3' >>"+a+".xml")
end sub 
sub lists(a as string)
	shell ("bash -c 'cat 4' >>"+a+".xml")
end sub 
sub edits(a as string)
	shell ("bash -c 'cat 5' >>"+a+".xml")
end sub 
sub mmenu()
	print "e exit"
	print "t add a text view"
	print "b add a button"
	print "l add a list"
	print "v add a edit view"
end sub
dim a as string
dim b as string
dim c as string
cls
color ,2
print "creating new form xml"
print "file name : ";
input a
shell "bash -c 'cp "+"./0" +" ./"+a+".xml'"
b="."
while b<>"e"
	mmenu
	input b
	if b="t" then texts a
	if b="b" then buttons a
	if b="l" then lists a
	if b="v" then edits a
wend 
closes a

