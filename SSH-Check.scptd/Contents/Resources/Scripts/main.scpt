FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.6.0
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
 	 V e r s i o n :   0 . 6 . 0 
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
�� boovfals��  � ��� l     ��������  ��  ��  � � � i   ? B I      �������� $0 sshchecksettings sshCheckSettings��  ��   l   � k    �  r     	
	 m      �  . s s h - c h e c k
 o      ���� 0 configfolder configFolder  r    	 b     m     �  ~ / o    ���� 0 configfolder configFolder o      ���� 0 
configpath 
configPath  l  
 
��������  ��  ��    Z   
����� G   
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
�� boovfals k   7�++ ,-, l  7 7��./��  . F @# setup path, display notification data, and config file manager   / �00 � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r- 121 l  7 7��34��  3 � {# Note: curling for now, but might start stuffing the workflow folder inside SSH-Check binary to remove a point of failure    4 �55 � #   N o t e :   c u r l i n g   f o r   n o w ,   b u t   m i g h t   s t a r t   s t u f f i n g   t h e   w o r k f l o w   f o l d e r   i n s i d e   S S H - C h e c k   b i n a r y   t o   r e m o v e   a   p o i n t   o f   f a i l u r e  2 676 r   7 >898 b   7 <:;: b   7 :<=< m   7 8>> �??  m k d i r   - p= 1   8 9��
�� 
spac; o   : ;���� 0 
configpath 
configPath9 o      ���� 0 cmdmakepath cmdMakePath7 @A@ r   ? JBCB b   ? HDED b   ? FFGF b   ? DHIH b   ? BJKJ m   ? @LL �MM  c d  K o   @ A���� 0 
configpath 
configPathI 1   B C��
�� 
spacG m   D ENN �OO  & &E 1   F G��
�� 
spacC o      ���� 
0 mypath  A PQP r   K NRSR m   K LTT �UU  d n . w o r k f l o w . z i pS o      ���� 0 
dnworkflow 
DNWorkflowQ VWV r   O \XYX b   O ZZ[Z b   O V\]\ b   O T^_^ b   O R`a` o   O P���� 
0 mypath  a m   P Qbb �cc  c u r l   - L   - o  _ o   R S���� 0 
dnworkflow 
DNWorkflow] 1   T U��
�� 
spac[ n   V Yded 1   W Y��
�� 
strqe m   V Wff �gg � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u eY o      ���� 0 cmdcurl cmdCurlW hih r   ] fjkj b   ] dlml b   ] bnon b   ] `pqp o   ] ^���� 
0 mypath  q m   ^ _rr �ss  u n z i p   - uo 1   ` a��
�� 
spacm o   b c���� 0 
dnworkflow 
DNWorkflowk o      ���� 0 cmdunzip cmdUnzipi tut r   g pvwv b   g nxyx b   g lz{z b   g j|}| o   g h���� 
0 mypath  } m   h i~~ �   r m   - r f   _ _ M A C O S X /{ 1   j k��
�� 
spacy o   l m���� 0 
dnworkflow 
DNWorkfloww o      ���� 0 
cmdcleanup 
cmdCleanUpu ��� r   q ���� b   q ���� b   q |��� b   q z��� b   q t��� o   q r���� 
0 mypath  � m   r s�� ���  c u r l   - L   - o  � o   t y���� 0 xmlsettings XMLSettings� 1   z {��
�� 
spac� n   | ���� 1    ���
�� 
strq� m   | �� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / i c o n f i g S S H C . p y ? r a w = t r u e� o      ���� 0 
cmdcurlxml 
cmdCurlXML� ��� l  � ���������  ��  ��  � ��� l  � �������  � * $msg("cmdmakepath:", "", cmdMakePath)   � ��� H m s g ( " c m d m a k e p a t h : " ,   " " ,   c m d M a k e P a t h )� ��� l  � �������  � " msg("cmdCurl:", "", cmdCurl)   � ��� 8 m s g ( " c m d C u r l : " ,   " " ,   c m d C u r l )� ��� l  � �������  � # msg("cmdUnzip", "", cmdUnzip)   � ��� : m s g ( " c m d U n z i p " ,   " " ,   c m d U n z i p )� ��� l  � �������  � ' !msg("cmdCleanup", "", cmdCleanUp)   � ��� B m s g ( " c m d C l e a n u p " ,   " " ,   c m d C l e a n U p )� ��� l  � ���������  ��  ��  � ��� Q   ����� k   � ��� ��� Z   � �������� =  � ���� I   � �������� 0 folderexists FolderExists� ���� o   � ����� 0 
configpath 
configPath��  ��  � m   � ���
�� boovfals� l  � ����� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdmakepath cmdMakePath��  �  create path   � ���  c r e a t e   p a t h��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � ������� F   � ���� =  � ���� I   � ��~��}�~ 0 folderexists FolderExists� ��|� o   � ��{�{ 0 
configpath 
configPath�|  �}  � m   � ��z
�z boovtrue� =  � ���� I   � ��y��x�y 0 
fileexists 
FileExists� ��w� o   � ��v�v 0 dnclocation DNCLocation�w  �x  � m   � ��u
�u boovfals� k   � ��� ��� l  � ��t���t  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� I  � ��s��r
�s .sysoexecTEXT���     TEXT� o   � ��q�q 0 cmdcurl cmdCurl�r  � ��p� Z   � ����o�n� =  � ���� I   � ��m��l�m 0 
fileexists 
FileExists� ��k� b   � ���� b   � ���� o   � ��j�j 0 
configpath 
configPath� m   � ��� ���  /� o   � ��i�i 0 
dnworkflow 
DNWorkflow�k  �l  � m   � ��h
�h boovtrue� k   � ��� ��� I  � ��g��f
�g .sysoexecTEXT���     TEXT� o   � ��e�e 0 cmdunzip cmdUnzip�f  � ��d� I  � ��c��b
�c .sysoexecTEXT���     TEXT� o   � ��a�a 0 
cmdcleanup 
cmdCleanUp�b  �d  �o  �n  �p  ��  �  � ��� l  � ��`�_�^�`  �_  �^  � ��]� Z   � ����\�[� =  � ���� I   � ��Z��Y�Z 0 
fileexists 
FileExists� ��X� o   � ��W�W 0 xmlsettings XMLSettings�X  �Y  � m   � ��V
�V boovfals� l  � ����� I  � ��U��T
�U .sysoexecTEXT���     TEXT� o   � ��S�S 0 
cmdcurlxml 
cmdCurlXML�T  �  setup config file   � ��� " s e t u p   c o n f i g   f i l e�\  �[  �]  � R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  � k  �� ��� I  �O��N�O 0 msg  � ��� m  �� ��� " F a i l e d   s e t t i n g   u p� � � m   �    �M o  �L�L 0 
configpath 
configPath�M  �N  �  I  �K�J�I�K 0 setupservice setUpService�J  �I    I  �H�G�F�H 0 setupprogram setUpProgram�G  �F   �E L  		 m  �D
�D boovfals�E  � 

 l   �C�B�A�C  �B  �A    l   �@�@   = 7re-check display settings to see if DNC is working now.    � n r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w .  I   %�?�>�=�? 0 
setdisplay 
setDisplay�>  �=    l &&�<�<   \ VCheck to see if ~/.ssh-check and DNCLocation exists, and if not, then it installs them    � � C h e c k   t o   s e e   i f   ~ / . s s h - c h e c k   a n d   D N C L o c a t i o n   e x i s t s ,   a n d   i f   n o t ,   t h e n   i t   i n s t a l l s   t h e m  l &&�;�;   s mNote: installing DNCA automaticly just does not seem to work, yet, so the user has to download and install it    � � N o t e :   i n s t a l l i n g   D N C A   a u t o m a t i c l y   j u s t   d o e s   n o t   s e e m   t o   w o r k ,   y e t ,   s o   t h e   u s e r   h a s   t o   d o w n l o a d   a n d   i n s t a l l   i t �: Z  &� �9 F  &@!"! = &2#$# I  &0�8%�7�8 0 
fileexists 
FileExists% &�6& o  ',�5�5 0 dnca DNCA�6  �7  $ m  01�4
�4 boovfals" @  5>'(' I  5:�3�2�1�3 0 getosxnumber getOSXNumber�2  �1  ( m  :=�0�0  I  CS�/)�.�/ 0 msg  ) *+* o  DI�-�- 0 dnca DNCA+ ,-, m  IL.. �//  - 0�,0 m  LO11 �22@ a u t o m a t o r   n o t i f i c a t i o n   i s   n o t   i n s t a l l e d .   G e t   a   c o p y   h e r e :   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 /�,  �.    343 F  V�565 F  V�787 F  Vo9:9 = V^;<; I  V\�+=�*�+ 0 folderexists FolderExists= >�)> o  WX�(�( 0 
configpath 
configPath�)  �*  < m  \]�'
�' boovtrue: = am?@? I  ak�&A�%�& 0 
fileexists 
FileExistsA B�$B o  bg�#�# 0 dnclocation DNCLocation�$  �%  @ m  kl�"
�" boovtrue8 = r~CDC I  r|�!E� �! 0 
fileexists 
FileExistsE F�F o  sx�� 0 xmlsettings XMLSettings�  �   D m  |}�
� boovtrue6 = ��GHG o  ���� *0 displaynoticecenter DisplayNoticeCenterH m  ���
� boovtrue4 I�I k  ��JJ KLK I  ���M�� 0 msg  M NON m  ��PP �QQ   S S H - C h e c k :   S e t u pO RSR o  ���� 0 
configpath 
configPathS T�T m  ��UU �VV  D N C   i s   a c t i v e !�  �  L W�W I ���X�
� .sysodelanull��� ��� nmbrX o  ���� 0 	countdown  �  �  �  �9  �:  ��  ��   YZY l ������  �  �  Z [\[ l ���]^�  ] # loadSettings from config file   ^ �__ : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e\ `a` Z  ��bc��b F  ��ded = ��fgf I  ����
�	� 0 setupservice setUpService�
  �	  g m  ���
