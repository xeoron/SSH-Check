FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.5.0
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
 	 V e r s i o n :   0 . 5 . 0 
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
 , , � - -  6 )  time out in seconds    * � . . & t i m e   o u t   i n   s e c o n d s '  / 0 / j    �� 1�� 0 dnclocation DNCLocation 1 m     2 2 � 3 3 b ~ / L i b r a r y / W o r k f l o w s / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 0  4 5 4 l      6 7 8 6 j    �� 9�� *0 displaynoticecenter DisplayNoticeCenter 9 m    ��
�� boovfals 7 X Rscript switchings to true when running on OS X.8 or higher & if DNCLocation exists    8 � : : � s c r i p t   s w i t c h i n g s   t o   t r u e   w h e n   r u n n i n g   o n   O S   X . 8   o r   h i g h e r   &   i f   D N C L o c a t i o n   e x i s t s 5  ; < ; l     ��������  ��  ��   <  = > = i     ? @ ? I     �� A��
�� .aevtodocnull  �    alis A o      ���� 0 these_items  ��   @ k     W B B  C D C l      �� E F��   E�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     F � G G   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   D  H I H l     ��������  ��  ��   I  J K J r      L M L m      N N � O O   M o      ���� 0 prog   K  P Q P r    	 R S R c     T U T o    ���� 0 these_items   U m    ��
�� 
TEXT S o      ���� 0 prog   Q  V W V l  
 
��������  ��  ��   W  X Y X l  
 
�� Z [��   Z d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    [ � \ \ � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e Y  ] ^ ] r   
  _ ` _ m   
  a a � b b  : ` 1    ��
�� 
txdl ^  c d c r     e f e n     g h g 4    �� i
�� 
citm i m    ����  h o    ���� 0 prog   f o      ���� 0 prog   d  j k j r     l m l m     n n � o o  . m 1    ��
�� 
txdl k  p q p r    # r s r n    ! t u t 4    !�� v
�� 
citm v m     ����  u o    ���� 0 prog   s o      ���� 0 prog   q  w x w s   $ , y z y o   $ %���� 0 prog   z o      ���� 0 program   x  { | { l  - -��������  ��  ��   |  } ~ } I   - 2�������� 0 
osxversion 
osXVersion��  ��   ~   �  I   3 G�� ����� 0 msg   �  � � � m   4 5 � � � � �  S S H - C h e c K �  � � � b   5 < � � � m   5 6 � � � � �  S e t t i n g   � o   6 ;���� 0 program   �  ��� � b   < C � � � m   < = � � � � � & N o w   s e t   t o   s t a r t u p   � o   = B���� 0 program  ��  ��   �  � � � I  H Q�� ���
�� .sysodelanull��� ��� nmbr � o   H M���� 0 	countdown  ��   �  ��� � I  R W������
�� .aevtoappnull  �   � ****��  ��  ��   >  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 resetprogram resetProgram��  ��   � k      � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  ��� � Z      � ����� � =     � � � o     ���� 0 program   � m     � � � � �   � s   
  � � � o   
 ���� 0 programbackup programBackup � o      ���� 0 program  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 
