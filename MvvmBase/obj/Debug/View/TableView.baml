   M S B A M L   `   `   `  ����C  ?MvvmBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:MvvmBase.ViewMvvmBase.View  5      7 clr-namespace:MvvmBase.ViewModelMvvmBase.ViewModel  5          MvvmBase.View.TableView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:MvvmBase.View     5      /vm clr-namespace:MvvmBase.ViewModel     5        � DataContext  5      '   !MvvmBase.ViewModel.TableViewModel  5   
    � 	Resources 5         TreeViewItem �� ItemsSource  	BlueColor �� ItemTemplate  ElipseCheckBox d� 	IsChecked��%$  &	        7  7  �� 5   
    69   �� *Items+.R�5      ]� ��. $��Center=�6-   $��5,0,0,0q�6H   .+�5      �� $��5,0,0,0q�6   $
��Left=�6-   $��Center=�6C   $
��Bold"�6^   8��  ��6�   �� *Name+5       5      �� 5      .R�5      ]� ��. $��Center=�65   $��10,0,0,0q�6P   .+�5      �� $
��Left=�6#   8�� $��12,3,3,3q�6a    6s   �� *	IsChecked+�� 5      $
��Left=�6$   
�������$��Center=�6N   $��5,0,0,0q�6   ��6i   �� *Name+6   5      5      5      5      .��5      ��  �� Orientation$ Vertical=�6   .+�5   
   R�   TreeView#��[ 62   #��[  6T   $	��180��6�   $	��250��6�   
 �� Top$ 86��6�    �� Left$ 30��6�   ��6   �� *Groups+6�   �� 5   
    
 Button#��[ 6   $	��150��6K   $��30��6W   ��61   �� *Leave+6W   5       5!      