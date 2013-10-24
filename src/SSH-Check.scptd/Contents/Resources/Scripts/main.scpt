FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ZT
	Name: SSH-Check
	Version: 0.7.5-1
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com while
	searching for the service run by the local user.
	To reprogram what program you want to launch, then merely 
	drop a program onto SSH-Check. 
	To change other settings run at the cmdline: 
		 ~/.ssh-check/iconfigSSHC.py
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
     �  � 
 	 N a m e :   S S H - C h e c k 
 	 V e r s i o n :   0 . 7 . 5 - 1 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 
 	 L i c e n s e :   G P L 
 	 P u r p o s e :   O n l y   s t a r t   a   a p p   i f   t h e   s y s t e m   i s   s i g n e d   i n t o   a   S S H   s e r v i c e . 
 	 
 	 D e f a u l t   p r o g r a m   i s   F i r e f o x   a n d   s s h   s e r v i c e   t u n n e l r . c o m   w h i l e 
 	 s e a r c h i n g   f o r   t h e   s e r v i c e   r u n   b y   t h e   l o c a l   u s e r . 
 	 T o   r e p r o g r a m   w h a t   p r o g r a m   y o u   w a n t   t o   l a u n c h ,   t h e n   m e r e l y   
 	 d r o p   a   p r o g r a m   o n t o   S S H - C h e c k .   
 	 T o   c h a n g e   o t h e r   s e t t i n g s   r u n   a t   t h e   c m d l i n e :   
 	 	   ~ / . s s h - c h e c k / i c o n f i g S S H C . p y 
 	 N O T E :   
 	 F o r   e v e n   m o r e   s e c u r i t y   t h i s   p r o g r a m   i s   b e s t   c o m b i n e d   w i t h   a   c r o n   j o b   t o   
 	 c h e c k   i f   S S H   c o n n e c t i o n   i s   s t i l l   a l i v e ,   o t h e r w i s e   k i l l   y o u r     A p p . 
 	 
      l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    ��  �� 0 programbackup programBackup   m     ! ! � " "  F i r e f o x  ' !don't remove to overt droplet bug     � # # B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g   $ % $ j   	 �� &�� 0 servicebackup serviceBackup & m   	 
 ' ' � ( (  t u n n e l r . c o m %  ) * ) l     ��������  ��  ��   *  + , + l      - . / - j    �� 0�� 0 	countdown   0 m     1 1 � 2 2  6 .  time out in seconds    / � 3 3 & t i m e   o u t   i n   s e c o n d s ,  4 5 4 j    �� 6�� 0 dnclocation DNCLocation 6 m     7 7 � 8 8 T ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 5  9 : 9 j    �� ;�� 0 xmlsettings XMLSettings ; m     < < � = = 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y :  > ? > j    �� @�� 0 dnca DNCA @ m     A A � B B x ~ / L i b r a r y / A u t o m a t o r / D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n ?  C D C l      E F G E j    �� H�� *0 displaynoticecenter DisplayNoticeCenter H m    ��
�� boovfals F a [script switchings to true when running on OS X.8 or higher & if "DNCLocation & DNCA" exists    G � I I � s c r i p t   s w i t c h i n g s   t o   t r u e   w h e n   r u n n i n g   o n   O S   X . 8   o r   h i g h e r   &   i f   " D N C L o c a t i o n   &   D N C A "   e x i s t s D  J K J l      L M N L j    �� O�� 0 servicelevel ServiceLevel O m    ��
�� boovfals M ^ X false for local and true for global search to see if there is a connection to 'service'    N � P P �   f a l s e   f o r   l o c a l   a n d   t r u e   f o r   g l o b a l   s e a r c h   t o   s e e   i f   t h e r e   i s   a   c o n n e c t i o n   t o   ' s e r v i c e ' K  Q R Q l     ��������  ��  ��   R  S T S i    ! U V U I     �� W��
�� .aevtodocnull  �    alis W o      ���� 0 these_items  ��   V k     d X X  Y Z Y l      �� [ \��   [�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     \ � ] ]   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   Z  ^ _ ^ l     ��������  ��  ��   _  ` a ` r      b c b m      d d � e e   c o      ���� 0 prog   a  f g f r    	 h i h c     j k j o    ���� 0 these_items   k m    ��
�� 
TEXT i o      ���� 0 prog   g  l m l l  
 
��������  ��  ��   m  n o n l  
 
�� p q��   p d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    q � r r � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e o  s t s r   
  u v u m   
  w w � x x  : v 1    ��
�� 
txdl t  y z y r     { | { n     } ~ } 4    �� 
�� 
citm  m    ����  ~ o    ���� 0 prog   | o      ���� 0 prog   z  � � � r     � � � m     � � � � �  . � 1    ��
�� 
txdl �  � � � r    # � � � n    ! � � � 4    !�� �
�� 
citm � m     ����  � o    ���� 0 prog   � o      ���� 0 prog   �  � � � I   $ )�������� $0 sshchecksettings sshCheckSettings��  ��   �  � � � I   * 0�� ����� 0 	updatexml 	updateXML �  ��� � o   + ,���� 0 prog  ��  ��   �  � � � s   1 9 � � � o   1 2���� 0 prog   � o      ���� 0 program   �  � � � l  : :��������  ��  ��   �  � � � I   : ?�������� 0 
setdisplay 
setDisplay��  ��   �  � � � I   @ T�� ����� 0 msg   �  � � � m   A B � � � � �  S S H - C h e c K �  � � � b   B I � � � m   B C � � � � �  S e t t i n g   � o   C H���� 0 program   �  ��� � b   I P � � � m   I J � � � � � & N o w   s e t   t o   s t a r t u p   � o   J O���� 0 program  ��  ��   �  � � � I  U ^�� ���
�� .sysodelanull��� ��� nmbr � o   U Z���� 0 	countdown  ��   �  ��� � I  _ d������
�� .aevtoappnull  �   � ****��  ��  ��   T  � � � l     ��������  ��  ��   �  � � � i   " % � � � I      �������� 0 resetprogram resetProgram��  ��   � k      � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  ��� � r      � � � m     ��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   �  � � � l     ��������  ��  ��   �  � � � i   & ) � � � I      �������� 0 getosxnumber getOSXNumber��  ��   � k      � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  ��� � L     � � l    ����� � c     � � � l    ����� � n     � � � 4    �� �
�� 
citm � m    ����  � l    ����� � n     � � � 1    ��
�� 
sisv � l    ����� � I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m    ��
�� 
nmbr��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i   * - � � � I      �������� 0 
setdisplay 
setDisplay��  ��   � Z     = � ��� � � F     ) � � � F      � � � @      � � � I     �������� 0 getosxnumber getOSXNumber��  ��   � m    ����  � =  
  � � � I   
 �� ����� 0 
