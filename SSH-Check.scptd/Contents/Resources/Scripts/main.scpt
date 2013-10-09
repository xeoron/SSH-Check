FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.6.6
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com and
	To reprogram what program you want to launch by default, 
	drop a program onto SSH-Check.
	
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
     �  � 
 	 N a m e :   S S H - C h e c k 
 	 V e r s i o n :   0 . 6 . 6 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 
 	 L i c e n s e :   G P L 
 	 P u r p o s e :   O n l y   s t a r t   a   a p p   i f   t h e   s y s t e m   i s   s i g n e d   i n t o   a   S S H   s e r v i c e . 
 	 
 	 D e f a u l t   p r o g r a m   i s   F i r e f o x   a n d   s s h   s e r v i c e   t u n n e l r . c o m   a n d 
 	 T o   r e p r o g r a m   w h a t   p r o g r a m   y o u   w a n t   t o   l a u n c h   b y   d e f a u l t ,   
 	 d r o p   a   p r o g r a m   o n t o   S S H - C h e c k . 
 	 
 	 N O T E :   
 	 F o r   e v e n   m o r e   s e c u r i t y   t h i s   p r o g r a m   i s   b e s t   c o m b i n e d   w i t h   a   c r o n   j o b   t o   
 	 c h e c k   i f   S S H   c o n n e c t i o n   i s   s t i l l   a l i v e ,   o t h e r w i s e   k i l l   y o u r     A p p . 
 	 
      l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    ��  �� 0 programbackup programBackup   m     ! ! � " "  F i r e f o x  ' !don't remove to overt droplet bug     � # # B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g   $ % $ j   	 �� &�� 0 servicebackup serviceBackup & m   	 
 ' ' � ( (  t u n n e l r . c o m %  ) * ) l     ��������  ��  ��   *  + , + l      - . / - j    �� 0�� 0 	countdown   0 m     1 1 � 2 2  6 .  time out in seconds    / � 3 3 & t i m e   o u t   i n   s e c o n d s ,  4 5 4 j    �� 6�� 0 dnclocation DNCLocation 6 m     7 7 � 8 8 T ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 5  9 : 9 j    �� ;�� 0 xmlsettings XMLSettings ; m     < < � = = 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y :  > ? > j    �� @�� 0 dnca DNCA @ m     A A � B B x ~ / L i b r a r y / A u t o m a t o r / D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n ?  C D C l      E F G E j    �� H�� *0 displaynoticecenter DisplayNoticeCenter H m    ��
�� boovfals F a [script switchings to true when running on OS X.8 or higher & if "DNCLocation & DNCA" exists    G � I I � s c r i p t   s w i t c h i n g s   t o   t r u e   w h e n   r u n n i n g   o n   O S   X . 8   o r   h i g h e r   &   i f   " D N C L o c a t i o n   &   D N C A "   e x i s t s D  J K J l     ��������  ��  ��   K  L M L i     N O N I     �� P��
�� .aevtodocnull  �    alis P o      ���� 0 these_items  ��   O k     d Q Q  R S R l      �� T U��   T�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     U � V V   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   S  W X W l     ��������  ��  ��   X  Y Z Y r      [ \ [ m      ] ] � ^ ^   \ o      ���� 0 prog   Z  _ ` _ r    	 a b a c     c d c o    ���� 0 these_items   d m    ��
�� 
TEXT b o      ���� 0 prog   `  e f e l  
 
��������  ��  ��   f  g h g l  
 
�� i j��   i d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    j � k k � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e h  l m l r   
  n o n m   
  p p � q q  : o 1    ��
�� 
txdl m  r s r r     t u t n     v w v 4    �� x
�� 
citm x m    ����  w o    ���� 0 prog   u o      ���� 0 prog   s  y z y r     { | { m     } } � ~ ~  . | 1    ��
�� 
txdl z   �  r    # � � � n    ! � � � 4    !�� �
�� 
citm � m     ����  � o    ���� 0 prog   � o      ���� 0 prog   �  � � � I   $ )�������� $0 sshchecksettings sshCheckSettings��  ��   �  � � � I   * 0�� ����� 0 	updatexml 	updateXML �  ��� � o   + ,���� 0 prog  ��  ��   �  � � � s   1 9 � � � o   1 2���� 0 prog   � o      ���� 0 program   �  � � � l  : :��������  ��  ��   �  � � � I   : ?�������� 0 
setdisplay 
setDisplay��  ��   �  � � � I   @ T�� ����� 0 msg   �  � � � m   A B � � � � �  S S H - C h e c K �  � � � b   B I � � � m   B C � � � � �  S e t t i n g   � o   C H���� 0 program   �  ��� � b   I P � � � m   I J � � � � � & N o w   s e t   t o   s t a r t u p   � o   J O���� 0 program  ��  ��   �  � � � I  U ^�� ���
�� .sysodelanull��� ��� nmbr � o   U Z���� 0 	countdown  ��   �  ��� � I  _ d������
�� .aevtoappnull  �   � ****��  ��  ��   M  � � � l     ��������  ��  ��   �  � � � i    " � � � I      �������� 0 resetprogram resetProgram��  ��   � k      � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  ��� � r      � � � m     ��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   �  � � � l     ��������  ��  ��   �  � � � i   # & � � � I      �������� 0 getosxnumber getOSXNumber��  ��   � k      � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  ��� � L     � � l    ����� � c     � � � l    ����� � n     � � � 4    �� �
�� 
citm � m    ����  � l    ����� � n     � � � 1    ��
�� 
sisv � l    ����� � I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m    ��
�� 
nmbr��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i   ' * � � � I      �������� 0 
setdisplay 
setDisplay��  ��   � Z     = � ��� � � F     ) � � � F      � � � @      � � � I     �������� 0 getosxnumber getOSXNumber��  ��   � m    ����  � =  
  � � � I   
 �� ����� 0 
