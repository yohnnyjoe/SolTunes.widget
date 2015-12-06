SolTunes -- The Solarized iTunes display

by John Wachter 12/5/15
https://github.com/yohnnyjoe
john@tutanota.com

Thanks for checking out SolTunes.  Please feel free to email me any comments or
critiques or suggestions. 

__USAGE__

  SolTunes works with Übersicht, which is a program to display Widgets on Mac OS
X.  I've only tried it on my machine running 10.11.1 so I hope it works for you
too.  You can get Übersicht from https://github.com/felixhageloh or from
http://tracesof.net/uebersicht (which has a nice gallery of other widgets as
well).

Once Übersicht is installed and the application has been opened, there will be a
icon on your menubar.  Click that and choose Open Widgets Folder.  Drag and drop
SolTunes.widgets folder in there.
(The Übersicht folder is in ~/Library/Application Support/Übersicht/widgets)

If iTunes is playing/paused SolTunes widget will be visible.  If you hit stop
on iTunes or quit it all together the widget will dissappear.  It's still running
though, and will reappear when you hit play. It will display while movies / tv shows are
playing.  Maybe something to fix in the future. 

Changing the name of the folder SolTunes.widget will break functionality, so don't do that.

__Switching Between Small and Large Display__

  To switch from large display to small display rename big.coffee to big.coffee.bak then rename small.coffee.bak to small.coffee  To return to big display just repeat steps in reverse.   


__Customizing__

  You can edit the index.coffee file to change the display with css. You can
make it any of the 16,777,216 colors available in CSS. Or you can keep it
Solarized with any of the __16__ different colors in that beautiful palette.
Check out http://ethanschoonover.com/solarized for more info, and here's a cheat
sheet...


    $base03:    #002b36;
    $base02:    #073642;
    $base01:    #586e75;
    $base00:    #657b83;
    $base0:     #839496;
    $base1:     #93a1a1;
    $base2:     #eee8d5;
    $base3:     #fdf6e3;
    $yellow:    #b58900;
    $orange:    #cb4b16;
    $red:       #dc322f;
    $magenta:   #d33682;
    $violet:    #6c71c4;
    $blue:      #268bd2;
    $cyan:      #2aa198;
    $green:     #859900;


__ISSSUES and BUGS__

  The biggest issue is it does not work with Apple Music when it is streaming.
It does work with any Apple Music you've downloaded to your mac.  There have
also been a couple of instances when it has flashed for a second or two.  Both
were rare and happened when other applications were getting heavy with the
resources. It will disappear if you change refreshFrequency to less than 200.
It will not scroll text automatically, which is a feature that would be nice
for some of those really long band names.  Let me know if you find any other
bugs or issues.  

Thanks & I hope you enjoy.  

john@tutanota.com

https://github.com/yohnnyjoe