fileexists 
FileExists �  ��� � o    ���� 0 dnclocation DNCLocation��  ��   � m    ��
�� boovtrue � =   ' � � � I    %�� ����� 0 
fileexists 
FileExists �  ��� � o    !�� 0 dnca DNCA��  ��   � m   % &�~
�~ boovtrue � r   , 3 � � � m   , -�}
�} boovtrue � o      �|�| *0 displaynoticecenter DisplayNoticeCenter��   � r   6 = � � � m   6 7�{
�{ boovfals � o      �z�z *0 displaynoticecenter DisplayNoticeCenter �  � � � l     �y�x�w�y  �x  �w   �  � � � i   . 1 � � � I      �v ��u�v 0 
fileexists 
FileExists �  ��t � o      �s�s 0 thefile theFile�t  �u   � k      � �  � � � O        Z    �r�q I   �p�o
�p .coredoexnull���     **** 4    �n
�n 
file o    �m�m 0 thefile theFile�o   L     m    �l
�l boovtrue�r  �q   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+   x�BSystem Events.app                                               |��A��        ����  	                CoreServices    �l�U      �A�9     x�B x�? x�>  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   � �k L    		 m    �j
�j boovfals�k   � 

 l     �i�h�g�i  �h  �g    i   2 5 I      �f�e�f 0 folderexists FolderExists �d o      �c�c 0 	thefolder 	theFolder�d  �e   k       O      Z    �b�a I   �`�_
�` .coredoexnull���     **** 4    �^
�^ 
cfol o    �]�] 0 	thefolder 	theFolder�_   L     m    �\
�\ boovtrue�b  �a   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+   x�BSystem Events.app                                               |��A��        ����  	                CoreServices    �l�U      �A�9     x�B x�? x�>  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �[ L     m    �Z
�Z boovfals�[     l     �Y�X�W�Y  �X  �W    !"! i   6 9#$# I      �V%�U�V 0 	updatexml 	updateXML% &�T& o      �S�S 0 programname programName�T  �U  $ k     �'' ()( Z     �*+�R�Q* =    ,-, I     
�P.�O�P 0 
fileexists 
FileExists. /�N/ o    �M�M 0 xmlsettings XMLSettings�N  �O  - m   
 �L
�L boovtrue+ Q    �01�K0 k    x22 343 r    '565 I   %�J7�I
�J .sysoexecTEXT���     TEXT7 b    !898 b    :;: b    <=< b    >?> o    �H�H 0 xmlsettings XMLSettings? 1    �G
�G 
spac= m    @@ �AA  - u p; 1    �F
�F 
spac9 n     BCB 1     �E
�E 
strqC o    �D�D 0 programname programName�I  6 o      �C�C 
0 update  4 DED Z   ( sFG�BHF =  ( +IJI o   ( )�A�A 
0 update  J m   ) *KK �LL  T r u eG L   . 0MM m   . /�@
�@ boovtrue�B  H k   3 sNN OPO r   3 HQRQ I  3 F�?S�>
�? .sysoexecTEXT���     TEXTS b   3 BTUT b   3 >VWV b   3 <XYX b   3 :Z[Z o   3 8�=�= 0 xmlsettings XMLSettings[ 1   8 9�<
�< 
spacY m   : ;\\ �]]  - cW 1   < =�;
�; 
spacU n   > A^_^ 1   ? A�:
�: 
strq_ o   > ?�9�9 0 programname programName�>  R o      �8�8 
0 update  P `a` r   I ^bcb I  I \�7d�6
�7 .sysoexecTEXT���     TEXTd b   I Xefe b   I Tghg b   I Riji b   I Pklk o   I N�5�5 0 xmlsettings XMLSettingsl 1   N O�4
�4 
spacj m   P Qmm �nn  - u ph 1   R S�3
�3 
spacf n   T Wopo 1   U W�2
�2 
strqp o   T U�1�1 0 programname programName�6  c o      �0�0 0 update2  a q�/q Z   _ srs�.�-r F   _ jtut =  _ bvwv o   _ `�,�, 
0 update  w m   ` axx �yy  T r u eu =  e hz{z o   e f�+�+ 0 update2  { m   f g|| �}}  T r u es L   m o~~ m   m n�*
�* boovtrue�.  �-  �/  E �) R   t x�(�'�&
�( .ascrerr ****      � ****�'  �&  �)  1 R      �%�$�#
�% .ascrerr ****      � ****�$  �#  �K  �R  �Q  ) ��"� L   � ��� m   � ��!
�! boovfals�"  " ��� l     � ���   �  �  � ��� i   : =��� I      ���� 0 setupservice setupService�  �  � k     q�� ��� Z     S����� =    ��� I     
���� 0 
fileexists 
FileExists� ��� o    �� 0 xmlsettings XMLSettings�  �  � m   
 �
� boovtrue� Q    O���� k    F�� ��� r    !��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    �� 0 xmlsettings XMLSettings� 1    �
� 
spac� m    �� ���  - s�  � o      �� 0 ser  � ��� Z   " A����� F   " /��� H   " &�� E   " %��� o   " #�� 0 ser  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *�
�
 0 ser  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3�	�	 0 ser  � o      �� 0 service  � ��� L   ; =�� m   ; <�
� boovtrue�  �  �  � ��� R   B F���
� .ascrerr ****      � ****�  �  �  � R      �� ��
� .ascrerr ****      � ****�   ��  �  �  �  � ��� Z   T n������� =  T [��� o   T Y���� 0 service  � m   Y Z�� ���  � s   ^ j��� o   ^ c���� 0 servicebackup serviceBackup� o      ���� 0 service  ��  ��  � ���� L   o q�� m   o p��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   > A��� I      �������� "0 setservicelevel setServiceLevel��  ��  � k     �� ��� l     ������  � ^ XShould the ssh tunnel to service X be run by the current user or any user on the system?   � ��� � S h o u l d   t h e   s s h   t u n n e l   t o   s e r v i c e   X   b e   r u n   b y   t h e   c u r r e n t   u s e r   o r   a n y   u s e r   o n   t h e   s y s t e m ?� ��� l     ������  � < 6True is to search globally and False to search locally   � ��� l T r u e   i s   t o   s e a r c h   g l o b a l l y   a n d   F a l s e   t o   s e a r c h   l o c a l l y� ��� Z     b������� =    ��� I     
������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m   
 ��
�� boovtrue� Q    ^����� k    U�� ��� r    !��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    ���� 0 xmlsettings XMLSettings� 1    ��
�� 
spac� m    �� ���  - s l��  � o      ���� 
0 slevel  � ��� Z   " I����� =  " %��� o   " #���� 
0 slevel  � m   # $�� ���  g l o b a l l y� r   ( /��� m   ( )��
�� boovtrue� o      ���� 0 servicelevel ServiceLevel� ��� =  2 5��� o   2 3���� 
0 slevel  � m   3 4�� ���  l o c a l l y� ���� r   8 ?��� m   8 9��
�� boovfals� o      ���� 0 servicelevel ServiceLevel��  � r   B I� � m   B C��
�� boovfals  o      ���� 0 servicelevel ServiceLevel�  l  J J����   = 7msg("service level", "", slevel & " = " & ServiceLevel)    � n m s g ( " s e r v i c e   l e v e l " ,   " " ,   s l e v e l   &   "   =   "   &   S e r v i c e L e v e l )  L   J P o   J O���� 0 servicelevel ServiceLevel 	��	 R   Q U������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � 

 l  c c��������  ��  ��    Z   c x���� =  c j o   c h���� 0 servicelevel ServiceLevel m   h i �   r   m t m   m n��
�� boovfals o      ���� 0 servicelevel ServiceLevel��  ��   �� L   y  o   y ~���� 0 servicelevel ServiceLevel��  �  l     ��������  ��  ��    i   B E I      �������� 0 setupprogram setupProgram��  ��   k     q   Z     S!"����! =    #$# I     
��%���� 0 
fileexists 
FileExists% &��& o    ���� 0 xmlsettings XMLSettings��  ��  $ m   
 ��
�� boovtrue" Q    O'(��' k    F)) *+* r    !,-, I   ��.��
�� .sysoexecTEXT���     TEXT. b    /0/ b    121 o    ���� 0 xmlsettings XMLSettings2 1    ��
�� 
spac0 m    33 �44  - p��  - o      ���� 0 prog  + 565 Z   " A78����7 F   " /9:9 H   " &;; E   " %<=< o   " #���� 0 prog  = m   # $>> �??  N o n e: H   ) -@@ E   ) ,ABA o   ) *���� 0 prog  B m   * +CC �DD  8 k   2 =EE FGF s   2 :HIH o   2 3���� 0 prog  I o      ���� 0 program  G J��J L   ; =KK m   ; <��
�� boovtrue��  ��  ��  6 L��L R   B F������
�� .ascrerr ****      � ****��  ��  ��  ( R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��    MNM Z   T nOP����O =  T [QRQ o   T Y���� 0 program  R m   Y ZSS �TT  P s   ^ jUVU o   ^ c���� 0 programbackup programBackupV o      ���� 0 program  ��  ��  N W��W L   o qXX m   o p��
�� boovfals��   YZY l     ��������  ��  ��  Z [\[ i   F I]^] I      �������� $0 sshchecksettings sshCheckSettings��  ��  ^ l   _`a_ k    bb cdc r     efe m     gg �hh  . s s h - c h e c kf o      ���� 0 configfolder configFolderd iji r    	klk b    mnm m    oo �pp  ~ /n o    ���� 0 configfolder configFolderl o      ���� 0 
configpath 
configPathj qrq l  
 
��������  ��  ��  r sts Z   
�uv����u G   
 Qwxw G   
 #yzy =  
 {|{ I   
 ��}���� 0 folderexists FolderExists} ~��~ o    ���� 0 
configpath 
configPath��  ��  | m    ��
�� boovfalsz =   !� I    ������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m     ��
�� boovfalsx l  & O������ F   & O��� @   & -��� I   & +�������� 0 getosxnumber getOSXNumber��  ��  � m   + ,���� � l  0 M���~� G   0 M��� =  0 <��� I   0 :�}��|�} 0 
fileexists 
FileExists� ��{� o   1 6�z�z 0 dnclocation DNCLocation�{  �|  � m   : ;�y
�y boovfals� =  ? K��� I   ? I�x��w�x 0 
fileexists 
FileExists� ��v� o   @ E�u�u 0 dnca DNCA�v  �w  � m   I J�t
�t boovfals�  �~  ��  ��  v k   T��� ��� l  T T�s���s  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  T T�r���r  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   T _��� b   T ]��� b   T [��� b   T Y��� b   T W��� m   T U�� ���  c d  � o   U V�q�q 0 
configpath 
configPath� 1   W X�p
�p 
spac� m   Y Z�� ���  & &� 1   [ \�o
�o 
spac� o      �n�n 
0 mypath  � ��� r   ` m��� b   ` k��� l  ` i��m�l� n   ` i��� 1   g i�k
�k 
psxp� l  ` g��j�i� I  ` g�h��
�h .earsffdralis        afdr�  f   ` a� �g��f
�g 
rtyp� m   b c�e
�e 
TEXT�f  �j  �i  �m  �l  � m   i j�� ��� " C o n t e n t s / S u p p o r t /� o      �d�d 0 
supportloc 
supportLoc� ��� l  n n�c�b�a�c  �b  �a  � ��� Q   n����� k   q��� ��� Z   q ����`�_� =  q y��� I   q w�^��]�^ 0 folderexists FolderExists� ��\� o   r s�[�[ 0 
configpath 
configPath�\  �]  � m   w x�Z
�Z boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~�Y
�Y 
spac� o    ��X�X 0 
configpath 
configPath� o      �W�W 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ��V��U
�V .sysoexecTEXT���     TEXT� o   � ��T�T 0 cmdmakepath cmdMakePath�U  �  create path   � ���  c r e a t e   p a t h� ��S� l  � ����� I  � ��R��Q
�R .sysodelanull��� ��� nmbr� m   � ��� ?�      �Q  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�S  �`  �_  � ��� l  � ��P�O�N�P  �O  �N  � ��� Z   � ����M�L� =  � ���� I   � ��K��J�K 0 
fileexists 
FileExists� ��I� o   � ��H�H 0 xmlsettings XMLSettings�I  �J  � m   � ��G
�G boovfals� k   � ��� ��� l  � ��F���F  � g anote: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � ��� � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  � ��� l  � ��E���E  � � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   � ��� � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t� ��� Q   � ����D� k   � ���    I  � ��C�B
�C .sysoexecTEXT���     TEXT b   � � b   � � b   � � o   � ��A�A 
0 mypath   m   � �		 �

  c p   o   � ��@�@ 0 
supportloc 
supportLoc m   � � � " i c o n f i g S S H C . p y   . /�B   �? I  � ��>�=
�> .sysoexecTEXT���     TEXT b   � � b   � � b   � � o   � ��<�< 
0 mypath   m   � � �  c h m o d   + x 1   � ��;
�; 
spac o   � ��:�: 0 xmlsettings XMLSettings�=  �?  � R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  �D  � �6 I  � ��5�4
�5 .sysodelanull��� ��� nmbr m   � � ?�      �4  �6  �M  �L  �  l  � ��3�2�1�3  �2  �1   �0 Z   ���/�. @   � �  I   � ��-�,�+�- 0 getosxnumber getOSXNumber�,  �+    m   � ��*�*  k   ��!! "#" Z   ��$%�)�($ =  � �&'& I   � ��'(�&�' 0 
fileexists 
FileExists( )�%) o   � ��$�$ 0 dnca DNCA�%  �&  ' m   � ��#
�# boovfals% k   ��** +,+ l  � ��"-.�"  - ? 9setup Automator Display Notification Center Action script   . �// r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p t, 010 r   � �232 m   � �44 �55 � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !3 o      �!�! 0 qmsg qMsg1 676 r   �898 J   �:: ;<; m   �== �>>  Y e s< ?� ? m  @@ �AA  N o�   9 o      �� 0 btnopt btnOpt7 BCB Q  	<DE�D r  3FGF n  1HIH 1  -1�
� 
bhitI l -J��J I -�KL
� .sysodlogaskr        TEXTK o  �� 0 qmsg qMsgL �MN
� 
btnsM o  �� 0 btnopt btnOptN �OP
� 
dfltO m  QQ �RR  N oP �ST
� 
apprS m  UU �VV > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l pT �W�
� 
givuW ]   )XYX o   %�� 0 	countdown  Y m  %(�� <�  �  �  G o      �� 0 yesorno yesOrNoE R      ���
� .ascrerr ****      � ****�  �  �  C Z�Z l =�[\][ Z  =�^_��
^ = =B`a` o  =>�	�	 0 yesorno yesOrNoa m  >Abb �cc  Y e s_ k  E�dd efe r  EJghg m  EHii �jj X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i ph o      �� 0 alertaction alertActionf klk Q  Kjmn�m I Na�o�
� .sysoexecTEXT���     TEXTo b  N]pqp b  NYrsr b  NWtut b  NUvwv b  NSxyx o  NO�� 
0 mypath  y m  ORzz �{{  c p  w o  ST�� 0 
supportloc 
supportLocu o  UV�� 0 alertaction alertActions 1  WX�
� 
spacq m  Y\|| �}}  . /�  n R      � ����
�  .ascrerr ****      � ****��  ��  �  l ~~ I kr�����
�� .sysodelanull��� ��� nmbr� m  kn�� ?�      ��   ��� l ss��������  ��  ��  � ��� Z  s�������� = s���� I  s������� 0 
fileexists 
FileExists� ���� b  t{��� b  ty��� o  tu���� 0 
configpath 
configPath� m  ux�� ���  /� o  yz���� 0 alertaction alertAction��  ��  � m  ���
�� boovtrue� Q  ������� k  ���� ��� r  ����� b  ����� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ����
�� 
spac� o  ������ 0 alertaction alertAction� o      ���� *0 cmdunzipalertaction cmdUnzipAlertAction� ��� I �������
�� .sysoexecTEXT���     TEXT� o  ������ *0 cmdunzipalertaction cmdUnzipAlertAction��  � ��� r  ����� b  ����� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ����
�� 
spac� o  ������ 0 alertaction alertAction� o      ���� .0 cmdcleanupalertaction cmdCleanUpAlertAction� ���� I �������
�� .sysoexecTEXT���     TEXT� o  ������ .0 cmdcleanupalertaction cmdCleanUpAlertAction��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� Q  ������� k  ���� ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ��� 
 o p e n  � n  ����� 1  ����
�� 
strq� m  ���� ��� P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  � ��� R  ��������
�� .ascrerr ****      � ****��  ��  � ���� I  ��������� 0 msg  � ��� m  ���� ���   S S H - C h e c k :   E r r o r� ��� m  ���� ���  � ���� m  ���� ��� @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  �  �
  \   end of "Yes" go setup DNCA   ] ��� 4 e n d   o f   " Y e s "   g o   s e t u p   D N C A�  �)  �(  # ��� l ����������  ��  ��  � ���� Z  ��������� F  ���� = ���� I  � ������� 0 folderexists FolderExists� ���� o  ������ 0 
configpath 
configPath��  ��  � m   ��
�� boovtrue� = ��� I  ������� 0 
fileexists 
FileExists� ���� o  ���� 0 dnclocation DNCLocation��  ��  � m  ��
�� boovfals� k  ��� ��� l ������  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� r  ��� m  �� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      ���� 0 
dnworkflow 
DNWorkflow� ��� r  '��� b  %��� b  #��� b  !��� o  ���� 
0 mypath  � m   �� ���  u n z i p   - u� 1  !"��
�� 
spac� o  #$���� 0 
dnworkflow 
DNWorkflow� o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  (3   b  (1 b  (/ b  (- o  ()���� 
0 mypath   m  ), �		   r m   - r f   _ _ M A C O S X / 1  -.��
�� 
spac o  /0���� 0 
dnworkflow 
DNWorkflow o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� 

 Q  4S�� I 7J����
�� .sysoexecTEXT���     TEXT b  7F b  7B b  7@ b  7> b  7< o  78���� 
0 mypath   m  8; �  c p   o  <=���� 0 
supportloc 
supportLoc o  >?���� 0 
dnworkflow 
DNWorkflow 1  @A��
�� 
spac m  BE �  . /��   R      ������
�� .ascrerr ****      � ****��  ��  ��    I T[����
�� .sysodelanull��� ��� nmbr m  TW   ?�      ��   !"! l \\��������  ��  ��  " #��# Z  \�$%����$ = \j&'& I  \h��(���� 0 
fileexists 
FileExists( )��) b  ]d*+* b  ]b,-, o  ]^���� 0 
configpath 
configPath- m  ^a.. �//  /+ o  bc���� 0 
dnworkflow 
DNWorkflow��  ��  ' m  hi��
�� boovtrue% Q  m�01��0 k  p{22 343 I pu��5��
�� .sysoexecTEXT���     TEXT5 o  pq���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  4 6��6 I v{��7��
�� .sysoexecTEXT���     TEXT7 o  vw���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  1 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��  ��  ��  �/  �.  �0  � R      ������
�� .ascrerr ****      � ****��  ��  � k  ��88 9:9 I  ����;���� 0 msg  ; <=< m  ��>> �??  S e t u p   F a i l e d := @A@ m  ��BB �CC  A D��D o  ������ 0 
configpath 
configPath��  ��  : EFE I  ���������� 0 setupservice setupService��  ��  F GHG I  ���������� 0 setupprogram setupProgram��  ��  H I��I L  ��JJ m  ����
�� boovfals��  � KLK l ����~�}�  �~  �}  L MNM l ���|OP�|  O n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   P �QQ � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .N RSR I ���{T�z
�{ .sysodelanull��� ��� nmbrT ^  ��UVU o  ���y�y 0 	countdown  V m  ���x�x �z  S WXW I  ���w�v�u�w 0 
setdisplay 
setDisplay�v  �u  X Y�tY Z  ��Z[�s�rZ = ��\]\ o  ���q�q *0 displaynoticecenter DisplayNoticeCenter] m  ���p
�p boovtrue[ k  ��^^ _`_ I  ���oa�n�o 0 msg  a bcb m  ��dd �ee   S S H - C h e c k :   S e t u pc fgf b  ��hih o  ���m�m 0 
configpath 
configPathi m  ��jj �kk ,   s e t t i n g s   a r e   c u r r e n t .g l�ll m  ��mm �nn L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�l  �n  ` o�ko I ���jp�i
�j .sysodelanull��� ��� nmbrp m  ���h�h �i  �k  �s  �r  �t  ��  ��  t qrq l ���g�f�e�g  �f  �e  r sts l ���duv�d  u # loadSettings from config file   v �ww : l o a d S e t t i n g s   f r o m   c o n f i g   f i l et xyx I  ���c�b�a�c "0 setservicelevel setServiceLevel�b  �a  y z{z Z  �|}�`�_| F  �~~ = ����� I  ���^�]�\�^ 0 setupservice setupService�]  �\  � m  ���[
�[ boovtrue = ���� I  ��Z�Y�X�Z 0 setupprogram setupProgram�Y  �X  � m  �W
�W boovtrue} L  �� m  �V
�V boovtrue�`  �_  { ��� l �U�T�S�U  �T  �S  � ��R� L  �� m  �Q
�Q boovfals�R  `  return bool   a ���  r e t u r n   b o o l\ ��� l     �P�O�N�P  �O  �N  � ��� i   J M��� I      �M��L�M 
0 notify  � ��� o      �K�K 	0 title  � ��� o      �J�J 0 subtitle  � ��I� o      �H�H 0 message  �I  �L  � k     ��� ��� l      �G���G  � 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    � ���   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  � ��� l     �F�E�D�F  �E  �D  � ��� Z    ���C�B� >    ��� c     ��� o     �A�A 	0 title  � m    �@
�@ 
ctxt� m    �� ���  � r    ��� b    ��� m    	�� ���    - D   t i t l e =� n   	 ��� 1    �?
�? 
strq� l  	 ��>�=� c   	 ��� o   	 
�<�< 	0 title  � m   
 �;
�; 
ctxt�>  �=  � o      �:�: 	0 title  �C  �B  � ��� Z   +���9�8� >   ��� c    ��� o    �7�7 0 subtitle  � m    �6
�6 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   s u b t i t l e =� n    $��� 1   " $�5
�5 
strq� l   "��4�3� c    "��� o     �2�2 0 subtitle  � m     !�1
�1 
ctxt�4  �3  � o      �0�0 0 subtitle  �9  �8  � ��� Z  , A���/�.� >  , 1��� c   , /��� o   , -�-�- 0 message  � m   - .�,
�, 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :�+
�+ 
strq� l  5 8��*�)� c   5 8��� o   5 6�(�( 0 message  � m   6 7�'
�' 
ctxt�*  �)  � o      �&�& 0 message  �/  �.  � ��%� Q   B ����� I  E b�$��#
�$ .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�"
�" 
spac� o   H I�!�! 	0 title  � 1   J K� 
�  
spac� o   L M�� 0 subtitle  � 1   N O�
� 
spac� o   P Q�� 0 message  � 1   R S�
� 
spac� o   T Y�� 0 dnclocation DNCLocation� 1   Z [�
� 
spac� m   \ ]�� ���  2 > / d e v / n u l l�#  � R      ���
� .ascrerr ****      � ****�  �  � k   j ��� ��� r   j q��� m   j k�� �   
 f a l s e� o      �� *0 displaynoticecenter DisplayNoticeCenter� � I   r ���� 0 msg    m   s t �   S S H - C h e c k :   E r r o r  m   t w		 �

   � b   w � m   w z � � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :   o   z �� 0 dnclocation DNCLocation�  �  �  �%  �  l     ����  �  �    i   N Q I      ��� 0 msg    o      �� 0 msgtitle msgTitle  o      �
�
 0 subtitle   �	 o      �� 0 message  �	  �   Z     *� =      o     �� *0 displaynoticecenter DisplayNoticeCenter  m    �
� boovtrue l  
 !"#! I   
 �$�� 
0 notify  $ %&% o    �� 0 msgtitle msgTitle& '(' o    �� 0 subtitle  ( )� ) o    ���� 0 message  �   �  " $  use OS X Noticafaction Center   # �** <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�   Q    *+,-+ L     .. I   ��/0
�� .sysodlogaskr        TEXT/ o    ���� 0 message  0 ��1��
�� 
appr1 o    ���� 0 msgtitle msgTitle��  , R      ������
�� .ascrerr ****      � ****��  ��  - L   ( *����   232 l     ��������  ��  ��  3 454 i   R U676 I      �������� 0 isapprunning isAppRunning��  ��  7 k     )88 9:9 Q     &;<��; O    =>= Z    ?@����? =   ABA n    CDC 1    ��
�� 
prunD  g    B m    ��
�� boovtrue@ L    EE m    ��
�� boovtrue��  ��  > 4    ��F
�� 
cappF o    
���� 0 program  < R      ������
�� .ascrerr ****      � ****��  ��  ��  : G��G L   ' )HH m   ' (��
�� boovfals��  5 IJI l     ��������  ��  ��  J KLK i   V YMNM I      ��������  0 killrunningapp killRunningApp��  ��  N Q     5OPQO O     RSR l   TUVT Z    WX����W =   YZY n    [\[ 1    ��
�� 
prun\  g    Z m    ��
�� boovtrueX I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  U   doesn't launch app   V �]] &   d o e s n ' t   l a u n c h   a p pS 4    ��^
�� 
capp^ o    
���� 0 program  P R      ������
�� .ascrerr ****      � ****��  ��  Q I  ( 5��_��
�� .sysoexecTEXT���     TEXT_ b   ( 1`a` b   ( /bcb m   ( )dd �ee  p s   x   |   g r e p  c o   ) .���� 0 program  a m   / 0ff �gg l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  L hih l     ��������  ��  ��  i jkj i   Z ]lml I      �������� 0 servicealive serviceAlive��  ��  m k     fnn opo Q     cqr��q l   Zstus k    Zvv wxw r    yzy m    {{ �||  z o      ���� 
0 sshcon  x }~} Z    D���� =   ��� o    ���� 0 servicelevel ServiceLevel� m    ��
�� boovfals� k    )�� ��� l   ������  � 3 -is the service being run by the current user?   � ��� Z i s   t h e   s e r v i c e   b e i n g   r u n   b y   t h e   c u r r e n t   u s e r ?� ��� r    ��� b    ��� b    ��� m    �� ��� @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o    ���� 0 service  � m    �� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ���� r    )��� n    '��� 4   $ '���
�� 
cobj� m   % &���� � n    $��� 2  " $��
�� 
cpar� l   "������ I   "�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  ��  � k   , D�� ��� l  , ,������  � * $is the service being run by any user   � ��� H i s   t h e   s e r v i c e   b e i n g   r u n   b y   a n y   u s e r� ��� r   , 7��� b   , 5��� b   , 3��� m   , -�� ��� @ p s   a   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o   - 2���� 0 service  � m   3 4�� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ���� r   8 D��� n   8 B��� 4   ? B���
�� 
cobj� m   @ A���� � n   8 ?��� 2  = ?��
�� 
cpar� l  8 =������ I  8 =�����
�� .sysoexecTEXT���     TEXT� o   8 9���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  ~ ��� s   E I��� o   E F���� 
0 sshcon  � o      ���� 
0 tunnel  � ��� l  J J��������  ��  ��  � ���� Z   J Z������� E   J Q��� o   J K���� 
0 tunnel  � o   K P���� 0 service  � L   T V�� o   T U���� 
0 tunnel  ��  ��  ��  t 0 *check for ssh connected to defined service   u ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c er R      ������
�� .ascrerr ****      � ****��  ��  ��  p ���� L   d f�� m   d e����  ��  k ��� l     ��������  ��  ��  � ���� i   ^ a��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k    D�� ��� I     �������� 0 resetprogram resetProgram��  ��  � ��� I    �������� $0 sshchecksettings sshCheckSettings��  ��  � ��� I    �������� 0 
setdisplay 
setDisplay��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� I    �������� 0 servicealive serviceAlive��  ��  � o      ����  0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      ���� 0 titlemsg  � ��� Z    ������� F    -��� =   %��� I    #��~�}� 0 isapprunning isAppRunning�~  �}  � m   # $�|
�| boovtrue� =  ( +��� o   ( )�{�{  0 isservicealive isServiceAlive� m   ) *�z�z  � k   0 S�� ��� r   0 ;��� b   0 9��� b   0 7��� m   0 1�� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   1 6�y�y 0 program  � m   7 8�� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� o      �x�x 0 message  � ��� I   < J�w��v�w 0 msg  � ��� o   = >�u�u 0 titlemsg  �    b   > E m   > ? �  W a r n i n g   o   ? D�t�t 0 service   �s o   E F�r�r 0 message  �s  �v  �  I   K P�q�p�o�q  0 killrunningapp killRunningApp�p  �o   	�n	 l  Q S

 L   Q S�m�m    exit SSH-Check    �  e x i t   S S H - C h e c k�n  �  =  V Y o   V W�l�l  0 isservicealive isServiceAlive m   W X�k�k   �j k   \ �  I   \ ��i�h�i 0 msg    o   ] ^�g�g 0 titlemsg    b   ^ e m   ^ _ �  W a r n i n g   a b o u t   o   _ d�f�f 0 service   �e b   e | !  b   e x"#" b   e r$%$ b   e n&'& m   e h(( �))  D o n ' t   r u n  ' o   h m�d�d 0 program  % m   n q** �++ F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  # o   r w�c�c 0 service  ! m   x {,, �--  .�e  �h   .�b. l  � �/01/ L   � ��a�a  0  exit SSH-Check   1 �22  e x i t   S S H - C h e c k�b  �j  ��  � 343 l  � ��`�_�^�`  �_  �^  4 565 l  � ��]78�]  7 C =Ask if you want to run your program, kill it, or quietly stop   8 �99 z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p6 :;: r   � �<=< b   � �>?> m   � �@@ �AA 4 A c t i v e   S S H   C o n n e c t i o n   t o :  ? o   � ��\�\  0 isservicealive isServiceAlive= o      �[�[ 0 titlemsg  ; BCB Z   ��DE�ZFD =  � �GHG I   � ��Y�X�W�Y 0 isapprunning isAppRunning�X  �W  H m   � ��V
�V boovtrueE l  �IJKI k   �LL MNM r   � �OPO J   � �QQ RSR m   � �TT �UU  R e s t a r tS VWV m   � �XX �YY  E x i t   S S H - C h e c kW Z�UZ m   � �[[ �\\  T u r n   O f f�U  P o      �T�T 0 btnopt btnOptN ]^] r   � �_`_ b   � �aba o   � ��S�S 0 program  b m   � �cc �dd �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k ?` o      �R�R 0 qmsg qMsg^ efe r   � �ghg n   � �iji 1   � ��Q
�Q 
bhitj l  � �k�P�Ok I  � ��Nlm
�N .sysodlogaskr        TEXTl o   � ��M�M 0 qmsg qMsgm �Lno
�L 
btnsn o   � ��K�K 0 btnopt btnOpto �Jpq
�J 
dfltp m   � �rr �ss  E x i t   S S H - C h e c kq �It�H
�I 
apprt o   � ��G�G 0 titlemsg  �H  �P  �O  h o      �F�F 
0 choice  f u�Eu Z   �vwxyv =  � �z{z o   � ��D�D 
0 choice  { m   � �|| �}}  R e s t a r tw I   � ��C�B�A�C  0 killrunningapp killRunningApp�B  �A  x ~~ =  � ���� o   � ��@�@ 
0 choice  � m   � ��� ���  T u r n   O f f ��?� k   � ��� ��� I   � ��>�=�<�>  0 killrunningapp killRunningApp�=  �<  � ��;� l  � ����� L   � ��:�:  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�;  �?  y l ���� l ���� L  �9�9  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l�E  J 0 * should we kill & restart the running app?   K ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�Z  F k  ��� ��� r  ��� b  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	�8�8 0 program  � 1  �7
�7 
spac� o      �6�6 0 qmsg qMsg� ��5� Z  ����4�� = ��� o  �3�3 *0 displaynoticecenter DisplayNoticeCenter� m  �2
�2 boovtrue� k  "H�� ��� I  ":�1��0�1 0 msg  � ��� m  #&�� ���  S S H - C h e c k� ��� b  &/��� b  &+��� o  &'�/�/  0 isservicealive isServiceAlive� 1  '*�.
�. 
spac� m  +.�� ���  i s   a c t i v e� ��-� b  /6��� o  /2�,�, 0 qmsg qMsg� m  25�� ���  u p   n o w !�-  �0  � ��+� I ;H�*��)
�* .sysodelanull��� ��� nmbr� l ;D��(�'� ^  ;D��� o  ;@�&�& 0 	countdown  � m  @C�%�% 	�(  �'  �)  �+  �4  � k  K��� ��� r  KW��� J  KS�� ��� m  KN�� ���  L a u n c h� ��$� m  NQ�� ���  S t o p�$  � o      �#�# 0 btnopt btnOpt� ��"� Q  X����� k  [��� ��� r  [p��� b  [l��� b  [h��� b  [b��� o  [^�!�! 0 qmsg qMsg� m  ^a�� ���    i n  � o  bg� �  0 	countdown  � m  hk�� ���    s e c o n d s !� o      �� 0 qmsg qMsg� ��� r  q���� n  q���� 1  ���
� 
bhit� l q����� I q����
� .sysodlogaskr        TEXT� o  qt�� 0 qmsg qMsg� ���
� 
btns� o  wz�� 0 btnopt btnOpt� ���
� 
dflt� m  }��� ���  L a u n c h� ���
� 
appr� o  ���� 0 titlemsg  � ���
� 
givu� o  ���� 0 	countdown  �  �  �  � o      �� 0 yesorno yesOrNo� ��� Z  ������� = ����� o  ���� 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ����  �  �  �  � R      ��
�	
� .ascrerr ****      � ****�
  �	  � L  ����  �"  �5  C ��� l ������  �  �  � ��� l ������  � ! Prepare to launch a program   � �   6 P r e p a r e   t o   l a u n c h   a   p r o g r a m�  r  �� n  �� 1  ���
� 
psxp l ���� m  �� �		  / A p p l i c a t i o n s /�  �   o      � �  0 apppath appPath 

 l ������   0 *msg("info:", "Msg", "apppath: " & appPath)    � T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )  r  �� I ������
�� .sysooffslong    ��� null��   ��
�� 
psof o  ������ 0 program   ����
�� 
psin o  ������ 0 apppath appPath��   o      ���� 0 
nameoffset 
nameOffset  l ������   6 0msg("info:", "Msg", "nameoffset" " & nameOffset)    � ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )  r  �� n  �� !  7 ����"#
�� 
ctxt" m  ������ # l ��$����$ \  ��%&% o  ������ 0 
nameoffset 
nameOffset& m  ������ ��  ��  ! o  ������ 0 apppath appPath o      ���� 0 
folderpath 
folderPath '(' l ����)*��  ) 6 0msg("info:", "Msg", "folderpath: " & folderPath)   * �++ ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )( ,-, Q  �B./0. l �&1231 k  �&44 565 I ���7��
�� .sysoexecTEXT���     TEXT7 b  �898 b  �:;: b  � <=< o  ������ 0 
folderpath 
folderPath= o  ������ 0 program  ; m   >> �??  . a p p9 m  @@ �AA N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  6 BCB I ��D��
�� .sysodelanull��� ��� nmbrD m  ���� ��  C E��E O &FGF I  %������
�� .miscactvnull��� ��� null��  ��  G 4  ��H
�� 
cappH o  ���� 0 program  ��  2 ( "start program up in the background   3 �II D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d/ R      ������
�� .ascrerr ****      � ****��  ��  0 I  .B��J���� 0 msg  J KLK m  /2MM �NN   S S H - C h e c k :   E r r o rL OPO m  25QQ �RR 
 E r r o rP S��S b  5>TUT m  58VV �WW N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  U o  8=���� 0 program  ��  ��  - X��X l CC��������  ��  ��  ��  ��       ��Y   ! ' 1 7 < A����Z[\]^_`abcdefghij��  Y �������������������������������������������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 getosxnumber getOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****
�� boovfals
�� boovfalsZ �� V����kl��
�� .aevtodocnull  �    alis�� 0 these_items  ��  k ������ 0 these_items  �� 0 prog  l  d�� w���� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j [ �� �����mn���� 0 resetprogram resetProgram��  ��  m  n  �� fEc  \ �� �����op���� 0 getosxnumber getOSXNumber��  ��  o  p  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&] �� �����qr���� 0 
setdisplay 
setDisplay��  ��  q  r ���������� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  ^ �� �����st���� 0 
fileexists 
FileExists�� ��u�� u  ���� 0 thefile theFile��  s ���� 0 thefile theFilet ����
�� 
file
�� .coredoexnull���     ****�� � *�/j  eY hUOf_ ������vw���� 0 folderexists FolderExists�� ��x�� x  ���� 0 	thefolder 	theFolder��  v ���� 0 	thefolder 	theFolderw ����
�� 
cfol
�� .coredoexnull���     ****�� � *�/j  eY hUOf` ��$��~yz�}�� 0 	updatexml 	updateXML� �|{�| {  �{�{ 0 programname programName�~  y �z�y�x�z 0 programname programName�y 
0 update  �x 0 update2  z �w�v@�u�tK\mx|�s�r�q�w 0 
fileexists 
FileExists
�v 
spac
�u 
strq
�t .sysoexecTEXT���     TEXT
�s 
bool�r  �q  �} �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOfa �p��o�n|}�m�p 0 setupservice setupService�o  �n  | �l�l 0 ser  } 
�k�j��i���h�g�f��k 0 
fileexists 
FileExists
�j 
spac
�i .sysoexecTEXT���     TEXT
�h 
bool�g  �f  �m r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOfb �e��d�c~�b�e "0 setservicelevel setServiceLevel�d  �c  ~ �a�a 
0 slevel   	�`�_��^���]�\�` 0 
fileexists 
FileExists
�_ 
spac
�^ .sysoexecTEXT���     TEXT�]  �\  �b �*b  k+  e  T Hb  �%�%j E�O��  eEc  	Y ��  fEc  	Y 	fEc  	Ob  	O)jhW X  hY hOb  	�  fEc  	Y hOb  	c �[�Z�Y���X�[ 0 setupprogram setupProgram�Z  �Y  � �W�W 0 prog  � 
�V�U3�T>C�S�R�QS�V 0 
fileexists 
FileExists
�U 
spac
�T .sysoexecTEXT���     TEXT
�S 
bool�R  �Q  �X r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOfd �P^�O�N���M�P $0 sshchecksettings sshCheckSettings�O  �N  � �L�K�J�I�H�G�F�E�D�C�B�A�@�?�L 0 configfolder configFolder�K 0 
configpath 
configPath�J 
0 mypath  �I 0 
supportloc 
supportLoc�H 0 cmdmakepath cmdMakePath�G 0 qmsg qMsg�F 0 btnopt btnOpt�E 0 yesorno yesOrNo�D 0 alertaction alertAction�C *0 cmdunzipalertaction cmdUnzipAlertAction�B .0 cmdcleanupalertaction cmdCleanUpAlertAction�A 0 
dnworkflow 
DNWorkflow�@ (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�? ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� Ago�>�=�<�;�:��9��8�7�6�5���4��3	�2�14=@�0�/Q�.U�-�,�+�*biz|������)����(��.>B�'�&�%djm�$�> 0 folderexists FolderExists�= 0 
fileexists 
FileExists
�< 
bool�; 0 getosxnumber getOSXNumber�: 
�9 
spac
�8 
rtyp
�7 
TEXT
�6 .earsffdralis        afdr
�5 
psxp
�4 .sysoexecTEXT���     TEXT
�3 .sysodelanull��� ��� nmbr�2  �1  
�0 
btns
�/ 
dflt
�. 
appr
�- 
givu�, <
�+ .sysodlogaskr        TEXT
�* 
bhit
�) 
strq�( 0 msg  �' 0 setupservice setupService�& 0 setupprogram setupProgram�% 0 
setdisplay 
setDisplay�$ "0 setservicelevel setServiceLevel�M�E�O�%E�O*�k+ f 
 *b  k+ f �&
 -*j+ �	 !*b  k+ f 
 *b  k+ f �&�&�&��%�%�%�%E�O)��l �,�%E�O$*�k+ f  ��%�%E�O�j Oa j Y hO*b  k+ f  : &�a %�%a %j O�a %�%b  %j W X  hOa j Y hO*j+ ��*b  k+ f a E�Oa a lvE�O ,�a �a a a a a  b  a ! � "a #,E�W X  hO�a $  �a %E�O �a &%�%�%�%a '%j W X  hOa j O*�a (%�%k+ e  4 (�a )%�%�%E�O�j O�a *%�%�%E�O�j W X  hY hO *�a +%a ,a -,%j O)jhO*a .a /a 0m+ 1W X  hOa j Y hY hO*�k+ e 	 *b  k+ f �& wa 2E�O�a 3%�%�%E�O�a 4%�%�%E�O �a 5%�%�%�%a 6%j W X  hOa j O*�a 7%�%k+ e   �j O�j W X  hY hY hY hW "X  *a 8a 9�m+ 1O*j+ :O*j+ ;OfOb  m!j O*j+ <Ob  e  *a =�a >%a ?m+ 1Okj Y hY hO*j+ @O*j+ :e 	 *j+ ;e �& eY hOfe �#��"�!��� �# 
0 notify  �" ��� �  ���� 	0 title  � 0 subtitle  � 0 message  �!  � ���� 	0 title  � 0 subtitle  � 0 message  � ���������������	�
� 
ctxt
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT�  �  � 0 msg  �  ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ f ������� 0 msg  � ��� �  ���
� 0 msgtitle msgTitle� 0 subtitle  �
 0 message  �  � �	���	 0 msgtitle msgTitle� 0 subtitle  � 0 message  � ������ 
0 notify  
� 
appr
� .sysodlogaskr        TEXT�  �  � +b  e  *���m+  Y  ��l W 	X  hg �7� ������� 0 isapprunning isAppRunning�   ��  �  � ��������
�� 
capp
�� 
prun��  ��  �� * *�b  / *�,e  eY hUW X  hOfh ��N����������  0 killrunningapp killRunningApp��  ��  �  � ����������df��
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j i ��m���������� 0 servicealive serviceAlive��  ��  � �������� 
0 sshcon  �� 0 cmdssh cmdSSH�� 
0 tunnel  � 
{��������������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOjj �����������
�� .aevtoappnull  �   � ****��  ��  �  � H�������������������������(*,@TX[��c������r����������|���������������������������������������������>@������MQV�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
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
�� 
spac�� 	
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
�� .miscactvnull��� ��� null��E*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %_ %%E` Ob  e  +*a &�_ %%a '%_ a (%m+ Ob  a )!j *Y la +a ,lvE` O U_ a -%b  %a .%E` O_ a _ a a /a �a 0b  a 1 a  ,E` 2O_ 2a 3  hY hW 	X 4 5hOa 6a 7,E` 8O*a 9b  a :_ 8a ; <E` =O_ 8[a >\[Zk\Z_ =k2E` ?O 4_ ?b  %a @%a A%j BOkj *O*a Cb  / *j DUW X 4 5*a Ea Fa Gb  %m+ OP ascr  ��ޭ