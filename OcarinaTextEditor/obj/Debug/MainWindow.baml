   M S B A M L   `   `   `  ����N  JZelda64 Text Editor, Version=3.1.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Zelda64TextEditorZelda64TextEditor  5   	   K*clr-namespace:Zelda64TextEditor.ConvertersZelda64TextEditor.Converters  5   	   "    Zelda64TextEditor.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   X TXceed.Wpf.Toolkit, Version=4.1.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   +localclr-namespace:Zelda64TextEditor  5   	   ;
converters*clr-namespace:Zelda64TextEditor.Converters  5   	   $	��634��5   '   $
��1137��64     � Icon$  Resources/z64text.ico��6A    � Title 6	   �� *WindowTitle+ � DataContext 5      !   Zelda64TextEditor.ViewModel  5	   
    � 	Resources 5      7   1Zelda64TextEditor.Converters.NullToFalseConverter   NullToFalseConverter:   4Zelda64TextEditor.Converters.BoolVisibilityConverter  BoolVisibilityConverter,   &Zelda64TextEditor.DivideByTwoConverter  divideByTwoConverter2   ,Zelda64TextEditor.MultiplyByPoint52Converter  multiplyByPoint52Converter2   ,Zelda64TextEditor.MultiplyByPoint10Converter  multiplyByPoint10Converter2   ,Zelda64TextEditor.MultiplyByPoint90Converter  multiplyByPoint90Converter2   ,Zelda64TextEditor.MultiplyByPoint25Converter  multiplyByPoint25Converter2	   ,Zelda64TextEditor.MultiplyByPoint75Converter  multiplyByPoint75Converter2
   ,Zelda64TextEditor.MultiplyByPoint60Converter  multiplyByPoint60Converter2   ,Zelda64TextEditor.MultiplyByPoint40Converter 	 multiplyByPoint40Converter2   ,Zelda64TextEditor.MultiplyByPoint80Converter 
 multiplyByPoint80Converter2   ,Zelda64TextEditor.MultiplyByPoint20Converter  multiplyByPoint20Converter��%\  &	        &	      &	 &     &	 9     &	 L     &	 _     &	 r     &	 �     &	 �     &		 �     &	
 �     &	 �       5   
   6*     5   
   6-     5      6     5      6%     5      6%     5      6%     5      6%   	  5      6%   
  5      6%     5      6%     5      6%     5      6%   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��400* �6   �� 5      $��5 �6   �� 5      $
��343* �6   �� 5      $
��381* �6   �� 5      $��0* �6   .+�5"   
   ]� ��. $��	0,21,2,32q�6)   .+�5#      �  5$      �� 5%      $	��15* �6'   �� 5&      $	��20* �6'   �� 5'      $
��363* �6'   .+�5)      �� -   5        $��messageListView��5)      $��
10,31,0,10q�62   $��3��6�   ��6F   �� *ViewSource.View+ �� SelectedItem 6n   �� *SelectedMessage+ �� UpdateSourceTrigger$ PropertyChanged=� �� View 5*      �� 5,       �� AllowsColumnReorder .  .P�5.      �� $��ID��6-   	 �� Width$
	 Auto��69   
 �� DisplayMemberBinding
 6F   �� *	MessageID+ �� StringFormat$ 0x{0:X4}���� 5/      $
��Text��6-   $
	 Auto��6;   
 6H   �� *
TextData+50      52      (  "Xceed.Wpf.Toolkit.WatermarkTextBox  53      -   5        $��10,2,0,0q�53   (    �� TextWrapping$
 Wrap=�6:   $	��Top=�6N      	Watermark$ Type to search...��6f   $��3��6  ��6�   �� *SearchFilter+$ PropertyChanged=�{�6�   �� *MessageList+ �� 	Converter# [  6.  54      55      o� 56   
   $	��Top=�6   $��4��6'   $��21��6;   .@�57      m� $
��File��6   .@�58      m� $��Open...��6    m� Command 6,   �� *OnRequestOpenFile+m� 59      $��Open extracted data...��6    6;   �� *OnRequestOpenData+�� 5:      m� 5;      $
��Save��6   {�6)   �� *IsSaveAvailable+ 6O   �� *OnRequestSave+m� 5<      $��
Save as...��6   {�6/   �� *IsSaveAsEnabled+ 6U   �� *OnRequestSaveAs+m� 5=      $��Save to extracted data...��6   {�6>   �� *IsSaveAvailable+ 6d   �� *OnRequestSaveAsFiles+�� 5>      m� 5?      $��
Close File��6   {�6/   �� *IsSaveAvailable+ 6U   �� *OnRequestCloseFile+5@      m� 5A      $��Tools��6   .@�5B      m� $��Re-sort entries��6    64   �� *OnRequestSortEntries+m� 5C      $��Import data��6    60   �� *OnRequestImportData+m� 5D      $��Remove empty entries��6    69   �� *OnRequestRemoveEmptyEntries+5E      m� 5F      $��About��6    6&   �� *OnRequestShowAbout+5H      5J      ]� 5K   
   -   5         ]�Name$ textBoxMsgDock��5K      ��. $��
0,241,0,10q�6B   $��2��6V   .+�5L      �� -   5         ��Name$ 
textBoxMsg��5L      $��0,0,0,0q�6*   $
 Wrap=�6;    �� AcceptsReturn . ��6O   �� *SelectedMessage.TextData+$ PropertyChanged=�{�6�   �� *SelectedMessage+# [  .��66  5M      5N      ]� 5O   
   -   5        $ DockTextBoxOptions��5O      $	��215��61   ��. $��4,21,0,0q�6S   $	��Top=�6e   $��1��6}   $��2��6�   .+�5P      �� $��Textbox Options��6   .��5Q      � $
��Left=�6   $	��332��62   $��
0,0,-2,-10q�6>   .+�5R      �� $��	Box Type:��6   $
��Left=�60   $	��Top=�6K   $��0,10,0,0q�6c   $��26��6u   $��60��6�   �� 5S      $��Box Position:��6   $
��Left=�64   $��0,41,0,0q�6O   $	��Top=�6a   $��26��6y   $��77��6�   �� 5T      -   5         ��Name$ BoxTypeCombo��5T      $
��Left=�65   $��	83,14,0,0q�6P   $	��Top=�6c   $	��126��6{   $��22��6�   {�6�   �� *SelectedMessage+# [  6�   �� 5U      -   5        $ BoxPositionCombo��5U      $
��Left=�69   $��	83,45,0,0q�6T   $	��Top=�6g   $	��126��6   $��22��6   6�   �� *SelectedMessage.BoxPosition+{�6�   �� *SelectedMessage+# [  6  �� 5V      -   5        $��MajoraIconLbl��5V      $��Icon:��6�   $
��Left=�6�   $��0,72,0,0q�6�   $	��Top=�6�   $��26��6�   $��77��6�   y�61   �� *MajoraMaskMode+# [ 6�   �� 5W      -	   5        $ MajoraIconCombo��5W      $
��Left=�6�   $��	83,76,0,0q�6�   $	��Top=�6�   $	��239��6�   $��22��6;  y�68   �� *MajoraMaskMode+# [ {�6�   �� *SelectedMessage+# [  6G  �� 5X      -
   5         ��Name$ MajoraLblJumpto��5X      $��Jump to:��6�   $
��Left=�6�   $��	0,103,0,0q�6�   $	��Top=�6�   $��26��6�   $��77��6�   y�65   �� *MajoraMaskMode+# [ {�6�   �� *SelectedMessage+# [  �� 5Y      -   5        $ MajoraJumpToTextBox��5Y      $
 Wrap=�6�   $��83,103,10,73q�6�   y�6;   �� *MajoraMaskMode+# [ {�6�   �� *SelectedMessage+# [  6  �� 5Z      -   5        $ MajoraFirstPriceTextBox��5Z      $
 Wrap=�6�   $�� ��6�   $��83,134,10,42q�6�   y�6?   �� *MajoraMaskMode+# [ {�6�   �� *SelectedMessage+# [  6"  �� 5[      -   5        $ MajoraSecondPriceTextBox��5[      $
 Wrap=�6�   $�� ��6�   $��83,165,10,11q�6�   y�6@   �� *MajoraMaskMode+# [ {�6�   �� *SelectedMessage+# [  6#  �� 5\      -   5        $ MajoraFirstPriceLabel��5\      $��
1st Price:��6�   $
��Left=�6�   $��	0,134,0,0q�6�   $	��Top=�6�   $��26��6�   $��77��6�   y�6;   �� *MajoraMaskMode+# [ {�6  �� *SelectedMessage+# [  �� 5]      -   5        $ MajoraSecondPriceLabel��5]      $��	2nd Price��6�   $
��Left=�6�   $��	0,165,0,0q�6�   $	��Top=�6�   $��26��6�   $��77��6�   y�6<   �� *MajoraMaskMode+# [ {�6  �� *SelectedMessage+# [  5^      5_      5a      � 5b   
   $��
10,379,2,0q�6    5c      �� 5d      �� 5e      .+�5g      �� $	��Add��6   $��	0,0,78,10q�6#   $��22��6^   $��Bottom=�6j   ��66   �� *OnRequestAddMessage+6j   �� 5h      $��Remove��6   $��	69,0,0,10q�6&   $��22��6d   $��Bottom=�6p   $��1��6�   ��69   �� *OnRequestRemoveMessage+6�   �� 5i      $��	Change ID��6   $��121,0,130,10q�6)   $��22��6e   $��Bottom=�6q   $��2��6�   ��6?   �� *OnRequestChangeID+6�   5j      �� 5k      -   5         ��Name$ dockMsgPreview��5k      $��
5,26,10,10q�6*   $��3��6>   $
��Auto=�6N   .��5l      � ��6
   �� *ActualWidth+ �� ElementName$ dockMsgPreview����6D   �� *ActualHeight+$ dockMsgPreview��.+�5m      �� -   5         ��Name$ 
msgPreview��5m       K� ZIndex$ 1��6    �� 5n      	 �� Y1$ 0��5o      
���  ��$��2��5r      $ 2��5s      	 �� X1 5n      �� *ActualWidth+$ dockMsgPreview��# [ 	 �� X2 5p      �� *ActualWidth+$ dockMsgPreview��# [ 	 �� Y2 5q      �� *ActualHeight+$ dockMsgPreview��5s      �� 5t      $ 0��5u      
��� � �$��2��5x      $ 2��5y       5t      �� *ActualWidth+$ dockMsgPreview��# [  5v      �� *ActualWidth+$ dockMsgPreview��# [  5w      �� *ActualHeight+$ dockMsgPreview��5y      �� 5z      $ 0��5{      
��� � �$��2��5~      $ 2��5       5z      �� *ActualWidth+$ dockMsgPreview��# [  5|      �� *ActualWidth+$ dockMsgPreview��# [  5}      �� *ActualHeight+$ dockMsgPreview��5      �� 5�      $ 0��5�      
��� � �$��2��5�      $ 2��5�       5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualHeight+$ dockMsgPreview��5�      �� 5�      $ 0��5�      
��� � �$��2��5�      $ 2��5�       5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualHeight+$ dockMsgPreview��5�      �� 5�      $ 0��5�      
��� � �$��2��5�      $ 2��5�       5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualHeight+$ dockMsgPreview��5�      �� 5�      $ 0��5�      
��� � �$��2��5�      $ 2��5�       5�      �� *ActualWidth+$ dockMsgPreview��# [	  5�      �� *ActualWidth+$ dockMsgPreview��# [	  5�      �� *ActualHeight+$ dockMsgPreview��5�      �� 5�      $ 0��5�      
��� � �$��2��5�      $ 2��5�       5�      �� *ActualWidth+$ dockMsgPreview��# [
  5�      �� *ActualWidth+$ dockMsgPreview��# [
  5�      �� *ActualHeight+$ dockMsgPreview��5�      �� 5�      $ 0��5�      
��� � �$��2��5�      $ 2��5�       5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualWidth+$ dockMsgPreview��# [  5�      �� *ActualHeight+$ dockMsgPreview��5�      5�      5�      �� 5�   
   -   5         ��Name$ button��5�      $��Refresh��6!   $��4��6X   $
��Left=�6h   $��132,65,-217,0q�6�   $	��Top=�6�   $��85��6�   $��36��6�   ��63   �� *OnRequestRefresh+6�   5�      5�      