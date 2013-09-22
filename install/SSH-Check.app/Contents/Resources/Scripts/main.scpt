FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.5.3
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a bitTorrent app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com and
	To reprogram what program you want to launch by default, 
	drop a program onto SSH-Check.
	
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
     �  � 
 	 N a m e :   S S H - C h e c k 
 	 V e r s i o n :   0 . 5 . 3 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 
 	 L i c e n s e :   G P L 
 	 P u r p o s e :   O n l y   s t a r t   a   b i t T o r r e n t   a p p   i f   t h e   s y s t e m   i s   s i g n e d   i n t o   a   S S H   s e r v i c e . 
 	 
 	 D e f a u l t   p r o g r a m   i s   F i r e f o x   a n d   s s h   s e r v i c e   t u n n e l r . c o m   a n d 
 	 T o   r e p r o g r a m   w h a t   p r o g r a m   y o u   w a n t   t o   l a u n c h   b y   d e f a u l t ,   
 	 d r o p   a   p r o g r a m   o n t o   S S H - C h e c k . 
 	 
 	 N O T E :   
 	 F o r   e v e n   m o r e   s e c u r i t y   t h i s   p r o g r a m   i s   b e s t   c o m b i n e d   w i t h   a   c r o n   j o b   t o   
 	 c h e c k   i f   S S H   c o n n e c t i o n   i s   s t i l l   a l i v e ,   o t h e r w i s e   k i l l   y o u r     A p p . 
 	 
      l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    ��  �� 0 programbackup programBackup   m     ! ! � " "  F i r e f o x  ' !don't remove to overt droplet bug     � # # B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g   $ % $ l     ��������  ��  ��   %  & ' & l      ( ) * ( j   	 �� +�� 0 	countdown   + m   	 
 , , � - -  6 )  time out in seconds    * � . . & t i m e   o u t   i n   s e c o n d s '  / 0 / j    �� 1�� 0 dnclocation DNCLocation 1 m     2 2 � 3 3 T ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 0  4 5 4 j    �� 6�� 0 dnca DNCA 6 m     7 7 � 8 8 x ~ / L i b r a r y / A u t o m a t o r / D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n 5  9 : 9 l      ; < = ; j    �� >�� *0 displaynoticecenter DisplayNoticeCenter > m    ��
�� boovfals < a [script switchings to true when running on OS X.8 or higher & if "DNCLocation & DNCA" exists    = � ? ? � s c r i p t   s w i t c h i n g s   t o   t r u e   w h e n   r u n n i n g   o n   O S   X . 8   o r   h i g h e r   &   i f   " D N C L o c a t i o n   &   D N C A "   e x i s t s :  @ A @ l     ��������  ��  ��   A  B C B i     D E D I     �� F��
�� .aevtodocnull  �    alis F o      ���� 0 these_items  ��   E k     W G G  H I H l      �� J K��   J�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     K � L L   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   I  M N M l     ��������  ��  ��   N  O P O r      Q R Q m      S S � T T   R o      ���� 0 prog   P  U V U r    	 W X W c     Y Z Y o    ���� 0 these_items   Z m    ��
�� 
TEXT X o      ���� 0 prog   V  [ \ [ l  
 
��������  ��  ��   \  ] ^ ] l  
 
�� _ `��   _ d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    ` � a a � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e ^  b c b r   
  d e d m   
  f f � g g  : e 1    ��
�� 
txdl c  h i h r     j k j n     l m l 4    �� n
�� 
citm n m    ����  m o    ���� 0 prog   k o      ���� 0 prog   i  o p o r     q r q m     s s � t t  . r 1    ��
�� 
txdl p  u v u r    # w x w n    ! y z y 4    !�� {
�� 
citm { m     ����  z o    ���� 0 prog   x o      ���� 0 prog   v  | } | s   $ , ~  ~ o   $ %���� 0 prog    o      ���� 0 program   }  � � � l  - -��������  ��  ��   �  � � � I   - 2�������� 0 
osxversion 
osXVersion��  ��   �  � � � I   3 G�� ����� 0 msg   �  � � � m   4 5 � � � � �  S S H - C h e c K �  � � � b   5 < � � � m   5 6 � � � � �  S e t t i n g   � o   6 ;���� 0 program   �  ��� � b   < C � � � m   < = � � � � � & N o w   s e t   t o   s t a r t u p   � o   = B���� 0 program  ��  ��   �  � � � I  H Q�� ���
�� .sysodelanull��� ��� nmbr � o   H M���� 0 	countdown  ��   �  ��� � I  R W������
�� .aevtoappnull  �   � ****��  ��  ��   C  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 resetprogram resetProgram��  ��   � k      � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  ��� � Z      � ����� � =     � � � o     ���� 0 program   � m     � � � � �   � s   
  � � � o   
 ���� 0 programbackup programBackup � o      ���� 0 program  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� �����  0 locationexists LocationExists �  ��� � o      ���� 0 location  ��  ��   � l     � � � � k      � �  � � � O      � � � Z     � ����� � I   	�� ���
