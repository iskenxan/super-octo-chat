   M S B A M L   `   `   `  ����a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  5   	   H DChatClientWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ChatClientWPFChatClientWPF 5         ChatClientWPF.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ]ThemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     5   	   -localclr-namespace:ChatClientWPF     5        � Title$  
MainWindow��5   	   $��354.667��6   $	��525��6-    � 	Resources 5       ChatClientWPF.User   UserInstance   UserName  ErrorTemplateStyle �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value	 �� TextAlignment
 J� RenderTransformOrigin��%�  &	        &	        5   
   $  ��6*   �� 5	   
   " ��6+    5
      P� 5       �@=�HasError . . �5      ��  �@=�ErrorTemplate 5      �� 5      ErrorTemplate��.R�5   &   � .+�5   *   �� 6F   �� 5   *   $#��Username cannot be left empty��64   $
��Wrap=�6Z   $��Bottom=�6n   $��Center=�6�   $��30��6�   $	 Center=�6�   $��16(�6�   
�������$
 0.511,0.463&�6�   $��90,60,165,156q�6  5   '   5      5      5      5      5      .��5      � #��� ��6   .+�5   
   �� $��Your User Name��6   $
��Left=�6)   $��50��6D   $��	50,10,0,0q�6P   $	��417��6c   $��33.333(�6o   $$��VINTAGE COLLEGE DEPT_DEMO_worn)�6�   $	��Top=�6�   $��5q�6�   #��� ��6�   #��� ��6&  #��� ��6p  $
��Bold"�6�  $��Center=�6�  �� 5   
   -   5         ��Name$ UserNameTextBox��5      $
��Left=�6+   $��52��6F   $��	50,73,0,0q�6R   #��[ 6e    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��417��6�   $��29.333(�6�    �� MaxLines$ 1��6�   #��� ��6�   #��� ��65  #��� ��6~  $��5q�6�  .��6�  ��5      �� 5       �� Path$ UserName�6    �� Source# [  6*    �� UpdateSourceTrigger$ Explicit=�6Q    �� ValidatesOnDataErrors .  �� ValidationRules 5      5  /System.Windows.Controls.ExceptionValidationRule  5       64   5"      .��5#      5$      �� 5%   
   -   5        $��LOGIN��5%      $
��Left=�6!   $��54��6<   $��
50,192,0,0q�6H   $	��Top=�6\   $	��417��6t   #��� ��6�   #��� ��6�   #��� ��6  $��5q�6]  $��26.667(�6q  $
��Bold"�6�    ButtonStyle1#���  6�   5&        ButtonFocusVisual J� SnapsToDevicePixels �� StrokeDashArray  ButtonNormalBackground �� EndPoint �� 
StartPoint � Color � Offset  ButtonNormalBorder �� Color �� 
TargetType+   %Microsoft.Windows.Themes.ButtonChrome  Name   BorderBrush   
Background J� IsMouseOver   RenderMouseOver    RenderPressed! �� IsDefaulted"   RenderDefaulted# �� Triggers$ �� 
TargetName��%X  &	       &	 �     &	 �    &	 �    7  7  7  �� 5'      .�5(      ��  � �� 5)      �� 5*   	   .R�5+   
   �� $��2q�6    . #��� ��6:   $��1��6�   $	 1 2R�6�   5,   
   5.      5/      �� 50      $	 0,1&�69   $	 0,0&�6H   .��51      � $ #F3F3F3��6   $ 0Q�6$   � 52      $ #EBEBEB��6   $	 0.5Q�6$   � 53      $ #DDDDDD��6   $	 0.5Q�6$   � 54      $ #CDCDCD��6   $ 1Q�6$   55      �� 56      $ 	#FF707070��61   �� 57      " ��6!   .�58      ��  �@�FocusVisualStyle8   6*   �� 59       � ��8  6$   �� 5:       � ��8  6%   �� 5;       � ��$ 1q�6)   �� 5<       � ��# � ��6$   �� 5=       � ��$ Center=�64   �� 5>       � ��$ Center=�62   �� 5?       � ��$ 1q�6!   �� 5@       � �� 5A      �� 5B   	   " ��6   .R�5C   
     $ Chrome��6   # z��6.   # z��6Z   # z 6�   #  z��6�   #" z! 6�    . ._�5D      �� #��z��6   #��z��6_   ��. # z 6�   #��z��6�   5E      # 5F   
   P� 5G       �@J�IsKeyboardFocused . 60   P� 5H       �@d�	IsChecked$
 trueY�65   . �5I      �� $$ Chrome��6,    �@ RenderPressed . 6@   5J      P� 5K       � {� .  . �5L      ��  � �� �#ADADAD6)   5M      5O   
   5Q      5R      5S      5T      � 5U      -   5        % �Name$% LoginProgress��5U      $
��Left=�6'   $��26��6B   $��
50,275,0,0q�6N   $	��Top=�6b   $	��417��6z   & � IsIndeterminate& . #��� ��6�   #��� ��6�   $y�Hidden=�6:  5V      5W      