fileexists 
FileExists �  ��� � o    ���� 0 dnclocation DNCLocation��  ��   � m    ��
�� boovtrue � =   ' � � � I    %�� ����� 0 
fileexists 
FileExists �  ��� � o    !���� 0 dnca DNCA��  ��   � m   % &��
�� boovtrue � r   , 3 � � � m   , -�
� boovtrue � o      �~�~ *0 displaynoticecenter DisplayNoticeCenter��   � r   6 = � � � m   6 7�}
�} boovfals � o      �|�| *0 displaynoticecenter DisplayNoticeCenter �  � � � l     �{�z�y�{  �z  �y   �  � � � i   + . � � � I      �x ��w�x 0 
fileexists 
FileExists �  ��v � o      �u�u 0 thefile theFile�v  �w   � k      � �  � � � O      � � � Z     � ��t�s � I   �r ��q
�r .coredoexbool       obj  � 4    �p �
�p 
file � o    �o�o 0 thefile theFile�q   � L     � � m    �n
�n boovtrue�t  �s   � m       �                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   � �m L     m    �l
�l boovfals�m   �  l     �k�j�i�k  �j  �i    i   / 2 I      �h	�g�h 0 folderexists FolderExists	 
�f
 o      �e�e 0 	thefolder 	theFolder�f  �g   k       O      Z    �d�c I   �b�a
�b .coredoexbool       obj  4    �`
�` 
cfol o    �_�_ 0 	thefolder 	theFolder�a   L     m    �^
�^ boovtrue�d  �c   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �] L     m    �\
�\ boovfals�]    l     �[�Z�Y�[  �Z  �Y    i   3 6 I      �X�W�X 0 	updatexml 	updateXML �V o      �U�U 0 programname programName�V  �W   k     �   !"! Z     �#$�T�S# =    %&% I     
�R'�Q�R 0 
fileexists 
FileExists' (�P( o    �O�O 0 xmlsettings XMLSettings�P  �Q  & m   
 �N
�N boovtrue$ Q    �)*�M) k    x++ ,-, r    './. I   %�L0�K
�L .sysoexecTEXT���     TEXT0 b    !121 b    343 b    565 b    787 o    �J�J 0 xmlsettings XMLSettings8 1    �I
�I 
spac6 m    99 �::  - u p4 1    �H
�H 
spac2 n     ;<; 1     �G
�G 
strq< o    �F�F 0 programname programName�K  / o      �E�E 
0 update  - =>= Z   ( s?@�DA? =  ( +BCB o   ( )�C�C 
0 update  C m   ) *DD �EE  T r u e@ L   . 0FF m   . /�B
�B boovtrue�D  A k   3 sGG HIH r   3 HJKJ I  3 F�AL�@
�A .sysoexecTEXT���     TEXTL b   3 BMNM b   3 >OPO b   3 <QRQ b   3 :STS o   3 8�?�? 0 xmlsettings XMLSettingsT 1   8 9�>
�> 
spacR m   : ;UU �VV  - cP 1   < =�=
�= 
spacN n   > AWXW 1   ? A�<
�< 
strqX o   > ?�;�; 0 programname programName�@  K o      �:�: 
0 update  I YZY r   I ^[\[ I  I \�9]�8
�9 .sysoexecTEXT���     TEXT] b   I X^_^ b   I T`a` b   I Rbcb b   I Pded o   I N�7�7 0 xmlsettings XMLSettingse 1   N O�6
�6 
spacc m   P Qff �gg  - u pa 1   R S�5
�5 
spac_ n   T Whih 1   U W�4
�4 
strqi o   T U�3�3 0 programname programName�8  \ o      �2�2 0 update2  Z j�1j Z   _ skl�0�/k F   _ jmnm =  _ bopo o   _ `�.�. 
0 update  p m   ` aqq �rr  T r u en =  e hsts o   e f�-�- 0 update2  t m   f guu �vv  T r u el L   m oww m   m n�,
�, boovtrue�0  �/  �1  > x�+x R   t x�*�)�(
�* .ascrerr ****      � ****�)  �(  �+  * R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �M  �T  �S  " y�$y L   � �zz m   � ��#
�# boovfals�$   {|{ l     �"�!� �"  �!  �   | }~} i   7 :� I      ���� 0 setupservice setUpService�  �  � k     q�� ��� Z     S����� =    ��� I     
���� 0 
fileexists 
FileExists� ��� o    �� 0 xmlsettings XMLSettings�  �  � m   
 �
� boovtrue� Q    O���� k    F�� ��� r    !��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    �� 0 xmlsettings XMLSettings� 1    �
� 
spac� m    �� ���  - s�  � o      �� 0 ser  � ��� Z   " A����� F   " /��� H   " &�� E   " %��� o   " #�� 0 ser  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *�� 0 ser  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3�� 0 ser  � o      �
�
 0 service  � ��	� L   ; =�� m   ; <�
� boovtrue�	  �  �  � ��� R   B F���
� .ascrerr ****      � ****�  �  �  � R      ���
� .ascrerr ****      � ****�  �  �  �  �  � ��� Z   T n��� ��� =  T [��� o   T Y���� 0 service  � m   Y Z�� ���  � s   ^ j��� o   ^ c���� 0 servicebackup serviceBackup� o      ���� 0 service  �   ��  � ���� L   o q�� m   o p��
�� boovfals��  ~ ��� l     ��������  ��  ��  � ��� i   ; >��� I      �������� 0 setupprogram setUpProgram��  ��  � k     q�� ��� Z     S������� =    ��� I     
������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m   
 ��
�� boovtrue� Q    O����� k    F�� ��� r    !��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    ���� 0 xmlsettings XMLSettings� 1    ��
�� 
spac� m    �� ���  - p��  � o      ���� 0 prog  � ��� Z   " A������� F   " /��� H   " &�� E   " %��� o   " #���� 0 prog  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *���� 0 prog  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3���� 0 prog  � o      ���� 0 program  � ���� L   ; =�� m   ; <��
�� boovtrue��  ��  ��  � ���� R   B F������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� Z   T n������� =  T [��� o   T Y���� 0 program  � m   Y Z�� ���  � s   ^ j��� o   ^ c���� 0 programbackup programBackup� o      ���� 0 program  ��  ��  � ���� L   o q�� m   o p��
�� boovfals��  � ��� l     ��������  ��  ��  � � � i   ? B I      �������� $0 sshchecksettings sshCheckSettings��  ��   l   � k    �  r     	
	 m      �  . s s h - c h e c k
 o      ���� 0 configfolder configFolder  r    	 b     m     �  ~ / o    ���� 0 configfolder configFolder o      ���� 0 
configpath 
configPath  l  
 
��������  ��  ��    Z   
����� G   
 Q G   
 4 G   
 #  =  
 !"! I   
 ��#���� 0 folderexists FolderExists# $��$ o    ���� 0 
configpath 
configPath��  ��  " m    ��
�� boovfals  =   !%&% I    ��'���� 0 
fileexists 
FileExists' (��( o    ���� 0 dnclocation DNCLocation��  ��  & m     ��
�� boovfals =  & 2)*) I   & 0��+���� 0 
fileexists 
FileExists+ ,��, o   ' ,���� 0 xmlsettings XMLSettings��  ��  * m   0 1��
�� boovfals l  7 O-����- F   7 O./. =  7 C010 I   7 A��2���� 0 
fileexists 
FileExists2 3��3 o   8 =���� 0 dnca DNCA��  ��  1 m   A B��
�� boovfals/ @   F M454 I   F K�������� 0 getosxnumber getOSXNumber��  ��  5 m   K L���� ��  ��   k   T|66 787 l  T T��9:��  9 F @# setup path, display notification data, and config file manager   : �;; � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r8 <=< l  T T��>?��  > � {# Note: curling for now, but might start stuffing the workflow folder inside SSH-Check binary to remove a point of failure    ? �@@ � #   N o t e :   c u r l i n g   f o r   n o w ,   b u t   m i g h t   s t a r t   s t u f f i n g   t h e   w o r k f l o w   f o l d e r   i n s i d e   S S H - C h e c k   b i n a r y   t o   r e m o v e   a   p o i n t   o f   f a i l u r e  = ABA r   T _CDC b   T ]EFE b   T [GHG b   T YIJI b   T WKLK m   T UMM �NN  c d  L o   U V���� 0 
configpath 
configPathJ 1   W X��
�� 
spacH m   Y ZOO �PP  & &F 1   [ \��
�� 
spacD o      ���� 
0 mypath  B QRQ l  ` `��������  ��  ��  R STS Q   `EUVWU k   cXX YZY Z   c [\����[ =  c k]^] I   c i��_���� 0 folderexists FolderExists_ `��` o   d e���� 0 
configpath 
configPath��  ��  ^ m   i j��
�� boovfals\ k   n {aa bcb r   n uded b   n sfgf b   n qhih m   n ojj �kk  m k d i r   - pi 1   o p��
�� 
spacg o   q r���� 0 
configpath 
configPathe o      ���� 0 cmdmakepath cmdMakePathc l��l l  v {mnom I  v {��p��
�� .sysoexecTEXT���     TEXTp o   v w���� 0 cmdmakepath cmdMakePath��  n  create path   o �qq  c r e a t e   p a t h��  ��  ��  Z rsr l  � ���������  ��  ��  s tut Z   � �vw����v =  � �xyx I   � ���z���� 0 
fileexists 
FileExistsz {��{ o   � ����� 0 xmlsettings XMLSettings��  ��  y m   � ���
�� boovfalsw k   � �|| }~} r   � �� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 
0 mypath  � m   � ��� ���  c u r l   - L   - o  � o   � ����� 0 xmlsettings XMLSettings� 1   � ���
�� 
spac� n   � ���� 1   � ���
�� 
strq� m   � ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / i c o n f i g S S H C . p y ? r a w = t r u e� o      ���� 0 
cmdcurlxml 
cmdCurlXML~ ��� l  � ����� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 
cmdcurlxml 
cmdCurlXML��  �  get config file manager   � ��� . g e t   c o n f i g   f i l e   m a n a g e r� ��� l  � ����� I  � ����~
� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� o   � ��}�} 
0 mypath  � m   � ��� ���  c h m o d   + x� 1   � ��|
�| 
spac� o   � ��{�{ 0 xmlsettings XMLSettings�~  �  mark executable   � ���  m a r k   e x e c u t a b l e� ��z� l  � ��y���y  � � �note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml, then all other times it will use the data set in the file.   � ���6 n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,   t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .�z  ��  ��  u ��� l  � ��x�w�v�x  �w  �v  � ��� Z   �����u�t� F   � ���� =  � ���� I   � ��s��r�s 0 
fileexists 
FileExists� ��q� o   � ��p�p 0 dnca DNCA�q  �r  � m   � ��o
�o boovfals� @   � ���� I   � ��n�m�l�n 0 getosxnumber getOSXNumber�m  �l  � m   � ��k�k � k   ���� ��� r   � ���� m   � ��� ��� X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p� o      �j�j 0 alertaction alertAction� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��i�i 
0 mypath  � m   � ��� ���  c u r l   - L   - o  � o   � ��h�h 0 alertaction alertAction� 1   � ��g
�g 
spac� n   � ���� 1   � ��f
�f 
strq� m   � ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p ? r a w = t r u e� o      �e�e 0 cmdcurldnca cmdCurlDNCA� ��� I  � ��d��c
�d .sysoexecTEXT���     TEXT� o   � ��b�b 0 cmdcurldnca cmdCurlDNCA�c  � ��� Z   �.���a�`� =  ���� I   ��_��^�_ 0 
fileexists 
FileExists� ��]� b   � ���� b   � ���� o   � ��\�\ 0 
configpath 
configPath� m   � ��� ���  /� o   � ��[�[ 0 alertaction alertAction�]  �^  � m  �Z
�Z boovtrue� k  *�� ��� r  ��� b  ��� b  ��� b  ��� o  �Y�Y 
0 mypath  � m  �� ���  u n z i p   - u� 1  �X
�X 
spac� o  �W�W 0 alertaction alertAction� o      �V�V *0 cmdunzipalertaction cmdUnzipAlertAction� ��� I �U��T
�U .sysoexecTEXT���     TEXT� o  �S�S *0 cmdunzipalertaction cmdUnzipAlertAction�T  � ��� r  $��� b  "��� b   ��� b  ��� o  �R�R 
0 mypath  � m  �� ���   r m   - r f   _ _ M A C O S X /� 1  �Q
�Q 
spac� o   !�P�P 0 alertaction alertAction� o      �O�O .0 cmdcleanupalertaction cmdCleanUpAlertAction� ��N� I %*�M��L
�M .sysoexecTEXT���     TEXT� o  %&�K�K .0 cmdcleanupalertaction cmdCleanUpAlertAction�L  �N  �a  �`  � � � r  /4 m  /2 � � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p ! o      �J�J 0 qmsg qMsg   r  5? J  5=		 

 m  58 �  Y e s �I m  8; �  N o�I   o      �H�H 0 btnopt btnOpt �G Q  @��F k  C�  r  Cj n  Ch 1  dh�E
�E 
bhit l Cd�D�C I Cd�B
�B .sysodlogaskr        TEXT o  CD�A�A 0 qmsg qMsg �@
�@ 
btns o  GH�?�? 0 btnopt btnOpt �> !
�> 
dflt  m  KN"" �##  N o! �=$%
�= 
appr$ m  QT&& �'' > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p% �<(�;
�< 
givu( ]  W`)*) o  W\�:�: 0 	countdown  * m  \_�9�9 <�;  �D  �C   o      �8�8 0 yesorno yesOrNo +,+ Z  k�-.�7�6- = kp/0/ o  kl�5�5 0 yesorno yesOrNo0 m  lo11 �22  Y e s. I s��43�3
�4 .sysoexecTEXT���     TEXT3 b  s~454 b  sx676 o  st�2�2 
0 mypath  7 m  tw88 �99 
 o p e n  5 n  x}:;: 1  {}�1
