   M S B A M L   `   `   `  ����O  KMediaPlayerViewModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY@clr-namespace:MediaPlayerViewModel;assembly=MediaPlayerViewModelMediaPlayerViewModel  5   	   L HMediaPlayerWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:MediaPlayerWindow.ConvertersMediaPlayerWindow.Converters 5   	   "   MediaPlayerWindow.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   XmediaWindow@clr-namespace:MediaPlayerViewModel;assembly=MediaPlayerViewModel     5   	   <local*clr-namespace:MediaPlayerWindow.Converters     5   	     � Title$  Philips Media Player��5   	   $	��750��6&   $
��1200��63    � WindowState$ 	Maximized=�6@   ��5      �� 5   
    �� ImageSource$ images/Wallpaper.jpg��6   6:    � DataContext 5      9   3MediaPlayerViewModel.MediaPlayerMainWindowViewModel  5   
    J� InputBindings 5      �� 5   
   
 �� Key$ F��6    �� Command 6   �� *FullScreenCommand+6E   �� 5   
   $ OemComma��6    6$   �� *SpeedRatioDownEventCommand+6U   �� 5   
   $ 	OemPeriod��6    6%   �� *SpeedRatioUpEventCommand+6T   �� 5   
   $ P��6    6   �� *PlayFileCommand+6G   �� 5   
   $ O��6    6   �� *OpenFileCommand+6D   �� 5   
   $
 Down��6    6    �� *VolumeDownCommand+6H   �� 5   
   $ Up��6    6   �� *VolumeUpCommand+6D   �� 5   
   $
 Left��6    6    �� *MoveBackwardFileCommand+6N   �� 5   
   $ Right��6    6!   �� *MoveForwardFileCommand+6N   �� 5   
   $ S��6    6   �� *StopFileCommand+6D   �� 5   
   $ s��6    �� 	Modifiers$ Controlf�6    61   �� *SavePlayListCommand+6[   �� 5   
   $ o��6   $ Controlf�6    61   �� *OpenPlayListCommand+6[   �� 5   
   $ A��6    6   �� *PlayListCommand+ �� CommandParameter 6A   �� 	 �� ElementName$	 PlayListView��6y   �� 5   
   $ H��6    6   �� *ShowHidePlayListCommand+6K   
 � 	Resources
 5!         	PlayImage  
PauseImage  PlayListImage  OpenFileImage  MoveForwardImage  MoveBackwardImage  	StopImage  AddPlaylist 
 Albums< 6MediaPlayerWindow.Converters.TimeSpanToDoubleConverter 	 TimeSpanToDoubleConverterE ?MediaPlayerWindow.Converters.DecimalToIntegerConverterForVolume &
 "DecimalToIntegerConverterForVolume  VolumeImage  ButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType  ToggleButtonStyle��%q  &	        &	 .     &	 ]     &	 �     &	 �     &	 �     &	      &	 N    &	 �    &		 �    &	
 �    &	 �    &	 	    &	 �    �� 5"   
   $��images/play.ico��6"   6=   �� 5#   
   $��images/Pause.ico��6#   6?   �� 5$   
   $��images/playlist.ico��6&   6E   �� 5%   
   $��images/Open.ico��6&   6A   �� 5&   
   $��images/Forward.ico��6)   6G   �� 5'   
   $��images/backward.ico��6*   6I   �� 5(   
   $��images/Stop.ico��6"   6=   �� 5)   
   $��images/AddPlaylist.ico��6$   6F   �� 5*   
   $��images/albums.ico��6   6<     5+   
   6N     5,   
   6`   �� 5-   
   $��images/Volume.ico��6$   6A   �� 50   
   " ��6$   .�51      ��  � �� 52      �� 53      " ��6&   .R�54      � .+�55      A� #��z��6&   #��z��56      �� 57      $��Center=�6/   $��Center=�58   +   59      5:      5<      5=      �� 5>   
   " d�6*   .�5?      ��  � �� 5@      �� 5A      " d�6&   .R�5B      � .+�5C      A� #��z��6&   #��z��5D      �� 5E      $��Center=�6/   $��Center=�5F   +   5G      5H      5J      5K      5L      .��5N      �  � RowDefinitions 5O   
   �� 5P      $
��Auto �6   6.   �� 5Q      $
��320* �6   6,   �� 5R      $
��Auto �6   6,   �� 5S      $
��Auto �6   6,   .+�5U   
   ]� -   5        $��MenuBar��5U   -   $��0��6   $��20��6!   .+�5V      o� $	��Top=�6   .@�5W      m� $��PlayList��6   .@�5X      m� $��OpenPlayList��6    m� Command 65   �� *OpenPlayListCommand+6_   m� 5Y      $��SavePalyList��6    65   �� *SavePlayListCommand+6_   5Z      5[      5\      � 5]   
   $��1��6    � ColumnDefinitions 5^      �� 5_      $��0 �6#   6/   �� 5`      $��* �6#   6/   �� 5a      $
��Auto �6#   $	��300��60   6B   .+�5c      (� $��1��6   .��5d      r� -   5        $��MediaPlayerElement��5d       r� LoadedBehavior$ Manual=�6i   $��Center=�6�   $��Center=�6�    r� Source 6�   �� *MediaSource+ �� Mode$ TwoWay=�5f      5g      �� 5h      -   5        $��PlayListView��5h      $ �� IsSynchronizedWithCurrentItem$
 TrueY�6*   
