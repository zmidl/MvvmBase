   M S B A M L   `   `   `  ����C  ?MvvmBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:MvvmBase.ViewMvvmBase.View  5   	   7 clr-namespace:MvvmBase.ViewModelMvvmBase.ViewModel  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5	   	   O,clr-namespace:MvvmBase.ViewModel.EnumerationMvvmBase.ViewModel.Enumeration  5
   	   K*clr-namespace:MvvmBase.ViewModel.ConverterMvvmBase.ViewModel.Converter  5   	       MvvmBase.View.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:MvvmBase.View     5   	   /vm clr-namespace:MvvmBase.ViewModel     5   	   6sys&clr-namespace:System;assembly=mscorlib     5	   	   ;en,clr-namespace:MvvmBase.ViewModel.Enumeration     5
   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5   	   3cv*clr-namespace:MvvmBase.ViewModel.Converter  5   	   -   5          �Name$  Instance��5   	    � Title$ 
MainWindow��5   	   $	��350��6   $	��525��6)    J� InputBindings 5      �� 5   
    �� Gesture$ Ctrl+NumPad1��62    �� Command 6   �� *
KeyInput+6L    � DataContext 5      ,   &MvvmBase.ViewModel.MainWindowViewModel  5   
    � 	Resources 5         GetEnumValues_Number S� 
ObjectType  System.Enum S� 
MethodName	 S� MethodParameters
 M� TypeName  	GetResult2   ,MvvmBase.ViewModel.Converter.Count2IsChecked  Count2IsChecked  Button_Content �� Orientation 
 Cancel �� Stretch  Command��%�  &	        &	 f     &	 �     &	 �     7  S� 5   
   "  6:   $ 	GetValues��6Z   	 5      M� 5      $
 	en:Number��6   5      S� 5   
   "  6/   $	 Add��6]   	 5      ��5       3��6   ��5!      2��6   5#        5$   
   6   �� 5%   
   $ 
Horizontal=�6,   .+�5&      F� 8��  
�������$ Uniform=�6?   �� 5'      #���  6   $��6,2,0,0q�69   $��13(�6J   5(      5)      .��5*      �� .+�5+   
   ��   	TextBlock#��[ 6   $��20(�6P    �� Left$ 20��6^   
 �� Top$	 100��6o     	GrayColor#��[ 6�   ��67   �� *	Message+.  (System.Windows.Interactivity.Interaction   Triggers 5,      /  )System.Windows.Interactivity.EventTrigger  5-         	EventName$ MouseUp��6"   .  (System.Windows.Interactivity.TriggerBase   Actions. 5.      6  0System.Windows.Interactivity.InvokeCommandAction     CommandParameter$ MouseUp��6I      Command 6-   �� *	MouseUp+6I   5/      51      �� 52   
    
 Button#��[ 6    	 Chinese#��� 	 61   $��zh-CN��6x   $	��100��6�   $��30��6�   $	 180��6�   $ 95��6�   ��6U   �� *ChangeLanguage+6�   �� 53   
   #��[ 6   #��[ 6P   $��20(�6x   $ 20��6�   $	 150��6�   ��67   �� *	Message+ 54        55      $ 	MouseDown��6!   . 56      >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ 	MouseDown��6*      TargetObject 6A   �� 57      59      �� 5:   
   #��[ 6    
 English#��� 
 61   $��en-US��6x   $	��100��6�   $��30��6�   $	 180��6�   $	 150��6�   ��6U   �� *ChangeLanguage+6�   �� 5;   
     TextBox#��[ 6   $��20(�6�   $
��Bold"�6�   $	��120��6�   $��30��6�   $ 20��6�   $ 35��6�   ��63   �� *Text+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . 6�   �� 5<   
   #��[ 6   #��[ 6P   $	��100��6z   $��30��6�   $	 180��6�   $ 32��6�   ��61   �� *
ChangeText+6�   �� 5=   
     ElipseCheckBox#��[ 6   $��35��6�   $��35��6�   $	 205��6�   $ 20��6�    d� 	IsChecked 6;   �� *Count+ �� 	Converter# [ 6�   �� 5>   
   -   5         ��Name$ TextBlock_Count��5>      #��[ 6-   $��20(�6g   $
��Bold"�6u   $��30��6�   $��30��6�   $ 80��6�   $	 210��6�   ��6P   �� *Count+6�   �� 5?   
   #��[ 6     ConvertTest#���  6S   $	��100��6{   $��30��6�   $	 180��6�   $	 205��6�   ��61   �� *ConverterTest+6�   �� 5@   
   #��[ 6   $ 20��6�   $	 264��6�   ��67   �� *Text+$ PropertyChanged=� �� StringFormat$ {0}℃��6�   �� 5A   
   #��[ 6     
SwitchView#���  6P   $	��100��6w   $��30��6�   $	 180��6�   $	 259��6�   ��61   �� *
SwitchView+6�   �� 5B   
     ComboBox#��[ 6   $	��120��6{   $��30��6�   $	 320��6�   $ 95��6�   ��65   ��  �� Source# [  6�   �� 5C   
   #��[ 6   $	 320��6j   $ 37��6|   ��67   �� # [ 6|   5D      5E      