� boovtruee = ��hih I  ������ 0 setupprogram setUpProgram�  �  i m  ���
� boovtruec L  ��jj m  ���
� boovtrue�  �  a klk l ����� �  �  �   l m��m L  ��nn m  ����
�� boovfals��    return bool    �oo  r e t u r n   b o o l  pqp l     ��������  ��  ��  q rsr i   C Ftut I      ��v���� 
0 notify  v wxw o      ���� 	0 title  x yzy o      ���� 0 subtitle  z {��{ o      ���� 0 message  ��  ��  u k     �|| }~} l      �����   	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    � ���   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  ~ ��� l     ��������  ��  ��  � ��� Z    ������� >    ��� c     ��� o     ���� 	0 title  � m    ��
�� 
ctxt� m    �� ���  � r    ��� b    ��� m    	�� ���    - D   t i t l e =� n   	 ��� 1    ��
�� 
strq� l  	 ������ c   	 ��� o   	 
���� 	0 title  � m   
 ��
�� 
ctxt��  ��  � o      ���� 	0 title  ��  ��  � ��� Z   +������� >   ��� c    ��� o    ���� 0 subtitle  � m    ��
�� 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   s u b t i t l e =� n    $��� 1   " $��
�� 
strq� l   "������ c    "��� o     ���� 0 subtitle  � m     !��
�� 
ctxt��  ��  � o      ���� 0 subtitle  ��  ��  � ��� Z  , A������� >  , 1��� c   , /��� o   , -���� 0 message  � m   - .��
�� 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :��
�� 
strq� l  5 8������ c   5 8��� o   5 6���� 0 message  � m   6 7��
�� 
ctxt��  ��  � o      ���� 0 message  ��  ��  � ���� Q   B ����� I  E b�����
�� .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G��
�� 
spac� o   H I���� 	0 title  � 1   J K��
�� 
spac� o   L M���� 0 subtitle  � 1   N O��
�� 
spac� o   P Q���� 0 message  � 1   R S��
�� 
spac� o   T Y���� 0 dnclocation DNCLocation� 1   Z [��
�� 
spac� m   \ ]�� ���  2 > / d e v / n u l l��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      ���� *0 displaynoticecenter DisplayNoticeCenter� ���� I   r �������� 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ���� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z ���� 0 dnclocation DNCLocation��  ��  ��  ��  s ��� l     ��������  ��  ��  � ��� i   G J��� I      ������� 0 msg  � ��� o      ���� 0 msgtitle msgTitle� � � o      ���� 0 subtitle    �� o      ���� 0 message  ��  ��  � Z     *�� =     o     ���� *0 displaynoticecenter DisplayNoticeCenter m    ��
�� boovtrue l  
 	 I   
 ��
