   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QuanLyKho.ChildWindowsQuanLyKho.ChildWindows  5      ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5	      +    %QuanLyKho.ChildWindows.SupplierWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:QuanLyKho.ChildWindows     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      -uc$clr-namespace:QuanLyKho.UserControls  5	      -   5        $��supplierWindow��5
        � Title$  Supplier��5      $	��700��5      $	��450��5         MaterialDesignPaper#���   5        SupplierWindowVM � DataContext# [ 5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterOwner=�5       � WindowStyle$
 None=�5      .��5      �� ���#673AB7$��1q�6    ._�5      � 
������� � RowDefinitions 5      �� 5      $
��auto �6   �� 5      .+�5       � $��0��6
   .+�5!      4   .QuanLyKho.UserControls.ControlBarChildWindowUC  -   5          Name$ 
controlBar��5!   !   
	 � Tag	 65   �� *Title+
 �� ElementName$
 supplierWindow��5"      � 5$      $��1��6
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
   $	��Top=�5D   
   $ Address��5E   
   #��[ 5F   
   ��5G   
   �� *	Address+$ PropertyChanged=��� 5H   
   $	��150��5I   
   $��45��5J   
   $��10,0,0,0q�5K   
   $	��Top=�5L   
   $ Phone��5M   
   #��[ 5N   
   ��5O   
   �� *Phone+$ PropertyChanged=�5P   
   5Q   	   � 5R      $��1��6   .+�5S   	   �� $ 
Horizontal=�6   .+�5T   
   �� $	��150��5U   
   $��45��5V   
   $��5,0,0,0q�5W   
   $	��Top=�5X   
   $ Email��5Y   
   #��[ 5Z   
   ��5[   
   �� *Email+$ PropertyChanged=��� 5\   
   $	��150��5]   
   $��45��5^   
   $��10,0,0,0q�5_   
   $	��Top=�5`   
   $ More infomation��5a   
   #��[ 5b   
   ��5c   
   �� *
MoreInfo+$ PropertyChanged=�(  "System.Windows.Controls.DatePicker  5d   
   $	��150��5e   
   $��10,0,0,0q�5f   
   $ Contract date��5g   
    ( $MaterialDesignFloatingHintDatePicker#��[ 5i   
      SelectedDate 5h   
   �� *ContractDate+$ PropertyChanged=�5i   
   5j   
   5k   	   � 5l      $��2��6   .+�5m   	   �� $ 
Horizontal=�6   .+�5n   
   �� $	��150��5o   
   $��45��5p   
   $��5,0,0,0q�5q   
   $	��Top=�5r   
   $ Unknow��5s   
   {�.  #��[ 5u   
   �� 5v   
   $	��150��5w   
   $��45��5x   
   $��10,0,0,0q�5y   
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
   5�   
   5�   	   5�      � 5�      $��1��5�      $��	0,21,45,0q�5�      $��Right=�5�       � 	Resources 5�       �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%�  '��       �� 5�   	   " ��6   .�5�   
   ��  � ��$	 140��6"   �� 5�   
    � ��$ 28��6#   �� 5�   
    � �� �#673AB76'   �� 5�   
    � ��
 �����6'   �� 5�   
    � �� 5�      �� 5�      " ��6   .R�5�      �� #��z��5�      
���   �$��0q�5�      ._�5�      �� $��Center=�6   $��Center=�6<   5�      5�      5�       5�   
   P� 5�       �@J�IsMouseOver . . �5�      ��  � ��
 ��+��6)   5�      5�   
   5�   	   .+�5�      �� $��Right=�6   .+�5�   	   �� $	��110��5�   	   $��5,5,5,5q�5�   	   $��0q�5�   	   $	��Add��5�   	    c� OverflowMode$ AsNeeded=�5�   	    � ToolTip$	 Add��5�   	   ��5�   	   �� *
AddCommand+5�   	   �� 5�   	   $	��110��5�   	   $��5,5,5,5q�5�   	   $��0q�5�   	   $��Delete��5�   	   $ AsNeeded=�5�   	   $ Delete��5�   	   ��5�   	   �� *DeleteCommand+5�   	   �� 5�   	   $	��110��5�   	   $��5,5,5,0q�5�   	   $��0q�5�   	   $
��Edit��5�   	   $ AsNeeded=�5�   	   $
 Edit��5�   	   ��5�   	   �� *EditCommand+5�   	   5�   	   5�      5�      � 5�      $��1��6   $��Stretch=�6   .+�5�      �� $
��Auto=�6   .��5�      �� $
��Auto=�6   .��5�   	   �� ��6   �� *List+ �� Mode$ TwoWay=�$ PropertyChanged=� �� SelectedItem 6a   �� *SelectedItem+$ TwoWay=�$ PropertyChanged=� �� View 5�   
   �� 5�      .P�5�      �� $��Id��6?    �� DisplayMemberBinding 6   �� *Id+6?   �� 5�      $
��Name��6H    6   �� *DisplayName+6H   �� 5�      $��Address��6D    6   �� *	Address+6D   �� 5�      $��Phone��6B    6   �� *Phone+6B   �� 5�      $��Email��6B    6   �� *Email+6B   �� 5�      $��More infomation��6E    6   �� *
MoreInfo+6E   �� 5�      $��Contract date��6I    6   �� *ContractDate+6I   5�      5�   
   5�   	   5�      5�      5�      5�      5�      5�      