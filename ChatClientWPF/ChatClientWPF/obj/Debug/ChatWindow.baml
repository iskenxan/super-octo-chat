   M S B A M L   `   `   `  ����a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  5   	    ChatClientWPF   ChatClientWPF.Chat   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ]ThemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     5   	   -   5          � Title$
  Chat��5   	   $	��600��6   $	��525��6#   .��5      � #��� ��6   .+�5   
   �� -   5         ��Name$ ChatListBox��5      $
��Left=�6'   $	��458��6B   $��	10,10,0,0q�6O   $	��Top=�6b   $	��352��6z   #��� ��6�   #��� ��6�   #��� ��6  $��15(�6^  �� 5   
   -   5        $ UsersListBox��5      $
��Left=�6(   $	��458��6C   $��
382,10,0,0q�6P   $	��Top=�6d   $	��125��6|   #��� ��6�   #��� ��6�   #��� ��6  $��15(�6`  �� 5	   
   -   5         ��Name$ 
SendButton��5	      $
��Send��6%   $
��Left=�64   $��409,519,0,0q�6O   $	��Top=�6d   $��86��6|   $��29��6�   #��� ��6�   #��� ��6�    J� IsHitTestVisible . ��.     ButtonStyle1#���   6L   �� 	IsDefault . $��15(�6�  $
��Bold"�6�   � 	Resources 5
        ButtonFocusVisual �� Property �� Value J� SnapsToDevicePixels	 �� StrokeDashArray  ButtonNormalBackground
 �� EndPoint �� 
StartPoint � Color � Offset  ButtonNormalBorder �� Color �� 
TargetType �� 
TargetType+   %Microsoft.Windows.Themes.ButtonChrome  Name   BorderBrush   
Background J� IsMouseOver   RenderMouseOver   RenderPressed �� IsDefaulted   RenderDefaulted �� Triggers P� Property P� Value �� 
TargetName��%  &	       &	 �     &	 �    &	  �    7  7  7  �� 5      .�5      ��  � �� 5      �� 5      .R�5   "   �� $��2q�6,    . #��� ��6R   $��1��6�   $		 1 2R�6�   5      5      5      �� 5      $	
 0,1&�6E   $	 0,0&�6T   .��5      � $ #F3F3F3��6#   $ 0Q�63   � 5      $ #EBEBEB��6#   $	 0.5Q�63   � 5      $ #DDDDDD��6#   $	 0.5Q�63   � 5      $ #CDCDCD��6#   $ 1Q�63   5      �� 5      $ 	#FF707070��6=   �� 5      " ��6-   .�5      ��  �@�FocusVisualStyle8   69   �� 5       � ��8  63   �� 5       � ��8  64   �� 5       � ��$ 1q�68   �� 5        � ��# � ��63   �� 5!       � ��$ Center=�6C   �� 5"       � ��$ Center=�6A   �� 5#       � ��$ 1q�60   �� 5$       � �� 5%      �� 5&      " ��6.   .R�5'   "     $ Chrome��66   # z��6F   # z��6r   # z 6�   # z��6�   # z 6�    . ._�5(   &   �� #��z��67   #��z��6z   ��. # z 6�   #��z��6�   5)   #    5*   "   P� 5+   &    �@��	IsDefault .  . �5,   *   �� $ Chrome��6F    � |� . 6Z   5-   '   P� 5.   &    � {� .  . �5/   *   ��  � �� �#ADADAD6G   50   '   52      54      55      56      57      �� 58   
   -   5         ��Name$ MessageListBox��58      $
��Left=�6*   $��29��6E   $��
10,519,0,0q�6Q    �� TextWrapping$
 Wrap=�6e   $	��Top=�6y   $	��388��6�   #��� ��6�   $��15(�6�   5:      5;      