�� .coredoexbool       obj  � m    ��
�� 
loca��   � L     � � m    ��
�� boovtrue��  ��   � m      � ��                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �  ��� � L     � � m    ��
�� boovfals��   � * $check to see if a file/folder exists    � � � � H c h e c k   t o   s e e   i f   a   f i l e / f o l d e r   e x i s t s �  � � � l     ��������  ��  ��   �  � � � i   ! $ � � � I      �������� 0 
osxversion 
osXVersion��  ��   � k     P � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  ��� � Z    P � ��� � � F    6 � � � F    # � � � =    � � � I    �� �����  0 locationexists LocationExists �  ��� � o    ���� 0 dnclocation DNCLocation��  ��   � m    ��
�� boovtrue � =   ! � � � I    �� �����  0 locationexists LocationExists �  ��� � o    ���� 0 dnca DNCA��  ��   � m     ��
�� boovtrue � @   & 4 � � � l  & 2 ����� � c   & 2 � � � l  & 0 ����� � n   & 0 � � � 4   - 0�� �
�� 
citm � m   . /����  � l  & - ����� � n   & - � � � 1   + -��
�� 
sisv � l  & + ����� � I  & +������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m   0 1��
�� 
nmbr��  ��   � m   2 3����  � k   9 C � �  � � � r   9 @ � � � m   9 :�
� boovtrue � o      �~�~ *0 displaynoticecenter DisplayNoticeCenter �  ��} � L   A C � � m   A B�|
�| boovtrue�}  ��   � k   F P � �  � � � r   F M � � � m   F G�{
�{ boovfals � o      �z�z *0 displaynoticecenter DisplayNoticeCenter �  ��y � L   N P � � m   N O�x
�x boovfals�y  ��   �  �  � l     �w�v�u�w  �v  �u     i   % ( I      �t�s�t 
0 notify    o      �r�r 	0 title   	 o      �q�q 0 subtitle  	 
�p
 o      �o�o 0 message  �p  �s   k     �  l      �n�n   	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display Notification.wflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' '~/.ssh-check/Display Notification.wflow'  
     �   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
   R e q u i r e s :   S E T U P   
   	 1 )   a u t o m a t i o n   w o r k f l o w   t o   b e   i n s t a l l e d   f r o m   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 / 
 	 2 )   C r e a t e   a   n e w   w o r k f l o w   i n   A u t o m a t o r   c o n t a i n i n g   o n l y   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 3 )   I n   t h e   v a r i a b l e s   s e c t i o n   a t   t h e   b o t t o m   o f   t h e   w o r k f l o w   c o n s t r u c t i o n   a r e a   i n   A u t o m a t o r ' s   w i n d o w ,   c r e a t e   t h r e e   v a r i a b l e s   n a m e d   t i t l e ,   s u b t i t l e ,   a n d   m e s s a g e . 
 	 4 )   G i v e   m e s s a g e   a   d e f a u l t   v a l u e   l i k e   " N o t i f i c a t i o n   s e n t . "   Y o u   c a n   l e a v e   t h e   d e f a u l t   v a l u e s   o t h e r   t w o   b l a n k . 
 	 5 )   D r a g   e a c h   v a r i a b l e   t o   i t s   c o r r e s p o n d i n g   f i e l d   i n   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 6 )   S a v e   t h e   w o r k f l o w   a s   D i s p l a y   N o t i f i c a t i o n . w f l o w .   A   g o o d   p l a c e   t o   s a v e   i t   i s   i n   ~ / . s s h - c h e c k   ( c r e a t e   t h e   f o l d e r   i f   n e c e s s a r y ) . 
 
 	 N o w   y o u   c a n   d i s p l a y   a   n o t i f i c a t i o n   f r o m   t h e   c o m m a n d   l i n e   u s i n g   t h e   f o l l o w i n g   c o m m a n d : 
 	 	 a u t o m a t o r   - D   t i t l e = ' T i t l e   t e x t '   - D   s u b t i t l e = ' S u b t i t l e   t e x t '   - D   m e s s a g e = ' M e s s a g e   t e x t '   ' ~ / . s s h - c h e c k / D i s p l a y   N o t i f i c a t i o n . w f l o w '     
    l     �m�l�k�m  �l  �k    Z    �j�i >     c      o     �h�h 	0 title   m    �g
