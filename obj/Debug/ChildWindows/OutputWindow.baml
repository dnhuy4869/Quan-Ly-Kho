   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QuanLyKho.ChildWindowsQuanLyKho.ChildWindows  5      ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5	      )    #QuanLyKho.ChildWindows.OutputWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:QuanLyKho.ChildWindows     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      -uc$clr-namespace:QuanLyKho.UserControls  5	      -   5        $��outputWindow��5
        � Title$  	Stock Out��5      $	��700��5      $	��450��5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterOwner=�5       � WindowStyle$
 None=�5      .��5      �� ���#673AB7$��1q�6    ._�5      � 
������� � RowDefinitions 5      �� 5      $
��auto �6   �� 5      .+�5      � $��0��6
   .+�5       4   .QuanLyKho.UserControls.ControlBarChildWindowUC  -   5          Name$ 
controlBar��5    !   
 � Tag 65   �� *Title+	 �� ElementName$	 outputWindow��5!      � 5#      $��1��6
    5$      �� 5%      $
��auto �6   �� 5&      .+�5*      � $��0��6   
 � ColumnDefinitions
 5+      �� 5,      �� 5-      $	��200 �6   .+�5/      � $��0��6   $
��Left=�6    50      �� 51   	   �� 52   	   �� 53   	   .+�55      � $��0��6   .+�56   	   ��  �� Orientation$ 
Horizontal=�6   .+�57   
   �� $	��150��58   
   $��45��59   
   $��5,0,0,0q�5:   
   $	��Top=�5;   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��5<   
    % !MaterialDesignFloatingHintTextBox#��[ 5=   
   ��5>   
   �� *ObjectDisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�(  "System.Windows.Controls.DatePicker  5?   
   $	��150��5@   
   $��10,0,0,0q�5A   
   $ Output date��5B   
    ( $MaterialDesignFloatingHintDatePicker#��[ 5D   
      SelectedDate 5C   
   �� *	OnputDate+$ PropertyChanged=�5D   
   �� 5E   
   $	��150��5F   
   $��45��5G   
   $��10,0,0,0q�5H   
   $	��Top=�5I   
   $ Quantity��5J   
   #��[ 5K   
   ��5L   
   �� *Count+$ PropertyChanged=�5M   
   5N   	   � 5O      $��1��6   .+�5P   	   �� $ 
Horizontal=�6   .+�5Q   
   �� $	��150��5R   
   $��45��5S   
   $��5,0,0,0q�5T   
   $	��Top=�5U   
   $ Output price��5V   
   #��[ 5W   
   ��5X   
   �� *OutputPrice+$ PropertyChanged=��� 5Y   
   $	��150��5Z   
   $��45��5[   
   $��5,0,0,0q�5\   
   $��5,10,0,0q�5]   
   $ Customer��5^   
    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5b   
   ��5`   
   �� *Customer.DisplayName+$ PropertyChanged=� �� SelectedItem 5a   
   �� *SelectedCustomer+ �� Mode$ TwoWay=�$ PropertyChanged=�.@�5c      ��  �� 
IsSelected . .��6*   Apple5e      5f      �� 5g   
   $	��150��5h   
   $��45��5i   
   $��10,0,0,0q�5j   
   $	��Top=�5k   
   $ Status��5l   
   #��[ 5m   
   ��5n   
   �� *Status+$ PropertyChanged=�5o   
   5p   	   � 5q      $��2��6   .+�5r   	   �� $ 
Horizontal=�6   .+�5s   
   �� $	��150��5t   
   $��45��5u   
   $��5,0,0,0q�5v   
   $	��Top=�5w   
   $ Unknow��5x   
   {�.  #��[ 5z   
   �� 5{   
   $	��150��5|   
   $��45��5}   
   $��10,0,0,0q�5~   
   $	��Top=�5   
   $ Unknow��5�   
   {�.  #��[ 5�   
   �� 5�   
   $	��150��5�   
   $��45��5�   
   $��10,0,0,0q�5�   
   $	��Top=�5�   
   $ Unknow��5�   
   {�.  #��[ 5�   
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
��Auto=�6   .��5�   	   �� ��6   �� *List+ 6/   �� *SelectedItem+$ OneWayToSource=� �� View 5�   
   �� 5�      .P�5�      �� $��Object��6O    �� DisplayMemberBinding 6   �� *Object.DisplayName+6O   �� 5�      $��Output date��6N    6   �� *Output.OutputDate+6N   �� 5�      $��Quantity��6B    6   �� *Count+6B   �� 5�      $��Output price��6R    6   �� *InputInfo.OutputPrice+6R   �� 5�      $��Customer��6Q    6   �� *Customer.DisplayName+6Q   �� 5�      $��Status��6C    6   �� *Status+6C   5�      5�   
   5�   	   5�      5�      5�      5�      5�      5�      