fileexists 
FileExists �  ��� � o      ���� 0 thefile theFile��  ��   � O      � � � Z     � ��� � � I   �� ���
�� .coredoexbool       obj  � 4    �� �
�� 
file � o    ���� 0 thefile theFile��   � L     � � m    ��
�� boovtrue��   � L     � � m    ��
�� boovfals � m      � ��                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     ��������  ��  ��   �  � � � i    ! � � � I      �������� 0 
osxversion 
osXVersion��  ��   � k     9 � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  ��� � Z    9 � ��� � � F    % � � � =    � � � I    �� ����� 0 
fileexists 
FileExists �  ��� � o    ���� 0 dnclocation DNCLocation��  ��   � m    ��
�� boovtrue � @    # � � � l   ! ����� � c    ! � � � l    ����� � n     � � � 4    �� �
�� 
citm � m    ����  � l    ����� � n     � � � 1    ��
�� 
sisv � l    ����� � I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m     ��
�� 
nmbr��  ��   � m   ! "����  � r   ( / � � � m   ( )��
�� boovtrue � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   � r   2 9 � � � m   2 3��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   �  � � � l     ��������  ��  ��   �  � � � i   " % � � � I      � ��~� 
0 notify   �  � � � o      �}�} 	0 title   �  � � � o      �|�| 0 subtitle   �  ��{ � o      �z�z 0 message  �{  �~   � k     � � �  � � � l      �y � ��y   � 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display Notification.wflow. A good place to save it is in ~/Library/Workflows (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/Library/Workflows/'Display Notification.wflow'  
     � � � �2   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
   R e q u i r e s :   S E T U P   
   	 1 )   a u t o m a t i o n   w o r k f l o w   t o   b e   i n s t a l l e d   f r o m   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 / 
 	 2 )   C r e a t e   a   n e w   w o r k f l o w   i n   A u t o m a t o r   c o n t a i n i n g   o n l y   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 3 )   I n   t h e   v a r i a b l e s   s e c t i o n   a t   t h e   b o t t o m   o f   t h e   w o r k f l o w   c o n s t r u c t i o n   a r e a   i n   A u t o m a t o r ' s   w i n d o w ,   c r e a t e   t h r e e   v a r i a b l e s   n a m e d   t i t l e ,   s u b t i t l e ,   a n d   m e s s a g e . 
 	 4 )   G i v e   m e s s a g e   a   d e f a u l t   v a l u e   l i k e   " N o t i f i c a t i o n   s e n t . "   Y o u   c a n   l e a v e   t h e   d e f a u l t   v a l u e s   o t h e r   t w o   b l a n k . 
 	 5 )   D r a g   e a c h   v a r i a b l e   t o   i t s   c o r r e s p o n d i n g   f i e l d   i n   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 6 )   S a v e   t h e   w o r k f l o w   a s   D i s p l a y   N o t i f i c a t i o n . w f l o w .   A   g o o d   p l a c e   t o   s a v e   i t   i s   i n   ~ / L i b r a r y / W o r k f l o w s   ( c r e a t e   t h e   f o l d e r   i f   n e c e s s a r y ) . 
 
 	 N o w   y o u   c a n   d i s p l a y   a   n o t i f i c a t i o n   f r o m   t h e   c o m m a n d   l i n e   u s i n g   t h e   f o l l o w i n g   c o m m a n d : 
 	 	 a u t o m a t o r   - D   t i t l e = ' T i t l e   t e x t '   - D   s u b t i t l e = ' S u b t i t l e   t e x t '   - D   m e s s a g e = ' M e s s a g e   t e x t '   ~ / L i b r a r y / W o r k f l o w s / ' D i s p l a y   N o t i f i c a t i o n . w f l o w '     
   �  � � � l     �x�w�v�x  �w  �v   �  � � � Z     � ��u�t � >     � � � c      � � � o     �s�s 	0 title   � m    �r
�r 
ctxt � m       �   � r     b     m    	 �    - D   t i t l e = n   	 	 1    �q
�q 
strq	 l  	 
�p�o
 c   	  o   	 
�n�n 	0 title   m   
 �m