�1 
strq; m  x{<< �== P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n�3  �7  �6  , >?> R  ���0�/�.
�0 .ascrerr ****      � ****�/  �.  ? @�-@ I  ���,A�+�, 0 msg  A BCB m  ��DD �EE   S S H - C h e c k :   E r r o rC FGF m  ��HH �II  G J�*J m  ��KK �LL @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !�*  �+  �-   R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �F  �G  �u  �t  � MNM l ���&�%�$�&  �%  �$  N O�#O Z  �PQ�"�!P F  ��RSR = ��TUT I  ��� V��  0 folderexists FolderExistsV W�W o  ���� 0 
configpath 
configPath�  �  U m  ���
� boovtrueS = ��XYX I  ���Z�� 0 
fileexists 
FileExistsZ [�[ o  ���� 0 dnclocation DNCLocation�  �  Y m  ���
� boovfalsQ k  �\\ ]^] l ���_`�  _ 0 *setup display notification center workflow   ` �aa T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w^ bcb r  ��ded m  ��ff �gg  d n . w o r k f l o w . z i pe o      �� 0 
dnworkflow 
DNWorkflowc hih r  ��jkj b  ��lml b  ��non b  ��pqp b  ��rsr o  ���� 
0 mypath  s m  ��tt �uu  c u r l   - L   - o  q o  ���� 0 
dnworkflow 
DNWorkflowo 1  ���
� 
spacm n  ��vwv 1  ���
� 
strqw m  ��xx �yy � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u ek o      �� &0 cmdcurldnworkflow cmdCurlDNWorkflowi z{z r  ��|}| b  ��~~ b  ����� b  ����� o  ���� 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ���
� 
spac o  ���� 0 
dnworkflow 
DNWorkflow} o      �� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow{ ��� r  ����� b  ����� b  ����� b  ����� o  ���� 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ���

�
 
spac� o  ���	�	 0 
dnworkflow 
DNWorkflow� o      �� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� I �����
� .sysoexecTEXT���     TEXT� o  ���� &0 cmdcurldnworkflow cmdCurlDNWorkflow�  � ��� Z  ������ = ���� I  ���� � 0 
fileexists 
FileExists� ���� b  ���� b  � ��� o  ������ 0 
configpath 
configPath� m  ���� ���  /� o   ���� 0 
dnworkflow 
DNWorkflow��  �   � m  ��
�� boovtrue� k  �� ��� I �����
�� .sysoexecTEXT���     TEXT� o  ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  � ���� I �����
�� .sysoexecTEXT���     TEXT� o  ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  �  �  �  �"  �!  �#  V R      ������
�� .ascrerr ****      � ****��  ��  W k  &E�� ��� I  &6������� 0 msg  � ��� b  '.��� m  '*�� ���  F a i l e d :� o  *-���� 0 imsg  � ��� m  .1�� ���  � ���� o  12���� 0 
configpath 
configPath��  ��  � ��� I  7<�������� 0 setupservice setUpService��  ��  � ��� I  =B�������� 0 setupprogram setUpProgram��  ��  � ���� L  CE�� m  CD��
�� boovfals��  T ��� l FF��������  ��  ��  � ��� l FF������  � n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   � ��� � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .� ��� I FQ�����
�� .sysodelanull��� ��� nmbr� ^  FM��� o  FK���� 0 	countdown  � m  KL���� ��  � ��� I  RW�������� 0 
setdisplay 
setDisplay��  ��  � ���� Z  X|������� = X_��� o  X]���� *0 displaynoticecenter DisplayNoticeCenter� m  ]^��
�� boovtrue� k  bx�� ��� I  br������� 0 msg  � ��� m  cf�� ���   S S H - C h e c k :   S e t u p� ��� b  fk��� o  fg���� 0 
configpath 
configPath� m  gj�� ��� ,   s e t t i n g s   a r e   c u r r e n t .� ���� m  kn�� ��� L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !��  ��  � ���� I sx�����
�� .sysodelanull��� ��� nmbr� m  st���� ��  ��  ��  ��  ��  ��  ��   ��� l ����������  ��  ��  � ��� l ��������  � # loadSettings from config file   � ��� : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e� ��� Z  ��������� F  ����� = ����� I  ���������� 0 setupservice setUpService��  ��  � m  ����
�� boovtrue� = ����� I  ���������� 0 setupprogram setUpProgram��  ��  � m  ����
�� boovtrue� L  ���� m  ����
�� boovtrue��  ��  � ��� l ����������  ��  ��  � ���� L  ���� m  ����
�� boovfals��    return bool    ���  r e t u r n   b o o l  ��� l     ��������  ��  ��  � ��� i   C F��� I      �� ���� 
0 notify     o      ���� 	0 title    o      ���� 0 subtitle   �� o      ���� 0 message  ��  ��  � k     �  l      ��	
��  	 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    
 �   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
   R e q u i r e s :   S E T U P   
   	 1 )   a u t o m a t i o n   w o r k f l o w   t o   b e   i n s t a l l e d   f r o m   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 / 
 	 2 )   C r e a t e   a   n e w   w o r k f l o w   i n   A u t o m a t o r   c o n t a i n i n g   o n l y   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 3 )   I n   t h e   v a r i a b l e s   s e c t i o n   a t   t h e   b o t t o m   o f   t h e   w o r k f l o w   c o n s t r u c t i o n   a r e a   i n   A u t o m a t o r ' s   w i n d o w ,   c r e a t e   t h r e e   v a r i a b l e s   n a m e d   t i t l e ,   s u b t i t l e ,   a n d   m e s s a g e . 
 	 4 )   G i v e   m e s s a g e   a   d e f a u l t   v a l u e   l i k e   " N o t i f i c a t i o n   s e n t . "   Y o u   c a n   l e a v e   t h e   d e f a u l t   v a l u e s   o t h e r   t w o   b l a n k . 
 	 5 )   D r a g   e a c h   v a r i a b l e   t o   i t s   c o r r e s p o n d i n g   f i e l d   i n   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 6 )   S a v e   t h e   w o r k f l o w   a s   D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w .   A   g o o d   p l a c e   t o   s a v e   i t   i s   i n   ~ / . s s h - c h e c k   ( c r e a t e   t h e   f o l d e r   i f   n e c e s s a r y ) . 
 
 	 N o w   y o u   c a n   d i s p l a y   a   n o t i f i c a t i o n   f r o m   t h e   c o m m a n d   l i n e   u s i n g   t h e   f o l l o w i n g   c o m m a n d : 
 	 	 a u t o m a t o r   - D   t i t l e = ' T i t l e   t e x t '   - D   s u b t i t l e = ' S u b t i t l e   t e x t '   - D   m e s s a g e = ' M e s s a g e   t e x t '   ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 
    l     ��������  ��  ��    Z    ���� >     c      o     ���� 	0 title   m    ��
