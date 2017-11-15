import std.stdio;
import std.format;
import std.string;
import std.regex;
import std.algorithm;

void main()
{
	string s;
	s = readln();
	s.writeln;
	char[] sField = "Team %s vs Team %s:\n%s : %s"
		.format("Einstein", "2", 4, 3).dup;
	sField[0..3] = "Dre";   // some playing around
	sField.writeln;
	sField[5].writeln;
	int v;
	s="hallo 1";
	formattedRead(s, "hallo %s",v); // watchout: formattedRead is clearing the value!
	s.writeln; 
	v.writeln;

	(!("93:erref".matchFirst( "[0-9]*[:][e,r]*").empty)).writeln;
	s = "12yo".replaceFirst(regex("[0-9]*y"), "ab");
	s.writeln;
	s ~= "dordo vogel\ndes deso dogg";
	s.split(regex("o")).each!writeln;

	"Ende".writeln;
}