�m 
ctxt�p  �o   o      �l�l 	0 title  �u  �t   �  Z   +�k�j >    c     o    �i�i 0 subtitle   m    �h
�h 
ctxt m     �   r    ' b    % m     �    - D   s u b t i t l e = n    $ 1   " $�g
�g 
strq l   "�f�e c    " !  o     �d�d 0 subtitle  ! m     !�c
�c 
ctxt�f  �e   o      �b�b 0 subtitle  �k  �j   "#" Z  , A$%�a�`$ >  , 1&'& c   , /()( o   , -�_�_ 0 message  ) m   - .�^
�^ 
ctxt' m   / 0** �++  % r   4 =,-, b   4 ;./. m   4 500 �11    - D   m e s s a g e =/ n   5 :232 1   8 :�]
�] 
strq3 l  5 84�\�[4 c   5 8565 o   5 6�Z�Z 0 message  6 m   6 7�Y
�Y 
ctxt�\  �[  - o      �X�X 0 message  �a  �`  # 7�W7 Q   B �89:8 I  E b�V;�U
�V .sysoexecTEXT���     TEXT; b   E ^<=< b   E \>?> b   E Z@A@ b   E TBCB b   E RDED b   E PFGF b   E NHIH b   E LJKJ b   E JLML b   E HNON m   E FPP �QQ  a u t o m a t o rO 1   F G�T
�T 
spacM o   H I�S�S 	0 title  K 1   J K�R
�R 
spacI o   L M�Q�Q 0 subtitle  G 1   N O�P
�P 
spacE o   P Q�O�O 0 message  C 1   R S�N
�N 
spacA o   T Y�M�M 0 dnclocation DNCLocation? 1   Z [�L
�L 
spac= m   \ ]RR �SS  2 > / d e v / n u l l�U  9 R      �K�J�I
�K .ascrerr ****      � ****�J  �I  : k   j �TT UVU r   j qWXW m   j kYY �ZZ 
 f a l s eX o      �H�H *0 displaynoticecenter DisplayNoticeCenterV [�G[ I   r ��F\�E�F 0 msg  \ ]^] m   s t__ �``   S S H - C h e c k :   E r r o r^ aba m   t wcc �dd  b e�De b   w �fgf m   w zhh �ii � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  g o   z �C�C 0 dnclocation DNCLocation�D  �E  �G  �W   � jkj l     �B�A�@�B  �A  �@  k lml i   & )non I      �?�>�=�? 0 isapprunning isAppRunning�>  �=  o k     .pp qrq Q     stus r    vwv I   �<x�;
�< .sysoexecTEXT���     TEXTx b    yzy b    
{|{ m    }} �~~  p s   x   |   g r e p  | o    	�:�: 0 program  z m   
  ��� & . a p p   |   g r e p   - v   g r e p�;  w 1      �9
