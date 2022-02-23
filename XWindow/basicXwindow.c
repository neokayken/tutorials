#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>

int main(void) 
{
    Display *display;
    int screen;
    Window win;
    XEvent event;

    display = XOpenDisplay(NULL);

    if(display == NULL)
    {
        fprintf(stderr, "Cannot open dp\n");
        exit(1);
    }
    screen = DefaultScreen(display);

    win = XCreateSimpleWindow(display, RootWindow(display, screen),
        200, 200, 500, 300,
        1, BlackPixel(display, screen), WhitePixel(display, screen));
    
    XSelectInput(display, win, ExposureMask | KeyPressMask);
    XMapWindow(display, win);

    while(1)
    {
        XNextEvent(display, &event);
    }

    return 0; 
}
