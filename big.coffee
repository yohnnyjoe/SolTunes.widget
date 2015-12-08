#################################################################################
#										#	
#  										#
#  SolTunes is a simple widget written in coffeescript that			#
#  works with the Übersicht application and iTunes on OS X			#
#  It will display a solarized box on your desktop with the			#
#  song, artist and album, as well as a full sized progress			#
#  bar.  It was based on the widget by Piotr Gajos, available		        #   
#  at https://github.com/Pe8er/Ubersicht-Widgets. 				#
#  										#
#  										#	
#           john@tutanota.com							#
#           https://github.com/yohnnyjoe					#
#										#
#           SolTunes Copyright (C) 2015 John Wachter				#
#  										#	
#										#	
# This program is free software: you can redistribute it and/or modify	        #
# it under the terms of the GNU General Public License as published by	        #
# the Free Software Foundation, either version 3 of the License, or		#
# (at your option) any later version.						#
#										#
# This program is distributed in the hope that it will be useful,		#
# but WITHOUT ANY WARRANTY; without even the implied warranty of		#
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the		        # 
# GNU General Public License for more details.				        #
#										#
# You should have received a copy of the GNU General Public License		#
# along with this program.  If not, see <http://www.gnu.org/licenses/>. 	#
#										#
#										#
#################################################################################

command: "osascript 'SolTunes.widget/pull_track.scpt'"

# Don't set this below 200, it will flash and be a resource hog.
refreshFrequency: 1000  

style: """

  bottom: 64px
  left: 15px
  width: 800px


  .wrapper 
    position: relative
    font-family: "Impact"
    font-size: 28pt
    line-height: 36pt
    -webkit-font-smoothing: antialiased
    background: \#073642
    border-style: solid
    border-color: \#d33682
    border-width: 2px 2px 2px 2px
    padding: 2px 
    height: 140px
    z-index: 1

  .song, .album, .artist
    white-space: nowrap
    overflow: hidden
    text-overflow: ellipsis
    z-index: 3 
  
  .song
    color: \#cb4b16
    text-align: left

  .album 
    color: \#668bd2
    text-align: center

  .artist
    color: \#2aa198
    text-align: right

  .progress
    max-width: 796px
    width: @width
    height: 144px 
    background: \#002b36
    position: absolute
    bottom: 0
    left: 0
    border-radius: 0px, 40px, 40px, 0px
    z-index: -1

   """


render: -> """
"""

update: (output, domEl) ->

  div = $(domEl)

  values = output.split(" ~ ")

  medianowHTML = ''

  tDuration = values[3]
  tPosition = values[4]
  tWidth = $(domEl).width();
  tCurrent = (tPosition / tDuration) * tWidth

  if values[0] != 'Nothing playing'

    $(domEl).animate({ opacity: 1 }, 500)
    medianowHTML = "
      <div class='wrapper'>
        <div class='song'>" + values[1] + "</div>
        <div class='album'>" + values[2] + "</div>
        <div class='artist'>" + values[0] + "</div>
        <div class='progress'></div>
      </div>"
  else 
    $(domEl).animate({ opacity: 0 }, 500)

  div.html(medianowHTML)

  if tDuration == 'NA'
    $(domEl).find('.progress').css width: "0"
  else
    $(domEl).find('.progress').css width: tCurrent

  
