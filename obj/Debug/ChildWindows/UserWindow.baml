   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QuanLyKho.ChildWindowsQuanLyKho.ChildWindows  5      ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5	      '    !QuanLyKho.ChildWindows.UserWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:QuanLyKho.ChildWindows     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      -uc$clr-namespace:QuanLyKho.UserControls  5	      -   5        $��
userWindow��5
        � Title$
  User��5      $	��700��5      $	��450��5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterOwner=�5       � WindowStyle$
 None=�5      .��5      �� ���#673AB7$��1q�6    ._�5      � 
������� � RowDefinitions 5      �� 5      $
��auto �6   �� 5      .+�5      � $��0��6
   .+�5       4   .QuanLyKho.UserControls.ControlBarChildWindowUC  -   5          Name$ 
controlBar��5    !   
 � Tag 65   �� *Title+	 �� ElementName$	 
userWindow��5!      � 5#      $��1��6
    5$      �� 5%      $
��auto �6   �� 5&      .+�5*      � $��0��6   
 � ColumnDefinitions
 5+      �� 5,      �� 5-      $	��220 �6   .+�5/      � $��0��6   $
��Left=�6    50      �� 51   	   �� 52   	   �� 53   	   .+�55      � $��0��6   .+�56   	   ��  �� Orientation$ 
Horizontal=�6   .+�57   
   �� $	��150��58   
   $��45��59   
   $��5,0,0,0q�5:   
   $	��Top=�5;   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��5<   
    % !MaterialDesignFloatingHintTextBox#��[ 5=   
   ��5>   
   �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=��� 5?   
   $	��150��5@   
   $��45��5A   
   $��0,0,0,0q�5B   
   $��5,9,0,0q�5C   
   $
 Role��5D   
    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5H   
   ��5F   
   �� *Role+$ PropertyChanged=� �� SelectedItem 5G   
   �� *SelectedRole+ �� Mode$ TwoWay=�$ PropertyChanged=�5H   
   �� 5I   
   $	��150��5J   
   $��45��5K   
   $��10,0,0,0q�5L   
   $	��Top=�5M   
   $ Display name��5N   
   #��[ 5O   
   ��5P   
   �� *DisplayName+$ PropertyChanged=�5Q   
   5R   	   � 5S      $��1��6   .+�5T   	   �� $ 
Horizontal=�6   .+�5U   
   �� $	��150��5V   
   $��45��5W   
   $��5,0,0,0q�5X   
   $	��Top=�5Y   
   $ Unknow��5Z   
   {�.  #��[ 5\   
   �� 5]   
   $	��150��5^   
   $��45��5_   
   $��5,0,0,0q�5`   
   $	��Top=�5a   
   $ Unknow��5b   
   {�.  #��[ 5d   
   �� 5e   
   $	��150��5f   
   $��45��5g   
   $��5,0,0,0q�5h   
   $	��Top=�5i   
   $ Unknow��5j   
   {�.  #��[ 5l   
   5m   
   5n   	   � 5o      $��2��6   .+�5p   	   �� $ 
Horizontal=�6   .+�5q   
   �� $	��150��5r   
   $��45��5s   
   $��5,0,0,0q�5t   
   $	��Top=�5u   
   $ Unknow��5v   
   {�.  #��[ 5x   
   �� 5y   
   $	��150��5z   
   $��45��5{   
   $��5,0,0,0q�5|   
   $	��Top=�5}   
   $ Unknow��5~   
   {�.  #��[ 5�   
   �� 5�   
   $	��150��5�   
   $��45��5�   
   $��5,0,0,0q�5�   
   $	��Top=�5�   
   $ Unknow��5�   
   {�.  #��[ 5�   
   5�   
   5�   	   5�      � 5�      $��1��6   $��Right=�6    � 	Resources 5�       �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%   '��       �� 5�   	   " ��6   .�5�   
   ��  � ��$ 2,2,2,2q�6#   �� 5�   
    � ��$	 140��6"   �� 5�   
    � ��$ 28��6#   �� 5�   
    � �� �#673AB76'   �� 5�   
    � ��
 �����6'   �� 5�   
    � �� 5�      �� 5�      " ��6   .R�5�      �� #��z��5�      
���   �$��0q�5�      ._�5�      �� $��Center=�6   $��Center=�6<   5�      5�      5�       5�   
   P� 5�       �@J�IsMouseOver . . �5�      ��  � ��
 ��+��6)   5�      5�   
   5�   	   .+�5�      � $	��200��6   $��0,0,10,0q�6    5�   	   �� 5�   
   �� 5�   
   .+�5�   	   � $��0��6   
 5�   
   �� 5�      �� 5�      �� 5�      .+�5�   
   �� $��0��5�   
   $��60��5�   
   $��0,20,5,0q�5�   
   $��0q�5�   
   $	��Add��5�   
    c� OverflowMode$ AsNeeded=�5�   
    � ToolTip$	 Add��5�   
   ��5�   
   �� *
AddCommand+5�   
   �� 5�   
   $��1��5�   
   $��60��5�   
   $��0,20,5,0q�5�   
   $��0q�5�   
   $��Delete��5�   
   $ AsNeeded=�5�   
   $ Delete��5�   
   ��5�   
   �� *DeleteCommand+5�   
   �� 5�   
   $��2��5�   
   $��60��5�   
   $��0,20,5,0q�5�   
   $��0q�5�   
   $
��Edit��5�   
   $ AsNeeded=�5�   
   $
 Edit��5�   
   ��5�   
   �� *EditCommand+5�   
   5�   
   � 5�   	   $��1��6   .+�5�   
   �� $��1��5�   
   $	��130��5�   
   $��0,0,0,20q�5�   
   $��0q�5�   
   $��Change Password��5�   
   $ AsNeeded=�5�   
   $ Change Password��5�   
   ��5�   
   �� *ChangePasswordCommand+5�   
   5�   
   5�   	   5�      5�      � 5�      $��1��6   $��Stretch=�6   .+�5�      �� $
��Auto=�6   .��5�      �� $
��Auto=�6   .��5�   	   �� ��6   �� *List+ 6/   �� *SelectedItem+$ OneWayToSource=� �� View 5�   
   �� 5�      .P�5�      �� $��Id��6?    �� DisplayMemberBinding 6   �� *Id+6?   �� 5�      $��Username��6E    6   �� *
UserName+6E   �� 5�      $
��Role��6M    6   �� *Role.DisplayName+6M   �� 5�      $��Display name��6H    6   �� *DisplayName+6H   5�      5�   
   5�   	   5�      5�      5�      5�      5�      5�      