���� 
0 notify  
  o    ���� 0 msgtitle msgTitle  o    ���� 0 subtitle   �� o    ���� 0 message  ��  ��   $  use OS X Noticafaction Center   	 � <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r��   Q    * L      I   ��
�� .sysodlogaskr        TEXT o    ���� 0 message   ����
�� 
appr o    ���� 0 msgtitle msgTitle��   R      ������
�� .ascrerr ****      � ****��  ��   L   ( *����  �  l     ��������  ��  ��    i   K N I      �������� 0 isapprunning isAppRunning��  ��   k     *   Q     '!"#! O    $%$ Z    &'����& =   ()( n    *+* 1    ��
�� 
prun+  g    ) m    ��
�� boovtrue' L    ,, m    ��
�� boovtrue��  ��  % 4    ��-
�� 
capp- o    
���� 0 program  " R      ������
�� .ascrerr ****      � ****��  ��  # L   % '.. m   % &��
�� boovfals  /��/ L   ( *00 m   ( )��
�� boovfals��   121 l     ��������  ��  ��  2 343 i   O R565 I      ��������  0 killrunningapp killRunningApp��  ��  6 Q     57897 O     :;: l   <=>< Z    ?@����? =   ABA n    CDC 1    ��
�� 
prunD  g    B m    ��
�� boovtrue@ I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  =   doesn't launch app   > �EE &   d o e s n ' t   l a u n c h   a p p; 4    ��F
�� 
cappF o    
���� 0 program  8 R      ����~
�� .ascrerr ****      � ****�  �~  9 I  ( 5�}G�|
�} .sysoexecTEXT���     TEXTG b   ( 1HIH b   ( /JKJ m   ( )LL �MM  p s   x   |   g r e p  K o   ) .�{�{ 0 program  I m   / 0NN �OO l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�|  4 PQP l     �z�y�x�z  �y  �x  Q RSR i   S VTUT I      �w�v�u�w 0 servicealive serviceAlive�v  �u  U Q     <VWXV l   2YZ[Y k    2\\ ]^] r    _`_ b    aba b    
cdc m    ee �ff @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *d o    	�t�t 0 service  b m   
 gg �hh ( '   |   a w k   ' { p r i n t   $ 8 } '` o      �s�s 0 cmdssh cmdSSH^ iji r    klk n    mnm 4    �ro
�r 
cobjo m    �q�q n n    pqp 2   �p
�p 
cparq l   r�o�nr I   �ms�l
�m .sysoexecTEXT���     TEXTs o    �k�k 0 cmdssh cmdSSH�l  �o  �n  l o      �j�j 
0 sshcon  j tut s     vwv o    �i�i 
0 sshcon  w o      �h�h 
0 tunnel  u x�gx Z   ! 2yz�f{y E   ! (|}| o   ! "�e�e 
0 tunnel  } o   " '�d�d 0 service  z L   + -~~ o   + ,�c�c 
0 tunnel  �f  { L   0 2 m   0 1�b�b  �g  Z 0 *check for ssh connected to defined service   [ ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c eW R      �a�`�_
�a .ascrerr ****      � ****�`  �_  X L   : <�� m   : ;�^�^  S ��� l     �]�\�[�]  �\  �[  � ��Z� i   W Z��� I     �Y�X�W
�Y .aevtoappnull  �   � ****�X  �W  � k    F�� ��� I     �V�U�T�V 0 resetprogram resetProgram�U  �T  � ��� I    �S�R�Q�S $0 sshchecksettings sshCheckSettings�R  �Q  � ��� I    �P�O�N�P 0 
setdisplay 
setDisplay�O  �N  � ��� l   �M�L�K�M  �L  �K  � ��� r    ��� I    �J�I�H�J 0 servicealive serviceAlive�I  �H  � o      �G�G  0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      �F�F 0 titlemsg  � ��� Z    �����E� F    -��� =   %��� I    #�D�C�B�D 0 isapprunning isAppRunning�C  �B  � m   # $�A
�A boovtrue� =  ( +��� o   ( )�@�@  0 isservicealive isServiceAlive� m   ) *�?�?  � k   0 S�� ��� r   0 ;��� b   0 9��� b   0 7��� m   0 1�� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   1 6�>�> 0 program  � m   7 8�� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� o      �=�= 0 message  � ��� I   < J�<��;�< 0 msg  � ��� o   = >�:�: 0 titlemsg  � ��� b   > E��� m   > ?�� ���  W a r n i n g  � o   ? D�9�9 0 service  � ��8� o   E F�7�7 0 message  �8  �;  � ��� I   K P�6�5�4�6  0 killrunningapp killRunningApp�5  �4  � ��3� l  Q S���� L   Q S�2�2  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�3  � ��� =  V Y��� o   V W�1�1  0 isservicealive isServiceAlive� m   W X�0�0  � ��/� k   \ ��� ��� I   \ ��.��-�. 0 msg  � ��� o   ] ^�,�, 0 titlemsg  � ��� b   ^ e��� m   ^ _�� ���  W a r n i n g   a b o u t  � o   _ d�+�+ 0 service  � ��*� b   e |��� b   e x��� b   e r��� b   e n��� m   e h�� ���  D o n ' t   r u n  � o   h m�)�) 0 program  � m   n q�� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   r w�(�( 0 service  � m   x {�� ���  .�*  �-  � ��'� l  � ����� L   � ��&�&  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�'  �/  �E  � ��� l  � ��%�$�#�%  �$  �#  � ��� l  � ��"���"  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � ��!�!  0 isservicealive isServiceAlive� o      � �  0 titlemsg  � ��� Z   ������� =  � ���� I   � ����� 0 isapprunning isAppRunning�  �  � m   � ��
� boovtrue� l  �   k   �  r   � � J   � � 	
	 m   � � �  R e s t a r t
  m   � � �  E x i t   S S H - C h e c k � m   � � �  T u r n   O f f�   o      �� 0 btnopt btnOpt  r   � � b   � � o   � ��� 0 program   m   � � � �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k o      �� 0 qmsg qMsg  r   � � n   � � !  1   � ��
� 
bhit! l  � �"��" I  � ��#$
� .sysodlogaskr        TEXT# o   � ��� 0 qmsg qMsg$ �%&
� 
btns% o   � ��� 0 btnopt btnOpt& �'(
� 
dflt' m   � �)) �**  E x i t   S S H - C h e c k( �+�
� 
appr+ o   � ��� 0 titlemsg  �  �  �   o      �� 
0 choice   ,�
, Z   �-./0- =  � �121 o   � ��	�	 
0 choice  2 m   � �33 �44  R e s t a r t. I   � �����  0 killrunningapp killRunningApp�  �  / 565 =  � �787 o   � ��� 
0 choice  8 m   � �99 �::  T u r n   O f f6 ;�; k   � �<< =>= I   � �����  0 killrunningapp killRunningApp�  �  > ?� ? l  � �@AB@ L   � �����  A  exit SSH-Check   B �CC  e x i t   S S H - C h e c k�   �  0 l DEFD l GHIG L  ����  H  exit SSH-Check   I �JJ  e x i t   S S H - C h e c kE  choice equals Cancel   F �KK ( c h o i c e   e q u a l s   C a n c e l�
   0 * should we kill & restart the running app?    �LL T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�  � k  �MM NON r  PQP b  RSR m  	TT �UU  S t a r t i n g  S o  	���� 0 program  Q o      ���� 0 qmsg qMsgO V��V Z  �WX��YW = Z[Z o  ���� *0 displaynoticecenter DisplayNoticeCenter[ m  ��
�� boovtrueX k  J\\ ]^] I  >��_���� 0 msg  _ `a` m  "bb �cc  S S H - C h e c ka ded I  "'�������� 0 servicealive serviceAlive��  ��  e f��f b  ':ghg b  '6iji b  '.klk o  '*���� 0 qmsg qMsgl m  *-mm �nn    i n  j l .5o����o ^  .5pqp o  .3���� 0 	countdown  q m  34���� ��  ��  h m  69rr �ss    s e c o n d s !��  ��  ^ t��t I ?J��u��
�� .sysodelanull��� ��� nmbru l ?Fv����v ^  ?Fwxw o  ?D���� 0 	countdown  x m  DE���� ��  ��  ��  ��  ��  Y k  M�yy z{z r  MY|}| J  MU~~ � m  MP�� ���  L a u n c h� ���� m  PS�� ���  S t o p��  } o      ���� 0 btnopt btnOpt{ ���� Q  Z����� k  ]��� ��� r  ]r��� b  ]n��� b  ]j��� b  ]d��� o  ]`���� 0 qmsg qMsg� m  `c�� ���    i n  � o  di���� 0 	countdown  � m  jm�� ���    s e c o n d s !� o      ���� 0 qmsg qMsg� ��� r  s���� n  s���� 1  ����
�� 
bhit� l s������� I s�����
�� .sysodlogaskr        TEXT� o  sv���� 0 qmsg qMsg� ����
�� 
btns� o  y|���� 0 btnopt btnOpt� ����
�� 
dflt� m  ��� ���  L a u n c h� ����
�� 
appr� o  ������ 0 titlemsg  � �����
�� 
givu� o  ������ 0 	countdown  ��  ��  ��  � o      ���� 0 yesorno yesOrNo� ���� Z  ��������� = ����� o  ������ 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L  ������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  ����� n  ����� 1  ����
�� 
psxp� l �������� m  ���� ���  / A p p l i c a t i o n s /��  ��  � o      ���� 0 apppath appPath� ��� l ��������  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ����� I �������
�� .sysooffslong    ��� null��  � ����
�� 
psof� o  ������ 0 program  � �����
�� 
psin� o  ������ 0 apppath appPath��  � o      ���� 0 
nameoffset 
nameOffset� ��� l ��������  � 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )� ��� r  ����� n  ����� 7 ������
�� 
ctxt� m  ������ � l �������� \  ����� o  ������ 0 
nameoffset 
nameOffset� m  ������ ��  ��  � o  ������ 0 apppath appPath� o      ���� 0 
folderpath 
folderPath� ��� l ��������  � 6 0msg("info:", "Msg", "folderpath: " & folderPath)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )� ��� Q  �D���� l �(���� k  �(�� ��� I ������
�� .sysoexecTEXT���     TEXT� b  �
��� b  ���� b  ���� o  ������ 0 
folderpath 
folderPath� o  ����� 0 program  � m  �� ���  . a p p� m  	�� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  � ��� I �����
�� .sysodelanull��� ��� nmbr� m  ���� ��  � ���� O (��� I "'������
�� .miscactvnull��� ��� null��  ��  � 4  �� 
�� 
capp  o  ���� 0 program  ��  � ( "start program up in the background   � � D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      ������
�� .ascrerr ****      � ****��  ��  � I  0D������ 0 msg    m  14 �   S S H - C h e c k :   E r r o r  m  47		 �

 
 E r r o r �� b  7@ m  7: � N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h   o  :?���� 0 program  ��  ��  � �� l EE��������  ��  ��  ��  �Z       ��   ! ' 1 7 < A�� !��   ������������������������������������������~�}�|�{�� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 getosxnumber getOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setUpService�� 0 setupprogram setUpProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  � 0 msg  �~ 0 isapprunning isAppRunning�}  0 killrunningapp killRunningApp�| 0 servicealive serviceAlive
�{ .aevtoappnull  �   � ****
�� boovfals �z O�y�x"#�w
�z .aevtodocnull  �    alis�y 0 these_items  �x  " �v�u�v 0 these_items  �u 0 prog  #  ]�t p�s�r }�q�p�o � � ��n�m�l
�t 
TEXT
�s 
txdl
�r 
citm�q $0 sshchecksettings sshCheckSettings�p 0 	updatexml 	updateXML�o 0 
setdisplay 
setDisplay�n 0 msg  
�m .sysodelanull��� ��� nmbr
�l .aevtoappnull  �   � ****�w e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j  �k ��j�i$%�h�k 0 resetprogram resetProgram�j  �i  $  %  �h fEc   �g ��f�e&'�d�g 0 getosxnumber getOSXNumber�f  �e  &  '  ��c�b�a�`�_
�c 
txdl
�b .sysosigtsirr   ��� null
�a 
sisv
�` 
citm
�_ 
nmbr�d �*�,FO*j �,�l/�& �^ ��]�\()�[�^ 0 
setdisplay 
setDisplay�]  �\  (  ) �Z�Y�X�W�Z 0 getosxnumber getOSXNumber�Y �X 0 
fileexists 
FileExists
�W 
bool�[ >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc   �V ��U�T*+�S�V 0 
fileexists 
FileExists�U �R,�R ,  �Q�Q 0 thefile theFile�T  * �P�P 0 thefile theFile+  �O�N
�O 
file
�N .coredoexbool       obj �S � *�/j  eY hUOf �M�L�K-.�J�M 0 folderexists FolderExists�L �I/�I /  �H�H 0 	thefolder 	theFolder�K  - �G�G 0 	thefolder 	theFolder. �F�E
�F 
cfol
�E .coredoexbool       obj �J � *�/j  eY hUOf �D�C�B01�A�D 0 	updatexml 	updateXML�C �@2�@ 2  �?�? 0 programname programName�B  0 �>�=�<�> 0 programname programName�= 
0 update  �< 0 update2  1 �;�:9�9�8DUfqu�7�6�5�; 0 
fileexists 
FileExists
�: 
spac
�9 
strq
�8 .sysoexecTEXT���     TEXT
�7 
bool�6  �5  �A �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOf �4��3�234�1�4 0 setupservice setUpService�3  �2  3 �0�0 0 ser  4 
�/�.��-���,�+�*��/ 0 
fileexists 
FileExists
�. 
spac
�- .sysoexecTEXT���     TEXT
�, 
bool�+  �*  �1 r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOf �)��(�'56�&�) 0 setupprogram setUpProgram�(  �'  5 �%�% 0 prog  6 
�$�#��"���!� ���$ 0 
fileexists 
FileExists
�# 
spac
�" .sysoexecTEXT���     TEXT
�! 
bool�   �  �& r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOf ���78�� $0 sshchecksettings sshCheckSettings�  �  7 	���������� 0 configfolder configFolder� 0 
configpath 
configPath� 0 cmdmakepath cmdMakePath� 
0 mypath  � 0 
dnworkflow 
DNWorkflow� 0 cmdcurl cmdCurl� 0 cmdunzip cmdUnzip� 0 
cmdcleanup 
cmdCleanUp� 0 
cmdcurlxml 
cmdCurlXML8 "���>�LNTbf�r~������
��	�����.1PU�� 0 folderexists FolderExists� 0 
fileexists 
FileExists
� 
bool
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT�  �
  �	 0 msg  � 0 setupservice setUpService� 0 setupprogram setUpProgram� 0 
setdisplay 
setDisplay� 0 getosxnumber getOSXNumber� 
� .sysodelanull��� ��� nmbr���E�O�%E�O*�k+ f 
 *b  k+ f �&
 *b  k+ f �&w��%�%E�O�%�%�%�%E�O�E�O��%�%�%��,%E�O��%�%�%E�O��%�%�%E�O��%b  %�%a �,%E�O y*�k+ f  
�j Y hO*�k+ e 	 *b  k+ f �& +�j O*�a %�%k+ e  �j O�j Y hY hO*b  k+ f  
�j Y hW "X  *a a �m+ O*j+ O*j+ OfO*j+ O*b  k+ f 	 *j+ a �& *b  a a m+ Y U*�k+ e 	 *b  k+ e �&	 *b  k+ e �&	 b  e �& *a �a  m+ Ob  j !Y hY hO*j+ e 	 *j+ e �& eY hOf �u�� 9:��� 
0 notify  � ��;�� ;  �������� 	0 title  �� 0 subtitle  �� 0 message  �   9 �������� 	0 title  �� 0 subtitle  �� 0 message  : ��������������������������
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+  �������<=���� 0 msg  �� ��>�� >  �������� 0 msgtitle msgTitle�� 0 subtitle  �� 0 message  ��  < �������� 0 msgtitle msgTitle�� 0 subtitle  �� 0 message  = ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� +b  e  *���m+  Y  ��l W 	X  h ������?@���� 0 isapprunning isAppRunning��  ��  ?  @ ��������
�� 
capp
�� 
prun��  ��  �� + *�b  / *�,e  eY hUW 	X  fOf ��6����AB����  0 killrunningapp killRunningApp��  ��  A  B ����������LN��
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j   ��U����CD���� 0 servicealive serviceAlive��  ��  C �������� 0 cmdssh cmdSSH�� 
0 sshcon  �� 
0 tunnel  D eg����������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j! �������EF��
�� .aevtoappnull  �   � ****��  ��  E  F F���������������������������������������)����������39Tbmr���������������������������������������������	�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
setdisplay 
setDisplay�� 0 servicealive serviceAlive��  0 isservicealive isServiceAlive�� 0 titlemsg  �� 0 isapprunning isAppRunning
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
�� .miscactvnull��� ��� null��G*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %E` Ob  e  1*a %*j+ _ a &%b  l!%a '%m+ Ob  l!j (Y la )a *lvE` O U_ a +%b  %a ,%E` O_ a _ a a -a �a .b  a / a  ,E` 0O_ 0a 1  hY hW 	X 2 3hOa 4a 5,E` 6O*a 7b  a 8_ 6a 9 :E` ;O_ 6[a <\[Zk\Z_ ;k2E` =O 4_ =b  %a >%a ?%j @Okj (O*a Ab  / *j BUW X 2 3*a Ca Da Eb  %m+ OP ascr  ��ޭ