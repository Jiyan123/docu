import std.stdio;
import std.format;
import std.string;


void main()
{
	string s;
	s = readln();
	s.writeln;
	char[] sField = "Team %s vs Team %s:\n%s : %s"
		.format("Einstein", "2", 4, 3).dup;
	sField[0..3] = "Dre";
	sField.writeln;     // some playing around
	sField[5].writeln;
	formattedRead((s="hallo 1",s), "hallo %s",v); // watch the comma sepaerated value
	s.writeln; // watchout: formattedRead is clearing the value!
	v.writeln;
}

