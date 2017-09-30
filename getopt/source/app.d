import std.stdio;
import std.getopt;

void main(string []argv)
{
	int val = 2;
	bool b;
	string s;
	getopt(argv,
	"val", &val,
	"b", &b,
	"s",&s);
	val.writeln;
	b.writeln;
	s.writeln;
}