�9 
rsltt R      �8�7�6
�8 .ascrerr ****      � ****�7  �6  u l   ���� L    �� m    �5
�5 boovfals� C = if there was no grep match then the program is currently off   � ��� z   i f   t h e r e   w a s   n o   g r e p   m a t c h   t h e n   t h e   p r o g r a m   i s   c u r r e n t l y   o f fr ��4� Z    .���3�� E    $��� 1    �2
�2 
rslt� o    #�1�1 0 program  � L   ' )�� m   ' (�0
�0 boovtrue�3  � L   , .�� m   , -�/
�/ boovfals�4  m ��� l     �.�-�,�.  �-  �,  � ��� i   * -��� I      �+�*�)�+  0 killrunningapp killRunningApp�*  �)  � Q     5���� O     ��� l   ���� Z    ���(�'� =   ��� n    ��� 1    �&
�& 
prun�  g    � m    �%
�% boovtrue� I   �$�#�"
�$ .aevtquitnull��� ��� null�#  �"  �(  �'  � ' ! doesn't automatically launch app   � ��� B   d o e s n ' t   a u t o m a t i c a l l y   l a u n c h   a p p� 4    �!�
�! 
capp� o    
� �  0 program  � R      ���
� .ascrerr ****      � ****�  �  � I  ( 5���
� .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .�� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�  � ��� l     ����  �  �  � ��� i   . 1��� I      ���� 0 msg  � ��� o      �� 	0 title  � ��� o      �� 0 subtitle  � ��� o      �� 0 message  �  �  � Z     *����� =    ��� o     �� *0 displaynoticecenter DisplayNoticeCenter� m    �
� boovtrue� l  
 ���� I   
 ���� 
0 notify  � ��� o    �� 	0 title  � ��� o    �
�
 0 subtitle  � ��	� o    �� 0 message  �	  �  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�  � Q    *���� L     �� I   ���
� .sysodlogaskr        TEXT� o    �� 0 message  � ���
� 
appr� o    �� 	0 title  �  � R      ��� 
� .ascrerr ****      � ****�  �   � L   ( *����  � ��� l     ��������  ��  ��  � ��� i   2 5��� I      �������� 0 servicealive serviceAlive��  ��  � Q     <���� l   2���� k    2�� ��� r    ��� b    ��� b    
��� m    �� ��� @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o    	���� 0 service  � m   
 �� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ��� r    ��� n    ��� 4    ���
�� 
cobj� m    ���� � n    ��� 2   ��
�� 
cpar� l   ������ I   �����
�� .sysoexecTEXT���     TEXT� o    ���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  � ��� s     ��� o    ���� 
0 sshcon  � o      ���� 
0 tunnel  � ���� Z   ! 2������ E   ! (��� o   ! "���� 
0 tunnel  � o   " '���� 0 service  � L   + -�� o   + ,���� 
0 tunnel  ��  � L   0 2�� m   0 1����  ��  � 0 *check for ssh connected to defined service   � ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e� R      ������
�� .ascrerr ****      � ****��  ��  � L   : <   m   : ;����  �  l     ��������  ��  ��   �� i   6 9 I     ������
�� .aevtoappnull  �   � ****��  ��   k    4  I     �������� 0 resetprogram resetProgram��  ��   	
	 l    I    �������� 0 
osxversion 
osXVersion��  ��   j dcomment this line if you don't have the display-notification-center-alert-automator-action installed    � � c o m m e n t   t h i s   l i n e   i f   y o u   d o n ' t   h a v e   t h e   d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n   i n s t a l l e d
  l   ��������  ��  ��    r     m     � ( S S H   S e r v i c e   i s   D o w n ! o      ���� 0 titlemsg    Z    q�� F    # =    I    �������� 0 isapprunning isAppRunning��  ��   m    ��
�� boovtrue =   ! !  I    �������� 0 servicealive serviceAlive��  ��  ! m     ����   k   & C"" #$# r   & 1%&% b   & /'(' b   & -)*) m   & '++ �,, , I t   i s   n o t   s a f e   t o   r u n  * o   ' ,���� 0 program  ( m   - .-- �.. H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !& o      ���� 0 message  $ /0/ I   2 :��1���� 0 msg  1 232 o   3 4���� 0 titlemsg  3 454 m   4 566 �77  W a r n i n g5 8��8 o   5 6���� 0 message  ��  ��  0 9:9 I   ; @��������  0 killrunningapp killRunningApp��  ��  : ;��; l  A C<=>< L   A C����  =  exit SSH-Check   > �??  e x i t   S S H - C h e c k��   @A@ =  F MBCB I   F K�������� 0 servicealive serviceAlive��  ��  C m   K L����  A D��D k   P mEE FGF I   P j��H���� 0 msg  H IJI o   Q R���� 0 titlemsg  J KLK m   R SMM �NN  W a r n i n gL O��O b   S fPQP b   S bRSR b   S \TUT b   S ZVWV m   S TXX �YY  D o n ' t   r u n  W o   T Y���� 0 program  U m   Z [ZZ �[[ F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  S o   \ a���� 0 service  Q m   b e\\ �]]  .��  ��  G ^��^ l  k m_`a_ L   k m����  `  exit SSH-Check   a �bb  e x i t   S S H - C h e c k��  ��  ��   cdc l  r r��������  ��  ��  d efe l  r r��gh��  g C =Ask if you want to run your program, kill it, or quietly stop   h �ii z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o pf jkj r   r }lml b   r {non m   r upp �qq 4 A c t i v e   S S H   C o n n e c t i o n   t o :  o I   u z�������� 0 servicealive serviceAlive��  ��  m o      ���� 0 titlemsg  k rsr Z   ~�tu��vt =  ~ �wxw I   ~ ��������� 0 isapprunning isAppRunning��  ��  x m   � ���
�� boovtrueu l  � �yz{y k   � �|| }~} r   � �� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ���� m   � ��� ���  T u r n   O f f��  � o      ���� 0 btnopt btnOpt~ ��� r   � ���� b   � ���� o   � ����� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      ���� 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �����
�� 
appr� o   � ����� 0 titlemsg  ��  ��  ��  � o      ���� 
0 choice  � ���� Z   � ������ =  � ���� o   � ����� 
0 choice  � m   � ��� ���  R e s t a r t� I   � ���������  0 killrunningapp killRunningApp��  ��  � ��� =  � ���� o   � ����� 
0 choice  � m   � ��� ���  T u r n   O f f� ���� k   � ��� ��� I   � ���������  0 killrunningapp killRunningApp��  ��  � ���� l  � ����� L   � �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  � l  � ����� l  � ����� L   � �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l��  z 0 * should we kill & restart the running app?   { ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  v k   ���� ��� r   ���� b   � ���� m   � ��� ���  S t a r t i n g  � o   � ����� 0 program  � o      ���� 0 qmsg qMsg� ���� Z  ������� = 	��� o  ���� *0 displaynoticecenter DisplayNoticeCenter� m  �
� boovtrue� k  8�� ��� I  ,�~��}�~ 0 msg  � ��� m  �� ���  S S H - C h e c k� ��� I  �|�{�z�| 0 servicealive serviceAlive�{  �z  � ��y� b  (��� b  $��� b  ��� o  �x�x 0 qmsg qMsg� m  �� ���    i n  � l #��w�v� ^  #��� o  !�u�u 0 	countdown  � m  !"�t�t �w  �v  � m  $'�� ���    s e c o n d s !�y  �}  � ��s� I -8�r��q
�r .sysodelanull��� ��� nmbr� l -4��p�o� ^  -4��� o  -2�n�n 0 	countdown  � m  23�m�m �p  �o  �q  �s  ��  � k  ;��� ��� r  ;G��� J  ;C�� ��� m  ;>�� ���  L a u n c h� ��l� m  >A�� ���  S t o p�l  � o      �k�k 0 btnopt btnOpt� ��j� Q  H�   k  K�  r  K` b  K\	 b  KX

 b  KR o  KN�i�i 0 qmsg qMsg m  NQ �    i n   o  RW�h�h 0 	countdown  	 m  X[ �    s e c o n d s ! o      �g�g 0 qmsg qMsg  r  a� n  a� 1  ���f
�f 
bhit l a��e�d I a��c
�c .sysodlogaskr        TEXT o  ad�b�b 0 qmsg qMsg �a
�a 
btns o  gj�`�` 0 btnopt btnOpt �_
�_ 
dflt m  mp �    L a u n c h �^!"
�^ 
appr! o  st�]�] 0 titlemsg  " �\#�[
�\ 
givu# o  w|�Z�Z 0 	countdown  �[  �e  �d   o      �Y�Y 0 yesorno yesOrNo $�X$ Z  ��%&�W�V% = ��'(' o  ���U�U 0 yesorno yesOrNo( m  ��)) �**  S t o p& L  ���T�T  �W  �V  �X   R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q   L  ���P�P  �j  ��  s +,+ l ���O�N�M�O  �N  �M  , -.- l ���L/0�L  / ! Prepare to launch a program   0 �11 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m. 232 r  ��454 n  ��676 1  ���K
�K 
psxp7 l ��8�J�I8 m  ��99 �::  / A p p l i c a t i o n s /�J  �I  5 o      �H�H 0 apppath appPath3 ;<; l ���G=>�G  = 0 *msg("info:", "Msg", "apppath: " & appPath)   > �?? T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )< @A@ r  ��BCB I ���F�ED
�F .sysooffslong    ��� null�E  D �DEF
�D 
psofE o  ���C�C 0 program  F �BG�A
�B 
psinG o  ���@�@ 0 apppath appPath�A  C o      �?�? 0 
nameoffset 
nameOffsetA HIH l ���>JK�>  J 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   K �LL ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )I MNM r  ��OPO n  ��QRQ 7 ���=ST
�= 
ctxtS m  ���<�< T l ��U�;�:U \  ��VWV o  ���9�9 0 
nameoffset 
nameOffsetW m  ���8�8 �;  �:  R o  ���7�7 0 apppath appPathP o      �6�6 0 
folderpath 
folderPathN XYX l ���5Z[�5  Z 6 0msg("info:", "Msg", "folderpath: " & folderPath)   [ �\\ ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )Y ]^] Q  �2_`a_ l �bcdb k  �ee fgf I ���4h�3
�4 .sysoexecTEXT���     TEXTh b  ��iji b  ��klk b  ��mnm o  ���2�2 0 
folderpath 
folderPathn o  ���1�1 0 program  l m  ��oo �pp  . a p pj m  ��qq �rr N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�3  g sts I ��0u�/
�0 .sysodelanull��� ��� nmbru m  ���.�. �/  t v�-v O wxw I �,�+�*
�, .miscactvnull��� ��� null�+  �*  x 4  �)y
�) 
cappy o  �(�( 0 program  �-  c ( "start program up in the background   d �zz D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d` R      �'�&�%
�' .ascrerr ****      � ****�&  �%  a I  2�${�#�$ 0 msg  { |}| m  "~~ �   S S H - C h e c k :   E r r o r} ��� m  "%�� ��� 
 E r r o r� ��"� b  %.��� m  %(�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  (-�!�! 0 program  �"  �#  ^ �� � l 33����  �  �  �   ��       ��   ! , 2������������  � ����������������� 0 service  � 0 program  � 0 programbackup programBackup� 0 	countdown  � 0 dnclocation DNCLocation� *0 displaynoticecenter DisplayNoticeCenter
� .aevtodocnull  �    alis� 0 resetprogram resetProgram� 0 
fileexists 
FileExists� 0 
osxversion 
osXVersion� 
0 notify  � 0 isapprunning isAppRunning�  0 killrunningapp killRunningApp� 0 msg  � 0 servicealive serviceAlive
� .aevtoappnull  �   � ****
� boovfals� �
 @�	����
�
 .aevtodocnull  �    alis�	 0 these_items  �  � ��� 0 these_items  � 0 prog  �  N� a�� n� � � �� ����
� 
TEXT
� 
txdl
� 
citm� 0 
osxversion 
osXVersion�  0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****� X�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j+ O*��b  %�b  %m+ 
Ob  j O*j � �� ����������� 0 resetprogram resetProgram��  ��  �  �  ��� b  �  b  EQc  Y h� �� ����������� 0 
fileexists 
FileExists�� ����� �  ���� 0 thefile theFile��  � ���� 0 thefile theFile�  �����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY fU� �� ����������� 0 
osxversion 
osXVersion��  ��  �  � 	 �����������������
�� 
txdl�� 0 
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
bool�� :�*�,FO*b  k+ e 	 *j �,�l/�&��& eEc  Y 	fEc  � �� ����������� 
0 notify  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � �� ��*0P��R������Y_ch��
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ � ��o���������� 0 isapprunning isAppRunning��  ��  �  � }��������
�� .sysoexecTEXT���     TEXT
�� 
rslt��  ��  �� / �b  %�%j E�W 	X  fO�b   eY f� �������������  0 killrunningapp killRunningApp��  ��  �  � ��������������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � ������������� 0 msg  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� +b  e  *���m+  Y  ��l W 	X  h� ������������� 0 servicealive serviceAlive��  ��  � �������� 0 cmdssh cmdSSH�� 
0 sshcon  �� 
0 tunnel  � ������������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� ����������
�� .aevtoappnull  �   � ****��  ��  �  � D������������+-��6����MXZ\p���������������������������������������)����9������������������oq��~�}~���� 0 resetprogram resetProgram�� 0 
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
� .sysoexecTEXT���     TEXT
�~ 
capp
�} .miscactvnull��� ��� null��5*j+  O*j+ O�E�O*j+ e 	 *j+ j �& "�b  %�%E�O*���m+ O*j+ OhY -*j+ j  "*���b  %�%b   %a %m+ OhY hOa *j+ %E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a ,E` O_ a    
*j+ Y _ a !  *j+ OhY hY �a "b  %E` Ob  e  1*a #*j+ _ a $%b  l!%a %%m+ Ob  l!j &Y la 'a (lvE` O U_ a )%b  %a *%E` O_ a _ a a +a �a ,b  a - a ,E` .O_ .a /  hY hW 	X 0 1hOa 2a 3,E` 4O*a 5b  a 6_ 4a 7 8E` 9O_ 4[a :\[Zk\Z_ 9k2E` ;O 4_ ;b  %a <%a =%j >Okj &O*a ?b  / *j @UW X 0 1*a Aa Ba Cb  %m+ OPascr  ��ޭ