�g 
ctxt m     �   r     b      m    	!! �""    - D   t i t l e =  n   	 #$# 1    �f
�f 
strq$ l  	 %�e�d% c   	 &'& o   	 
�c�c 	0 title  ' m   
 �b
�b 
ctxt�e  �d   o      �a�a 	0 title  �j  �i   ()( Z   +*+�`�_* >   ,-, c    ./. o    �^�^ 0 subtitle  / m    �]
�] 
ctxt- m    00 �11  + r    '232 b    %454 m    66 �77    - D   s u b t i t l e =5 n    $898 1   " $�\
�\ 
strq9 l   ":�[�Z: c    ";<; o     �Y�Y 0 subtitle  < m     !�X
�X 
ctxt�[  �Z  3 o      �W�W 0 subtitle  �`  �_  ) =>= Z  , A?@�V�U? >  , 1ABA c   , /CDC o   , -�T�T 0 message  D m   - .�S
�S 
ctxtB m   / 0EE �FF  @ r   4 =GHG b   4 ;IJI m   4 5KK �LL    - D   m e s s a g e =J n   5 :MNM 1   8 :�R
�R 
strqN l  5 8O�Q�PO c   5 8PQP o   5 6�O�O 0 message  Q m   6 7�N
�N 
ctxt�Q  �P  H o      �M�M 0 message  �V  �U  > R�LR Q   B �STUS I  E b�KV�J
�K .sysoexecTEXT���     TEXTV b   E ^WXW b   E \YZY b   E Z[\[ b   E T]^] b   E R_`_ b   E Paba b   E Ncdc b   E Lefe b   E Jghg b   E Hiji m   E Fkk �ll  a u t o m a t o rj 1   F G�I
�I 
spach o   H I�H�H 	0 title  f 1   J K�G
�G 
spacd o   L M�F�F 0 subtitle  b 1   N O�E
�E 
spac` o   P Q�D�D 0 message  ^ 1   R S�C
�C 
spac\ o   T Y�B�B 0 dnclocation DNCLocationZ 1   Z [�A
�A 
spacX m   \ ]mm �nn  2 > / d e v / n u l l�J  T R      �@�?�>
�@ .ascrerr ****      � ****�?  �>  U k   j �oo pqp r   j qrsr m   j ktt �uu 
 f a l s es o      �=�= *0 displaynoticecenter DisplayNoticeCenterq v�<v I   r ��;w�:�; 0 msg  w xyx m   s tzz �{{   S S H - C h e c k :   E r r o ry |}| m   t w~~ �  } ��9� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �8�8 0 dnclocation DNCLocation�9  �:  �<  �L   ��� l     �7�6�5�7  �6  �5  � ��� i   ) ,��� I      �4�3�2�4 0 isapprunning isAppRunning�3  �2  � k     *�� ��� Q     '���� O    ��� Z    ���1�0� =   ��� n    ��� 1    �/