���   �$��14(�6b   $
��Bold"�6p   $��2��6�    �� SelectedIndex 6�   �� *PlayListViewCollection+y�6�   �� *ListVisibility+$ TwoWay=���6�   ��  �� Path$ PlayListViewCollection���5i      �� 5j       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5k      �  � Color$ 	#FF92C3EC��6'    � Offset$ 0Q�69   � 5l      $ 	#FF7E8DEA��6'   $ 1Q�69   5m      ��5o      �� 5p      .R�5q      �� ��6$   ��  5r      d� 5s   "    d� MouseAction$ 	LeftClicke�6/    6G   ��  �� RelativeSource ��  �� AncestorType$ WindowL�$1 +DataContext.OnItemSelectedInPlayListCommand� 6�   ��  �� $ 	TextBlockL�$
 Text�6!  5u      5v      5x      5z      �� 5{   
   -   5        $��MovieSliderBar��5{   >   $��2��6   
���   � �� Padding$ 8q�62   ��5|      �� 5}      $ 0.5,1&�6&   $ 0.5,0&�67   .��5~      � $ 	#FF467EE0��6#   $ 0Q�65   � 5      $ 	#FFA5BBDA��6#   $ 1Q�65   5�      ._�5�      ��   �� Orientation$  Vertical=�6   .+�5�      �� -   5        $��MoviePositionSlider��5�      ! � ToolTip$+! %Drag to get Desired Position in Media��61   " � LargeChange$" 0Q�6�   |�.  # � Minimum$# 0Q�6�   $��1��5�      $��30��6%   $ �� IsMoveToPointEnabled$ . % �� TickPlacement$% BottomRight=�6M   & �� TickFrequency$& 10Q�6i   5�      �� 5�      -   5        $��MovieTimeBar��5�   6   $  
Horizontal=�6   .+�5�      �  5�      �� 5�      $��* �6/   6<   �� 5�      $
��Auto �6/   6>   �� 5�      $��* �6/   6;   .+�5�      �� -   5        $��Timer��5�   +   $��0��6   $��30��69   $
��Bold"�6E   $��16(�6W   6h   �� 5�      $��1��6    $��/��61   $��30��6=   $
��Bold"�6I   
���   �6p   �� 5�      -   5        $��TimeToComplete��5�   0   $��2��6    $��30��6G   $
��Bold"�6S   $��16(�6e   $��Right=�6s   6�   5�      5�      5�      5�      �� 5�   
   -	   5        $��Taskbar��5�      ' �� CornerRadius$' 6��6    $��3��61   
���   �$ 8q�5�   %   ���	#FF5D81E2._�5�      �� $	��900��6   $  
Horizontal=�6'   $��Center=�6@   $��Center=�6]   $��45��6x   ��5�      �� 5�      $ 0.5,1&�6*   $ 0.5,0&�6;   .��5�      � $ 	#FF467EE0��6'   $ 0Q�69   � 5�      $ 	#FFA5BBDA��6'   $ 1Q�69   5�      .+�5�      �� $	��200��6   $��50��6)   $  
Horizontal=�65   .+�5�      �� $��40��6   $��40��6)   #��[ 65   6^   �� 5�      -
   5        $��VolumeSlider��5�      $! Volume Slider��61   $��Center=�6I   $ . ( � Maximum$( 1Q�6�   $# 0Q�6�   $	��100��6�   ) � Value) 6�   �� $	 MediaPlayerElement��$ TwoWay=�$ Volume�6�   �� 5�      $��40��6   $��40��6'   
���   �$��14(�6~   $
��Bold"�6�   ��63   �� $	 VolumeSlider��$ Value�6�   5�      �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��MoveBackwardButton��5�      $!  Play Previous ��67   $��45��6Q   #��[ 6\   #��[ 6�   ��6�   �� *MoveBackwardFileCommand+6�   5�      �� 5�      $��60��6   $��40��6(   .+�5�      d� -   5        $��
PlayButton��5�   #   $! Stop/Play Song��65   $��45��6N   #��[ 6Y   {�. #���   6�   * d� IsThreeState* .  + �� 	ClickMode$+ Press=�6*  ��6�   �� *PlayFileCommand+��6�   �� $	 
PlayButton�� 5�      �� 5�      , �� Gesture$, ALt+l��6%   67   5�      5�      �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��MoveForwardButton��5�      $! Play Next Song��66   #��[ 6O   $��45��6u   
���  ��#��[ 6�   ��6�   �� *MoveForwardFileCommand+6�   5�      �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��
StopButton��5�      $
! Stop��60   $��45��6?   #��[ 6J   #��[ 6�   ��6p   �� *StopFileCommand+6�   5�      �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��OpenFileButton��5�      $! OpenFile To Play��63   $��45��6N   #��[ 6Y   #��[ 6   $��Center=�6�   ��6�   �� *OpenFileCommand+6�   5�      �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��AddPlayList��5�      $! Add Songs To PlayList��60   $��40��6P   #��[ 6[   #��[ 6�   ��6�   �� *PlayListCommand+6�   5�      �� 5�      $��40��6   $	��190��6)   67   �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��HideShowPlaylist��5�      $! Show/Hide Playlist��65   #��[ 6R   $��40��6x   #��[ 6�   ��6�   �� *ShowHidePlayListCommand+��6�   �� $	 PlayListView��5�      5�      �� 5�      $��60��6   $��40��6(   .+�5�      �� -   5        $��Albums��5�      $��40��6,   $! OpenPlayList��67   #��[ 6N   #��[ 6�   ��6t   �� *OpenPlayListCommand+6�   5�      5�      5�      5�      5�      