FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.6.4
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
 	 V e r s i o n :   0 . 6 . 4 
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
�� boovfals/ @   F M454 I   F K�������� 0 getosxnumber getOSXNumber��  ��  5 m   K L���� ��  ��   k   T�66 787 l  T T��9:��  9 F @# setup path, display notification data, and config file manager   : �;; � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r8 <=< l  T T��>?��  > � {# Note: curling for now, but might start stuffing the workflow folder inside SSH-Check binary to remove a point of failure    ? �@@ � #   N o t e :   c u r l i n g   f o r   n o w ,   b u t   m i g h t   s t a r t   s t u f f i n g   t h e   w o r k f l o w   f o l d e r   i n s i d e   S S H - C h e c k   b i n a r y   t o   r e m o v e   a   p o i n t   o f   f a i l u r e  = ABA r   T _CDC b   T ]EFE b   T [GHG b   T YIJI b   T WKLK m   T UMM �NN  c d  L o   U V���� 0 
configpath 
configPathJ 1   W X��
�� 
spacH m   Y ZOO �PP  & &F 1   [ \��
�� 
spacD o      ���� 
0 mypath  B QRQ l  ` `��������  ��  ��  R STS Q   `_UVWU k   c:XX YZY Z   c [\����[ =  c k]^] I   c i��_���� 0 folderexists FolderExists_ `��` o   d e���� 0 
configpath 
configPath��  ��  ^ m   i j��
�� boovfals\ k   n {aa bcb l  n n��������  ��  ��  c ded r   n ufgf b   n shih b   n qjkj m   n oll �mm  m k d i r   - pk 1   o p��
�� 
spaci o   q r���� 0 
configpath 
configPathg o      ���� 0 cmdmakepath cmdMakePathe n��n l  v {opqo I  v {��r��
�� .sysoexecTEXT���     TEXTr o   v w���� 0 cmdmakepath cmdMakePath��  p  create path   q �ss  c r e a t e   p a t h��  ��  ��  Z tut l  � ���������  ��  ��  u vwv Z   � �xy����x =  � �z{z I   � ���|���� 0 
fileexists 
FileExists| }��} o   � ����� 0 xmlsettings XMLSettings��  ��  { m   � ���
�� boovfalsy k   � �~~ � r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 
0 mypath  � m   � ��� ���  c u r l   - L   - o  � o   � ����� 0 xmlsettings XMLSettings� 1   � ���
�� 
spac� n   � ���� 1   � ���
�� 
strq� m   � ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / i c o n f i g S S H C . p y ? r a w = t r u e� o      ���� 0 
cmdcurlxml 
cmdCurlXML� ��� l  � ����� I  � ����~
� .sysoexecTEXT���     TEXT� o   � ��}�} 0 
cmdcurlxml 
cmdCurlXML�~  �  get config file manager   � ��� . g e t   c o n f i g   f i l e   m a n a g e r� ��� l  � ����� I  � ��|��{
�| .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� o   � ��z�z 
0 mypath  � m   � ��� ���  c h m o d   + x� 1   � ��y
�y 
spac� o   � ��x�x 0 xmlsettings XMLSettings�{  �  mark executable   � ���  m a r k   e x e c u t a b l e� ��w� l  � ��v���v  � � �note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml, then all other times it will use the data set in the file.   � ���6 n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,   t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .�w  ��  ��  w ��� l  � ��u�t�s�u  �t  �s  � ��� Z   �����r�q� F   � ���� =  � ���� I   � ��p��o�p 0 
fileexists 
FileExists� ��n� o   � ��m�m 0 dnca DNCA�n  �o  � m   � ��l
�l boovfals� @   � ���� I   � ��k�j�i�k 0 getosxnumber getOSXNumber�j  �i  � m   � ��h�h � k   ���� ��� r   � ���� m   � ��� ��� X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p� o      �g�g 0 alertaction alertAction� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��f�f 
0 mypath  � m   � ��� ���  c u r l   - L   - o  � o   � ��e�e 0 alertaction alertAction� 1   � ��d
�d 
spac� n   � ���� 1   � ��c
�c 
strq� m   � ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p ? r a w = t r u e� o      �b�b 0 cmdcurldnca cmdCurlDNCA� ��� I  � ��a��`
�a .sysoexecTEXT���     TEXT� o   � ��_�_ 0 cmdcurldnca cmdCurlDNCA�`  � ��� Z   �.���^�]� =  ���� I   ��\��[�\ 0 
fileexists 
FileExists� ��Z� b   � ���� b   � ���� o   � ��Y�Y 0 
configpath 
configPath� m   � ��� ���  /� o   � ��X�X 0 alertaction alertAction�Z  �[  � m  �W
�W boovtrue� k  *�� ��� r  ��� b  ��� b  ��� b  ��� o  �V�V 
0 mypath  � m  �� ���  u n z i p   - u� 1  �U
�U 
spac� o  �T�T 0 alertaction alertAction� o      �S�S *0 cmdunzipalertaction cmdUnzipAlertAction� ��� I �R��Q
�R .sysoexecTEXT���     TEXT� o  �P�P *0 cmdunzipalertaction cmdUnzipAlertAction�Q  � ��� r  $��� b  "��� b   ��� b  ��� o  �O�O 
0 mypath  � m  �� ���   r m   - r f   _ _ M A C O S X /� 1  �N
�N 
spac� o   !�M�M 0 alertaction alertAction� o      �L�L .0 cmdcleanupalertaction cmdCleanUpAlertAction� ��K� I %*�J �I
�J .sysoexecTEXT���     TEXT  o  %&�H�H .0 cmdcleanupalertaction cmdCleanUpAlertAction�I  �K  �^  �]  �  r  /4 m  /2 � � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p ! o      �G�G 0 qmsg qMsg  r  5?	
	 J  5=  m  58 �  Y e s �F m  8; �  N o�F  
 o      �E�E 0 btnopt btnOpt �D Q  @��C k  C�  r  Cj n  Ch 1  dh�B
�B 
bhit l Cd�A�@ I Cd�?
�? .sysodlogaskr        TEXT o  CD�>�> 0 qmsg qMsg �= !
�= 
btns  o  GH�<�< 0 btnopt btnOpt! �;"#
�; 
dflt" m  KN$$ �%%  N o# �:&'
�: 
appr& m  QT(( �)) > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p' �9*�8
�9 
givu* ]  W`+,+ o  W\�7�7 0 	countdown  , m  \_�6�6 <�8  �A  �@   o      �5�5 0 yesorno yesOrNo -.- Z  k�/0�4�3/ = kp121 o  kl�2�2 0 yesorno yesOrNo2 m  lo33 �44  Y e s0 I s��15�0
�1 .sysoexecTEXT���     TEXT5 b  s~676 b  sx898 o  st�/�/ 
0 mypath  9 m  tw:: �;; 
 o p e n  7 n  x}<=< 1  {}�.
