FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.5.4
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
 	 V e r s i o n :   0 . 5 . 4 
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
�� .aevtoappnull  �   � ****��  ��  ��   C  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 resetprogram resetProgram��  ��   � k     " � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  � � � l     ��������  ��  ��   �  � � � Z      � ����� � =     � � � o     ���� 0 program   � m     � � � � �   � s   
  � � � o   
 ���� 0 programbackup programBackup � o      ���� 0 program  ��  ��   �  ��� � r    " � � � m    ��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 
fileexists 
FileExists �  ��� � o      ���� 0 thefile theFile��  ��   � k      � �  � � � O      � � � Z     � ����� � I   �� ���
�� .coredoexbool       obj  � 4    �� �
�� 
file � o    ���� 0 thefile theFile��   � L     � � m    ��
�� boovtrue��  ��   � m      � ��                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �  ��� � L     � � m    ��
�� boovfals��   �  � � � l     ��������  ��  ��   �  � � � i   ! $ � � � I      �� ����� 0 folderexists FolderExists �  ��� � o      ���� 0 	thefolder 	theFolder��  ��   � k     & � �  � � � l     �� � ���   � > 8msg("folderexists - checking this place", "", theFolder)    � � � � p m s g ( " f o l d e r e x i s t s   -   c h e c k i n g   t h i s   p l a c e " ,   " " ,   t h e F o l d e r ) �  � � � Q     # � � � � O     � � � Z     � ����� � I   �� ���
�� .coredoexbool       obj  � 4    �� �
�� 
cfol � o   	 
���� 0 	thefolder 	theFolder��   � L     � � m    ��
�� boovtrue��  ��   � m     � ��                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L   ! # � � m   ! "��
�� boovfals �  ��� � L   $ & � � m   $ %��
�� boovfals��   �  � � � l     ��������  ��  ��   �  � � � i   % ( � � � I      �������� 0 
osxversion 
osXVersion��  ��   � k     J � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  ��� � Z    J � �� � � F    6 � � � F    # � � � =    � � � I    �~ ��}�~ 0 
fileexists 
FileExists �  �|  o    �{�{ 0 dnclocation DNCLocation�|  �}   � m    �z
�z boovtrue � =   ! I    �y�x�y 0 
fileexists 
FileExists �w o    �v�v 0 dnca DNCA�w  �x   m     �u
�u boovtrue � @   & 4 l  & 2�t�s c   & 2	 l  & 0
�r�q
 n   & 0 4   - 0�p
�p 
citm m   . /�o�o  l  & -�n�m n   & - 1   + -�l
�l 
sisv l  & +�k�j I  & +�i�h�g
�i .sysosigtsirr   ��� null�h  �g  �k  �j  �n  �m  �r  �q  	 m   0 1�f
�f 
nmbr�t  �s   m   2 3�e�e  � r   9 @ m   9 :�d
�d boovtrue o      �c�c *0 displaynoticecenter DisplayNoticeCenter�   � r   C J m   C D�b
�b boovfals o      �a�a *0 displaynoticecenter DisplayNoticeCenter��   �  l     �`�_�^�`  �_  �^    i   ) , I      �]�\�] 
0 notify    o      �[�[ 	0 title     o      �Z�Z 0 subtitle    !�Y! o      �X�X 0 message  �Y  �\   k     �"" #$# l      �W%&�W  % 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display Notification.wflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' '~/.ssh-check/Display Notification.wflow'  
    & �''   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  $ ()( l     �V�U�T�V  �U  �T  ) *+* Z    ,-�S�R, >    ./. c     010 o     �Q�Q 	0 title  1 m    �P
�P 
ctxt/ m    22 �33  - r    454 b    676 m    	88 �99    - D   t i t l e =7 n   	 :;: 1    �O
�O 
strq; l  	 <�N�M< c   	 =>= o   	 
�L�L 	0 title  > m   
 �K
�K 
ctxt�N  �M  5 o      �J�J 	0 title  �S  �R  + ?@? Z   +AB�I�HA >   CDC c    EFE o    �G�G 0 subtitle  F m    �F
�F 
ctxtD m    GG �HH  B r    'IJI b    %KLK m    MM �NN    - D   s u b t i t l e =L n    $OPO 1   " $�E
�E 
strqP l   "Q�D�CQ c    "RSR o     �B�B 0 subtitle  S m     !�A
�A 
ctxt�D  �C  J o      �@�@ 0 subtitle  �I  �H  @ TUT Z  , AVW�?�>V >  , 1XYX c   , /Z[Z o   , -�=�= 0 message  [ m   - .�<
�< 
ctxtY m   / 0\\ �]]  W r   4 =^_^ b   4 ;`a` m   4 5bb �cc    - D   m e s s a g e =a n   5 :ded 1   8 :�;
�; 
strqe l  5 8f�:�9f c   5 8ghg o   5 6�8�8 0 message  h m   6 7�7
�7 
ctxt�:  �9  _ o      �6�6 0 message  �?  �>  U i�5i Q   B �jklj I  E b�4m�3
�4 .sysoexecTEXT���     TEXTm b   E ^non b   E \pqp b   E Zrsr b   E Ttut b   E Rvwv b   E Pxyx b   E Nz{z b   E L|}| b   E J~~ b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�2
�2 
spac o   H I�1�1 	0 title  } 1   J K�0
�0 
spac{ o   L M�/�/ 0 subtitle  y 1   N O�.
�. 
spacw o   P Q�-�- 0 message  u 1   R S�,
�, 
spacs o   T Y�+�+ 0 dnclocation DNCLocationq 1   Z [�*
�* 
spaco m   \ ]�� ���  2 > / d e v / n u l l�3  k R      �)�(�'
�) .ascrerr ****      � ****�(  �'  l k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �&�& *0 displaynoticecenter DisplayNoticeCenter� ��%� I   r ��$��#�$ 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��"� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �!�! 0 dnclocation DNCLocation�"  �#  �%  �5   ��� l     � ���   �  �  � ��� i   - 0��� I      ���� 0 isapprunning isAppRunning�  �  � k     *�� ��� Q     '���� O    ��� Z    ����� =   ��� n    ��� 1    �
� 
prun�  g    � m    �
� boovtrue� L    �� m    �
� boovtrue�  �  � 4    ��
� 
capp� o    
�� 0 program  � R      ���
� .ascrerr ****      � ****�  �  � L   % '�� m   % &�
� boovfals� ��� L   ( *�� m   ( )�
� boovfals�  � ��� l     ����  �  �  � ��� i   1 4��� I      �
�	��
  0 killrunningapp killRunningApp�	  �  � Q     5���� O     ��� l   ���� Z    ����� =   ��� n    ��� 1    �
� 
prun�  g    � m    �
� boovtrue� I   ���
� .aevtquitnull��� ��� null�  �  �  �  � ' ! doesn't automatically launch app   � ��� B   d o e s n ' t   a u t o m a t i c a l l y   l a u n c h   a p p� 4    � �
�  
capp� o    
���� 0 program  � R      ������
�� .ascrerr ****      � ****��  ��  � I  ( 5�����
�� .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .���� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  � ��� l     ��������  ��  ��  � ��� i   5 8��� I      ������� 0 msg  � ��� o      ���� 	0 title  � ��� o      ���� 0 subtitle  � ���� o      ���� 0 message  ��  ��  � Z     *������ =    ��� o     ���� *0 displaynoticecenter DisplayNoticeCenter� m    ��
�� boovtrue� l  
 ���� I   
 ������� 
0 notify  � ��� o    ���� 	0 title  � ��� o    ���� 0 subtitle  � ���� o    ���� 0 message  ��  ��  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r��  � Q    *���� L     �� I   ����
�� .sysodlogaskr        TEXT� o    ���� 0 message  � �����
�� 
appr� o    ���� 	0 title  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   ( *����  � ��� l     ��������  ��  ��  � ��� i   9 <��� I      �������� 0 servicealive serviceAlive��  ��  � Q     <���� l   2� � k    2  r     b     b    
	
	 m     � @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *
 o    	���� 0 service   m   
  � ( '   |   a w k   ' { p r i n t   $ 8 } ' o      ���� 0 cmdssh cmdSSH  r     n     4    ��
�� 
cobj m    ����  n     2   ��
�� 
cpar l   ���� I   ����
�� .sysoexecTEXT���     TEXT o    ���� 0 cmdssh cmdSSH��  ��  ��   o      ���� 
0 sshcon    s      o    ���� 
0 sshcon   o      ���� 
0 tunnel   �� Z   ! 2 ��! E   ! ("#" o   ! "���� 
0 tunnel  # o   " '���� 0 service    L   + -$$ o   + ,���� 
0 tunnel  ��  ! L   0 2%% m   0 1����  ��    0 *check for ssh connected to defined service    �&& T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e� R      ������
�� .ascrerr ****      � ****��  ��  � L   : <'' m   : ;����  � ()( l     ��������  ��  ��  ) *+* i   = @,-, I      �������� $0 sshchecksettings sshCheckSettings��  ��  - l   \./0. k    \11 232 r     454 m     66 �77  . s s h - c h e c k5 o      ���� 0 configfolder configFolder3 898 r    	:;: b    <=< m    >> �??  ~ /= o    ���� 0 configfolder configFolder; o      ���� 0 
configpath 
configPath9 @A@ l  
 
��������  ��  ��  A BCB Z   
 ?DE����D F   
 )FGF =  
 HIH I   
 ��J���� 0 
fileexists 
FileExistsJ K��K o    ���� 0 dnca DNCA��  ��  I m    ��
�� boovfalsG @    'LML l   %N����N c    %OPO l   #Q����Q n    #RSR 4     #��T
�� 
citmT m   ! "���� S l    U����U n     VWV 1     ��
�� 
sisvW l   X����X I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��  P m   # $��
�� 
nmbr��  ��  M m   % &���� E k   , ;YY Z[Z I   , 8��\���� 0 msg  \ ]^] o   - 2���� 0 dnca DNCA^ _`_ m   2 3aa �bb  ` c��c m   3 4dd �ee@ a u t o m a t o r   n o t i f i c a t i o n   i s   n o t   i n s t a l l e d .   G e t   a   c o p y   h e r e :   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 /��  ��  [ f��f L   9 ;gg m   9 :��
�� boovfals��  ��  ��  C hih l  @ @��������  ��  ��  i jkj Z   @Ylm����l G   @ Ynon =  @ Hpqp I   @ F��r���� 0 folderexists FolderExistsr s��s o   A B���� 0 
configpath 
configPath��  ��  q m   F G��
�� boovfalso =  K Wtut I   K U��v���� 0 
fileexists 
FileExistsv w��w o   L Q���� 0 dnclocation DNCLocation��  ��  u m   U V��
�� boovfalsm k   \Uxx yzy r   \ c{|{ b   \ a}~} b   \ _� m   \ ]�� ���  m k d i r   - p� 1   ] ^��
�� 
spac~ o   _ `���� 0 
configpath 
configPath| o      ���� 0 cmdmakepath cmdMakePathz ��� r   d m��� b   d k��� b   d g��� m   d e�� ���  c d  � o   e f���� 0 
configpath 
configPath� m   g j�� ���    & &  � o      ���� 
0 mypath  � ��� r   n s��� m   n q�� ���  d n . w o r k f l o w . z i p� o      ���� 0 
dnworkflow 
DNWorkflow� ��� l  t t������  � � � culr command: curl -L -o foobar.zip "https://github.com/xeoron/SSH-Check/blob/master/install/Display_Notification.workflow.zip?raw=true"   � ���   c u l r   c o m m a n d :   c u r l   - L   - o   f o o b a r . z i p   " h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u e "� ��� r   t ���� b   t ���� b   t }��� b   t {��� b   t y��� o   t u���� 
0 mypath  � m   u x�� ���  c u r l   - L   - o  � o   y z���� 0 
dnworkflow 
DNWorkflow� 1   { |�
� 
spac� n   } ���� 1   � ��~
�~ 
strq� m   } ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u e� o      �}�} 0 cmdcurl cmdCurl� ��� r   � ���� b   � ���� o   � ��|�| 
0 mypath  � m   � ��� ��� 0 u n z i p   - u   d n . w o r k f l o w . z i p� o      �{�{ 0 cmdunzip cmdUnzip� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��z�z 
0 mypath  � m   � ��� ���   r m   - r f   _ _ M A C O S X /� 1   � ��y
�y 
spac� o   � ��x�x 0 
dnworkflow 
DNWorkflow� o      �w�w 0 
cmdcleanup 
cmdCleanUp� ��� l  � ��v���v  � * $msg("cmdmakepath:", "", cmdMakePath)   � ��� H m s g ( " c m d m a k e p a t h : " ,   " " ,   c m d M a k e P a t h )� ��� l  � ��u���u  � " msg("cmdCurl:", "", cmdCurl)   � ��� 8 m s g ( " c m d C u r l : " ,   " " ,   c m d C u r l )� ��� l  � ��t���t  � # msg("cmdUnzip", "", cmdUnzip)   � ��� : m s g ( " c m d U n z i p " ,   " " ,   c m d U n z i p )� ��� l  � ��s���s  � ' !msg("cmdCleanup", "", cmdCleanUp)   � ��� B m s g ( " c m d C l e a n u p " ,   " " ,   c m d C l e a n U p )� ��� l  � ��r�q�p�r  �q  �p  � ��� Q   ����� k   � ��� ��� Z   � ����o�n� =  � ���� I   � ��m��l�m 0 folderexists FolderExists� ��k� o   � ��j�j 0 
configpath 
configPath�k  �l  � m   � ��i
�i boovfals� I  � ��h��g
�h .sysoexecTEXT���     TEXT� o   � ��f�f 0 cmdmakepath cmdMakePath�g  �o  �n  � ��� l  � ��e�d�c�e  �d  �c  � ��b� Z   � ����a�`� F   � ���� =  � ���� I   � ��_��^�_ 0 folderexists FolderExists� ��]� o   � ��\�\ 0 
configpath 
configPath�]  �^  � m   � ��[
�[ boovtrue� =  � ���� I   � ��Z��Y�Z 0 
fileexists 
FileExists� ��X� o   � ��W�W 0 dnclocation DNCLocation�X  �Y  � m   � ��V
�V boovfals� k   � ��� ��� I  � ��U��T
�U .sysoexecTEXT���     TEXT� o   � ��S�S 0 cmdcurl cmdCurl�T  � ��R� Z   � ����Q�P� =  � ���� I   � ��O��N�O 0 
fileexists 
FileExists� ��M� b   � �� � b   � � o   � ��L�L 0 
configpath 
configPath m   � � �  /  o   � ��K�K 0 
dnworkflow 
DNWorkflow�M  �N  � m   � ��J
�J boovtrue� k   � �  I  � ��I�H
�I .sysoexecTEXT���     TEXT o   � ��G�G 0 cmdunzip cmdUnzip�H   	�F	 I  � ��E
�D
�E .sysoexecTEXT���     TEXT
 o   � ��C�C 0 
cmdcleanup 
cmdCleanUp�D  �F  �Q  �P  �R  �a  �`  �b  � R      �B�A�@
�B .ascrerr ****      � ****�A  �@  � k    I  �?�>�? 0 msg    m   � " F a i l e d   s e t t i n g   u p  m  	 �   �= o  	
�<�< 0 
configpath 
configPath�=  �>   �; L   m  �:
�: boovfals�;  �  Z  R�9�8 =  I  �7 �6�7 0 
fileexists 
FileExists  !�5! o  �4�4 0 dnclocation DNCLocation�5  �6   m  �3
�3 boovtrue k  !N"" #$# I  !&�2�1�0�2 0 
osxversion 
osXVersion�1  �0  $ %&% Z  'K'(�/�.' = '.)*) o  ',�-�- *0 displaynoticecenter DisplayNoticeCenter* m  ,-�,
�, boovtrue( k  1G++ ,-, I  1=�+.�*�+ 0 msg  . /0/ m  2511 �22   S S H - C h e c k :   S e t u p0 343 o  56�)�) 0 
configpath 
configPath4 5�(5 m  6966 �77  D N C   i s   a c t i v e !�(  �*  - 8�'8 I >G�&9�%
�& .sysodelanull��� ��� nmbr9 o  >C�$�$ 0 	countdown  �%  �'  �/  �.  & :�#: L  LN;; m  LM�"
�" boovtrue�#  �9  �8   <�!< L  SU== m  ST� 
�  boovfals�!  ��  ��  k >�> L  Z\?? m  Z[�
� boovtrue�  /  return bool   0 �@@  r e t u r n   b o o l+ ABA l     ����  �  �  B C�C i   A DDED I     ���
� .aevtoappnull  �   � ****�  �  E k    HFF GHG I     ���� 0 resetprogram resetProgram�  �  H IJI I    ���� $0 sshchecksettings sshCheckSettings�  �  J KLK l   MNOM I    ���� 0 
osxversion 
osXVersion�  �  N j dcomment this line if you don't have the display-notification-center-alert-automator-action installed   O �PP � c o m m e n t   t h i s   l i n e   i f   y o u   d o n ' t   h a v e   t h e   d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n   i n s t a l l e dL QRQ l   ����  �  �  R STS r    UVU m    WW �XX ( S S H   S e r v i c e   i s   D o w n !V o      �
�
 0 titlemsg  T YZY Z    �[\]�	[ F    )^_^ =   `a` I    ���� 0 isapprunning isAppRunning�  �  a m    �
� boovtrue_ =    'bcb I     %���� 0 servicealive serviceAlive�  �  c m   % &��  \ k   , Odd efe r   , 7ghg b   , 5iji b   , 3klk m   , -mm �nn , I t   i s   n o t   s a f e   t o   r u n  l o   - 2� �  0 program  j m   3 4oo �pp H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !h o      ���� 0 message  f qrq I   8 F��s���� 0 msg  s tut o   9 :���� 0 titlemsg  u vwv b   : Axyx m   : ;zz �{{  W a r n i n g  y o   ; @���� 0 service  w |��| o   A B���� 0 message  ��  ��  r }~} I   G L��������  0 killrunningapp killRunningApp��  ��  ~ �� l  M O���� L   M O����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ] ��� =  R Y��� I   R W�������� 0 servicealive serviceAlive��  ��  � m   W X����  � ���� k   \ ��� ��� I   \ ~������� 0 msg  � ��� o   ] ^���� 0 titlemsg  � ��� b   ^ e��� m   ^ _�� ���  W a r n i n g   a b o u t  � o   _ d���� 0 service  � ���� b   e z��� b   e v��� b   e p��� b   e l��� m   e f�� ���  D o n ' t   r u n  � o   f k���� 0 program  � m   l o�� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   p u���� 0 service  � m   v y�� ���  .��  ��  � ���� l   ����� L    �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  �	  Z ��� l  � ���������  ��  ��  � ��� l  � �������  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � I   � ��������� 0 servicealive serviceAlive��  ��  � o      ���� 0 titlemsg  � ��� Z   �������� =  � ���� I   � ��������� 0 isapprunning isAppRunning��  ��  � m   � ���
�� boovtrue� l  ����� k   ��� ��� r   � ���� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ���� m   � ��� ���  T u r n   O f f��  � o      ���� 0 btnopt btnOpt� ��� r   � ���� b   � ���� o   � ����� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      ���� 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �����
�� 
appr� o   � ����� 0 titlemsg  ��  ��  ��  � o      ���� 
0 choice  � ���� Z   ������ =  � ���� o   � ����� 
0 choice  � m   � ��� ���  R e s t a r t� I   � ���������  0 killrunningapp killRunningApp��  ��  � ��� =  � ���� o   � ����� 
0 choice  � m   � ��� ���  T u r n   O f f� ���� k   � �� ��� I   � ���������  0 killrunningapp killRunningApp��  ��  � ���� l  � � � L   � ����     exit SSH-Check    �  e x i t   S S H - C h e c k��  ��  � l  l  L  ����    exit SSH-Check    �		  e x i t   S S H - C h e c k  choice equals Cancel    �

 ( c h o i c e   e q u a l s   C a n c e l��  � 0 * should we kill & restart the running app?   � � T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  � k  �  r   b   m   �  S t a r t i n g   o  ���� 0 program   o      ���� 0 qmsg qMsg �� Z  ��� =  o  ���� *0 displaynoticecenter DisplayNoticeCenter m  ��
�� boovtrue k   L  I   @������ 0 msg     m  !$!! �""  S S H - C h e c k  #$# I  $)�������� 0 servicealive serviceAlive��  ��  $ %��% b  )<&'& b  )8()( b  )0*+* o  ),���� 0 qmsg qMsg+ m  ,/,, �--    i n  ) l 07.����. ^  07/0/ o  05���� 0 	countdown  0 m  56���� ��  ��  ' m  8;11 �22    s e c o n d s !��  ��   3��3 I AL��4��
�� .sysodelanull��� ��� nmbr4 l AH5����5 ^  AH676 o  AF���� 0 	countdown  7 m  FG���� ��  ��  ��  ��  ��   k  O�88 9:9 r  O[;<; J  OW== >?> m  OR@@ �AA  L a u n c h? B��B m  RUCC �DD  S t o p��  < o      ���� 0 btnopt btnOpt: E��E Q  \�FGHF k  _�II JKJ r  _tLML b  _pNON b  _lPQP b  _fRSR o  _b���� 0 qmsg qMsgS m  beTT �UU    i n  Q o  fk���� 0 	countdown  O m  loVV �WW    s e c o n d s !M o      ���� 0 qmsg qMsgK XYX r  u�Z[Z n  u�\]\ 1  ����
�� 
bhit] l u�^����^ I u���_`
�� .sysodlogaskr        TEXT_ o  ux���� 0 qmsg qMsg` ��ab
�� 
btnsa o  {~���� 0 btnopt btnOptb ��cd
�� 
dfltc m  ��ee �ff  L a u n c hd ��gh
�� 
apprg o  ������ 0 titlemsg  h ��i��
�� 
givui o  ������ 0 	countdown  ��  ��  ��  [ o      ���� 0 yesorno yesOrNoY j��j Z  ��kl����k = ��mnm o  ������ 0 yesorno yesOrNon m  ��oo �pp  S t o pl L  ������  ��  ��  ��  G R      ������
�� .ascrerr ****      � ****��  ��  H L  ������  ��  ��  � qrq l ����������  ��  ��  r sts l ����uv��  u ! Prepare to launch a program   v �ww 6 P r e p a r e   t o   l a u n c h   a   p r o g r a mt xyx r  ��z{z n  ��|}| 1  ����
�� 
psxp} l ��~����~ m  �� ���  / A p p l i c a t i o n s /��  ��  { o      �� 0 apppath appPathy ��� l ���~���~  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ����� I ���}�|�
�} .sysooffslong    ��� null�|  � �{��
�{ 
psof� o  ���z�z 0 program  � �y��x
�y 
psin� o  ���w�w 0 apppath appPath�x  � o      �v�v 0 
nameoffset 
nameOffset� ��� l ���u���u  � 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )� ��� r  ����� n  ����� 7 ���t��
�t 
ctxt� m  ���s�s � l ����r�q� \  ����� o  ���p�p 0 
nameoffset 
nameOffset� m  ���o�o �r  �q  � o  ���n�n 0 apppath appPath� o      �m�m 0 
folderpath 
folderPath� ��� l ���l���l  � 6 0msg("info:", "Msg", "folderpath: " & folderPath)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )� ��� Q  �F���� l �*���� k  �*�� ��� I ��k��j
�k .sysoexecTEXT���     TEXT� b  ���� b  ���� b  ���� o  ���i�i 0 
folderpath 
folderPath� o  ��h�h 0 program  � m  �� ���  . a p p� m  �� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�j  � ��� I �g��f
�g .sysodelanull��� ��� nmbr� m  �e�e �f  � ��d� O *��� I $)�c�b�a
�c .miscactvnull��� ��� null�b  �a  � 4  !�`�
�` 
capp� o   �_�_ 0 program  �d  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  � I  2F�[��Z�[ 0 msg  � ��� m  36�� ���   S S H - C h e c k :   E r r o r� ��� m  69�� ��� 
 E r r o r� ��Y� b  9B��� m  9<�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  <A�X�X 0 program  �Y  �Z  � ��W� l GG�V�U�T�V  �U  �T  �W  �       (�S�   ! , 2 7�R������������������Q��P�O�N�M�L�K�J�I�H�G�F�E�S  � &�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��D 0 service  �C 0 program  �B 0 programbackup programBackup�A 0 	countdown  �@ 0 dnclocation DNCLocation�? 0 dnca DNCA�> *0 displaynoticecenter DisplayNoticeCenter
�= .aevtodocnull  �    alis�< 0 resetprogram resetProgram�; 0 
fileexists 
FileExists�: 0 folderexists FolderExists�9 0 
osxversion 
osXVersion�8 
0 notify  �7 0 isapprunning isAppRunning�6  0 killrunningapp killRunningApp�5 0 msg  �4 0 servicealive serviceAlive�3 $0 sshchecksettings sshCheckSettings
�2 .aevtoappnull  �   � ****�1 0 titlemsg  �0 0 btnopt btnOpt�/ 0 qmsg qMsg�. 
0 choice  �- 0 apppath appPath�, 0 
nameoffset 
nameOffset�+ 0 
folderpath 
folderPath�*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �  
�R boovtrue� � E�����
� .aevtodocnull  �    alis� 0 these_items  �  � ��� 0 these_items  � 0 prog  �  S� f�� s� � � ����
� 
TEXT
� 
txdl
� 
citm� 0 
osxversion 
osXVersion� 0 msg  
� .sysodelanull��� ��� nmbr
� .aevtoappnull  �   � ****� X�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j+ O*��b  %�b  %m+ 
Ob  j O*j � � ������� 0 resetprogram resetProgram�  �  �  �  �� #b  �  b  EQc  Y hOfEc  � � ������
� 0 
fileexists 
FileExists� �	��	 �  �� 0 thefile theFile�  � �� 0 thefile theFile�  ���
� 
file
� .coredoexbool       obj �
 � *�/j  eY hUOf� � ������� 0 folderexists FolderExists� � ��  �  ���� 0 	thefolder 	theFolder�  � ���� 0 	thefolder 	theFolder�  ���������
�� 
cfol
�� .coredoexbool       obj ��  ��  � ' � *�/j  eY hUW 	X  fOf� �� ����������� 0 
osxversion 
osXVersion��  ��  �  � 	 �����������������
�� 
txdl�� 0 
fileexists 
FileExists
�� 
bool
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �� K�*�,FO*b  k+ e 	 *b  k+ e �&	 *j �,�l/�&��& eEc  Y 	fEc  � ������������ 
0 notify  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ��28��GM\b����������������
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ � ������������� 0 isapprunning isAppRunning��  ��  �  � ��������
�� 
capp
�� 
prun��  ��  �� + *�b  / *�,e  eY hUW 	X  fOf� �������������  0 killrunningapp killRunningApp��  ��  �  � ��������������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � ������������� 0 msg  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� +b  e  *���m+  Y  ��l W 	X  h� ������������� 0 servicealive serviceAlive��  ��  � �������� 0 cmdssh cmdSSH�� 
0 sshcon  �� 
0 tunnel  � ����������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� ��-���������� $0 sshchecksettings sshCheckSettings��  ��  � ������������������ 0 configfolder configFolder�� 0 
configpath 
configPath�� 0 cmdmakepath cmdMakePath�� 
0 mypath  �� 0 
dnworkflow 
DNWorkflow�� 0 cmdcurl cmdCurl�� 0 cmdunzip cmdUnzip�� 0 
cmdcleanup 
cmdCleanUp� !6>��������������ad������������������������16���� 0 
fileexists 
FileExists
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� 
�� 
bool�� 0 msg  �� 0 folderexists FolderExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  �� 0 
osxversion 
osXVersion
�� .sysodelanull��� ��� nmbr��]�E�O�%E�O*b  k+ f 	 *j �,�l/�&��& *b  ��m+ OfY hO*�k+ f 
 *b  k+ f �& ���%�%E�O�%a %E�Oa E�O�a %�%�%a a ,%E�O�a %E�O�a %�%�%E�O `*�k+ f  
�j Y hO*�k+ e 	 *b  k+ f �& +�j O*�a %�%k+ e  �j O�j Y hY hW X  *a a �m+ OfO*b  k+ e  2*j+ Ob  e  *a �a m+ Ob  j  Y hOeY hOfY hOe� ��E��������
�� .aevtoappnull  �   � ****��  ��  �  � E������W��������mo��z������������������������~�}�|�{��!,1�z@CTVe�y�x�wo�v�u�t�s�r�q�p�o�n�m�l���k�j�i����� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
osxversion 
osXVersion�� 0 titlemsg  �� 0 isapprunning isAppRunning�� 0 servicealive serviceAlive
�� 
bool�� 0 message  �� 0 msg  ��  0 killrunningapp killRunningApp�� 0 btnopt btnOpt�� 0 qmsg qMsg
�� 
btns
�� 
dflt
� 
appr�~ 
�} .sysodlogaskr        TEXT
�| 
bhit�{ 
0 choice  
�z .sysodelanull��� ��� nmbr
�y 
givu�x �w 0 yesorno yesOrNo�v  �u  
�t 
psxp�s 0 apppath appPath
�r 
psof
�q 
psin�p 
�o .sysooffslong    ��� null�n 0 
nameoffset 
nameOffset
�m 
ctxt�l 0 
folderpath 
folderPath
�k .sysoexecTEXT���     TEXT
�j 
capp
�i .miscactvnull��� ��� null��I*j+  O*j+ O*j+ O�E�O*j+ e 	 *j+ j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 5*j+ j  **��b   %�b  %a %b   %a %m+ OhY hOa *j+ %E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a ,E`  O_  a !  
*j+ Y _  a "  *j+ OhY hY �a #b  %E` Ob  e  1*a $*j+ _ a %%b  l!%a &%m+ Ob  l!j 'Y la (a )lvE` O U_ a *%b  %a +%E` O_ a _ a a ,a �a -b  a . a ,E` /O_ /a 0  hY hW 	X 1 2hOa 3a 4,E` 5O*a 6b  a 7_ 5a 8 9E` :O_ 5[a ;\[Zk\Z_ :k2E` <O 4_ <b  %a =%a >%j ?Okj 'O*a @b  / *j AUW X 1 2*a Ba Ca Db  %m+ OP� ��� f A c t i v e   S S H   C o n n e c t i o n   t o :   x e o r o n @ d a l l a s . t u n n e l r . c o m� �h �h    ���� �   S t a r t i n g   F i r e f o x� �  T u r n   O f f� �  / A p p l i c a t i o n s /�Q  � �  / A p p l i c a t i o n s /�P  �O  �N  �M  �L  �K  �J  �I  �H  �G  �F  �E  ascr  ��ޭ