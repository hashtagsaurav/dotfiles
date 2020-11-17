;==========================================================
;
;
;   ██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗
;   ██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
;   ██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝
;   ██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
;   ██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║
;   ╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
;
;
;   To learn more about how to configure Polybar
;   go to https://github.com/polybar/polybar
;
;   The README contains a lot of information
;
;==========================================================

[colors]
;background = ${xrdb:color0:#222}
;background = #2e3440
background = #2e3440
background-alt = #00000000
;foreground = ${xrdb:color7:#222}
foreground = #eceff4
foreground-alt = #eceff4
primary = #5E81AC
secondary = #e60053
alert = #bd2c40

[bar/example]
;monitor = ${env:MONITOR:HDMI-1}
width = 95%:
height = 23
offset-x = 2.5%
;offset-x = 1%
;offset-y = 1%
offset-y = 0.5%
radius = 0.0
fixed-center = true

background = ${colors.background}
foreground = ${colors.foreground}

line-size = 3
line-color = #f00

border-size = 0
border-color = #00000000

padding-left = 2
padding-right = 2

module-margin-left = 1
module-margin-right = 1

font-0 = "JetBrainsMono Nerd Font:size=9;2"
font-1 = "JetBrainsMono Nerd Font:size=11;3"
font-2 = "JetBrainsMono Nerd Font:size=13;3"
font-3 = "JetBrainsMono Nerd Font:size=14;3.8"
;font-0 = fixed:pixelsize=10;1
;font-1 = unifont:fontformat=truetype:size=8:antialias=false;0
;font-2 = siji:pixelsize=10;1

modules-left = launcher sep xwindow
modules-center = i3
modules-right = backlight-acpi pulseaudio xkeyboard wlan eth battery date sep power

;tray-position = right
;tray-padding = 2
;tray-background = #0063ff

;wm-restack = bspwm
wm-restack = i3

override-redirect = true

;scroll-up = bspwm-desknext
;scroll-down = bspwm-deskprev

scroll-up = i3wm-wsnext
scroll-down = i3wm-wsprev

cursor-click = pointer
cursor-scroll = ns-resize

[module/launcher]
type=custom/text
content = 
content-font=2
content-foreground=#1793d1
;content-foreground=${colors.foreground}
content-padding=0
click-left= "bash ~/.config/polybar/scripts/launcher.sh"

[module/xwindow]
type = internal/xwindow
label = %title:0:53:...%

[module/xkeyboard]
type = internal/xkeyboard
blacklist-0 = num lock

format = <label-indicator>
format-spacing = 0
;format-prefix = " "
format-prefix-foreground = ${colors.foreground-alt}
;format-prefix-underline = ${colors.secondary}

;label-layout = %icon%
;label-layout-underline = ${colors.secondary}

label-indicator = %icon%
label-indicator-padding = 0
label-indicator-margin = 0
;label-indicator-background = ${colors.secondary}
;label-indicator-underline = ${colors.secondary}

; layout-icon-[0-9]+ = layout;icon
; Assign each layout an icon that will be available as %icon% token for the
; <label-layout> tag. The part before ';' will try to match %layout% value.
layout-icon-default = 
layout-icon-0 = 
layout-icon-1 = 

; indicator-icon-[0-9]+ = indicator;off icon;on icon
; Provides the content of the %icon% token in label-indicator-*
indicator-icon-default = 
indicator-icon-0 = caps lock;-CL;%{T4}%{T-}
indicator-icon-1 = scroll lock;;+SL
indicator-icon-2 = num lock;-NL;

[module/filesystem]
type = internal/fs
interval = 25

mount-0 = /

label-mounted = %{F#0a81f5}%mountpoint%%{F-}: %percentage_used%%
label-unmounted = %mountpoint% not mounted
label-unmounted-foreground = ${colors.foreground-alt}

[module/i3]
type = internal/i3
ws-icon-0 = 1;%{T4}%{T-}
ws-icon-1 = 2;%{T2}%{T-}
ws-icon-2 = 3;%{T1}%{T-}
ws-icon-3 = 4;%{T2}%{T-}
ws-icon-4 = 5;%{T2}%{T-}
ws-icon-5 = 6;%{T2}ﭮ%{T-}
ws-icon-6 = 7;%{T3}%{T-}
ws-icon-7 = 8;%{T3}%{T-}
ws-icon-8 = 9;%{T3}%{T-}
ws-icon-9 = 10;%{T3}%{T-}
ws-icon-default = " "
format = <label-state> 
;<label-mode>
index-sort = true
wrapping-scroll = false

; Only show workspaces on the same output as the bar
;pin-workspaces = true

label-mode-padding = 2
label-mode-foreground = #000
label-mode-background = ${colors.primary}

; focused = Active workspace on focused monitor
;label-focused = %index%
label-focused = %icon%
label-focused-background = #0000
;${colors.background-alt}
;label-focused-underline= ${colors.primary}
label-focused-foreground= #85a7e6
;label-focused-foreground= ${colors.primary}
label-focused-padding = 2

; unfocused = Inactive workspace on any monitor
label-unfocused = %icon%
label-unfocused-foreground = #ffffff
label-unfocused-padding = 2

; visible = Active workspace on unfocused monitor
label-visible = %icon%
label-visible-background = ${self.label-focused-background}
;label-visible-underline = ${self.label-focused-underline}
label-visible-padding = ${self.label-focused-padding}

; urgent = Workspace with urgency hint set
label-urgent = %icon%
label-urgent-background = ${colors.alert}
label-urgent-padding = 2

; Separator in between workspaces
; label-separator = |


[module/mpd]
type = internal/mpd
format-online = <label-song>  <icon-prev> <icon-stop> <toggle> <icon-next>

icon-prev = 
icon-stop = 
icon-play = 
icon-pause = 
icon-next = 

label-song-maxlen = 25
label-song-ellipsis = true


[module/sep]
type = custom/text
content = |

;[module/update]
;type = custom/script
;exec = sudo ~/.config/polybar/scripts/update.sh
;interval = 600
;format = <label>
;label = %{T3}%{T-} %output%
;click-left = "bash ~/.config/polybar/scripts/upclick.sh"

[module/xbacklight]
type = internal/light

format = <label>
label =  

[module/backlight-acpi]
inherit = module/xbacklight
type = internal/backlight
card = intel_backlight
;format-prefix = "%{T2}%{T-} "
format = <ramp> <label>
label = %percentage%
ramp-0 = %{T2}%{T-}
ramp-1 = %{T2}%{T-}
ramp-2 = %{T2}%{T-}

[module/cpu]
type = internal/cpu
interval = 2
format-prefix = " "
format-prefix-foreground = ${colors.foreground-alt}
;format-underline = #f90000
label = %percentage:2%

[module/memory]
type = internal/memory
interval = 2
format-prefix = " "
format-prefix-foreground = ${colors.foreground-alt}
format-underline = #4bffdc
label = %percentage_used%%

[module/wlan]
type = internal/network
interface = wlp3s0
interval = 3.0

format-connected = <label-connected>
;format-connected-underline = #9f78e1
label-connected = %{T2} %{T-}
;%{A1:nmtui:}%essid%%{A} 
;%essid%

format-disconnected = %{T1} %{T-}
;format-disconnected = <label-disconnected>
;format-disconnected-underline = ${self.format-connected-underline}
;label-disconnected = %ifname% disconnected
;label-disconnected-foreground = ${colors.foreground-alt}

ramp-signal-0 = 
ramp-signal-1 = 
ramp-signal-2 = 
ramp-signal-3 = 
ramp-signal-4 = 
ramp-signal-foreground = ${colors.foreground-alt}

[module/eth]
type = internal/network
interface = enp2s0f1
interval = 3.0

format-connected-underline = #55aa55
format-connected-prefix = " "
format-connected-prefix-foreground = ${colors.foreground-alt}
label-connected = %local_ip%

format-disconnected =
;format-disconnected = <label-disconnected>
;format-disconnected-underline = ${self.format-connected-underline}
;label-disconnected = %ifname% disconnected
;label-disconnected-foreground = ${colors.foreground-alt}

[module/date]
type = internal/date
interval = 5

date ="%{T2}%{T-} %a,%e "
date-alt = "%{T2}%{T-} %e %b %Y "

time = "%{T2}%{T-} %I:%M %p"
time-alt = "%{T2}%{T-} %I:%M:%S %p"

format-prefix = 
format-prefix-foreground = ${colors.foreground-alt}
;format-underline = #0a6cf5

label = %date% %time%

[module/pulseaudio]
type = internal/pulseaudio

format-volume = <ramp-volume> <label-volume>
label-volume = %percentage%
label-volume-foreground = ${root.foreground}

label-muted = %{T3}%{T-}
label-muted-foreground = #666

ramp-volume-0 = %{T3}%{T-}
ramp-volume-1 = %{T3}%{T-}
ramp-volume-2 = %{T3}%{T-}

bar-volume-width = 10
bar-volume-foreground-0 = #55aa55
bar-volume-foreground-1 = #55aa55
bar-volume-foreground-2 = #55aa55
bar-volume-foreground-3 = #55aa55
bar-volume-foreground-4 = #55aa55
bar-volume-foreground-5 = #f5a70a
bar-volume-foreground-6 = #ff5555
bar-volume-gradient = false
bar-volume-indicator = |
bar-volume-indicator-font = 2
bar-volume-fill = ─
bar-volume-fill-font = 2
bar-volume-empty = ─
bar-volume-empty-font = 2
bar-volume-empty-foreground = ${colors.foreground-alt}

[module/alsa]
type = internal/alsa

format-volume = <label-volume> <bar-volume>
label-volume = VOL
label-volume-foreground = ${root.foreground}

format-muted-prefix = " "
format-muted-foreground = ${colors.foreground-alt}
label-muted = sound muted

bar-volume-width = 10
bar-volume-foreground-0 = #55aa55
bar-volume-foreground-1 = #55aa55
bar-volume-foreground-2 = #55aa55
bar-volume-foreground-3 = #55aa55
bar-volume-foreground-4 = #55aa55
bar-volume-foreground-5 = #f5a70a
bar-volume-foreground-6 = #ff5555
bar-volume-gradient = false
bar-volume-indicator = |
bar-volume-indicator-font = 2
bar-volume-fill = ─
bar-volume-fill-font = 2
bar-volume-empty = ─
bar-volume-empty-font = 2
bar-volume-empty-foreground = ${colors.foreground-alt}

[module/battery]
type = internal/battery
battery = BAT1
adapter = ACAD
full-at = 98

format-charging = <animation-charging> <label-charging>
label-charging = %percentage%
;format-charging-underline = #ffb52a

format-discharging = <ramp-capacity> <label-discharging>
label-discharging = %percentage%
;format-discharging-underline = ${self.format-charging-underline}

;format-full-prefix = " "
format-full = <label-full>
label-full = %{T2}%{F#A3BE8C}%{F-}%{T-} %percentage%
format-full-prefix-foreground = ${colors.foreground-alt}
;format-full-underline = ${self.format-charging-underline}

ramp-capacity-0 = %{T2}%{F#BF616A}%{F-}%{T-}
ramp-capacity-1 = %{T2}%{F#BF616A}%{F-}%{T-}
ramp-capacity-2 = %{T2}%{F#BF616A}%{F-}%{T-}
ramp-capacity-3 = %{T2}%{T-}
ramp-capacity-4 = %{T2}%{T-}
ramp-capacity-5 = %{T2}%{T-}
ramp-capacity-6 = %{T2}%{T-}
ramp-capacity-7 = %{T2}%{F#A3BE8C}%{F-}%{T-}
ramp-capacity-8 = %{T2}%{F#A3BE8C}%{F-}%{T-}
ramp-capacity-9 = %{T2}%{F#A3BE8C}%{F-}%{T-}
ramp-capacity-foreground = ${colors.foreground-alt}

animation-charging-0 = %{T2}%{T-}
animation-charging-1 = %{T2}%{T-}
animation-charging-2 = %{T2}%{T-}
animation-charging-3 = %{T2}%{T-}
animation-charging-4 = %{T2}%{T-}
animation-charging-5 = %{T2}%{T-}
animation-charging-6 = %{T2}%{T-}
animation-charging-foreground = ${colors.foreground-alt}
animation-charging-framerate = 750

;animation-discharging-0 = 
;animation-discharging-1 = 
;animation-discharging-2 = 
;animation-discharging-foreground = ${colors.foreground-alt}
;animation-discharging-framerate = 750

[module/temperature]
type = internal/temperature
thermal-zone = 0
warn-temperature = 60

format = <ramp> <label>
format-underline = #f50a4d
format-warn = <ramp> <label-warn>
format-warn-underline = ${self.format-underline}

label = %temperature-c%
label-warn = %temperature-c%
label-warn-foreground = ${colors.secondary}

ramp-0 = 
ramp-1 = 
ramp-2 = 
ramp-foreground = ${colors.foreground-alt}

[module/power]
type = custom/text
format-spacing = 2
content = %{T2}%{T-}
content-foreground = ${colors.alert}
click-left = "sudo rofi -modi 'Powermenu: /home/saurav/.config/rofi/scripts/rofi-powermenu.sh' -show Powermenu -theme /home/saurav/.config/rofi/powermenu.rasi"

[module/powermenu]
type = custom/menu

expand-right = true

format-spacing = 1

label-open = 
label-open-foreground = ${colors.secondary}
label-close =  cancel
label-close-foreground = ${colors.secondary}
label-separator = |
label-separator-foreground = ${colors.foreground-alt}

menu-0-0 = reboot
menu-0-0-exec = menu-open-1
menu-0-1 = power off
menu-0-1-exec = menu-open-2

menu-1-0 = cancel
menu-1-0-exec = menu-open-0
menu-1-1 = reboot
menu-1-1-exec = sudo reboot

menu-2-0 = power off
menu-2-0-exec = sudo poweroff
menu-2-1 = cancel
menu-2-1-exec = menu-open-0

[settings]
screenchange-reload = true
;compositing-background = xor
;compositing-background = screen
;compositing-foreground = source
;compositing-border = over
;pseudo-transparency = false

[global/wm]
margin-top = 5
margin-bottom = 5

; vim:ft=dosini
