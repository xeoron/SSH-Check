FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.7.0
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
 	 V e r s i o n :   0 . 7 . 0 
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
0 mypath  B QRQ r   ` mSTS b   ` kUVU l  ` iW����W n   ` iXYX 1   g i��
�� 
psxpY l  ` gZ����Z I  ` g��[\
�� .earsffdralis        afdr[  f   ` a\ ��]��
�� 
rtyp] m   b c��
�� 
TEXT��  ��  ��  ��  ��  V m   i j^^ �__ " C o n t e n t s / S u p p o r t /T o      ���� 0 
supportloc 
supportLocR `a` l  n n��������  ��  ��  a bcb Q   nudefd k   qRgg hih Z   q �jk����j =  q ylml I   q w��n���� 0 folderexists FolderExistsn o��o o   r s���� 0 
configpath 
configPath��  ��  m m   w x��
�� boovfalsk k   | �pp qrq r   | �sts b   | �uvu b   | wxw m   | }yy �zz  m k d i r   - px 1   } ~��
�� 
spacv o    ����� 0 
configpath 
configPatht o      ���� 0 cmdmakepath cmdMakePathr {|{ l  � �}~} I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdmakepath cmdMakePath��  ~  create path    ���  c r e a t e   p a t h| ���� l  � ����� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ��� ?�      ��  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t��  ��  ��  i ��� l  � ���������  ��  ��  � ��� Z   � �������� =  � ���� I   � ������� 0 
fileexists 
FileExists� ��~� o   � ��}�} 0 xmlsettings XMLSettings�~  �  � m   � ��|
�| boovfals� k   � ��� ��� l  � ��{���{  � g anote: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � ��� � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  � ��� l  � ��z���z  � � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   � ��� � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t� ��� Q   � ����y� k   � ��� ��� I  � ��x��w
�x .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� o   � ��v�v 
0 mypath  � m   � ��� ���  c p  � o   � ��u�u 0 
supportloc 
supportLoc� m   � ��� ��� " i c o n f i g S S H C . p y   . /�w  � ��t� I  � ��s��r
�s .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� o   � ��q�q 
0 mypath  � m   � ��� ���  c h m o d   + x� 1   � ��p
�p 
spac� o   � ��o�o 0 xmlsettings XMLSettings�r  �t  � R      �n�m�l
�n .ascrerr ****      � ****�m  �l  �y  � ��k� I  � ��j��i
�j .sysodelanull��� ��� nmbr� m   � ��� ?�      �i  �k  ��  ��  � ��� l  � ��h�g�f�h  �g  �f  � ��� Z   �����e�d� F   � ���� =  � ���� I   � ��c��b�c 0 
fileexists 
FileExists� ��a� o   � ��`�` 0 dnca DNCA�a  �b  � m   � ��_
�_ boovfals� @   � ���� I   � ��^�]�\�^ 0 getosxnumber getOSXNumber�]  �\  � m   � ��[�[ � k   ���� ��� l  � ��Z���Z  � ? 9setup Automator Display Notification Center Action script   � ��� r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p t� ��� r   � ���� m   � ��� ��� X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p� o      �Y�Y 0 alertaction alertAction� ��� I  �X��W
�X .sysoexecTEXT���     TEXT� b   ��� b   ��� b   	��� b   ��� b   ��� o   �V�V 
0 mypath  � m  �� ���  c p  � o  �U�U 0 
supportloc 
supportLoc� o  �T�T 0 alertaction alertAction� 1  	
�S
�S 
spac� m  �� ���  . /�W  � ��� I �R��Q
�R .sysodelanull��� ��� nmbr� m  �� ?�      �Q  � ��� l �P�O�N�P  �O  �N  � ��� Z  T���M�L� = *��� I  (�K��J�K 0 
fileexists 
FileExists� ��I� b  $��� b  "��� o  �H�H 0 
configpath 
configPath� m  !�� ���  /� o  "#�G�G 0 alertaction alertAction�I  �J  � m  ()�F
�F boovtrue� k  -P�� ��� r  -8� � b  -6 b  -4 b  -2 o  -.�E�E 
0 mypath   m  .1 �  u n z i p   - u 1  23�D
�D 
spac o  45�C�C 0 alertaction alertAction  o      �B�B *0 cmdunzipalertaction cmdUnzipAlertAction� 	
	 I 9>�A�@
�A .sysoexecTEXT���     TEXT o  9:�?�? *0 cmdunzipalertaction cmdUnzipAlertAction�@  
  r  ?J b  ?H b  ?F b  ?D o  ?@�>�> 
0 mypath   m  @C �   r m   - r f   _ _ M A C O S X / 1  DE�=
�= 
spac o  FG�<�< 0 alertaction alertAction o      �;�; .0 cmdcleanupalertaction cmdCleanUpAlertAction �: I KP�9�8
�9 .sysoexecTEXT���     TEXT o  KL�7�7 .0 cmdcleanupalertaction cmdCleanUpAlertAction�8  �:  �M  �L  �  r  UZ m  UX � � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p ! o      �6�6 0 qmsg qMsg  !  r  [e"#" J  [c$$ %&% m  [^'' �((  Y e s& )�5) m  ^a** �++  N o�5  # o      �4�4 0 btnopt btnOpt! ,-, Q  f�./�3. k  i�00 121 r  i�343 n  i�565 1  ���2
�2 
bhit6 l i�7�1�07 I i��/89
�/ .sysodlogaskr        TEXT8 o  ij�.�. 0 qmsg qMsg9 �-:;
�- 
btns: o  mn�,�, 0 btnopt btnOpt; �+<=
�+ 
dflt< m  qt>> �??  N o= �*@A
�* 
appr@ m  wzBB �CC > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l pA �)D�(
�) 
givuD ]  }�EFE o  }��'�' 0 	countdown  F m  ���&�& <�(  �1  �0  4 o      �%�% 0 yesorno yesOrNo2 GHG Z  ��IJ�$�#I = ��KLK o  ���"�" 0 yesorno yesOrNoL m  ��MM �NN  Y e sJ I ���!O� 
�! .sysoexecTEXT���     TEXTO b  ��PQP b  ��RSR o  ���� 
0 mypath  S m  ��TT �UU 
 o p e n  Q n  ��VWV 1  ���
� 
strqW m  ��XX �YY P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n�   �$  �#  H Z[Z R  �����
� .ascrerr ****      � ****�  �  [ \�\ I  ���]�� 0 msg  ] ^_^ m  ��`` �aa   S S H - C h e c k :   E r r o r_ bcb m  ��dd �ee  c f�f m  ��gg �hh @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !�  �  �  / R      ���
� .ascrerr ****      � ****�  �  �3  - i�i I ���j�
� .sysodelanull��� ��� nmbrj m  ��kk ?�      �  �  �e  �d  � lml l ������  �  �  m n�n Z  �Rop��o F  ��qrq = ��sts I  ���
u�	�
 0 folderexists FolderExistsu v�v o  ���� 0 
configpath 
configPath�  �	  t m  ���
� boovtruer = ��wxw I  ���y�� 0 
fileexists 
FileExistsy z�z o  ���� 0 dnclocation DNCLocation�  �  x m  ���
� boovfalsp k  �N{{ |}| l ��� ~�   ~ 0 *setup display notification center workflow    ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w} ��� r  ����� m  ���� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      ���� 0 
dnworkflow 
DNWorkflow� ��� r  ���� b  ���� b  ���� b  ����� o  ������ 
0 mypath  � m  ���� ���  u n z i p   - u� 1  � ��
�� 
spac� o  ���� 0 
dnworkflow 
DNWorkflow� o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  ��� b  ��� b  ��� b  ��� o  ���� 
0 mypath  � m  
�� ���   r m   - r f   _ _ M A C O S X /� 1  ��
�� 
spac� o  ���� 0 
dnworkflow 
DNWorkflow� o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� I %�����
�� .sysoexecTEXT���     TEXT� b  !��� b  ��� b  ��� b  ��� b  ��� o  ���� 
0 mypath  � m  �� ���  c p  � o  ���� 0 
supportloc 
supportLoc� o  ���� 0 
dnworkflow 
DNWorkflow� 1  ��
�� 
spac� m   �� ���  . /��  � ��� I &-�����
�� .sysodelanull��� ��� nmbr� m  &)�� ?�      ��  � ��� l ..��������  ��  ��  � ���� Z  .N������� = .<��� I  .:������� 0 
fileexists 
FileExists� ���� b  /6��� b  /4��� o  /0���� 0 
configpath 
configPath� m  03�� ���  /� o  45���� 0 
dnworkflow 
DNWorkflow��  ��  � m  :;��
�� boovtrue� k  ?J�� ��� I ?D�����
�� .sysoexecTEXT���     TEXT� o  ?@���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  � ���� I EJ�����
�� .sysoexecTEXT���     TEXT� o  EF���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  ��  ��  ��  �  �  �  e R      ������
�� .ascrerr ****      � ****��  ��  f k  Zu�� ��� I  Zf������� 0 msg  � ��� m  [^�� ���  S e t u p   F a i l e d :� ��� m  ^a�� ���  � ���� o  ab���� 0 
configpath 
configPath��  ��  � ��� I  gl�������� 0 setupservice setUpService��  ��  � ��� I  mr�������� 0 setupprogram setUpProgram��  ��  � ���� L  su�� m  st��
�� boovfals��  c ��� l vv��������  ��  ��  � ��� l vv������  � n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   � ��� � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .� ��� I v������
�� .sysodelanull��� ��� nmbr� ^  v}��� o  v{���� 0 	countdown  � m  {|���� ��  � ��� I  ���������� 0 
setdisplay 
setDisplay��  ��  � ���� Z  ��������� = ����� o  ������ *0 displaynoticecenter DisplayNoticeCenter� m  ����
�� boovtrue� k  ���� ��� I  ��������� 0 msg  � ��� m  ���� ���   S S H - C h e c k :   S e t u p� ��� b  ����� o  ������ 0 
configpath 
configPath� m  ���� ��� ,   s e t t i n g s   a r e   c u r r e n t .� ���� m  ���� ��� L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !��  ��  �  ��  I ������
�� .sysodelanull��� ��� nmbr m  ������ ��  ��  ��  ��  ��  ��  ��    l ����������  ��  ��    l ������   # loadSettings from config file    � : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e 	
	 Z  ������ F  �� = �� I  ���������� 0 setupservice setUpService��  ��   m  ����
�� boovtrue = �� I  ���������� 0 setupprogram setUpProgram��  ��   m  ����
�� boovtrue L  �� m  ����
�� boovtrue��  ��  
  l ����������  ��  ��   �� L  �� m  ����
�� boovfals��    return bool    �  r e t u r n   b o o l   l     ��������  ��  ��    i   C F I      ������ 
0 notify    !  o      ���� 	0 title  ! "#" o      ���� 0 subtitle  # $��$ o      ���� 0 message  ��  ��   k     �%% &'& l      ��()��  ( 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    ) �**   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  ' +,+ l     ��������  ��  ��  , -.- Z    /0����/ >    121 c     343 o     ���� 	0 title  4 m    ��
�� 
ctxt2 m    55 �66  0 r    787 b    9:9 m    	;; �<<    - D   t i t l e =: n   	 =>= 1    ��
�� 
strq> l  	 ?����? c   	 @A@ o   	 
���� 	0 title  A m   
 ��
�� 
ctxt��  ��  8 o      ���� 	0 title  ��  ��  . BCB Z   +DE����D >   FGF c    HIH o    ���� 0 subtitle  I m    ��
�� 
ctxtG m    JJ �KK  E r    'LML b    %NON m    PP �QQ    - D   s u b t i t l e =O n    $RSR 1   " $��
�� 
strqS l   "T����T c    "UVU o     ���� 0 subtitle  V m     !��
�� 
ctxt��  ��  M o      ���� 0 subtitle  ��  ��  C WXW Z  , AYZ��~Y >  , 1[\[ c   , /]^] o   , -�}�} 0 message  ^ m   - .�|
�| 
ctxt\ m   / 0__ �``  Z r   4 =aba b   4 ;cdc m   4 5ee �ff    - D   m e s s a g e =d n   5 :ghg 1   8 :�{
�{ 
strqh l  5 8i�z�yi c   5 8jkj o   5 6�x�x 0 message  k m   6 7�w
�w 
ctxt�z  �y  b o      �v�v 0 message  �  �~  X l�ul Q   B �mnom I  E b�tp�s
�t .sysoexecTEXT���     TEXTp b   E ^qrq b   E \sts b   E Zuvu b   E Twxw b   E Ryzy b   E P{|{ b   E N}~} b   E L� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�r
�r 
spac� o   H I�q�q 	0 title  � 1   J K�p
�p 
spac~ o   L M�o�o 0 subtitle  | 1   N O�n
�n 
spacz o   P Q�m�m 0 message  x 1   R S�l
�l 
spacv o   T Y�k�k 0 dnclocation DNCLocationt 1   Z [�j
�j 
spacr m   \ ]�� ���  2 > / d e v / n u l l�s  n R      �i�h�g
�i .ascrerr ****      � ****�h  �g  o k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �f�f *0 displaynoticecenter DisplayNoticeCenter� ��e� I   r ��d��c�d 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��b� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �a�a 0 dnclocation DNCLocation�b  �c  �e  �u   ��� l     �`�_�^�`  �_  �^  � ��� i   G J��� I      �]��\�] 0 msg  � ��� o      �[�[ 0 msgtitle msgTitle� ��� o      �Z�Z 0 subtitle  � ��Y� o      �X�X 0 message  �Y  �\  � Z     *���W�� =    ��� o     �V�V *0 displaynoticecenter DisplayNoticeCenter� m    �U
�U boovtrue� l  
 ���� I   
 �T��S�T 
0 notify  � ��� o    �R�R 0 msgtitle msgTitle� ��� o    �Q�Q 0 subtitle  � ��P� o    �O�O 0 message  �P  �S  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�W  � Q    *���� L     �� I   �N��
�N .sysodlogaskr        TEXT� o    �M�M 0 message  � �L��K
�L 
appr� o    �J�J 0 msgtitle msgTitle�K  � R      �I�H�G
�I .ascrerr ****      � ****�H  �G  � L   ( *�F�F  � ��� l     �E�D�C�E  �D  �C  � ��� i   K N��� I      �B�A�@�B 0 isapprunning isAppRunning�A  �@  � k     *�� ��� Q     '���� O    ��� Z    ���?�>� =   ��� n    ��� 1    �=
�= 
prun�  g    � m    �<
�< boovtrue� L    �� m    �;
�; boovtrue�?  �>  � 4    �:�
�: 
capp� o    
�9�9 0 program  � R      �8�7�6
�8 .ascrerr ****      � ****�7  �6  � L   % '�� m   % &�5
�5 boovfals� ��4� L   ( *�� m   ( )�3
�3 boovfals�4  � ��� l     �2�1�0�2  �1  �0  � ��� i   O R��� I      �/�.�-�/  0 killrunningapp killRunningApp�.  �-  � Q     5���� O     ��� l   ���� Z    ���,�+� =   ��� n    ��� 1    �*
�* 
prun�  g    � m    �)
�) boovtrue� I   �(�'�&
�( .aevtquitnull��� ��� null�'  �&  �,  �+  �   doesn't launch app   � ��� &   d o e s n ' t   l a u n c h   a p p� 4    �%�
�% 
capp� o    
�$�$ 0 program  � R      �#�"�!
�# .ascrerr ****      � ****�"  �!  � I  ( 5� ��
�  .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .�� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�  � ��� l     ����  �  �  � ��� i   S V��� I      ���� 0 servicealive serviceAlive�  �  � Q     <� � l   2 k    2  r    	 b    

 b    
 m     � @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . * o    	�� 0 service   m   
  � ( '   |   a w k   ' { p r i n t   $ 8 } '	 o      �� 0 cmdssh cmdSSH  r     n     4    �
� 
cobj m    ��  n     2   �
� 
cpar l   �� I   ��
� .sysoexecTEXT���     TEXT o    �� 0 cmdssh cmdSSH�  �  �   o      �� 
0 sshcon    s       o    �� 
0 sshcon    o      �� 
0 tunnel   !�
! Z   ! 2"#�	$" E   ! (%&% o   ! "�� 
0 tunnel  & o   " '�� 0 service  # L   + -'' o   + ,�� 
0 tunnel  �	  $ L   0 2(( m   0 1��  �
   0 *check for ssh connected to defined service    �)) T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e  R      ���
� .ascrerr ****      � ****�  �   L   : <** m   : ;��  � +,+ l     � �����   ��  ��  , -��- i   W Z./. I     ������
�� .aevtoappnull  �   � ****��  ��  / k    B00 121 I     �������� 0 resetprogram resetProgram��  ��  2 343 I    �������� $0 sshchecksettings sshCheckSettings��  ��  4 565 I    �������� 0 
setdisplay 
setDisplay��  ��  6 787 l   ��������  ��  ��  8 9:9 r    ;<; I    �������� 0 servicealive serviceAlive��  ��  < o      ����  0 isservicealive isServiceAlive: =>= r    ?@? m    AA �BB ( S S H   S e r v i c e   i s   D o w n !@ o      ���� 0 titlemsg  > CDC Z    �EFG��E F    -HIH =   %JKJ I    #�������� 0 isapprunning isAppRunning��  ��  K m   # $��
�� boovtrueI =  ( +LML o   ( )����  0 isservicealive isServiceAliveM m   ) *����  F k   0 SNN OPO r   0 ;QRQ b   0 9STS b   0 7UVU m   0 1WW �XX , I t   i s   n o t   s a f e   t o   r u n  V o   1 6���� 0 program  T m   7 8YY �ZZ H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !R o      ���� 0 message  P [\[ I   < J��]���� 0 msg  ] ^_^ o   = >���� 0 titlemsg  _ `a` b   > Ebcb m   > ?dd �ee  W a r n i n g  c o   ? D���� 0 service  a f��f o   E F���� 0 message  ��  ��  \ ghg I   K P��������  0 killrunningapp killRunningApp��  ��  h i��i l  Q Sjklj L   Q S����  k  exit SSH-Check   l �mm  e x i t   S S H - C h e c k��  G non =  V Ypqp o   V W����  0 isservicealive isServiceAliveq m   W X����  o r��r k   \ �ss tut I   \ ���v���� 0 msg  v wxw o   ] ^���� 0 titlemsg  x yzy b   ^ e{|{ m   ^ _}} �~~  W a r n i n g   a b o u t  | o   _ d���� 0 service  z �� b   e |��� b   e x��� b   e r��� b   e n��� m   e h�� ���  D o n ' t   r u n  � o   h m���� 0 program  � m   n q�� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   r w���� 0 service  � m   x {�� ���  .��  ��  u ���� l  � ����� L   � �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  ��  D ��� l  � ���������  ��  ��  � ��� l  � �������  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � �����  0 isservicealive isServiceAlive� o      ���� 0 titlemsg  � ��� Z   �������� =  � ���� I   � ��������� 0 isapprunning isAppRunning��  ��  � m   � ���
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
0 choice  � m   � ��� ���  T u r n   O f f� ���� k   � ��� ��� I   � ���������  0 killrunningapp killRunningApp��  ��  � ���� l  � ����� L   � �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  � l ���� l ���� L  ����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l��  � 0 * should we kill & restart the running app?   � ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  � k  ��� ��� r  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	���� 0 program  � o      ���� 0 qmsg qMsg� ���� Z  � ��  =  o  ���� *0 displaynoticecenter DisplayNoticeCenter m  ��
�� boovtrue k  F  I  :������ 0 msg   	
	 m  " �  S S H - C h e c k
  b  "/ b  "+ I  "'�������� 0 servicealive serviceAlive��  ��   1  '*��
�� 
spac m  +. �  i s   a c t i v e �� b  /6 o  /2���� 0 qmsg qMsg m  25 �  u p   n o w !��  ��   �� I ;F����
�� .sysodelanull��� ��� nmbr l ;B���� ^  ;B o  ;@���� 0 	countdown   m  @A���� ��  ��  ��  ��  ��   k  I�  !  r  IU"#" J  IQ$$ %&% m  IL'' �((  L a u n c h& )��) m  LO** �++  S t o p��  # o      ���� 0 btnopt btnOpt! ,��, Q  V�-./- k  Y�00 121 r  Yn343 b  Yj565 b  Yf787 b  Y`9:9 o  Y\���� 0 qmsg qMsg: m  \_;; �<<    i n  8 o  `e���� 0 	countdown  6 m  fi== �>>    s e c o n d s !4 o      ���� 0 qmsg qMsg2 ?@? r  o�ABA n  o�CDC 1  ����
�� 
bhitD l o�E����E I o���FG
�� .sysodlogaskr        TEXTF o  or���� 0 qmsg qMsgG ��HI
�� 
btnsH o  ux�� 0 btnopt btnOptI �~JK
�~ 
dfltJ m  {~LL �MM  L a u n c hK �}NO
�} 
apprN o  ���|�| 0 titlemsg  O �{P�z
�{ 
givuP o  ���y�y 0 	countdown  �z  ��  ��  B o      �x�x 0 yesorno yesOrNo@ Q�wQ Z  ��RS�v�uR = ��TUT o  ���t�t 0 yesorno yesOrNoU m  ��VV �WW  S t o pS L  ���s�s  �v  �u  �w  . R      �r�q�p
�r .ascrerr ****      � ****�q  �p  / L  ���o�o  ��  ��  � XYX l ���n�m�l�n  �m  �l  Y Z[Z l ���k\]�k  \ ! Prepare to launch a program   ] �^^ 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m[ _`_ r  ��aba n  ��cdc 1  ���j
�j 
psxpd l ��e�i�he m  ��ff �gg  / A p p l i c a t i o n s /�i  �h  b o      �g�g 0 apppath appPath` hih l ���fjk�f  j 0 *msg("info:", "Msg", "apppath: " & appPath)   k �ll T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )i mnm r  ��opo I ���e�dq
�e .sysooffslong    ��� null�d  q �crs
�c 
psofr o  ���b�b 0 program  s �at�`
�a 
psint o  ���_�_ 0 apppath appPath�`  p o      �^�^ 0 
nameoffset 
nameOffsetn uvu l ���]wx�]  w 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   x �yy ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )v z{z r  ��|}| n  ��~~ 7 ���\��
�\ 
ctxt� m  ���[�[ � l ����Z�Y� \  ����� o  ���X�X 0 
nameoffset 
nameOffset� m  ���W�W �Z  �Y   o  ���V�V 0 apppath appPath} o      �U�U 0 
folderpath 
folderPath{ ��� l ���T���T  � 6 0msg("info:", "Msg", "folderpath: " & folderPath)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )� ��� Q  �@���� l �$���� k  �$�� ��� I �
�S��R
�S .sysoexecTEXT���     TEXT� b  ���� b  ���� b  ����� o  ���Q�Q 0 
folderpath 
folderPath� o  ���P�P 0 program  � m  ��� ���  . a p p� m  �� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�R  � ��� I �O��N
�O .sysodelanull��� ��� nmbr� m  �M�M �N  � ��L� O $��� I #�K�J�I
�K .miscactvnull��� ��� null�J  �I  � 4  �H�
�H 
capp� o  �G�G 0 program  �L  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      �F�E�D
�F .ascrerr ****      � ****�E  �D  � I  ,@�C��B�C 0 msg  � ��� m  -0�� ���   S S H - C h e c k :   E r r o r� ��� m  03�� ��� 
 E r r o r� ��A� b  3<��� m  36�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  6;�@�@ 0 program  �A  �B  � ��?� l AA�>�=�<�>  �=  �<  �?  ��       �;�   ! ' 1 7 < A�:�����������������;  � �9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!�9 0 service  �8 0 program  �7 0 programbackup programBackup�6 0 servicebackup serviceBackup�5 0 	countdown  �4 0 dnclocation DNCLocation�3 0 xmlsettings XMLSettings�2 0 dnca DNCA�1 *0 displaynoticecenter DisplayNoticeCenter
�0 .aevtodocnull  �    alis�/ 0 resetprogram resetProgram�. 0 getosxnumber getOSXNumber�- 0 
setdisplay 
setDisplay�, 0 
fileexists 
FileExists�+ 0 folderexists FolderExists�* 0 	updatexml 	updateXML�) 0 setupservice setUpService�( 0 setupprogram setUpProgram�' $0 sshchecksettings sshCheckSettings�& 
0 notify  �% 0 msg  �$ 0 isapprunning isAppRunning�#  0 killrunningapp killRunningApp�" 0 servicealive serviceAlive
�! .aevtoappnull  �   � ****
�: boovfals� �  O�����
�  .aevtodocnull  �    alis� 0 these_items  �  � ��� 0 these_items  � 0 prog  �  ]� p�� }��� � � ����
� 
TEXT
� 
txdl
� 
citm� $0 sshchecksettings sshCheckSettings� 0 	updatexml 	updateXML� 0 
setdisplay 
setDisplay� 0 msg  
� .sysodelanull��� ��� nmbr
� .aevtoappnull  �   � ****� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j � � ������� 0 resetprogram resetProgram�  �  �  �  � fEc  � � ������
� 0 getosxnumber getOSXNumber�  �  �  �  ��	����
�	 
txdl
� .sysosigtsirr   ��� null
� 
sisv
� 
citm
� 
nmbr�
 �*�,FO*j �,�l/�&� � ������� 0 
setdisplay 
setDisplay�  �  �  � � �������  0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  � �� ����������� 0 
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
bool��  ��  �� r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOf� ������������ $0 sshchecksettings sshCheckSettings��  ��  � ������������������������������ 0 configfolder configFolder�� 0 
configpath 
configPath�� 
0 mypath  �� 0 
supportloc 
supportLoc�� 0 cmdmakepath cmdMakePath�� 0 alertaction alertAction�� *0 cmdunzipalertaction cmdUnzipAlertAction�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�� 0 qmsg qMsg�� 0 btnopt btnOpt�� 0 yesorno yesOrNo�� 0 
dnworkflow 
DNWorkflow�� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� @����������M��O��������^y����������������'*����>��B��������MTX��`dg��������������������� 0 folderexists FolderExists�� 0 
fileexists 
FileExists
�� 
bool�� 0 getosxnumber getOSXNumber�� 
�� 
spac
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� 
psxp
�� .sysoexecTEXT���     TEXT
�� .sysodelanull��� ��� nmbr��  ��  
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
bhit
�� 
strq�� 0 msg  �� 0 setupservice setUpService�� 0 setupprogram setUpProgram�� 0 
setdisplay 
setDisplay����E�O�%E�O*�k+ f 
 *b  k+ f �&
 *b  k+ f �&
 *b  k+ f 	 *j+ ��&�&]�%�%�%�%E�O)��l �,�%E�O�*�k+ f  ��%�%E�O�j Oa j Y hO*b  k+ f  : &�a %�%a %j O�a %�%b  %j W X  hOa j Y hO*b  k+ f 	 *j+ ��& �a E�O�a %�%�%�%a %j Oa j O*�a %�%k+ e  (�a %�%�%E�O�j O�a %�%�%E�O�j Y hOa E�Oa a  lvE�O ^�a !�a "a #a $a %a &b  a ' � (a ),E�O�a *  �a +%a ,a -,%j Y hO)jhO*a .a /a 0m+ 1W X  hOa j Y hO*�k+ e 	 *b  k+ f �& _a 2E�O�a 3%�%�%E�O�a 4%�%�%E�O�a 5%�%�%�%a 6%j Oa j O*�a 7%�%k+ e  �j O�j Y hY hW "X  *a 8a 9�m+ 1O*j+ :O*j+ ;OfOb  m!j O*j+ <Ob  e  *a =�a >%a ?m+ 1Okj Y hY hO*j+ :e 	 *j+ ;e �& eY hOf� ������������ 
0 notify  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ��5;��JP_e����������������
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ � ������������� 0 msg  �� ����� �  ������� 0 msgtitle msgTitle�� 0 subtitle  � 0 message  ��  � �~�}�|�~ 0 msgtitle msgTitle�} 0 subtitle  �| 0 message  � �{�z�y�x�w�{ 
0 notify  
�z 
appr
�y .sysodlogaskr        TEXT�x  �w  �� +b  e  *���m+  Y  ��l W 	X  h� �v��u�t���s�v 0 isapprunning isAppRunning�u  �t  �  � �r�q�p�o
�r 
capp
�q 
prun�p  �o  �s + *�b  / *�,e  eY hUW 	X  fOf� �n��m�l���k�n  0 killrunningapp killRunningApp�m  �l  �  � �j�i�h�g�f���e
�j 
capp
�i 
prun
�h .aevtquitnull��� ��� null�g  �f  
�e .sysoexecTEXT���     TEXT�k 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � �d��c�b���a�d 0 servicealive serviceAlive�c  �b  � �`�_�^�` 0 cmdssh cmdSSH�_ 
0 sshcon  �^ 
0 tunnel  � �]�\�[�Z�Y
�] .sysoexecTEXT���     TEXT
�\ 
cpar
�[ 
cobj�Z  �Y  �a = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� �X/�W�V���U
�X .aevtoappnull  �   � ****�W  �V  �  � G�T�S�R�Q�PA�O�N�MWY�Ld�K�J}��������I��H�G�F��E�D�C�B�A����@�?'*;=L�>�=�<V�;�:f�9�8�7�6�5�4�3�2�1���0�/�.����T 0 resetprogram resetProgram�S $0 sshchecksettings sshCheckSettings�R 0 
setdisplay 
setDisplay�Q 0 servicealive serviceAlive�P  0 isservicealive isServiceAlive�O 0 titlemsg  �N 0 isapprunning isAppRunning
�M 
bool�L 0 message  �K 0 msg  �J  0 killrunningapp killRunningApp�I 0 btnopt btnOpt�H 0 qmsg qMsg
�G 
btns
�F 
dflt
�E 
appr�D 
�C .sysodlogaskr        TEXT
�B 
bhit�A 
0 choice  
�@ 
spac
�? .sysodelanull��� ��� nmbr
�> 
givu�= �< 0 yesorno yesOrNo�;  �:  
�9 
psxp�8 0 apppath appPath
�7 
psof
�6 
psin�5 
�4 .sysooffslong    ��� null�3 0 
nameoffset 
nameOffset
�2 
ctxt�1 0 
folderpath 
folderPath
�0 .sysoexecTEXT���     TEXT
�/ 
capp
�. .miscactvnull��� ��� null�UC*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %E` Ob  e  -*a %*j+ _ &%a '%_ a (%m+ Ob  m!j )Y la *a +lvE` O U_ a ,%b  %a -%E` O_ a _ a a .a �a /b  a 0 a  ,E` 1O_ 1a 2  hY hW 	X 3 4hOa 5a 6,E` 7O*a 8b  a 9_ 7a : ;E` <O_ 7[a =\[Zk\Z_ <k2E` >O 4_ >b  %a ?%a @%j AOkj )O*a Bb  / *j CUW X 3 4*a Da Ea Fb  %m+ OP ascr  ��ޭ