�� 
ctxt m     �   r     b     m    	 �    - D   t i t l e = n   	  1    ��
�� 
strq l  	  ����  c   	 !"! o   	 
���� 	0 title  " m   
 ��
�� 
ctxt��  ��   o      ���� 	0 title  ��  ��   #$# Z   +%&����% >   '(' c    )*) o    ���� 0 subtitle  * m    ��
�� 
ctxt( m    ++ �,,  & r    '-.- b    %/0/ m    11 �22    - D   s u b t i t l e =0 n    $343 1   " $��
�� 
strq4 l   "5����5 c    "676 o     ���� 0 subtitle  7 m     !��
�� 
ctxt��  ��  . o      ���� 0 subtitle  ��  ��  $ 898 Z  , A:;����: >  , 1<=< c   , />?> o   , -���� 0 message  ? m   - .��
�� 
ctxt= m   / 0@@ �AA  ; r   4 =BCB b   4 ;DED m   4 5FF �GG    - D   m e s s a g e =E n   5 :HIH 1   8 :��
�� 
strqI l  5 8J����J c   5 8KLK o   5 6���� 0 message  L m   6 7��
�� 
ctxt��  ��  C o      ���� 0 message  ��  ��  9 M��M Q   B �NOPN I  E b��Q��
�� .sysoexecTEXT���     TEXTQ b   E ^RSR b   E \TUT b   E ZVWV b   E TXYX b   E RZ[Z b   E P\]\ b   E N^_^ b   E L`a` b   E Jbcb b   E Hded m   E Fff �gg  a u t o m a t o re 1   F G��
�� 
spacc o   H I���� 	0 title  a 1   J K��
�� 
spac_ o   L M���� 0 subtitle  ] 1   N O��
�� 
spac[ o   P Q���� 0 message  Y 1   R S��
�� 
spacW o   T Y���� 0 dnclocation DNCLocationU 1   Z [��
�� 
spacS m   \ ]hh �ii  2 > / d e v / n u l l��  O R      �����
�� .ascrerr ****      � ****��  �  P k   j �jj klk r   j qmnm m   j koo �pp 
 f a l s en o      �~�~ *0 displaynoticecenter DisplayNoticeCenterl q�}q I   r ��|r�{�| 0 msg  r sts m   s tuu �vv   S S H - C h e c k :   E r r o rt wxw m   t wyy �zz  x {�z{ b   w �|}| m   w z~~ � � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  } o   z �y�y 0 dnclocation DNCLocation�z  �{  �}  ��  � ��� l     �x�w�v�x  �w  �v  � ��� i   G J��� I      �u��t�u 0 msg  � ��� o      �s�s 0 msgtitle msgTitle� ��� o      �r�r 0 subtitle  � ��q� o      �p�p 0 message  �q  �t  � Z     *���o�� =    ��� o     �n�n *0 displaynoticecenter DisplayNoticeCenter� m    �m
�m boovtrue� l  
 ���� I   
 �l��k�l 
0 notify  � ��� o    �j�j 0 msgtitle msgTitle� ��� o    �i�i 0 subtitle  � ��h� o    �g�g 0 message  �h  �k  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�o  � Q    *���� L     �� I   �f��
�f .sysodlogaskr        TEXT� o    �e�e 0 message  � �d��c
�d 
appr� o    �b�b 0 msgtitle msgTitle�c  � R      �a�`�_
�a .ascrerr ****      � ****�`  �_  � L   ( *�^�^  � ��� l     �]�\�[�]  �\  �[  � ��� i   K N��� I      �Z�Y�X�Z 0 isapprunning isAppRunning�Y  �X  � k     *�� ��� Q     '���� O    ��� Z    ���W�V� =   ��� n    ��� 1    �U
�U 
prun�  g    � m    �T
�T boovtrue� L    �� m    �S
�S boovtrue�W  �V  � 4    �R�
�R 
capp� o    
�Q�Q 0 program  � R      �P�O�N
�P .ascrerr ****      � ****�O  �N  � L   % '�� m   % &�M
�M boovfals� ��L� L   ( *�� m   ( )�K
�K boovfals�L  � ��� l     �J�I�H�J  �I  �H  � ��� i   O R��� I      �G�F�E�G  0 killrunningapp killRunningApp�F  �E  � Q     5���� O     ��� l   ���� Z    ���D�C� =   ��� n    ��� 1    �B
�B 
prun�  g    � m    �A
�A boovtrue� I   �@�?�>
�@ .aevtquitnull��� ��� null�?  �>  �D  �C  �   doesn't launch app   � ��� &   d o e s n ' t   l a u n c h   a p p� 4    �=�
�= 
capp� o    
�<�< 0 program  � R      �;�:�9
�; .ascrerr ****      � ****�:  �9  � I  ( 5�8��7
�8 .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .�6�6 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�7  � ��� l     �5�4�3�5  �4  �3  � ��� i   S V��� I      �2�1�0�2 0 servicealive serviceAlive�1  �0  � Q     <���� l   2���� k    2�� ��� r    ��� b    ��� b    
��� m    �� ��� @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o    	�/�/ 0 service  � m   
 �� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      �.�. 0 cmdssh cmdSSH� ��� r    ��� n    ��� 4    �-�
�- 
cobj� m    �,�, � n    ��� 2   �+
�+ 
cpar� l   ��*�)� I   �(��'
�( .sysoexecTEXT���     TEXT� o    �&�& 0 cmdssh cmdSSH�'  �*  �)  � o      �%�% 
0 sshcon  � ��� s        o    �$�$ 
0 sshcon   o      �#�# 
0 tunnel  � �" Z   ! 2�! E   ! ( o   ! "� �  
0 tunnel   o   " '�� 0 service   L   + - o   + ,�� 
0 tunnel  �!   L   0 2		 m   0 1��  �"  � 0 *check for ssh connected to defined service   � �

 T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e� R      ���
� .ascrerr ****      � ****�  �  � L   : < m   : ;��  �  l     ����  �  �   � i   W Z I     ���
� .aevtoappnull  �   � ****�  �   k    B  I     ���� 0 resetprogram resetProgram�  �    I    ���� $0 sshchecksettings sshCheckSettings�  �    I    ��
�	� 0 
setdisplay 
setDisplay�
  �	    l   ����  �  �    r     I    ���� 0 servicealive serviceAlive�  �   o      ��  0 isservicealive isServiceAlive  r     !  m    "" �## ( S S H   S e r v i c e   i s   D o w n !! o      �� 0 titlemsg   $%$ Z    �&'(� & F    -)*) =   %+,+ I    #�������� 0 isapprunning isAppRunning��  ��  , m   # $��
�� boovtrue* =  ( +-.- o   ( )����  0 isservicealive isServiceAlive. m   ) *����  ' k   0 S// 010 r   0 ;232 b   0 9454 b   0 7676 m   0 188 �99 , I t   i s   n o t   s a f e   t o   r u n  7 o   1 6���� 0 program  5 m   7 8:: �;; H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !3 o      ���� 0 message  1 <=< I   < J��>���� 0 msg  > ?@? o   = >���� 0 titlemsg  @ ABA b   > ECDC m   > ?EE �FF  W a r n i n g  D o   ? D���� 0 service  B G��G o   E F���� 0 message  ��  ��  = HIH I   K P��������  0 killrunningapp killRunningApp��  ��  I J��J l  Q SKLMK L   Q S����  L  exit SSH-Check   M �NN  e x i t   S S H - C h e c k��  ( OPO =  V YQRQ o   V W����  0 isservicealive isServiceAliveR m   W X����  P S��S k   \ �TT UVU I   \ ���W���� 0 msg  W XYX o   ] ^���� 0 titlemsg  Y Z[Z b   ^ e\]\ m   ^ _^^ �__  W a r n i n g   a b o u t  ] o   _ d���� 0 service  [ `��` b   e |aba b   e xcdc b   e refe b   e nghg m   e hii �jj  D o n ' t   r u n  h o   h m���� 0 program  f m   n qkk �ll F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  d o   r w���� 0 service  b m   x {mm �nn  .��  ��  V o��o l  � �pqrp L   � �����  q  exit SSH-Check   r �ss  e x i t   S S H - C h e c k��  ��  �   % tut l  � ���������  ��  ��  u vwv l  � ���xy��  x C =Ask if you want to run your program, kill it, or quietly stop   y �zz z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o pw {|{ r   � �}~} b   � �� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � �����  0 isservicealive isServiceAlive~ o      ���� 0 titlemsg  | ��� Z   �������� =  � ���� I   � ��������� 0 isapprunning isAppRunning��  ��  � m   � ���
�� boovtrue� l  ����� k   ��� ��� r   � ���� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ���� m   � ��� ���  T u r n   O f f��  � o      ���� 0 btnopt btnOpt� ��� r   � ���� b   � ���� o   � ����� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      ���� 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �����
�� 
appr� o   � ����� 0 titlemsg  ��  ��  ��  � o      ���� 
0 choice  � ���� Z   ������ =  � ���� o   � ����� 
0 choice  � m   � ��� ���  R e s t a r t� I   � ���������  0 killrunningapp killRunningApp��  ��  � ��� =  � ���� o   � ����� 
0 choice  � m   � ��� ���  T u r n   O f f� ���� k   � ��� ��� I   � ���������  0 killrunningapp killRunningApp��  ��  � ���� l  � ����� L   � �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  � l ���� l ���� L  ����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l��  � 0 * should we kill & restart the running app?   � ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  � k  ��� ��� r  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	���� 0 program  � o      ���� 0 qmsg qMsg� ���� Z  ������� = ��� o  ���� *0 displaynoticecenter DisplayNoticeCenter� m  ��
�� boovtrue� k  F�� ��� I  :������� 0 msg  � ��� m  "�� ���  S S H - C h e c k� ��� b  "/��� b  "+��� I  "'�������� 0 servicealive serviceAlive��  ��  � 1  '*��
�� 
spac� m  +.�� ���  i s   a c t i v e� ���� b  /6��� o  /2���� 0 qmsg qMsg� m  25�� ���  u p   n o w !��  ��  � ���� I ;F�����
�� .sysodelanull��� ��� nmbr� l ;B������ ^  ;B��� o  ;@���� 0 	countdown  � m  @A���� ��  ��  ��  ��  ��  � k  I�    r  IU J  IQ  m  IL �		  L a u n c h 
��
 m  LO �  S t o p��   o      ���� 0 btnopt btnOpt �� Q  V� k  Y�  r  Yn b  Yj b  Yf b  Y` o  Y\���� 0 qmsg qMsg m  \_ �    i n   o  `e���� 0 	countdown   m  fi �    s e c o n d s ! o      ���� 0 qmsg qMsg  !  r  o�"#" n  o�$%$ 1  ����
�� 
bhit% l o�&����& I o���'(
�� .sysodlogaskr        TEXT' o  or���� 0 qmsg qMsg( ��)*
�� 
btns) o  ux���� 0 btnopt btnOpt* ��+,
�� 
dflt+ m  {~-- �..  L a u n c h, ��/0
�� 
appr/ o  ������ 0 titlemsg  0 ��1��
�� 
givu1 o  ������ 0 	countdown  ��  ��  ��  # o      ���� 0 yesorno yesOrNo! 2��2 Z  ��34����3 = ��565 o  ������ 0 yesorno yesOrNo6 m  ��77 �88  S t o p4 L  ������  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��   L  ������  ��  ��  � 9:9 l ����������  ��  ��  : ;<; l ����=>��  = ! Prepare to launch a program   > �?? 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m< @A@ r  ��BCB n  ��DED 1  ����
�� 
psxpE l ��F����F m  ��GG �HH  / A p p l i c a t i o n s /��  ��  C o      �� 0 apppath appPathA IJI l ���~KL�~  K 0 *msg("info:", "Msg", "apppath: " & appPath)   L �MM T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )J NON r  ��PQP I ���}�|R
�} .sysooffslong    ��� null�|  R �{ST
�{ 
psofS o  ���z�z 0 program  T �yU�x
�y 
psinU o  ���w�w 0 apppath appPath�x  Q o      �v�v 0 
nameoffset 
nameOffsetO VWV l ���uXY�u  X 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   Y �ZZ ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )W [\[ r  ��]^] n  ��_`_ 7 ���tab
�t 
ctxta m  ���s�s b l ��c�r�qc \  ��ded o  ���p�p 0 
nameoffset 
nameOffsete m  ���o�o �r  �q  ` o  ���n�n 0 apppath appPath^ o      �m�m 0 
folderpath 
folderPath\ fgf l ���lhi�l  h 6 0msg("info:", "Msg", "folderpath: " & folderPath)   i �jj ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )g klk Q  �@mnom l �$pqrp k  �$ss tut I �
�kv�j
�k .sysoexecTEXT���     TEXTv b  �wxw b  �yzy b  ��{|{ o  ���i�i 0 
folderpath 
folderPath| o  ���h�h 0 program  z m  �}} �~~  . a p px m   ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�j  u ��� I �g��f
�g .sysodelanull��� ��� nmbr� m  �e�e �f  � ��d� O $��� I #�c�b�a
�c .miscactvnull��� ��� null�b  �a  � 4  �`�
�` 
capp� o  �_�_ 0 program  �d  q ( "start program up in the background   r ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dn R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  o I  ,@�[��Z�[ 0 msg  � ��� m  -0�� ���   S S H - C h e c k :   E r r o r� ��� m  03�� ��� 
 E r r o r� ��Y� b  3<��� m  36�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  6;�X�X 0 program  �Y  �Z  l ��W� l AA�V�U�T�V  �U  �T  �W  �       �S�   ! ' 1 7 < A�R�����������������S  � �Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�Q 0 service  �P 0 program  �O 0 programbackup programBackup�N 0 servicebackup serviceBackup�M 0 	countdown  �L 0 dnclocation DNCLocation�K 0 xmlsettings XMLSettings�J 0 dnca DNCA�I *0 displaynoticecenter DisplayNoticeCenter
�H .aevtodocnull  �    alis�G 0 resetprogram resetProgram�F 0 getosxnumber getOSXNumber�E 0 
setdisplay 
setDisplay�D 0 
fileexists 
FileExists�C 0 folderexists FolderExists�B 0 	updatexml 	updateXML�A 0 setupservice setUpService�@ 0 setupprogram setUpProgram�? $0 sshchecksettings sshCheckSettings�> 
0 notify  �= 0 msg  �< 0 isapprunning isAppRunning�;  0 killrunningapp killRunningApp�: 0 servicealive serviceAlive
�9 .aevtoappnull  �   � ****
�R boovfals� �8 O�7�6���5
�8 .aevtodocnull  �    alis�7 0 these_items  �6  � �4�3�4 0 these_items  �3 0 prog  �  ]�2 p�1�0 }�/�.�- � � ��,�+�*
�2 
TEXT
�1 
txdl
�0 
citm�/ $0 sshchecksettings sshCheckSettings�. 0 	updatexml 	updateXML�- 0 
setdisplay 
setDisplay�, 0 msg  
�+ .sysodelanull��� ��� nmbr
�* .aevtoappnull  �   � ****�5 e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j � �) ��(�'���&�) 0 resetprogram resetProgram�(  �'  �  �  �& fEc  � �% ��$�#���"�% 0 getosxnumber getOSXNumber�$  �#  �  �  ��!� ���
�! 
txdl
�  .sysosigtsirr   ��� null
� 
sisv
� 
citm
� 
nmbr�" �*�,FO*j �,�l/�&� � ������� 0 
setdisplay 
setDisplay�  �  �  � ����� 0 getosxnumber getOSXNumber� � 0 
fileexists 
FileExists
� 
bool� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  � � ������� 0 
fileexists 
FileExists� ��� �  �� 0 thefile theFile�  � �� 0 thefile theFile�  ��
� 
file
� .coredoexbool       obj � � *�/j  eY hUOf� ��
�	���� 0 folderexists FolderExists�
 ��� �  �� 0 	thefolder 	theFolder�	  � �� 0 	thefolder 	theFolder� ��
� 
cfol
� .coredoexbool       obj � � *�/j  eY hUOf� ��� ����� 0 	updatexml 	updateXML� ����� �  ���� 0 programname programName�   � �������� 0 programname programName�� 
0 update  �� 0 update2  � ����9����DUfqu�������� 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOf� ������������� 0 setupservice setUpService��  ��  � ���� 0 ser  � 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOf� ������������� 0 setupprogram setUpProgram��  ��  � ���� 0 prog  � 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOf� ������������ $0 sshchecksettings sshCheckSettings��  ��  � ������������������������������������ 0 configfolder configFolder�� 0 
configpath 
configPath�� 
0 mypath  �� 0 cmdmakepath cmdMakePath�� 0 
cmdcurlxml 
cmdCurlXML�� 0 alertaction alertAction�� 0 cmdcurldnca cmdCurlDNCA�� *0 cmdunzipalertaction cmdUnzipAlertAction�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�� 0 qmsg qMsg�� 0 btnopt btnOpt�� 0 yesorno yesOrNo�� 0 
dnworkflow 
DNWorkflow�� &0 cmdcurldnworkflow cmdCurlDNWorkflow�� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow�� 0 imsg  � :����������M��Oj�����������������"��&��������18<DHK������ftx������������������ 0 folderexists FolderExists�� 0 
fileexists 
FileExists
�� 
bool�� 0 getosxnumber getOSXNumber�� 
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
strq
�� 
btns
�� 
dflt
�� 
appr
�� 
givu�� <
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 msg  ��  ��  �� 0 setupservice setUpService�� 0 setupprogram setUpProgram
�� .sysodelanull��� ��� nmbr�� 0 
setdisplay 
setDisplay����E�O�%E�O*�k+ f 
 *b  k+ f �&
 *b  k+ f �&
 *b  k+ f 	 *j+ ��&�&-�%�%�%�%E�O�*�k+ f  ��%�%E�O�j Y hO*b  k+ f  .��%b  %�%��,%E�O�j O��%�%b  %j OPY hO*b  k+ f 	 *j+ ��& �a E�O�a %�%�%a �,%E�O�j O*�a %�%k+ e  (�a %�%�%E�O�j O�a %�%�%E�O�j Y hOa E�Oa a lvE�O \�a �a a a a a b  a  �  a !,E�O�a "  �a #%a $�,%j Y hO)jhO*a %a &a 'm+ (W X ) *hY hO*�k+ e 	 *b  k+ f �& [a +E�O�a ,%�%�%a -�,%E�O�a .%�%�%E�O�a /%�%�%E�O�j O*�a 0%�%k+ e  �j O�j Y hY hW &X ) **a 1] %a 2�m+ (O*j+ 3O*j+ 4OfOb  m!j 5O*j+ 6Ob  e  *a 7�a 8%a 9m+ (Okj 5Y hY hO*j+ 3e 	 *j+ 4e �& eY hOf� ������������� 
0 notify  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ����+1@Ff��h������ouy~��
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ � ������������� 0 msg  �� ����� �  �������� 0 msgtitle msgTitle�� 0 subtitle  �� 0 message  ��  � �������� 0 msgtitle msgTitle�� 0 subtitle  �� 0 message  � ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� +b  e  *���m+  Y  ��l W 	X  h� ������������� 0 isapprunning isAppRunning��  ��  �  � ��������
�� 
capp
�� 
prun��  ��  �� + *�b  / *�,e  eY hUW 	X  fOf� �������������  0 killrunningapp killRunningApp��  ��  �  � ������������~
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  �  
�~ .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � �}��|�{���z�} 0 servicealive serviceAlive�|  �{  � �y�x�w�y 0 cmdssh cmdSSH�x 
0 sshcon  �w 
0 tunnel  � ���v�u�t�s�r
�v .sysoexecTEXT���     TEXT
�u 
cpar
�t 
cobj�s  �r  �z = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� �q�p�o���n
�q .aevtoappnull  �   � ****�p  �o  �  � G�m�l�k�j�i"�h�g�f8:�eE�d�c^ikm�����b��a�`�_��^�]�\�[�Z�����Y���X-�W�V�U7�T�SG�R�Q�P�O�N�M�L�K�J}�I�H�G����m 0 resetprogram resetProgram�l $0 sshchecksettings sshCheckSettings�k 0 
setdisplay 
setDisplay�j 0 servicealive serviceAlive�i  0 isservicealive isServiceAlive�h 0 titlemsg  �g 0 isapprunning isAppRunning
�f 
bool�e 0 message  �d 0 msg  �c  0 killrunningapp killRunningApp�b 0 btnopt btnOpt�a 0 qmsg qMsg
�` 
btns
�_ 
dflt
�^ 
appr�] 
�\ .sysodlogaskr        TEXT
�[ 
bhit�Z 
0 choice  
�Y 
spac
�X .sysodelanull��� ��� nmbr
�W 
givu�V �U 0 yesorno yesOrNo�T  �S  
�R 
psxp�Q 0 apppath appPath
�P 
psof
�O 
psin�N 
�M .sysooffslong    ��� null�L 0 
nameoffset 
nameOffset
�K 
ctxt�J 0 
folderpath 
folderPath
�I .sysoexecTEXT���     TEXT
�H 
capp
�G .miscactvnull��� ��� null�nC*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %E` Ob  e  -*a %*j+ _ &%a '%_ a (%m+ Ob  m!j )Y la *a +lvE` O U_ a ,%b  %a -%E` O_ a _ a a .a �a /b  a 0 a  ,E` 1O_ 1a 2  hY hW 	X 3 4hOa 5a 6,E` 7O*a 8b  a 9_ 7a : ;E` <O_ 7[a =\[Zk\Z_ <k2E` >O 4_ >b  %a ?%a @%j AOkj )O*a Bb  / *j CUW X 3 4*a Da Ea Fb  %m+ OPascr  ��ޭ