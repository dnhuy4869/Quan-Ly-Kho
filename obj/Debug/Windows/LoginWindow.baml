   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:QuanLyKho.WindowsQuanLyKho.Windows  5      ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5
      #    QuanLyKho.Windows.LoginWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      +localclr-namespace:QuanLyKho.Windows  5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      -uc$clr-namespace:QuanLyKho.UserControls  5
      -   5        $��loginWindow��5        � Title$  Login��5      $	��400��5      $	��300��5         MaterialDesignPaper#���   5        LoginWindowVM � DataContext# [ 5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterScreen=�5       � WindowStyle$
 None=�5      .��5      �� ���#673AB7$��1q�6    ._�5      � 
������� � RowDefinitions 5      �� 5      $
��Auto �6   �� 5       .+�5"      � $��0��6
   .+�5#      )   #QuanLyKho.UserControls.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 loginWindow��5$      � 5%      $��1��6
   .+�5&      #  MaterialDesignThemes.Wpf.Card  $	��300��5'      $	��150��5(      $��Center=�5)      $��Center=�5*      .��5+      � 
 � 	Resources
 5,       �� 
TargetType �� Property �� Value��%Y   '�       �� 5-   	   " �6   .�5.   
   ��  � ��$ 	10,0,10,0q�6#   5/   
   50   	    51      �� 52   	   �� 53   	   �� 54   	   .+�56      � $��0��6   .+�57   	   �� $��0,4,0,0q�58   	   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��59   	    % !MaterialDesignFloatingHintTextBox#��[ 5:   	   ��5;   	   �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5<   	   � 5=      $��1��6   .+�5>   	   G� -   5         G�Name$ FloatingPasswordBox��5?   	   $ Password��5@   	    ) %MaterialDesignFloatingHintPasswordBox#��[ 5A   	   .  (System.Windows.Interactivity.Interaction   Triggers 5B   
   /  )System.Windows.Interactivity.EventTrigger  5C         	EventName$ PasswordChanged��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5D      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6"   �� *PasswordChangedCommand+$ PropertyChanged=�$ TwoWay=�   CommandParameter 6   �� $	 FloatingPasswordBox��5E      5G   
   5H   	   � 5I      $��2��6    � ColumnDefinitions 5J   	   �� 5K   
   �� 5L   
   .+�5N   	   � $��0��6   .+�5O   
   �� -   5        $��btnLogin��5P   
   $	��110��5Q   
   $��Login��5T   
     MaterialDesignRaisedButton#��[ 5U   
    � ToolTip$ Login��5V   
   ��5R   
   �� *LoadMainWindowCommand+��5S   
   �� $	 btnLogin��5V   
   5W   
   � 5X   	   $��1��6   .+�5Y   
   �� -   5        $��btnExit��5Z   
   $	��110��5[   
   $
��Exit��5^   
   #��[ 5_   
   $
 Exit��5`   
   ��5\   
   �� *ExitLoginWindowCommand+��5]   
   �� $	 btnExit��5`   
   5a   
   5b   	   5c      5d      5e      5f      5g      5h      