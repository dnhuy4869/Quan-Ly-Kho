   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QuanLyKho.ChildWindowsQuanLyKho.ChildWindows  5      ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5	      +    %QuanLyKho.ChildWindows.SuppliesWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:QuanLyKho.ChildWindows     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      -uc$clr-namespace:QuanLyKho.UserControls  5	      -   5        $��suppliesWindow��5
        � Title$  Supplies��5      $	��700��5      $	��450��5         MaterialDesignPaper#���   5        ObjectWindowVM � DataContext# [ 5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterOwner=�5       � WindowStyle$
 None=�5      .��5      �� ���#673AB7$��1q�6    ._�5      � 
������� � RowDefinitions 5      �� 5      $
��auto �6   �� 5      .+�5       � $��0��6
   .+�5!      4   .QuanLyKho.UserControls.ControlBarChildWindowUC  -   5          Name$ 
controlBar��5!   !   
	 � Tag	 65   �� *Title+
 �� ElementName$
 suppliesWindow��5"      � 5$      $��1��6
    5%      �� 5&      $
��auto �6   �� 5'      .+�5+      � $��0��6    � ColumnDefinitions 5,      �� 5-      �� 5.      $	��200 �6   .+�50      � $��0��6   $
��Left=�6    51      �� 52   	   �� 53   	   �� 54   	   .+�56      � $��0��6   .+�57   	   ��  �� Orientation$ 
Horizontal=�6   .+�58   
   �� $	��150��59   
   $��45��5:   
   $��5,0,0,0q�5;   
   $	��Top=�5<   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5=   
    % !MaterialDesignFloatingHintTextBox#��[ 5>   
   ��5?   
   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=��� 5@   
   $	��150��5A   
   $��45��5B   
   $��10,0,0,0q�5C   
   $��0,10,0,0q�5D   
   $
 Unit��5E   
    �� DisplayMemberPath$ DisplayName��5F   
    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5J   
   ��5H   
   �� *Unit+$ PropertyChanged=� �� SelectedItem 5I   
   �� *SelectedUnit+ �� Mode$ TwoWay=�$ PropertyChanged=�5J   
   �� 5K   
   $	��150��5L   
   $��45��5M   
   $��0,0,0,0q�5N   
   $��	10,10,0,0q�5O   
   $ Supplier��5P   
   $ DisplayName��5Q   
    . #��[ 5U   
   ��5S   
   �� *
Supplier+$ PropertyChanged=� 5T   
   �� *SelectedSupplier+$ TwoWay=�$ PropertyChanged=�5U   
   5V   
   5W   	   � 5X      $��1��6   .+�5Y   	   �� $ 
Horizontal=�6   .+�5Z   
   �� $	��150��5[   
   $��45��5\   
   $��5,0,0,0q�5]   
   $	��Top=�5^   
   $ QR Code��5_   
   #��[ 5`   
   ��5a   
   �� *QRCode+$ PropertyChanged=��� 5b   
   $	��150��5c   
   $��45��5d   
   $��10,0,0,0q�5e   
   $	��Top=�5f   
   $ Bar Code��5g   
   #��[ 5h   
   ��5i   
   �� *	BarCode+$ PropertyChanged=��� 5j   
   $	��150��5k   
   $��45��5l   
   $��10,0,0,0q�5m   
   $	��Top=�5n   
   $ Unknow��5o   
   {�.  #��[ 5q   
   5r   
   5s   	   � 5t      $��2��6   .+�5u   	   �� $ 
Horizontal=�6   .+�5v   
   �� $	��150��5w   
   $��45��5x   
   $��5,0,0,0q�5y   
   $	��Top=�5z   
   $ Unknow��5{   
   {�.  #��[ 5}   
   �� 5~   
   $	��150��5   
   $��45��5�   
   $��10,0,0,0q�5�   
   $	��Top=�5�   
   $ Unknow��5�   
   {�.  #��[ 5�   
   �� 5�   
   $	��150��5�   
   $��45��5�   
   $��10,0,0,0q�5�   
   $	��Top=�5�   
   $ Unknow��5�   
   {�.  #��[ 5�   
   5�   
   5�   	   5�      � 5�      $��1��5�      $��	0,21,45,0q�5�      $��Right=�5�       � 	Resources 5�       �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%�  '��       �� 5�   	   " ��6   .�5�   
   ��  � ��$	 140��6"   �� 5�   
    � ��$ 28��6#   �� 5�   
    � �� �#673AB76'   �� 5�   
    � ��
 �����6'   �� 5�   
    � �� 5�      �� 5�      " ��6   .R�5�      �� #��z��5�      
���   �$��0q�5�      ._�5�      �� $��Center=�6   $��Center=�6<   5�      5�      5�       5�   
   P� 5�       �@J�IsMouseOver . . �5�      ��  � ��
 ��+��6)   5�      5�   
   5�   	   .+�5�      �� $��Right=�6   .+�5�   	   �� $	��110��5�   	   $��5,5,5,5q�5�   	   $��0q�5�   	   $	��Add��5�   	    c� OverflowMode$ AsNeeded=�5�   	    � ToolTip$	 Add��5�   	   ��5�   	   �� *
AddCommand+5�   	   �� 5�   	   $	��110��5�   	   $��5,5,5,5q�5�   	   $��0q�5�   	   $��Delete��5�   	   $ AsNeeded=�5�   	   $ Delete��5�   	   ��5�   	   �� *DeleteCommand+5�   	   �� 5�   	   $	��110��5�   	   $��5,5,5,0q�5�   	   $��0q�5�   	   $
��Edit��5�   	   $ AsNeeded=�5�   	   $
 Edit��5�   	   ��5�   	   �� *EditCommand+5�   	   5�   	   5�      5�      � 5�      $��1��6   $��Stretch=�6   .+�5�      �� $
��Auto=�6   .��5�      �� $
��Auto=�6   .��5�   	   �� ��6   �� *List+ 6/   �� *SelectedItem+$ OneWayToSource=� �� View 5�   
   �� 5�      .P�5�      �� $��Id��6?    �� DisplayMemberBinding 6   �� *Id+6?   �� 5�      $
��Name��6H    6   �� *DisplayName+6H   �� 5�      $
��Unit��6M    6   �� *Unit.DisplayName+6M   �� 5�      $��Supplier��6Q    6   �� *Supplier.DisplayName+6Q   �� 5�      $��QR Code��6C    6   �� *QRCode+6C   �� 5�      $��Bar Code��6D    6   �� *	BarCode+6D   5�      5�   
   5�   	   5�      5�      5�      5�      5�      5�      