#############################################################################
# Generated by PAGE version 5.2
#  in conjunction with Tcl version 8.6
#  May 25, 2020 02:05:11 PM PDT  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top43 {base} {
    global vTcl
    if {$base == ""} {
        set base .top43
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m49" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 619x361+501+134
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 3844 1061
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Menu"
    vTcl:DefineAlias "$top" "Start Screen" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    entry $top.ent44 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 344 
    vTcl:DefineAlias "$top.ent44" "Entry1" vTcl:WidgetProc "Start Screen" 1
    label $top.lab45 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 16} -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Folder Path :} 
    vTcl:DefineAlias "$top.lab45" "Label1" vTcl:WidgetProc "Start Screen" 1
    button $top.but46 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command runShow \
        -disabledforeground #a3a3a3 -font {-family {Segoe UI} -size 16} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Run Show} 
    vTcl:DefineAlias "$top.but46" "Button1" vTcl:WidgetProc "Start Screen" 1
    label $top.lab48 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 16} -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Seconds :} 
    vTcl:DefineAlias "$top.lab48" "Label1_1" vTcl:WidgetProc "Start Screen" 1
    entry $top.ent49 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 74 
    vTcl:DefineAlias "$top.ent49" "Entry2" vTcl:WidgetProc "Start Screen" 1
    radiobutton $top.rad44 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 16} -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {In Order} -variable ssOrder 
    vTcl:DefineAlias "$top.rad44" "Radiobutton1" vTcl:WidgetProc "Start Screen" 1
    radiobutton $top.rad45 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 16} -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text Random -variable ssOrder 
    vTcl:DefineAlias "$top.rad45" "Radiobutton1_3" vTcl:WidgetProc "Start Screen" 1
    set site_3_0 $top.m49
    menu $site_3_0 \
        -activebackground SystemHighlight \
        -activeforeground SystemHighlightText \
        -background $vTcl(pr,menubgcolor) -font TkDefaultFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    $site_3_0 add command \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -command {#loadFolder} -font {} \
        -foreground $vTcl(pr,menufgcolor) -label {Load Folder} 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.ent44 \
        -in $top -x 0 -relx 0.242 -y 0 -rely 0.21 -width 344 -relwidth 0 \
        -height 30 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab45 \
        -in $top -x 0 -relx 0.016 -y 0 -rely 0.184 -width 0 -relwidth 0.225 \
        -height 0 -relheight 0.129 -anchor nw -bordermode ignore 
    place $top.but46 \
        -in $top -x 0 -relx 0.727 -y 0 -rely 0.052 -width 137 -relwidth 0 \
        -height 34 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 0 -relx 0.016 -y 0 -rely 0.367 -width 0 -relwidth 0.226 \
        -height 0 -relheight 0.129 -anchor nw -bordermode ignore 
    place $top.ent49 \
        -in $top -x 0 -relx 0.242 -y 0 -rely 0.394 -width 74 -relwidth 0 \
        -height 30 -relheight 0 -anchor nw -bordermode ignore 
    place $top.rad44 \
        -in $top -x 0 -relx 0.048 -y 0 -rely 0.052 -width 0 -relwidth 0.189 \
        -height 0 -relheight 0.092 -anchor nw -bordermode ignore 
    place $top.rad45 \
        -in $top -x 0 -relx 0.242 -y 0 -rely 0.052 -width 0 -relwidth 0.189 \
        -height 0 -relheight 0.092 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top43 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

