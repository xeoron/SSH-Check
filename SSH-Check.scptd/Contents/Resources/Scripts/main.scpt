FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.6.3
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
 	 V e r s i o n :   0 . 6 . 3 
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
 4 G   
 # =  
   I   
 ��!���� 0 folderexists FolderExists! "��" o    ���� 0 
configpath 
configPath��  ��    m    ��
�� boovfals =   !#$# I    ��%���� 0 
fileexists 
FileExists% &��& o    ���� 0 dnclocation DNCLocation��  ��  $ m     ��
�� boovfals =  & 2'(' I   & 0��)���� 0 
fileexists 
FileExists) *��* o   ' ,���� 0 xmlsettings XMLSettings��  ��  ( m   0 1��
�� boovfals k   7�++ ,-, l  7 7��./��  . F @# setup path, display notification data, and config file manager   / �00 � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r- 121 l  7 7��34��  3 � {# Note: curling for now, but might start stuffing the workflow folder inside SSH-Check binary to remove a point of failure    4 �55 � #   N o t e :   c u r l i n g   f o r   n o w ,   b u t   m i g h t   s t a r t   s t u f f i n g   t h e   w o r k f l o w   f o l d e r   i n s i d e   S S H - C h e c k   b i n a r y   t o   r e m o v e   a   p o i n t   o f   f a i l u r e  2 676 r   7 B898 b   7 @:;: b   7 ><=< b   7 <>?> b   7 :@A@ m   7 8BB �CC  c d  A o   8 9���� 0 
configpath 
configPath? 1   : ;��
�� 
spac= m   < =DD �EE  & &; 1   > ?��
�� 
spac9 o      ���� 
0 mypath  7 FGF l  C C��������  ��  ��  G HIH Q   CJKLJ k   F�MM NON Z   F bPQ����P =  F NRSR I   F L��T���� 0 folderexists FolderExistsT U��U o   G H���� 0 
configpath 
configPath��  ��  S m   L M��
�� boovfalsQ k   Q ^VV WXW r   Q XYZY b   Q V[\[ b   Q T]^] m   Q R__ �``  m k d i r   - p^ 1   R S��
�� 
spac\ o   T U���� 0 
configpath 
configPathZ o      ���� 0 cmdmakepath cmdMakePathX a��a l  Y ^bcdb I  Y ^��e��
�� .sysoexecTEXT���     TEXTe o   Y Z���� 0 cmdmakepath cmdMakePath��  c  create path   d �ff  c r e a t e   p a t h��  ��  ��  O ghg l  c c��������  ��  ��  h iji Z   cBkl����k F   c {mnm =  c oopo I   c m��q���� 0 
fileexists 
FileExistsq r��r o   d i���� 0 dnca DNCA��  ��  p m   m n��
�� boovfalsn @   r ysts I   r w�������� 0 getosxnumber getOSXNumber��  ��  t m   w x���� l k   ~>uu vwv r   ~ �xyx m   ~ zz �{{ X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i py o      ���� 0 alertaction alertActionw |}| r   � �~~ b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 
0 mypath  � m   � ��� ���  c u r l   - L   - o  � o   � ����� 0 alertaction alertAction� 1   � ���
�� 
spac� n   � ���� 1   � ���
�� 
strq� m   � ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p ? r a w = t r u e o      ���� 0 cmdcurldnca cmdCurlDNCA} ��� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdcurldnca cmdCurlDNCA��  � ��� Z   � �������� =  � ���� I   � �������� 0 
fileexists 
FileExists� ���� b   � ���� b   � ���� o   � ����� 0 
configpath 
configPath� m   � ��� ���  /� o   � ��� 0 alertaction alertAction��  ��  � m   � ��~
�~ boovtrue� k   � ��� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��}�} 
0 mypath  � m   � ��� ���  u n z i p   - u� 1   � ��|
�| 
spac� o   � ��{�{ 0 alertaction alertAction� o      �z�z *0 cmdunzipalertaction cmdUnzipAlertAction� ��� I  � ��y��x
�y .sysoexecTEXT���     TEXT� o   � ��w�w *0 cmdunzipalertaction cmdUnzipAlertAction�x  � ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��v�v 
0 mypath  � m   � ��� ���   r m   - r f   _ _ M A C O S X /� 1   � ��u
�u 
spac� o   � ��t�t 0 alertaction alertAction� o      �s�s .0 cmdcleanupalertaction cmdCleanUpAlertAction� ��r� I  � ��q��p
�q .sysoexecTEXT���     TEXT� o   � ��o�o .0 cmdcleanupalertaction cmdCleanUpAlertAction�p  �r  ��  ��  � ��� r   � ���� m   � ��� ��� � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !� o      �n�n 0 qmsg qMsg� ��� r   � ���� J   � ��� ��� m   � ��� ���  Y e s� ��m� m   � ��� ���  N o�m  � o      �l�l 0 btnopt btnOpt� ��k� Q   �>���j� k   �5�� ��� r   �
��� n   ���� 1  �i
�i 
bhit� l  ���h�g� I  ��f��
�f .sysodlogaskr        TEXT� o   � ��e�e 0 qmsg qMsg� �d��
�d 
btns� o   � ��c�c 0 btnopt btnOpt� �b��
�b 
dflt� m   � ��� ���  N o� �a��
�a 
appr� m   � ��� ��� > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p� �`��_
�` 
givu� ]   � ��� o   � ��^�^ 0 	countdown  � m   � ��]�] <�_  �h  �g  � o      �\�\ 0 yesorno yesOrNo� ��[� Z  5���Z�Y� = ��� o  �X�X 0 yesorno yesOrNo� m  �� ���  Y e s� k  1�� ��� I "�W��V
�W .sysoexecTEXT���     TEXT� b  ��� b  ��� m  �� ��� 
 o p e n  � o  �U�U 0 
configpath 
configPath� n  ��� 1  �T
�T 
strq� m  �� ��� P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n�V  � ��S� I  #1�R��Q�R 0 msg  �    m  $' � . I f   A u t o m a t o r   s t a r t e d   u p  m  '* �  s u c c e s s !   N o w �P m  *-		 �

   p l e a s e   c l o s e   i t !�P  �Q  �S  �Z  �Y  �[  � R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �j  �k  ��  ��  j  l CC�L�K�J�L  �K  �J    Z  C��I�H F  C\ = CK I  CI�G�F�G 0 folderexists FolderExists �E o  DE�D�D 0 
configpath 
configPath�E  �F   m  IJ�C
�C boovtrue = NZ I  NX�B�A�B 0 
fileexists 
FileExists �@ o  OT�?�? 0 dnclocation DNCLocation�@  �A   m  XY�>
�> boovfals k  _�  l __�=�=   0 *setup display notification center workflow    �   T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w !"! r  _d#$# m  _b%% �&&  d n . w o r k f l o w . z i p$ o      �<�< 0 
dnworkflow 
DNWorkflow" '(' r  ev)*) b  et+,+ b  en-.- b  el/0/ b  ej121 o  ef�;�; 
0 mypath  2 m  fi33 �44  c u r l   - L   - o  0 o  jk�:�: 0 
dnworkflow 
DNWorkflow. 1  lm�9
�9 
spac, n  ns565 1  qs�8
�8 
strq6 m  nq77 �88 � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u e* o      �7�7 &0 cmdcurldnworkflow cmdCurlDNWorkflow( 9:9 r  w�;<; b  w�=>= b  w~?@? b  w|ABA o  wx�6�6 
0 mypath  B m  x{CC �DD  u n z i p   - u@ 1  |}�5
�5 
spac> o  ~�4�4 0 
dnworkflow 
DNWorkflow< o      �3�3 (0 cmdunzipdnworkflow cmdUnzipDNWorkflow: EFE r  ��GHG b  ��IJI b  ��KLK b  ��MNM o  ���2�2 
0 mypath  N m  ��OO �PP   r m   - r f   _ _ M A C O S X /L 1  ���1
�1 
spacJ o  ���0�0 0 
dnworkflow 
DNWorkflowH o      �/�/ ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflowF QRQ I ���.S�-
�. .sysoexecTEXT���     TEXTS o  ���,�, &0 cmdcurldnworkflow cmdCurlDNWorkflow�-  R T�+T Z  ��UV�*�)U = ��WXW I  ���(Y�'�( 0 
fileexists 
FileExistsY Z�&Z b  ��[\[ b  ��]^] o  ���%�% 0 
configpath 
configPath^ m  ��__ �``  /\ o  ���$�$ 0 
dnworkflow 
DNWorkflow�&  �'  X m  ���#
�# boovtrueV k  ��aa bcb I ���"d�!
�" .sysoexecTEXT���     TEXTd o  ��� �  (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�!  c e�e I ���f�
� .sysoexecTEXT���     TEXTf o  ���� 0 
cmdcleanup 
cmdCleanUp�  �  �*  �)  �+  �I  �H   ghg l ������  �  �  h i�i Z  ��jk��j = ��lml I  ���n�� 0 
fileexists 
FileExistsn o�o o  ���� 0 xmlsettings XMLSettings�  �  m m  ���
� boovfalsk k  ��pp qrq r  ��sts b  ��uvu b  ��wxw b  ��yzy b  ��{|{ o  ���� 
0 mypath  | m  ��}} �~~  c u r l   - L   - o  z o  ���� 0 xmlsettings XMLSettingsx 1  ���
� 
spacv n  ��� 1  ���
� 
strq� m  ���� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / i c o n f i g S S H C . p y ? r a w = t r u et o      �� 0 
cmdcurlxml 
cmdCurlXMLr ��� l ������ I ���
��	
�
 .sysoexecTEXT���     TEXT� o  ���� 0 
cmdcurlxml 
cmdCurlXML�	  �  setup config file   � ��� " s e t u p   c o n f i g   f i l e�  �  �  �  K R      ���
� .ascrerr ****      � ****�  �  L k  ��� ��� I  � ���� 0 msg  � ��� m  ���� ��� " F a i l e d   s e t t i n g   u p� ��� m  ���� ���  � ��� o  ���� 0 
configpath 
configPath�  �  � ��� I  � �����  0 setupservice setUpService��  ��  � ��� I  �������� 0 setupprogram setUpProgram��  ��  � ���� L  �� m  ��
�� boovfals��  I ��� l ��������  ��  ��  � ��� l ������  � = 7re-check display settings to see if DNC is working now.   � ��� n r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w .� ��� I  �������� 0 
setdisplay 
setDisplay��  ��  � ��� l ������  � \ VCheck to see if ~/.ssh-check and DNCLocation exists, and if not, then it installs them   � ��� � C h e c k   t o   s e e   i f   ~ / . s s h - c h e c k   a n d   D N C L o c a t i o n   e x i s t s ,   a n d   i f   n o t ,   t h e n   i t   i n s t a l l s   t h e m� ��� l ������  � s mNote: installing DNCA automaticly just does not seem to work, yet, so the user has to download and install it   � ��� � N o t e :   i n s t a l l i n g   D N C A   a u t o m a t i c l y   j u s t   d o e s   n o t   s e e m   t o   w o r k ,   y e t ,   s o   t h e   u s e r   h a s   t o   d o w n l o a d   a n d   i n s t a l l   i t� ���� Z  �������� F  i��� F  ]��� F  L��� F  ;��� F  .��� = "��� I   ������� 0 
fileexists 
FileExists� ���� o  ���� 0 dnca DNCA��  ��  � m   !��
�� boovtrue� @  %,��� I  %*�������� 0 getosxnumber getOSXNumber��  ��  � m  *+���� � = 19��� I  17������� 0 folderexists FolderExists� ���� o  23���� 0 
configpath 
configPath��  ��  � m  78��
�� boovtrue� = >J��� I  >H������� 0 
fileexists 
FileExists� ���� o  ?D���� 0 dnclocation DNCLocation��  ��  � m  HI��
�� boovtrue� = O[��� I  OY������� 0 
fileexists 
FileExists� ���� o  PU���� 0 xmlsettings XMLSettings��  ��  � m  YZ��
�� boovtrue� = `g��� o  `e���� *0 displaynoticecenter DisplayNoticeCenter� m  ef��
�� boovtrue� k  l��� ��� I  lx������� 0 msg  � ��� m  mp�� ���   S S H - C h e c k :   S e t u p� ��� o  pq���� 0 
configpath 
configPath� ���� m  qt�� ���  D N C   i s   a c t i v e !��  ��  � ���� I y������
�� .sysodelanull��� ��� nmbr� o  y~���� 0 	countdown  ��  ��  ��  ��  ��  ��  ��   ��� l ����������  ��  ��  � ��� l ��������  � # loadSettings from config file   � ��� : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e� ��� Z  ��������� F  ����� = ����� I  ���������� 0 setupservice setUpService��  ��  � m  ����
�� boovtrue� = ����� I  ���������� 0 setupprogram setUpProgram��  ��  � m  ����
�� boovtrue� L  ���� m  ����
�� boovtrue��  ��  � ��� l ����������  ��  ��  � ���� L  ���� m  ����
�� boovfals��    return bool    ���  r e t u r n   b o o l  ��� l     ��������  ��  ��  � ��� i   C F��� I      ������� 
0 notify  � ��� o      ���� 	0 title  � � � o      ���� 0 subtitle    �� o      ���� 0 message  ��  ��  � k     �  l      ����   	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
     �   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
   	 l     ��������  ��  ��  	 

 Z    ���� >     c      o     ���� 	0 title   m    ��
�� 
ctxt m     �   r     b     m    	 �    - D   t i t l e = n   	  1    ��
�� 
strq l  	 ���� c   	  o   	 
���� 	0 title   m   
 ��
�� 
ctxt��  ��   o      ���� 	0 title  ��  ��     Z   +!"����! >   #$# c    %&% o    ���� 0 subtitle  & m    ��
�� 
ctxt$ m    '' �((  " r    ')*) b    %+,+ m    -- �..    - D   s u b t i t l e =, n    $/0/ 1   " $��
�� 
strq0 l   "1����1 c    "232 o     ���� 0 subtitle  3 m     !��
�� 
ctxt��  ��  * o      ���� 0 subtitle  ��  ��    454 Z  , A67����6 >  , 1898 c   , /:;: o   , -���� 0 message  ; m   - .��
�� 
ctxt9 m   / 0<< �==  7 r   4 =>?> b   4 ;@A@ m   4 5BB �CC    - D   m e s s a g e =A n   5 :DED 1   8 :��
�� 
strqE l  5 8F����F c   5 8GHG o   5 6���� 0 message  H m   6 7��
�� 
ctxt��  ��  ? o      ���� 0 message  ��  ��  5 I��I Q   B �JKLJ I  E b��M��
�� .sysoexecTEXT���     TEXTM b   E ^NON b   E \PQP b   E ZRSR b   E TTUT b   E RVWV b   E PXYX b   E NZ[Z b   E L\]\ b   E J^_^ b   E H`a` m   E Fbb �cc  a u t o m a t o ra 1   F G��
�� 
spac_ o   H I���� 	0 title  ] 1   J K��
�� 
spac[ o   L M���� 0 subtitle  Y 1   N O��
�� 
spacW o   P Q���� 0 message  U 1   R S��
�� 
spacS o   T Y���� 0 dnclocation DNCLocationQ 1   Z [��
�� 
spacO m   \ ]dd �ee  2 > / d e v / n u l l��  K R      ��~�}
� .ascrerr ****      � ****�~  �}  L k   j �ff ghg r   j qiji m   j kkk �ll 
 f a l s ej o      �|�| *0 displaynoticecenter DisplayNoticeCenterh m�{m I   r ��zn�y�z 0 msg  n opo m   s tqq �rr   S S H - C h e c k :   E r r o rp sts m   t wuu �vv  t w�xw b   w �xyx m   w zzz �{{ � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  y o   z �w�w 0 dnclocation DNCLocation�x  �y  �{  ��  � |}| l     �v�u�t�v  �u  �t  } ~~ i   G J��� I      �s��r�s 0 msg  � ��� o      �q�q 0 msgtitle msgTitle� ��� o      �p�p 0 subtitle  � ��o� o      �n�n 0 message  �o  �r  � Z     *���m�� =    ��� o     �l�l *0 displaynoticecenter DisplayNoticeCenter� m    �k
�k boovtrue� l  
 ���� I   
 �j��i�j 
0 notify  � ��� o    �h�h 0 msgtitle msgTitle� ��� o    �g�g 0 subtitle  � ��f� o    �e�e 0 message  �f  �i  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�m  � Q    *���� L     �� I   �d��
�d .sysodlogaskr        TEXT� o    �c�c 0 message  � �b��a
�b 
appr� o    �`�` 0 msgtitle msgTitle�a  � R      �_�^�]
�_ .ascrerr ****      � ****�^  �]  � L   ( *�\�\   ��� l     �[�Z�Y�[  �Z  �Y  � ��� i   K N��� I      �X�W�V�X 0 isapprunning isAppRunning�W  �V  � k     *�� ��� Q     '���� O    ��� Z    ���U�T� =   ��� n    ��� 1    �S
�S 
prun�  g    � m    �R
�R boovtrue� L    �� m    �Q
�Q boovtrue�U  �T  � 4    �P�
�P 
capp� o    
�O�O 0 program  � R      �N�M�L
�N .ascrerr ****      � ****�M  �L  � L   % '�� m   % &�K
�K boovfals� ��J� L   ( *�� m   ( )�I
�I boovfals�J  � ��� l     �H�G�F�H  �G  �F  � ��� i   O R��� I      �E�D�C�E  0 killrunningapp killRunningApp�D  �C  � Q     5���� O     ��� l   ���� Z    ���B�A� =   ��� n    ��� 1    �@
�@ 
prun�  g    � m    �?
�? boovtrue� I   �>�=�<
�> .aevtquitnull��� ��� null�=  �<  �B  �A  �   doesn't launch app   � ��� &   d o e s n ' t   l a u n c h   a p p� 4    �;�
�; 
capp� o    
�:�: 0 program  � R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  � I  ( 5�6��5
�6 .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .�4�4 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�5  � ��� l     �3�2�1�3  �2  �1  � ��� i   S V��� I      �0�/�.�0 0 servicealive serviceAlive�/  �.  � Q     <���� l   2���� k    2�� ��� r    ��� b    ��� b    
��� m    �� ��� @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o    	�-�- 0 service  � m   
 �� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      �,�, 0 cmdssh cmdSSH� ��� r    ��� n    ��� 4    �+�
�+ 
cobj� m    �*�* � n    ��� 2   �)
�) 
cpar� l   ��(�'� I   �&��%
�& .sysoexecTEXT���     TEXT� o    �$�$ 0 cmdssh cmdSSH�%  �(  �'  � o      �#�# 
0 sshcon  � ��� s     ��� o    �"�" 
0 sshcon  � o      �!�! 
0 tunnel  � �� � Z   ! 2� �� E   ! ( o   ! "�� 
0 tunnel   o   " '�� 0 service    L   + - o   + ,�� 
0 tunnel  �   L   0 2 m   0 1��  �   � 0 *check for ssh connected to defined service   � � T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e� R      ���
� .ascrerr ****      � ****�  �  � L   : < m   : ;��  � 	 l     ����  �  �  	 
�
 i   W Z I     ���
� .aevtoappnull  �   � ****�  �   k    F  I     ���� 0 resetprogram resetProgram�  �    I    ���
� $0 sshchecksettings sshCheckSettings�  �
    I    �	���	 0 
setdisplay 
setDisplay�  �    l   ����  �  �    r     I    ���� 0 servicealive serviceAlive�  �   o      � �   0 isservicealive isServiceAlive  r     m     � ( S S H   S e r v i c e   i s   D o w n ! o      ���� 0 titlemsg    !  Z    �"#$��" F    -%&% =   %'(' I    #�������� 0 isapprunning isAppRunning��  ��  ( m   # $��
�� boovtrue& =  ( +)*) o   ( )����  0 isservicealive isServiceAlive* m   ) *����  # k   0 S++ ,-, r   0 ;./. b   0 9010 b   0 7232 m   0 144 �55 , I t   i s   n o t   s a f e   t o   r u n  3 o   1 6���� 0 program  1 m   7 866 �77 H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !/ o      ���� 0 message  - 898 I   < J��:���� 0 msg  : ;<; o   = >���� 0 titlemsg  < =>= b   > E?@? m   > ?AA �BB  W a r n i n g  @ o   ? D���� 0 service  > C��C o   E F���� 0 message  ��  ��  9 DED I   K P��������  0 killrunningapp killRunningApp��  ��  E F��F l  Q SGHIG L   Q S����  H  exit SSH-Check   I �JJ  e x i t   S S H - C h e c k��  $ KLK =  V YMNM o   V W����  0 isservicealive isServiceAliveN m   W X����  L O��O k   \ �PP QRQ I   \ ���S���� 0 msg  S TUT o   ] ^���� 0 titlemsg  U VWV b   ^ eXYX m   ^ _ZZ �[[  W a r n i n g   a b o u t  Y o   _ d���� 0 service  W \��\ b   e |]^] b   e x_`_ b   e raba b   e ncdc m   e hee �ff  D o n ' t   r u n  d o   h m���� 0 program  b m   n qgg �hh F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  ` o   r w���� 0 service  ^ m   x {ii �jj  .��  ��  R k��k l  � �lmnl L   � �����  m  exit SSH-Check   n �oo  e x i t   S S H - C h e c k��  ��  ��  ! pqp l  � ���������  ��  ��  q rsr l  � ���tu��  t C =Ask if you want to run your program, kill it, or quietly stop   u �vv z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o ps wxw r   � �yzy b   � �{|{ m   � �}} �~~ 4 A c t i v e   S S H   C o n n e c t i o n   t o :  | o   � �����  0 isservicealive isServiceAlivez o      ���� 0 titlemsg  x � Z   �������� =  � ���� I   � ��������� 0 isapprunning isAppRunning��  ��  � m   � ���
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
�� boovtrue� k  J�� ��� I  >������� 0 msg  � ��� m  "�� ���  S S H - C h e c k� ��� I  "'�������� 0 servicealive serviceAlive��  ��  � ���� b  ':��� b  '6��� b  '.��� o  '*���� 0 qmsg qMsg� m  *-�� ���    i n  � l .5������ ^  .5��� o  .3���� 0 	countdown  � m  34���� ��  ��  � m  69�� ���    s e c o n d s !��  ��  � ���� I ?J�����
�� .sysodelanull��� ��� nmbr� l ?F������ ^  ?F��� o  ?D���� 0 	countdown  � m  DE���� ��  ��  ��  ��  ��  � k  M���    r  MY J  MU  m  MP �  L a u n c h 	��	 m  PS

 �  S t o p��   o      ���� 0 btnopt btnOpt �� Q  Z� k  ]�  r  ]r b  ]n b  ]j b  ]d o  ]`���� 0 qmsg qMsg m  `c �    i n   o  di���� 0 	countdown   m  jm �    s e c o n d s ! o      ���� 0 qmsg qMsg   r  s�!"! n  s�#$# 1  ����
�� 
bhit$ l s�%����% I s���&'
�� .sysodlogaskr        TEXT& o  sv���� 0 qmsg qMsg' ��()
�� 
btns( o  y|���� 0 btnopt btnOpt) ��*+
�� 
dflt* m  �,, �--  L a u n c h+ ��./
�� 
appr. o  ������ 0 titlemsg  / ��0��
�� 
givu0 o  ������ 0 	countdown  ��  ��  ��  " o      ���� 0 yesorno yesOrNo  1��1 Z  ��23����2 = ��454 o  ������ 0 yesorno yesOrNo5 m  ��66 �77  S t o p3 L  ������  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��   L  ������  ��  ��  � 898 l ���������  ��  �  9 :;: l ���~<=�~  < ! Prepare to launch a program   = �>> 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m; ?@? r  ��ABA n  ��CDC 1  ���}
�} 
psxpD l ��E�|�{E m  ��FF �GG  / A p p l i c a t i o n s /�|  �{  B o      �z�z 0 apppath appPath@ HIH l ���yJK�y  J 0 *msg("info:", "Msg", "apppath: " & appPath)   K �LL T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )I MNM r  ��OPO I ���x�wQ
�x .sysooffslong    ��� null�w  Q �vRS
�v 
psofR o  ���u�u 0 program  S �tT�s
�t 
psinT o  ���r�r 0 apppath appPath�s  P o      �q�q 0 
nameoffset 
nameOffsetN UVU l ���pWX�p  W 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   X �YY ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )V Z[Z r  ��\]\ n  ��^_^ 7 ���o`a
�o 
ctxt` m  ���n�n a l ��b�m�lb \  ��cdc o  ���k�k 0 
nameoffset 
nameOffsetd m  ���j�j �m  �l  _ o  ���i�i 0 apppath appPath] o      �h�h 0 
folderpath 
folderPath[ efe l ���ggh�g  g 6 0msg("info:", "Msg", "folderpath: " & folderPath)   h �ii ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )f jkj Q  �Dlmnl l �(opqo k  �(rr sts I ��fu�e
�f .sysoexecTEXT���     TEXTu b  �
vwv b  �xyx b  �z{z o  ���d�d 0 
folderpath 
folderPath{ o  ��c�c 0 program  y m  || �}}  . a p pw m  	~~ � N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�e  t ��� I �b��a
�b .sysodelanull��� ��� nmbr� m  �`�` �a  � ��_� O (��� I "'�^�]�\
�^ .miscactvnull��� ��� null�]  �\  � 4  �[�
�[ 
capp� o  �Z�Z 0 program  �_  p ( "start program up in the background   q ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dm R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  n I  0D�V��U�V 0 msg  � ��� m  14�� ���   S S H - C h e c k :   E r r o r� ��� m  47�� ��� 
 E r r o r� ��T� b  7@��� m  7:�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  :?�S�S 0 program  �T  �U  k ��R� l EE�Q�P�O�Q  �P  �O  �R  �       �N�   ! ' 1 7 < A�M�����������������N  � �L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�L 0 service  �K 0 program  �J 0 programbackup programBackup�I 0 servicebackup serviceBackup�H 0 	countdown  �G 0 dnclocation DNCLocation�F 0 xmlsettings XMLSettings�E 0 dnca DNCA�D *0 displaynoticecenter DisplayNoticeCenter
�C .aevtodocnull  �    alis�B 0 resetprogram resetProgram�A 0 getosxnumber getOSXNumber�@ 0 
setdisplay 
setDisplay�? 0 
fileexists 
FileExists�> 0 folderexists FolderExists�= 0 	updatexml 	updateXML�< 0 setupservice setUpService�; 0 setupprogram setUpProgram�: $0 sshchecksettings sshCheckSettings�9 
0 notify  �8 0 msg  �7 0 isapprunning isAppRunning�6  0 killrunningapp killRunningApp�5 0 servicealive serviceAlive
�4 .aevtoappnull  �   � ****
�M boovfals� �3 O�2�1���0
�3 .aevtodocnull  �    alis�2 0 these_items  �1  � �/�.�/ 0 these_items  �. 0 prog  �  ]�- p�,�+ }�*�)�( � � ��'�&�%
�- 
TEXT
�, 
txdl
�+ 
citm�* $0 sshchecksettings sshCheckSettings�) 0 	updatexml 	updateXML�( 0 
setdisplay 
setDisplay�' 0 msg  
�& .sysodelanull��� ��� nmbr
�% .aevtoappnull  �   � ****�0 e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j � �$ ��#�"���!�$ 0 resetprogram resetProgram�#  �"  �  �  �! fEc  � �  �������  0 getosxnumber getOSXNumber�  �  �  �  ������
� 
txdl
� .sysosigtsirr   ��� null
� 
sisv
� 
citm
� 
nmbr� �*�,FO*j �,�l/�&� � ������� 0 
setdisplay 
setDisplay�  �  �  � ����� 0 getosxnumber getOSXNumber� � 0 
fileexists 
FileExists
� 
bool� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  � � ������� 0 
fileexists 
FileExists� ��� �  �
�
 0 thefile theFile�  � �	�	 0 thefile theFile�  ��
� 
file
� .coredoexbool       obj � � *�/j  eY hUOf� ������� 0 folderexists FolderExists� ��� �  �� 0 	thefolder 	theFolder�  � � �  0 	thefolder 	theFolder� ����
�� 
cfol
�� .coredoexbool       obj � � *�/j  eY hUOf� ������������ 0 	updatexml 	updateXML�� ����� �  ���� 0 programname programName��  � �������� 0 programname programName�� 
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
0 mypath  �� 0 cmdmakepath cmdMakePath�� 0 alertaction alertAction�� 0 cmdcurldnca cmdCurlDNCA�� *0 cmdunzipalertaction cmdUnzipAlertAction�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�� 0 qmsg qMsg�� 0 btnopt btnOpt�� 0 yesorno yesOrNo�� 0 
dnworkflow 
DNWorkflow�� &0 cmdcurldnworkflow cmdCurlDNWorkflow�� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow�� 0 
cmdcleanup 
cmdCleanUp�� 0 
cmdcurlxml 
cmdCurlXML� 8������B��D_������z�����������������������������	������%37CO_}��������������� 0 folderexists FolderExists�� 0 
fileexists 
FileExists
�� 
bool
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 getosxnumber getOSXNumber�� 
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
 *b  k+ f �&T�%�%�%�%E�O�*�k+ f  ��%�%E�O�j 	Y hO*b  k+ f 	 *j+ 
��& ��E�O��%�%�%��,%E�O�j 	O*�a %�%k+ e  (�a %�%�%E�O�j 	O�a %�%�%E�O�j 	Y hOa E�Oa a lvE�O W�a �a a a a a b  a  � a ,E�O�a   #a  �%a !�,%j 	O*a "a #a $m+ %Y hW X & 'hY hO*�k+ e 	 *b  k+ f �& [a (E�O�a )%�%�%a *�,%E�O�a +%�%�%E�O�a ,%�%�%E�O�j 	O*�a -%�%k+ e  �j 	O�j 	Y hY hO*b  k+ f  $�a .%b  %�%a /�,%E^ O] j 	Y hW "X & '*a 0a 1�m+ %O*j+ 2O*j+ 3OfO*j+ 4O*b  k+ e 	 *j+ 
��&	 *�k+ e �&	 *b  k+ e �&	 *b  k+ e �&	 b  e �& *a 5�a 6m+ %Ob  j 7Y hY hO*j+ 2e 	 *j+ 3e �& eY hOf� ������������� 
0 notify  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ����'-<Bb��d������kquz��
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
prun��  ��  �� + *�b  / *�,e  eY hUW 	X  fOf� ������������  0 killrunningapp killRunningApp��  ��  �  � �~�}�|�{�z���y
�~ 
capp
�} 
prun
�| .aevtquitnull��� ��� null�{  �z  
�y .sysoexecTEXT���     TEXT� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � �x��w�v���u�x 0 servicealive serviceAlive�w  �v  � �t�s�r�t 0 cmdssh cmdSSH�s 
0 sshcon  �r 
0 tunnel  � ���q�p�o�n�m
�q .sysoexecTEXT���     TEXT
�p 
cpar
�o 
cobj�n  �m  �u = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� �l�k�j���i
�l .aevtoappnull  �   � ****�k  �j  �  � F�h�g�f�e�d�c�b�a46�`A�_�^Zegi}����]��\�[�Z��Y�X�W�V�U�������T
,�S�R�Q6�P�OF�N�M�L�K�J�I�H�G�F|~�E�D�C����h 0 resetprogram resetProgram�g $0 sshchecksettings sshCheckSettings�f 0 
setdisplay 
setDisplay�e 0 servicealive serviceAlive�d  0 isservicealive isServiceAlive�c 0 titlemsg  �b 0 isapprunning isAppRunning
�a 
bool�` 0 message  �_ 0 msg  �^  0 killrunningapp killRunningApp�] 0 btnopt btnOpt�\ 0 qmsg qMsg
�[ 
btns
�Z 
dflt
�Y 
appr�X 
�W .sysodlogaskr        TEXT
�V 
bhit�U 
0 choice  
�T .sysodelanull��� ��� nmbr
�S 
givu�R �Q 0 yesorno yesOrNo�P  �O  
�N 
psxp�M 0 apppath appPath
�L 
psof
�K 
psin�J 
�I .sysooffslong    ��� null�H 0 
nameoffset 
nameOffset
�G 
ctxt�F 0 
folderpath 
folderPath
�E .sysoexecTEXT���     TEXT
�D 
capp
�C .miscactvnull��� ��� null�iG*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %E` Ob  e  1*a %*j+ _ a &%b  l!%a '%m+ Ob  l!j (Y la )a *lvE` O U_ a +%b  %a ,%E` O_ a _ a a -a �a .b  a / a  ,E` 0O_ 0a 1  hY hW 	X 2 3hOa 4a 5,E` 6O*a 7b  a 8_ 6a 9 :E` ;O_ 6[a <\[Zk\Z_ ;k2E` =O 4_ =b  %a >%a ?%j @Okj (O*a Ab  / *j BUW X 2 3*a Ca Da Eb  %m+ OPascr  ��ޭ