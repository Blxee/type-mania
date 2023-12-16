#include <unistd.h>
#include <ncurses.h>

int main(void)
{
	WINDOW* stdscr = initscr();
	cbreak();
	noecho();
	keypad(stdscr, 1);

	addstr("hello world");
	refresh();
	
	getch();
	return (0);
}