�/ 
prun�  g    � m    �.
�. boovtrue� L    �� m    �-
�- boovtrue�1  �0  � 4    �,�
�, 
capp� o    
�+�+ 0 program  � R      �*�)�(
�* .ascrerr ****      � ****�)  �(  � L   % '�� m   % &�'
�' boovfals� ��&� L   ( *�� m   ( )�%
�% boovfals�&  � ��� l     �$�#�"�$  �#  �"  � ��� i   - 0��� I      �!� ��!  0 killrunningapp killRunningApp�   �  � Q     5���� O     ��� l   ���� Z    ����� =   ��� n    ��� 1    �
� 
prun�  g    � m    �
� boovtrue� I   ���
� .aevtquitnull��� ��� null�  �  �  �  � ' ! doesn't automatically launch app   � ��� B   d o e s n ' t   a u t o m a t i c a l l y   l a u n c h   a p p� 4    ��
� 
capp� o    
�� 0 program  � R      ���
� .ascrerr ****      � ****�  �  � I  ( 5���
� .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .�� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�  � ��� l     ����  �  �  � ��� i   1 4��� I      ���� 0 msg  � ��� o      �
�
 	0 title  � ��� o      �	�	 0 subtitle  � ��� o      �� 0 message  �  �  � Z     *����� =    ��� o     �� *0 displaynoticecenter DisplayNoticeCenter� m    �
� boovtrue� l  
 ���� I   
 ���� 
0 notify  � ��� o    �� 	0 title  � ��� o    � �  0 subtitle  � ���� o    ���� 0 message  ��  �  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�  � Q    *���� L     �� I   ����
�� .sysodlogaskr        TEXT� o    ���� 0 message  � �����
�� 
appr� o    ���� 	0 title  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   ( *����  � ��� l     ��������  ��  ��  � ��� i   5 8��� I      �������� 0 servicealive serviceAlive��  ��  � Q     <���� l   2���� k    2�� ��� r    ��� b    ��� b    
��� m    �� ��� @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o    	���� 0 service  � m   
 �� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ��� r    ��� n    ��� 4    ���
�� 
cobj� m    ���� � n    � � 2   ��
�� 
cpar  l   ���� I   ����
�� .sysoexecTEXT���     TEXT o    ���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  �  s      o    ���� 
0 sshcon   o      ���� 
0 tunnel   �� Z   ! 2	��
 E   ! ( o   ! "���� 
0 tunnel   o   " '���� 0 service  	 L   + - o   + ,���� 
0 tunnel  ��  
 L   0 2 m   0 1����  ��  � 0 *check for ssh connected to defined service   � � T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e� R      ������
�� .ascrerr ****      � ****��  ��  � L   : < m   : ;����  �  l     ��������  ��  ��    i   9 < I      �������� $0 sshchecksettings sshCheckSettings��  ��   l    � k     �  r      m      �    . s s h - c h e c k o      ���� 0 configfolder configFolder !"! r    	#$# b    %&% m    '' �((  ~ /& o    ���� 0 configfolder configFolder$ o      ���� 0 
configpath 
configPath" )*) l  
 
��������  ��  ��  * +,+ l  
 
��������  ��  ��  , -.- l   
 
��/0��  /?9	if LocationExists(DNCA) is false and ((text item 2 of (system version of (system info))) as number) � 8 then		msg(DNCA, "", "automator notification is not installed. Get a copy here: http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/")		return false	end if   0 �11r 	 i f   L o c a t i o n E x i s t s ( D N C A )   i s   f a l s e   a n d   ( ( t e x t   i t e m   2   o f   ( s y s t e m   v e r s i o n   o f   ( s y s t e m   i n f o ) ) )   a s   n u m b e r )  "e   8   t h e n  	 	 m s g ( D N C A ,   " " ,   " a u t o m a t o r   n o t i f i c a t i o n   i s   n o t   i n s t a l l e d .   G e t   a   c o p y   h e r e :   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 / " )  	 	 r e t u r n   f a l s e  	 e n d   i f . 232 l  
 
��������  ��  ��  3 454 Z   
 �67����6 G   
 #898 =  
 :;: I   
 ��<����  0 locationexists LocationExists< =��= o    ���� 0 
configpath 
configPath��  ��  ; m    ��
�� boovfals9 =   !>?> I    ��@����  0 locationexists LocationExists@ A��A o    ���� 0 dnclocation DNCLocation��  ��  ? m     ��
�� boovfals7 k   & �BB CDC l  & &��EF��  E ; 5msg(configPath & " does not exists", "test", "on no")   F �GG j m s g ( c o n f i g P a t h   &   "   d o e s   n o t   e x i s t s " ,   " t e s t " ,   " o n   n o " )D HIH r   & -JKJ b   & +LML b   & )NON m   & 'PP �QQ  m k d i r   - pO 1   ' (��
�� 
spacM o   ) *���� 0 
configpath 
configPathK o      ���� 0 cmdmakepath cmdMakePathI RSR r   . 5TUT b   . 3VWV b   . 1XYX m   . /ZZ �[[  c d  Y o   / 0���� 0 
configpath 
configPathW m   1 2\\ �]]  & &U o      ���� 
0 mypath  S ^_^ r   6 9`a` m   6 7bb �cc  d n . w o r k f l o w . z i pa o      ���� 0 
dnworkflow 
DNWorkflow_ ded r   : Cfgf b   : Ahih b   : ?jkj b   : =lml o   : ;���� 
0 mypath  m m   ; <nn �oo  c u r l   - s   - S   - o  k o   = >���� 0 
dnworkflow 
DNWorkflowi m   ? @pp �qq �   h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i pg o      ���� 0 cmdcurl cmdCurle rsr r   D Itut b   D Gvwv o   D E���� 
0 mypath  w m   E Fxx �yy 0 u n z i p   - u   d n . w o r k f l o w . z i pu o      ���� 0 cmdunzip cmdUnzips z{z r   J S|}| b   J Q~~ b   J O��� b   J M��� o   J K���� 
0 mypath  � m   K L�� ���   r m   - r f   _ _ M A C O S X /� 1   M N��
�� 
spac o   O P���� 0 
dnworkflow 
DNWorkflow} o      ���� 0 
cmdcleanup 
cmdCleanUp{ ��� l  T T��������  ��  ��  � ��� Q   T ����� k   W ��� ��� Z   W k������� =  W _��� I   W ]������� 0 locationexist LocationExist� ���� o   X Y���� 0 
configpath 
configPath��  ��  � m   ] ^��
�� boovfals� I  b g�����
�� .sysoexecTEXT���     TEXT� o   b c���� 0 makepath MakePath��  ��  ��  � ���� Z   l �������� F   l ���� =  l t��� I   l r�������  0 locationexists LocationExists� ���� o   m n���� 0 
configpath 
configPath��  ��  � m   r s��
�� boovtrue� =  w ���� I   w ��������  0 locationexists LocationExists� ���� o   x }���� 0 dnclocation DNCLocation��  ��  � m   � ���
�� boovfals� k   � ��� ��� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdcurl cmdCurl��  � ���� Z   � �������� =  � ���� I   � ��������  0 locationexists LocationExists� ���� b   � ���� b   � ���� o   � ����� 0 
configpath 
configPath� m   � ��� ���  /� o   � ����� 0 
dnworkflow 
DNWorkflow��  ��  � m   � ���
�� boovtrue� k   � ��� ��� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdunzip cmdUnzip��  � ��� I  � ��~��}
�~ .sysoexecTEXT���     TEXT� o   � ��|�| 0 
cmdcleanup 
cmdCleanUp�}  �  ��  ��  ��  ��  ��  ��  � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  � k   � ��� ��� I   � ��x��w�x 0 msg  � ��� m   � ��� ��� 8 F a i l e d   c r e a t i n g   c o n f i g   f i l e s� ��� m   � ��� ��� " a t   t h i s   l o c a t i o n :� ��v� o   � ��u�u 0 
configpath 
configPath�v  �w  � ��t� L   � ��� m   � ��s
�s boovfals�t  � ��� I   � ��r��q�r 0 msg  � ��� m   � ��� ��� ( C r e a t e d   c o n f i g   f i l e s� ��� m   � ��� ��� " a t   t h i s   l o c a t i o n :� ��p� o   � ��o�o 0 
configpath 
configPath�p  �q  � ��� Z   � ����n�m� =  � ���� I   � ��l��k�l  0 locationexists LocationExists� ��j� o   � ��i�i 0 dnclocation DNCLocation�j  �k  � m   � ��h
�h boovtrue� L   � ��� m   � ��g
�g boovtrue�n  �m  � ��f� L   � ��� m   � ��e
�e boovfals�f  ��  ��  5 ��� l  � ��d�c�b�d  �c  �b  � ��a� L   � ��� m   � ��`
�` boovtrue�a    return bool    ���  r e t u r n   b o o l ��� l     �_�^�]�_  �^  �]  � ��\� i   = @��� I     �[�Z�Y
�[ .aevtoappnull  �   � ****�Z  �Y  � k    H�� ��� I     �X�W�V�X $0 sshchecksettings sshCheckSettings�W  �V  � ��� I    �U�T�S�U 0 resetprogram resetProgram�T  �S  � ��� l   ���� I    �R�Q�P�R 0 
osxversion 
osXVersion�Q  �P  � j dcomment this line if you don't have the display-notification-center-alert-automator-action installed   � ��� � c o m m e n t   t h i s   l i n e   i f   y o u   d o n ' t   h a v e   t h e   d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n   i n s t a l l e d� ��� l   �O�N�M�O  �N  �M  � ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      �L�L 0 titlemsg  � ��� Z    � �K  F    ) =    I    �J�I�H�J 0 isapprunning isAppRunning�I  �H   m    �G
�G boovtrue =    ' I     %�F�E�D�F 0 servicealive serviceAlive�E  �D   m   % &�C�C   k   , O		 

 r   , 7 b   , 5 b   , 3 m   , - � , I t   i s   n o t   s a f e   t o   r u n   o   - 2�B�B 0 program   m   3 4 � H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " ! o      �A�A 0 message    I   8 F�@�?�@ 0 msg    o   9 :�>�> 0 titlemsg    b   : A m   : ; �    W a r n i n g   o   ; @�=�= 0 service   !�<! o   A B�;�; 0 message  �<  �?   "#" I   G L�:�9�8�:  0 killrunningapp killRunningApp�9  �8  # $�7$ l  M O%&'% L   M O�6�6  &  exit SSH-Check   ' �((  e x i t   S S H - C h e c k�7   )*) =  R Y+,+ I   R W�5�4�3�5 0 servicealive serviceAlive�4  �3  , m   W X�2�2  * -�1- k   \ �.. /0/ I   \ ~�01�/�0 0 msg  1 232 o   ] ^�.�. 0 titlemsg  3 454 b   ^ e676 m   ^ _88 �99  W a r n i n g   a b o u t  7 o   _ d�-�- 0 service  5 :�,: b   e z;<; b   e v=>= b   e p?@? b   e lABA m   e fCC �DD  D o n ' t   r u n  B o   f k�+�+ 0 program  @ m   l oEE �FF F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  > o   p u�*�* 0 service  < m   v yGG �HH  .�,  �/  0 I�)I l   �JKLJ L    ��(�(  K  exit SSH-Check   L �MM  e x i t   S S H - C h e c k�)  �1  �K  � NON l  � ��'�&�%�'  �&  �%  O PQP l  � ��$RS�$  R C =Ask if you want to run your program, kill it, or quietly stop   S �TT z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o pQ UVU r   � �WXW b   � �YZY m   � �[[ �\\ 4 A c t i v e   S S H   C o n n e c t i o n   t o :  Z I   � ��#�"�!�# 0 servicealive serviceAlive�"  �!  X o      � �  0 titlemsg  V ]^] Z   ��_`�a_ =  � �bcb I   � ����� 0 isapprunning isAppRunning�  �  c m   � ��
� boovtrue` l  �defd k   �gg hih r   � �jkj J   � �ll mnm m   � �oo �pp  R e s t a r tn qrq m   � �ss �tt  E x i t   S S H - C h e c kr u�u m   � �vv �ww  T u r n   O f f�  k o      �� 0 btnopt btnOpti xyx r   � �z{z b   � �|}| o   � ��� 0 program  } m   � �~~ � �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k{ o      �� 0 qmsg qMsgy ��� r   � ���� n   � ���� 1   � ��
� 
bhit� l  � ����� I  � ����
� .sysodlogaskr        TEXT� o   � ��� 0 qmsg qMsg� ���
� 
btns� o   � ��� 0 btnopt btnOpt� ���
� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� ���
� 
appr� o   � ��� 0 titlemsg  �  �  �  � o      �� 
0 choice  � ��
� Z   ������ =  � ���� o   � ��	�	 
0 choice  � m   � ��� ���  R e s t a r t� I   � �����  0 killrunningapp killRunningApp�  �  � ��� =  � ���� o   � ��� 
0 choice  � m   � ��� ���  T u r n   O f f� ��� k   � �� ��� I   � �����  0 killrunningapp killRunningApp�  �  � �� � l  � ���� L   � ����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�   �  � l ���� l ���� L  ����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l�
  e 0 * should we kill & restart the running app?   f ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�  a k  ��� ��� r  ��� b  ��� m  �� ���  S t a r t i n g  � o  ���� 0 program  � o      ���� 0 qmsg qMsg� ���� Z  ������� = ��� o  ���� *0 displaynoticecenter DisplayNoticeCenter� m  ��
�� boovtrue� k   L�� ��� I   @������� 0 msg  � ��� m  !$�� ���  S S H - C h e c k� ��� I  $)�������� 0 servicealive serviceAlive��  ��  � ���� b  )<��� b  )8��� b  )0��� o  ),���� 0 qmsg qMsg� m  ,/�� ���    i n  � l 07������ ^  07��� o  05���� 0 	countdown  � m  56���� ��  ��  � m  8;�� ���    s e c o n d s !��  ��  � ���� I AL�����
�� .sysodelanull��� ��� nmbr� l AH������ ^  AH��� o  AF���� 0 	countdown  � m  FG���� ��  ��  ��  ��  ��  � k  O��� ��� r  O[��� J  OW�� ��� m  OR�� ���  L a u n c h� ���� m  RU�� ���  S t o p��  � o      ���� 0 btnopt btnOpt� ���� Q  \����� k  _��� ��� r  _t��� b  _p��� b  _l��� b  _f��� o  _b���� 0 qmsg qMsg� m  be�� ���    i n  � o  fk���� 0 	countdown  � m  lo�� ���    s e c o n d s !� o      ���� 0 qmsg qMsg� ��� r  u�� � n  u� 1  ����
�� 
bhit l u����� I u���
�� .sysodlogaskr        TEXT o  ux���� 0 qmsg qMsg ��
�� 
btns o  {~���� 0 btnopt btnOpt ��	
�� 
dflt m  ��

 �  L a u n c h	 ��
�� 
appr o  ������ 0 titlemsg   ����
�� 
givu o  ������ 0 	countdown  ��  ��  ��    o      ���� 0 yesorno yesOrNo� �� Z  ������ = �� o  ������ 0 yesorno yesOrNo m  �� �  S t o p L  ������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L  ������  ��  ��  ^  l ����������  ��  ��    l ������   ! Prepare to launch a program    � 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m  r  ��  n  ��!"! 1  ����
�� 
psxp" l ��#����# m  ��$$ �%%  / A p p l i c a t i o n s /��  ��    o      ���� 0 apppath appPath &'& l ����()��  ( 0 *msg("info:", "Msg", "apppath: " & appPath)   ) �** T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )' +,+ r  ��-.- I ������/
�� .sysooffslong    ��� null��  / ��01
�� 
psof0 o  ������ 0 program  1 ��2��
�� 
psin2 o  ������ 0 apppath appPath��  . o      ���� 0 
nameoffset 
nameOffset, 343 l ����56��  5 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   6 �77 ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )4 898 r  ��:;: n  ��<=< 7 ����>?
�� 
ctxt> m  ������ ? l ��@����@ \  ��ABA o  ������ 0 
nameoffset 
nameOffsetB m  ������ ��  ��  = o  ������ 0 apppath appPath; o      ���� 0 
folderpath 
folderPath9 CDC l ����EF��  E 6 0msg("info:", "Msg", "folderpath: " & folderPath)   F �GG ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )D HIH Q  �FJKLJ l �*MNOM k  �*PP QRQ I ���S��
�� .sysoexecTEXT���     TEXTS b  �TUT b  �VWV b  �XYX o  ������ 0 
folderpath 
folderPathY o  ����� 0 program  W m  ZZ �[[  . a p pU m  \\ �]] N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  R ^_^ I ��`��
�� .sysodelanull��� ��� nmbr` m  ���� ��  _ a��a O *bcb I $)������
�� .miscactvnull��� ��� null��  ��  c 4  !��d
�� 
cappd o   ���� 0 program  ��  N ( "start program up in the background   O �ee D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dK R      ������
�� .ascrerr ****      � ****��  ��  L I  2F��f���� 0 msg  f ghg m  36ii �jj   S S H - C h e c k :   E r r o rh klk m  69mm �nn 
 E r r o rl o��o b  9Bpqp m  9<rr �ss N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  q o  <A���� 0 program  ��  ��  I t��t l GG��������  ��  ��  ��  �\       ��u   ! , 2 7��vwxyz{|}~���  u �������������������������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram��  0 locationexists LocationExists�� 0 
osxversion 
osXVersion�� 
0 notify  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  �� 0 servicealive serviceAlive�� $0 sshchecksettings sshCheckSettings
�� .aevtoappnull  �   � ****
�� boovfalsv �� E������~
�� .aevtodocnull  �    alis�� 0 these_items  �  � �}�|�} 0 these_items  �| 0 prog  �  S�{ f�z�y s�x � � ��w�v�u
�{ 
TEXT
�z 
txdl
�y 
citm�x 0 
osxversion 
osXVersion�w 0 msg  
�v .sysodelanull��� ��� nmbr
�u .aevtoappnull  �   � ****�~ X�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j+ O*��b  %�b  %m+ 
Ob  j O*j w �t ��s�r���q�t 0 resetprogram resetProgram�s  �r  �  �  ��q b  �  b  EQc  Y hx �p ��o�n���m�p  0 locationexists LocationExists�o �l��l �  �k�k 0 location  �n  � �j�j 0 location  �  ��i�h
�i 
loca
�h .coredoexbool       obj �m � �j  eY hUOfy �g ��f�e���d�g 0 
osxversion 
osXVersion�f  �e  �  � 	 ��c�b�a�`�_�^�]�\
�c 
txdl�b  0 locationexists LocationExists
�a 
bool
�` .sysosigtsirr   ��� null
�_ 
sisv
�^ 
citm
�] 
nmbr�\ �d Q�*�,FO*b  k+ e 	 *b  k+ e �&	 *j �,�l/�&��& eEc  OeY fEc  Ofz �[�Z�Y���X�[ 
0 notify  �Z �W��W �  �V�U�T�V 	0 title  �U 0 subtitle  �T 0 message  �Y  � �S�R�Q�S 	0 title  �R 0 subtitle  �Q 0 message  � �P!�O06EKk�Nm�M�L�Ktz~��J
�P 
ctxt
�O 
strq
�N 
spac
�M .sysoexecTEXT���     TEXT�L  �K  �J 0 msg  �X ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ { �I��H�G���F�I 0 isapprunning isAppRunning�H  �G  �  � �E�D�C�B
�E 
capp
�D 
prun�C  �B  �F + *�b  / *�,e  eY hUW 	X  fOf| �A��@�?���>�A  0 killrunningapp killRunningApp�@  �?  �  � �=�<�;�:�9���8
�= 
capp
�< 
prun
�; .aevtquitnull��� ��� null�:  �9  
�8 .sysoexecTEXT���     TEXT�> 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j } �7��6�5���4�7 0 msg  �6 �3��3 �  �2�1�0�2 	0 title  �1 0 subtitle  �0 0 message  �5  � �/�.�-�/ 	0 title  �. 0 subtitle  �- 0 message  � �,�+�*�)�(�, 
0 notify  
�+ 
appr
�* .sysodlogaskr        TEXT�)  �(  �4 +b  e  *���m+  Y  ��l W 	X  h~ �'��&�%���$�' 0 servicealive serviceAlive�&  �%  � �#�"�!�# 0 cmdssh cmdSSH�" 
0 sshcon  �! 
0 tunnel  � ��� ����
�  .sysoexecTEXT���     TEXT
� 
cpar
� 
cobj�  �  �$ = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j ������� $0 sshchecksettings sshCheckSettings�  �  � 	���������� 0 configfolder configFolder� 0 
configpath 
configPath� 0 cmdmakepath cmdMakePath� 
0 mypath  � 0 
dnworkflow 
DNWorkflow� 0 cmdcurl cmdCurl� 0 cmdunzip cmdUnzip� 0 
cmdcleanup 
cmdCleanUp� 0 makepath MakePath� '��P�Z\bnpx���
��	�������  0 locationexists LocationExists
� 
bool
� 
spac� 0 locationexist LocationExist
�
 .sysoexecTEXT���     TEXT�	  �  � 0 msg  � ��E�O�%E�O*�k+ f 
 *b  k+ f �& ���%�%E�O�%�%E�O�E�O��%�%�%E�O��%E�O��%�%�%E�O ^*�k+ f  
�j Y hO*�k+ e 	 *b  k+ f �& )�j O*��%�%k+ e  �j O�j Y hY hW X  *a a �m+ OfO*a a �m+ O*b  k+ e  eY hOfY hOe� �������
� .aevtoappnull  �   � ****�  �  �  � E��� ���������������8CEG[osv��~�����������������������������
����������$������������������Z\������imr� $0 sshchecksettings sshCheckSettings� 0 resetprogram resetProgram�  0 
osxversion 
osXVersion�� 0 titlemsg  �� 0 isapprunning isAppRunning�� 0 servicealive serviceAlive
�� 
bool�� 0 message  �� 0 msg  ��  0 killrunningapp killRunningApp�� 0 btnopt btnOpt�� 0 qmsg qMsg
�� 
btns
�� 
dflt
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 
0 choice  
�� .sysodelanull��� ��� nmbr
�� 
givu�� �� 0 yesorno yesOrNo��  ��  
�� 
psxp�� 0 apppath appPath
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 0 
nameoffset 
nameOffset
�� 
ctxt�� 0 
folderpath 
folderPath
�� .sysoexecTEXT���     TEXT
�� 
capp
�� .miscactvnull��� ��� null�I*j+  O*j+ O*j+ O�E�O*j+ e 	 *j+ j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 5*j+ j  **��b   %�b  %a %b   %a %m+ OhY hOa *j+ %E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a ,E`  O_  a !  
*j+ Y _  a "  *j+ OhY hY �a #b  %E` Ob  e  1*a $*j+ _ a %%b  l!%a &%m+ Ob  l!j 'Y la (a )lvE` O U_ a *%b  %a +%E` O_ a _ a a ,a �a -b  a . a ,E` /O_ /a 0  hY hW 	X 1 2hOa 3a 4,E` 5O*a 6b  a 7_ 5a 8 9E` :O_ 5[a ;\[Zk\Z_ :k2E` <O 4_ <b  %a =%a >%j ?Okj 'O*a @b  / *j AUW X 1 2*a Ba Ca Db  %m+ OPascr  ��ޭ