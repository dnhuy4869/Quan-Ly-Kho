   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QuanLyKho.ChildWindowsQuanLyKho.ChildWindows  5      ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5	      +    %QuanLyKho.ChildWindows.CustomerWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:QuanLyKho.ChildWindows     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      -uc$clr-namespace:QuanLyKho.UserControls  5	      -   5        $��customerWindow��5
        � Title$  Customer��5      $	��700��5      $	��450��5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterOwner=�5       � WindowStyle$
 None=�5      .��5      �� ���#673AB7$��1q�6    ._�5      � 
������� � RowDefinitions 5      �� 5      $
��auto �6   �� 5      .+�5      � $��0��6
   .+�5       4   .QuanLyKho.UserControls.ControlBarChildWindowUC  -   5          Name$ 
controlBar��5    !   
 � Tag 65   �� *Title+	 �� ElementName$	 customerWindow��5!      � 5#      $��1��6
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
   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=��� 5?   
   $	��150��5@   
   $��45��5A   
   $��10,0,0,0q�5B   
   $	��Top=�5C   
   $ Address��5D   
   #��[ 5E   
   ��5F   
   �� *	Address+$ PropertyChanged=��� 5G   
   $	��150��5H   
   $��45��5I   
   $��10,0,0,0q�5J   
   $	��Top=�5K   
   $ Phone��5L   
   #��[ 5M   
   ��5N   
   �� *Phone+$ PropertyChanged=�5O   
   5P   	   � 5Q      $��1��6   .+�5R   	   �� $ 
Horizontal=�6   .+�5S   
   �� $	��150��5T   
   $��45��5U   
   $��5,0,0,0q�5V   
   $	��Top=�5W   
   $ Email��5X   
   #��[ 5Y   
   ��5Z   
   �� *Email+$ PropertyChanged=��� 5[   
   $	��150��5\   
   $��45��5]   
   $��10,0,0,0q�5^   
   $	��Top=�5_   
   $ More infomation��5`   
   #��[ 5a   
   ��5b   
   �� *
MoreInfo+$ PropertyChanged=�(  "System.Windows.Controls.DatePicker  5c   
   $	��150��5d   
   $��10,0,0,0q�5e   
   $ Contract date��5f   
    ( $MaterialDesignFloatingHintDatePicker#��[ 5h   
      SelectedDate 5g   
   �� *ContractDate+$ PropertyChanged=�5h   
   5i   
   5j   	   � 5k      $��2��6   .+�5l   	   �� $ 
Horizontal=�6   .+�5m   
   �� $	��150��5n   
   $��45��5o   
   $��5,0,0,0q�5p   
   $	��Top=�5q   
   $ Unknow��5r   
   {�.  #��[ 5t   
   �� 5u   
   $	��150��5v   
   $��45��5w   
   $��10,0,0,0q�5x   
   $	��Top=�5y   
   $ Unknow��5z   
   {�.  #��[ 5|   
   �� 5}   
   $	��150��5~   
   $��45��5   
   $��10,0,0,0q�5�   
   $	��Top=�5�   
   $ Unknow��5�   
   {�.  #��[ 5�   
   5�   
   5�   	   5�      � 5�      $��1��5�      $��	0,21,45,0q�5�      $��Right=�5�       � 	Resources 5�       �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%�  '��       �� 5�   	   " ��6   .�5�   
   ��  � ��$	 140��6"   �� 5�   
    � ��$ 28��6#   �� 5�   
    � �� �#673AB76'   �� 5�   
    � ��
 �����6'   �� 5�   
    � �� 5�      �� 5�      " ��6   .R�5�      �� #��z��5�      
���   �$��0q�5�      ._�5�      �� $��Center=�6   $��Center=�6<   5�      5�      5�       5�   
   P� 5�       �@J�IsMouseOver . . �5�      ��  � ��
 ��+��6)   5�      5�   
   5�   	   .+�5�      �� $��Right=�6   .+�5�   	   �� $	��110��5�   	   $��5,5,5,5q�5�   	   $��0q�5�   	   $	��Add��5�   	    c� OverflowMode$ AsNeeded=�5�   	    � ToolTip$	 Add��5�   	   ��5�   	   �� *
AddCommand+5�   	   �� 5�   	   $	��110��5�   	   $��5,5,5,5q�5�   	   $��0q�5�   	   $��Delete��5�   	   $ AsNeeded=�5�   	   $ Delete��5�   	   ��5�   	   �� *DeleteCommand+5�   	   �� 5�   	   $	��110��5�   	   $��5,5,5,0q�5�   	   $��0q�5�   	   $
��Edit��5�   	   $ AsNeeded=�5�   	   $
 Edit��5�   	   ��5�   	   �� *EditCommand+5�   	   5�   	   5�      5�      � 5�      $��1��6   $��Stretch=�6   .+�5�      �� $
��Auto=�6   .��5�      �� $
��Auto=�6   .��5�   	   �� ��6   �� *List+ �� SelectedItem 6/   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5�   
   �� 5�      .P�5�      �� $��Id��6?    �� DisplayMemberBinding 6   �� *Id+6?   �� 5�      $
��Name��6H    6   �� *DisplayName+6H   �� 5�      $��Address��6D    6   �� *	Address+6D   �� 5�      $��Phone��6B    6   �� *Phone+6B   �� 5�      $��Email��6B    6   �� *Email+6B   �� 5�      $��More infomation��6E    6   �� *
MoreInfo+6E   �� 5�      $��Contract date��6I    6   �� *ContractDate+6I   5�      5�   
   5�   	   5�      5�      5�      5�      5�      5�      