�. 
strq= m  x{>> �?? P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n�0  �4  �3  . @A@ R  ���-�,�+
�- .ascrerr ****      � ****�,  �+  A B�*B I  ���)C�(�) 0 msg  C DED m  ��FF �GG   S S H - C h e c k :   E r r o rE HIH m  ��JJ �KK  I L�'L m  ��MM �NN @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !�'  �(  �*   R      �&�%�$
�& .ascrerr ****      � ****�%  �$  �C  �D  �r  �q  � OPO l ���#�"�!�#  �"  �!  P Q� Q Z  �:RS��R F  ��TUT = ��VWV I  ���X�� 0 folderexists FolderExistsX Y�Y o  ���� 0 
configpath 
configPath�  �  W m  ���
� boovtrueU = ��Z[Z I  ���\�� 0 
fileexists 
FileExists\ ]�] o  ���� 0 dnclocation DNCLocation�  �  [ m  ���
� boovfalsS k  �6^^ _`_ l ���ab�  a 0 *setup display notification center workflow   b �cc T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w` ded r  ��fgf m  ��hh �ii @ s t a r t   o f   t r y   t o   s e t u p   D N W o r k f l o wg o      �� 0 imsg  e jkj r  ��lml m  ��nn �oo  d n . w o r k f l o w . z i pm o      �� 0 
dnworkflow 
DNWorkflowk pqp r  ��rsr b  ��tut b  ��vwv b  ��xyx b  ��z{z o  ���� 
0 mypath  { m  ��|| �}}  c u r l   - L   - o  y o  ���� 0 
dnworkflow 
DNWorkfloww 1  ���
� 
spacu n  ��~~ 1  ���
� 
strq m  ���� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u es o      �� &0 cmdcurldnworkflow cmdCurlDNWorkflowq ��� r  ����� b  ����� b  ����� b  ����� o  ���� 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ���

�
 
spac� o  ���	�	 0 
dnworkflow 
DNWorkflow� o      �� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ���� 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ���
� 
spac� o  ���� 0 
dnworkflow 
DNWorkflow� o      �� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� I ����
� .sysoexecTEXT���     TEXT� o  ���� &0 cmdcurldnworkflow cmdCurlDNWorkflow�  � ��� r  ��� m  �� ���  D N W F   d o w n l o a d e d� o      � �  0 imsg  � ���� Z  6������� = ��� I  ������� 0 
fileexists 
FileExists� ���� b  	��� b  	��� o  	
���� 0 
configpath 
configPath� m  
�� ���  /� o  ���� 0 
dnworkflow 
DNWorkflow��  ��  � m  ��
�� boovtrue� k  2�� ��� I �����
�� .sysoexecTEXT���     TEXT� o  ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  � ��� r  $��� m  "�� ���  D N W F   u n z i p p e d� o      ���� 0 imsg  � ��� I %,�����
�� .sysoexecTEXT���     TEXT� o  %(���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  � ���� r  -2��� m  -0�� ���  D N W F   c l e a n e d   u p� o      ���� 0 imsg  ��  ��  ��  ��  �  �  �   V R      ������
�� .ascrerr ****      � ****��  ��  W k  B_�� ��� I  BP������� 0 msg  � ��� b  CH��� m  CF�� ���  F a i l e d :� o  FG���� 0 imsg  � ��� m  HK�� ���  � ���� o  KL���� 0 
configpath 
configPath��  ��  � ��� I  QV�������� 0 setupservice setUpService��  ��  � ��� I  W\�������� 0 setupprogram setUpProgram��  ��  � ���� L  ]_�� m  ]^��
�� boovfals��  T ��� l ``��������  ��  ��  � ��� l ``������  � = 7re-check display settings to see if DNC is working now.   � ��� n r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w .� ��� l ``��������  ��  ��  � ��� l ``������  � \ VCheck to see if ~/.ssh-check and DNCLocation exists, and if not, then it installs them   � ��� � C h e c k   t o   s e e   i f   ~ / . s s h - c h e c k   a n d   D N C L o c a t i o n   e x i s t s ,   a n d   i f   n o t ,   t h e n   i t   i n s t a l l s   t h e m� ��� l ``������  � s mNote: installing DNCA automaticly just does not seem to work, yet, so the user has to download and install it   � ��� � N o t e :   i n s t a l l i n g   D N C A   a u t o m a t i c l y   j u s t   d o e s   n o t   s e e m   t o   w o r k ,   y e t ,   s o   t h e   u s e r   h a s   t o   d o w n l o a d   a n d   i n s t a l l   i t� ��� I  `e�������� 0 
setdisplay 
setDisplay��  ��  � ���� Z  f�������� F  f���� F  f���� F  f���� F  f���� F  f~��� = fr��� I  fp������� 0 
fileexists 
FileExists� ���� o  gl���� 0 dnca DNCA��  ��  � m  pq��
�� boovtrue� @  u|��� I  uz�������� 0 getosxnumber getOSXNumber��  ��  � m  z{���� � = ��� � I  �������� 0 folderexists FolderExists �� o  ������ 0 
configpath 
configPath��  ��    m  ����
�� boovtrue� = �� I  �������� 0 
fileexists 
FileExists �� o  ������ 0 dnclocation DNCLocation��  ��   m  ����
�� boovtrue� = �� I  ����	���� 0 
fileexists 
FileExists	 
��
 o  ������ 0 xmlsettings XMLSettings��  ��   m  ����
�� boovtrue� = �� o  ������ *0 displaynoticecenter DisplayNoticeCenter m  ����
�� boovtrue� k  ��  I  �������� 0 msg    m  �� �   S S H - C h e c k :   S e t u p  b  �� o  ������ 0 
configpath 
configPath m  �� � ,   s e t t i n g s   a r e   c u r r e n t . �� m  �� � L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !��  ��   �� I ������
�� .sysodelanull��� ��� nmbr o  ������ 0 	countdown  ��  ��  ��  ��  ��  ��  ��    !  l ����������  ��  ��  ! "#" l ����$%��  $ # loadSettings from config file   % �&& : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e# '(' Z  ��)*����) F  ��+,+ = ��-.- I  ���������� 0 setupservice setUpService��  ��  . m  ����
�� boovtrue, = ��/0/ I  ���������� 0 setupprogram setUpProgram��  ��  0 m  ����
�� boovtrue* L  ��11 m  ����
�� boovtrue��  ��  ( 232 l ����������  ��  ��  3 4��4 L  ��55 m  ����
�� boovfals��    return bool    �66  r e t u r n   b o o l  787 l     ��������  ��  ��  8 9:9 i   C F;<; I      ��=���� 
0 notify  = >?> o      ���� 	0 title  ? @A@ o      ���� 0 subtitle  A B��B o      ���� 0 message  ��  ��  < k     �CC DED l      ��FG��  F 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    G �HH   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  E IJI l     ��������  ��  ��  J KLK Z    MN����M >    OPO c     QRQ o     ���� 	0 title  R m    ��
�� 
ctxtP m    SS �TT  N r    UVU b    WXW m    	YY �ZZ    - D   t i t l e =X n   	 [\[ 1    ��
�� 
strq\ l  	 ]����] c   	 ^_^ o   	 
���� 	0 title  _ m   
 ��
�� 
ctxt��  ��  V o      ���� 	0 title  ��  ��  L `a` Z   +bc����b >   ded c    fgf o    �� 0 subtitle  g m    �~
�~ 
ctxte m    hh �ii  c r    'jkj b    %lml m    nn �oo    - D   s u b t i t l e =m n    $pqp 1   " $�}
�} 
strqq l   "r�|�{r c    "sts o     �z�z 0 subtitle  t m     !�y
�y 
ctxt�|  �{  k o      �x�x 0 subtitle  ��  ��  a uvu Z  , Awx�w�vw >  , 1yzy c   , /{|{ o   , -�u�u 0 message  | m   - .�t
�t 
ctxtz m   / 0}} �~~  x r   4 =� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :�s
�s 
strq� l  5 8��r�q� c   5 8��� o   5 6�p�p 0 message  � m   6 7�o
�o 
ctxt�r  �q  � o      �n�n 0 message  �w  �v  v ��m� Q   B ����� I  E b�l��k
�l .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�j
�j 
spac� o   H I�i�i 	0 title  � 1   J K�h
�h 
spac� o   L M�g�g 0 subtitle  � 1   N O�f
�f 
spac� o   P Q�e�e 0 message  � 1   R S�d
�d 
spac� o   T Y�c�c 0 dnclocation DNCLocation� 1   Z [�b
�b 
spac� m   \ ]�� ���  2 > / d e v / n u l l�k  � R      �a�`�_
�a .ascrerr ****      � ****�`  �_  � k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �^�^ *0 displaynoticecenter DisplayNoticeCenter� ��]� I   r ��\��[�\ 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��Z� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �Y�Y 0 dnclocation DNCLocation�Z  �[  �]  �m  : ��� l     �X�W�V�X  �W  �V  � ��� i   G J��� I      �U��T�U 0 msg  � ��� o      �S�S 0 msgtitle msgTitle� ��� o      �R�R 0 subtitle  � ��Q� o      �P�P 0 message  �Q  �T  � Z     *���O�� =    ��� o     �N�N *0 displaynoticecenter DisplayNoticeCenter� m    �M
�M boovtrue� l  
 ���� I   
 �L��K�L 
0 notify  � ��� o    �J�J 0 msgtitle msgTitle� ��� o    �I�I 0 subtitle  � ��H� o    �G�G 0 message  �H  �K  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�O  � Q    *���� L     �� I   �F��
�F .sysodlogaskr        TEXT� o    �E�E 0 message  � �D��C
�D 
appr� o    �B�B 0 msgtitle msgTitle�C  � R      �A�@�?
�A .ascrerr ****      � ****�@  �?  � L   ( *�>�>  � ��� l     �=�<�;�=  �<  �;  � ��� i   K N��� I      �:�9�8�: 0 isapprunning isAppRunning�9  �8  � k     *�� ��� Q     '���� O    ��� Z    ���7�6� =   ��� n    ��� 1    �5
�5 
prun�  g    � m    �4
�4 boovtrue� L    �� m    �3
�3 boovtrue�7  �6  � 4    �2�
�2 
capp� o    
�1�1 0 program  � R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  � L   % '�� m   % &�-
�- boovfals� ��,� L   ( *�� m   ( )�+
�+ boovfals�,  � ��� l     �*�)�(�*  �)  �(  � ��� i   O R��� I      �'�&�%�'  0 killrunningapp killRunningApp�&  �%  � Q     5�� � O      l    Z    �$�# =   	 n    

 1    �"
�" 
prun  g    	 m    �!
�! boovtrue I   � ��
�  .aevtquitnull��� ��� null�  �  �$  �#     doesn't launch app    � &   d o e s n ' t   l a u n c h   a p p 4    �
� 
capp o    
�� 0 program  � R      ���
� .ascrerr ****      � ****�  �    I  ( 5��
� .sysoexecTEXT���     TEXT b   ( 1 b   ( / m   ( ) �  p s   x   |   g r e p   o   ) .�� 0 program   m   / 0 � l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�  �  l     ����  �  �    i   S V I      ���� 0 servicealive serviceAlive�  �   Q     < l   2 !"  k    2## $%$ r    &'& b    ()( b    
*+* m    ,, �-- @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *+ o    	�� 0 service  ) m   
 .. �// ( '   |   a w k   ' { p r i n t   $ 8 } '' o      �� 0 cmdssh cmdSSH% 010 r    232 n    454 4    �6
� 
cobj6 m    �� 5 n    787 2   �
� 
cpar8 l   9�
�	9 I   �:�
� .sysoexecTEXT���     TEXT: o    �� 0 cmdssh cmdSSH�  �
  �	  3 o      �� 
0 sshcon  1 ;<; s     =>= o    �� 
0 sshcon  > o      �� 
0 tunnel  < ?�? Z   ! 2@A�B@ E   ! (CDC o   ! "� �  
0 tunnel  D o   " '���� 0 service  A L   + -EE o   + ,���� 
0 tunnel  �  B L   0 2FF m   0 1����  �  ! 0 *check for ssh connected to defined service   " �GG T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e R      ������
�� .ascrerr ****      � ****��  ��   L   : <HH m   : ;����   IJI l     ��������  ��  ��  J K��K i   W ZLML I     ������
�� .aevtoappnull  �   � ****��  ��  M k    FNN OPO I     �������� 0 resetprogram resetProgram��  ��  P QRQ I    �������� $0 sshchecksettings sshCheckSettings��  ��  R STS I    �������� 0 
setdisplay 
setDisplay��  ��  T UVU l   ��������  ��  ��  V WXW r    YZY I    �������� 0 servicealive serviceAlive��  ��  Z o      ����  0 isservicealive isServiceAliveX [\[ r    ]^] m    __ �`` ( S S H   S e r v i c e   i s   D o w n !^ o      ���� 0 titlemsg  \ aba Z    �cde��c F    -fgf =   %hih I    #�������� 0 isapprunning isAppRunning��  ��  i m   # $��
�� boovtrueg =  ( +jkj o   ( )����  0 isservicealive isServiceAlivek m   ) *����  d k   0 Sll mnm r   0 ;opo b   0 9qrq b   0 7sts m   0 1uu �vv , I t   i s   n o t   s a f e   t o   r u n  t o   1 6���� 0 program  r m   7 8ww �xx H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !p o      ���� 0 message  n yzy I   < J��{���� 0 msg  { |}| o   = >���� 0 titlemsg  } ~~ b   > E��� m   > ?�� ���  W a r n i n g  � o   ? D���� 0 service   ���� o   E F���� 0 message  ��  ��  z ��� I   K P��������  0 killrunningapp killRunningApp��  ��  � ���� l  Q S���� L   Q S����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  e ��� =  V Y��� o   V W����  0 isservicealive isServiceAlive� m   W X����  � ���� k   \ ��� ��� I   \ �������� 0 msg  � ��� o   ] ^���� 0 titlemsg  � ��� b   ^ e��� m   ^ _�� ���  W a r n i n g   a b o u t  � o   _ d���� 0 service  � ���� b   e |��� b   e x��� b   e r��� b   e n��� m   e h�� ���  D o n ' t   r u n  � o   h m���� 0 program  � m   n q�� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   r w���� 0 service  � m   x {�� ���  .��  ��  � ���� l  � ����� L   � �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  ��  b ��� l  � ���������  ��  ��  � ��� l  � �������  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � �����  0 isservicealive isServiceAlive� o      ���� 0 titlemsg  � ��� Z   �������� =  � ���� I   � ��������� 0 isapprunning isAppRunning��  ��  � m   � ���
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
0 choice  � m   � �   �  T u r n   O f f� �� k   � �  I   � ���������  0 killrunningapp killRunningApp��  ��   �� l  � �	 L   � �����    exit SSH-Check   	 �

  e x i t   S S H - C h e c k��  ��  � l  l  L  ����    exit SSH-Check    �  e x i t   S S H - C h e c k  choice equals Cancel    � ( c h o i c e   e q u a l s   C a n c e l��  � 0 * should we kill & restart the running app?   � � T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  � k  �  r   b   m  	 �  S t a r t i n g   o  	���� 0 program   o      ���� 0 qmsg qMsg �� Z  ���  = !"! o  ���� *0 displaynoticecenter DisplayNoticeCenter" m  ��
�� boovtrue k  J## $%$ I  >��&���� 0 msg  & '(' m  ")) �**  S S H - C h e c k( +,+ I  "'�������� 0 servicealive serviceAlive��  ��  , -��- b  ':./. b  '6010 b  '.232 o  '*���� 0 qmsg qMsg3 m  *-44 �55    i n  1 l .56����6 ^  .5787 o  .3���� 0 	countdown  8 m  34���� ��  ��  / m  6999 �::    s e c o n d s !��  ��  % ;��; I ?J��<��
�� .sysodelanull��� ��� nmbr< l ?F=����= ^  ?F>?> o  ?D���� 0 	countdown  ? m  DE���� ��  ��  ��  ��  ��    k  M�@@ ABA r  MYCDC J  MUEE FGF m  MPHH �II  L a u n c hG J��J m  PSKK �LL  S t o p��  D o      �� 0 btnopt btnOptB M�~M Q  Z�NOPN k  ]�QQ RSR r  ]rTUT b  ]nVWV b  ]jXYX b  ]dZ[Z o  ]`�}�} 0 qmsg qMsg[ m  `c\\ �]]    i n  Y o  di�|�| 0 	countdown  W m  jm^^ �__    s e c o n d s !U o      �{�{ 0 qmsg qMsgS `a` r  s�bcb n  s�ded 1  ���z
�z 
bhite l s�f�y�xf I s��wgh
�w .sysodlogaskr        TEXTg o  sv�v�v 0 qmsg qMsgh �uij
�u 
btnsi o  y|�t�t 0 btnopt btnOptj �skl
�s 
dfltk m  �mm �nn  L a u n c hl �rop
�r 
appro o  ���q�q 0 titlemsg  p �pq�o
�p 
givuq o  ���n�n 0 	countdown  �o  �y  �x  c o      �m�m 0 yesorno yesOrNoa r�lr Z  ��st�k�js = ��uvu o  ���i�i 0 yesorno yesOrNov m  ��ww �xx  S t o pt L  ���h�h  �k  �j  �l  O R      �g�f�e
�g .ascrerr ****      � ****�f  �e  P L  ���d�d  �~  ��  � yzy l ���c�b�a�c  �b  �a  z {|{ l ���`}~�`  } ! Prepare to launch a program   ~ � 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m| ��� r  ����� n  ����� 1  ���_
�_ 
psxp� l ����^�]� m  ���� ���  / A p p l i c a t i o n s /�^  �]  � o      �\�\ 0 apppath appPath� ��� l ���[���[  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ����� I ���Z�Y�
�Z .sysooffslong    ��� null�Y  � �X��
�X 
psof� o  ���W�W 0 program  � �V��U
�V 
psin� o  ���T�T 0 apppath appPath�U  � o      �S�S 0 
nameoffset 
nameOffset� ��� l ���R���R  � 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )� ��� r  ����� n  ����� 7 ���Q��
�Q 
ctxt� m  ���P�P � l ����O�N� \  ����� o  ���M�M 0 
nameoffset 
nameOffset� m  ���L�L �O  �N  � o  ���K�K 0 apppath appPath� o      �J�J 0 
folderpath 
folderPath� ��� l ���I���I  � 6 0msg("info:", "Msg", "folderpath: " & folderPath)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )� ��� Q  �D���� l �(���� k  �(�� ��� I ��H��G
�H .sysoexecTEXT���     TEXT� b  �
��� b  ���� b  ���� o  ���F�F 0 
folderpath 
folderPath� o  ��E�E 0 program  � m  �� ���  . a p p� m  	�� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�G  � ��� I �D��C
�D .sysodelanull��� ��� nmbr� m  �B�B �C  � ��A� O (��� I "'�@�?�>
�@ .miscactvnull��� ��� null�?  �>  � 4  �=�
�= 
capp� o  �<�< 0 program  �A  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      �;�:�9
�; .ascrerr ****      � ****�:  �9  � I  0D�8��7�8 0 msg  � ��� m  14�� ���   S S H - C h e c k :   E r r o r� ��� m  47�� ��� 
 E r r o r� ��6� b  7@��� m  7:�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  :?�5�5 0 program  �6  �7  � ��4� l EE�3�2�1�3  �2  �1  �4  ��       �0�   ! ' 1 7 < A�/�����������������0  � �.�-�,�+�*�)�(�'�&�%�$�#�"�!� �����������. 0 service  �- 0 program  �, 0 programbackup programBackup�+ 0 servicebackup serviceBackup�* 0 	countdown  �) 0 dnclocation DNCLocation�( 0 xmlsettings XMLSettings�' 0 dnca DNCA�& *0 displaynoticecenter DisplayNoticeCenter
�% .aevtodocnull  �    alis�$ 0 resetprogram resetProgram�# 0 getosxnumber getOSXNumber�" 0 
setdisplay 
setDisplay�! 0 
fileexists 
FileExists�  0 folderexists FolderExists� 0 	updatexml 	updateXML� 0 setupservice setUpService� 0 setupprogram setUpProgram� $0 sshchecksettings sshCheckSettings� 
0 notify  � 0 msg  � 0 isapprunning isAppRunning�  0 killrunningapp killRunningApp� 0 servicealive serviceAlive
� .aevtoappnull  �   � ****
�/ boovfals� � O�����
� .aevtodocnull  �    alis� 0 these_items  �  � ��� 0 these_items  � 0 prog  �  ]� p�� }���
 � � ��	��
� 
TEXT
� 
txdl
� 
citm� $0 sshchecksettings sshCheckSettings� 0 	updatexml 	updateXML�
 0 
setdisplay 
setDisplay�	 0 msg  
� .sysodelanull��� ��� nmbr
� .aevtoappnull  �   � ****� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j � � ������� 0 resetprogram resetProgram�  �  �  �  � fEc  � � ��� ����� 0 getosxnumber getOSXNumber�  �   �  �  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&� �� ����������� 0 
setdisplay 
setDisplay��  ��  �  � ���������� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  � �� ����������� 0 
fileexists 
FileExists�� ����� �  ���� 0 thefile theFile��  � ���� 0 thefile theFile�  ����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY hUOf� ������������ 0 folderexists FolderExists�� ����� �  ���� 0 	thefolder 	theFolder��  � ���� 0 	thefolder 	theFolder� ����
�� 
cfol
�� .coredoexbool       obj �� � *�/j  eY hUOf� ������������ 0 	updatexml 	updateXML�� ����� �  ���� 0 programname programName��  � �������� 0 programname programName�� 
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
cmdCurlXML�� 0 alertaction alertAction�� 0 cmdcurldnca cmdCurlDNCA�� *0 cmdunzipalertaction cmdUnzipAlertAction�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�� 0 qmsg qMsg�� 0 btnopt btnOpt�� 0 yesorno yesOrNo�� 0 imsg  �� 0 
dnworkflow 
DNWorkflow�� &0 cmdcurldnworkflow cmdCurlDNWorkflow�� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� >����������M��Ol�����������������$��(��������3:>FJM������hn|������������������� 0 folderexists FolderExists�� 0 
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
bhit�� 0 msg  ��  ��  �� 0 setupservice setUpService�� 0 setupprogram setUpProgram�� 0 
setdisplay 
setDisplay
�� .sysodelanull��� ��� nmbr����E�O�%E�O*�k+ f 
 *b  k+ f �&
 *b  k+ f �&
 *b  k+ f 	 *j+ ��&�&��%�%�%�%E�O�*�k+ f  ��%�%E�O�j Y hO*b  k+ f  .��%b  %�%��,%E�O�j O��%�%b  %j OPY hO*b  k+ f 	 *j+ ��& �a E�O�a %�%�%a �,%E�O�j O*�a %�%k+ e  (�a %�%�%E�O�j O�a %�%�%E�O�j Y hOa E�Oa a lvE�O \�a �a a a a a b  a  �  a !,E�O�a "  �a #%a $�,%j Y hO)jhO*a %a &a 'm+ (W X ) *hY hO*�k+ e 	 *b  k+ f �& wa +E�Oa ,E�O�a -%�%�%a .�,%E�O�a /%�%�%E�O�a 0%�%�%E^ O�j Oa 1E�O*�a 2%�%k+ e  �j Oa 3E�O] j Oa 4E�Y hY hW $X ) **a 5�%a 6�m+ (O*j+ 7O*j+ 8OfO*j+ 9O*b  k+ e 	 *j+ ��&	 *�k+ e �&	 *b  k+ e �&	 *b  k+ e �&	 b  e �& *a :�a ;%a <m+ (Ob  j =Y hY hO*j+ 7e 	 *j+ 8e �& eY hOf� ��<���� ���� 
0 notify  �� ����   �������� 	0 title  �� 0 subtitle  �� 0 message  ��    �������� 	0 title  �� 0 subtitle  �� 0 message   ��SY��hn}���������~�����}
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�  �~  �} 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ � �|��{�z�y�| 0 msg  �{ �x�x   �w�v�u�w 0 msgtitle msgTitle�v 0 subtitle  �u 0 message  �z   �t�s�r�t 0 msgtitle msgTitle�s 0 subtitle  �r 0 message   �q�p�o�n�m�q 
0 notify  
�p 
appr
�o .sysodlogaskr        TEXT�n  �m  �y +b  e  *���m+  Y  ��l W 	X  h� �l��k�j�i�l 0 isapprunning isAppRunning�k  �j     �h�g�f�e
�h 
capp
�g 
prun�f  �e  �i + *�b  / *�,e  eY hUW 	X  fOf� �d��c�b	�a�d  0 killrunningapp killRunningApp�c  �b    	 �`�_�^�]�\�[
�` 
capp
�_ 
prun
�^ .aevtquitnull��� ��� null�]  �\  
�[ .sysoexecTEXT���     TEXT�a 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � �Z�Y�X
�W�Z 0 servicealive serviceAlive�Y  �X  
 �V�U�T�V 0 cmdssh cmdSSH�U 
0 sshcon  �T 
0 tunnel   ,.�S�R�Q�P�O
�S .sysoexecTEXT���     TEXT
�R 
cpar
�Q 
cobj�P  �O  �W = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� �NM�M�L�K
�N .aevtoappnull  �   � ****�M  �L     F�J�I�H�G�F_�E�D�Cuw�B��A�@���������?��>�=�<��;�:�9�8�7� )49�6HK\^m�5�4�3w�2�1��0�/�.�-�,�+�*�)�(���'�&�%����J 0 resetprogram resetProgram�I $0 sshchecksettings sshCheckSettings�H 0 
setdisplay 
setDisplay�G 0 servicealive serviceAlive�F  0 isservicealive isServiceAlive�E 0 titlemsg  �D 0 isapprunning isAppRunning
�C 
bool�B 0 message  �A 0 msg  �@  0 killrunningapp killRunningApp�? 0 btnopt btnOpt�> 0 qmsg qMsg
�= 
btns
�< 
dflt
�; 
appr�: 
�9 .sysodlogaskr        TEXT
�8 
bhit�7 
0 choice  
�6 .sysodelanull��� ��� nmbr
�5 
givu�4 �3 0 yesorno yesOrNo�2  �1  
�0 
psxp�/ 0 apppath appPath
�. 
psof
�- 
psin�, 
�+ .sysooffslong    ��� null�* 0 
nameoffset 
nameOffset
�) 
ctxt�( 0 
folderpath 
folderPath
�' .sysoexecTEXT���     TEXT
�& 
capp
�% .miscactvnull��� ��� null�KG*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %E` Ob  e  1*a %*j+ _ a &%b  l!%a '%m+ Ob  l!j (Y la )a *lvE` O U_ a +%b  %a ,%E` O_ a _ a a -a �a .b  a / a  ,E` 0O_ 0a 1  hY hW 	X 2 3hOa 4a 5,E` 6O*a 7b  a 8_ 6a 9 :E` ;O_ 6[a <\[Zk\Z_ ;k2E` =O 4_ =b  %a >%a ?%j @Okj (O*a Ab  / *j BUW X 2 3*a Ca Da Eb  %m+ OP ascr  ��ޭ