FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   XR
	Name: SSH-Check
	Version: 0.7.3
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
 	 V e r s i o n :   0 . 7 . 3 
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
�p .coredoexbool       obj  4    �n
�n 
file o    �m�m 0 thefile theFile�o   L     m    �l
�l boovtrue�r  �q   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   � �k L    		 m    �j
�j boovfals�k   � 

 l     �i�h�g�i  �h  �g    i   2 5 I      �f�e�f 0 folderexists FolderExists �d o      �c�c 0 	thefolder 	theFolder�d  �e   k       O      Z    �b�a I   �`�_
�` .coredoexbool       obj  4    �^
�^ 
cfol o    �]�] 0 	thefolder 	theFolder�_   L     m    �\
�\ boovtrue�b  �a   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �[ L     m    �Z
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
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   > A��� I      �������� "0 setservicelevel setServiceLevel��  ��  � k     y�� ��� l     ������  � ^ XShould the ssh tunnel to service X be run by the current user or any user on the system?   � ��� � S h o u l d   t h e   s s h   t u n n e l   t o   s e r v i c e   X   b e   r u n   b y   t h e   c u r r e n t   u s e r   o r   a n y   u s e r   o n   t h e   s y s t e m ?� ��� l     ������  � < 6True is to search globally and False to search locally   � ��� l T r u e   i s   t o   s e a r c h   g l o b a l l y   a n d   F a l s e   t o   s e a r c h   l o c a l l y� ��� Z     \������� =    ��� I     
������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m   
 ��
�� boovtrue� Q    X����� k    O�� ��� r    !��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    ���� 0 xmlsettings XMLSettings� 1    ��
�� 
spac� m    �� ���  - s l��  � o      ���� 
0 slevel  � ��� Z   " C������ =  " %��� o   " #���� 
0 slevel  � m   # $�� ���  g l o b a l l y� r   ( /��� m   ( )��
�� boovtrue� o      ���� 0 servicelevel ServiceLevel� ��� =  2 5��� o   2 3���� 
0 slevel  � m   3 4�� ���  l o c a l l y� ���� r   8 ?��� m   8 9��
�� boovfals� o      ���� 0 servicelevel ServiceLevel��  ��  � ��� l  D D�� ��    = 7msg("service level", "", slevel & " = " & ServiceLevel)    � n m s g ( " s e r v i c e   l e v e l " ,   " " ,   s l e v e l   &   "   =   "   &   S e r v i c e L e v e l )�  L   D J o   D I���� 0 servicelevel ServiceLevel �� R   K O������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  �  l  ] ]��������  ��  ��   	
	 Z   ] r���� =  ] d o   ] b���� 0 servicelevel ServiceLevel m   b c �   r   g n m   g h��
�� boovfals o      ���� 0 servicelevel ServiceLevel��  ��  
 �� L   s y o   s x���� 0 servicelevel ServiceLevel��  �  l     ��������  ��  ��    i   B E I      �������� 0 setupprogram setupProgram��  ��   k     q  Z     S���� =     !  I     
��"���� 0 
fileexists 
FileExists" #��# o    ���� 0 xmlsettings XMLSettings��  ��  ! m   
 ��
�� boovtrue Q    O$%��$ k    F&& '(' r    !)*) I   ��+��
�� .sysoexecTEXT���     TEXT+ b    ,-, b    ./. o    ���� 0 xmlsettings XMLSettings/ 1    ��
�� 
spac- m    00 �11  - p��  * o      ���� 0 prog  ( 232 Z   " A45����4 F   " /676 H   " &88 E   " %9:9 o   " #���� 0 prog  : m   # $;; �<<  N o n e7 H   ) -== E   ) ,>?> o   ) *���� 0 prog  ? m   * +@@ �AA  5 k   2 =BB CDC s   2 :EFE o   2 3���� 0 prog  F o      ���� 0 program  D G��G L   ; =HH m   ; <��
�� boovtrue��  ��  ��  3 I��I R   B F������
�� .ascrerr ****      � ****��  ��  ��  % R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   JKJ Z   T nLM����L =  T [NON o   T Y���� 0 program  O m   Y ZPP �QQ  M s   ^ jRSR o   ^ c���� 0 programbackup programBackupS o      ���� 0 program  ��  ��  K T��T L   o qUU m   o p��
�� boovfals��   VWV l     ��������  ��  ��  W XYX i   F IZ[Z I      �������� $0 sshchecksettings sshCheckSettings��  ��  [ l   �\]^\ k    �__ `a` r     bcb m     dd �ee  . s s h - c h e c kc o      ���� 0 configfolder configFoldera fgf r    	hih b    jkj m    ll �mm  ~ /k o    ���� 0 configfolder configFolderi o      ���� 0 
configpath 
configPathg non l  
 
��������  ��  ��  o pqp Z   
�rs����r G   
 Qtut G   
 4vwv G   
 #xyx =  
 z{z I   
 ��|���� 0 folderexists FolderExists| }��} o    ���� 0 
configpath 
configPath��  ��  { m    ��
�� boovfalsy =   !~~ I    ������� 0 
fileexists 
FileExists� ���� o    ���� 0 dnclocation DNCLocation��  ��   m     ��
�� boovfalsw =  & 2��� I   & 0������� 0 
fileexists 
FileExists� ���� o   ' ,���� 0 xmlsettings XMLSettings��  ��  � m   0 1��
�� boovfalsu l  7 O������ F   7 O��� =  7 C��� I   7 A���~� 0 
fileexists 
FileExists� ��}� o   8 =�|�| 0 dnca DNCA�}  �~  � m   A B�{
�{ boovfals� @   F M��� I   F K�z�y�x�z 0 getosxnumber getOSXNumber�y  �x  � m   K L�w�w ��  ��  s k   T��� ��� l  T T�v���v  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  T T�u���u  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   T _��� b   T ]��� b   T [��� b   T Y��� b   T W��� m   T U�� ���  c d  � o   U V�t�t 0 
configpath 
configPath� 1   W X�s
�s 
spac� m   Y Z�� ���  & &� 1   [ \�r
�r 
spac� o      �q�q 
0 mypath  � ��� r   ` m��� b   ` k��� l  ` i��p�o� n   ` i��� 1   g i�n
�n 
psxp� l  ` g��m�l� I  ` g�k��
�k .earsffdralis        afdr�  f   ` a� �j��i
�j 
rtyp� m   b c�h
�h 
TEXT�i  �m  �l  �p  �o  � m   i j�� ��� " C o n t e n t s / S u p p o r t /� o      �g�g 0 
supportloc 
supportLoc� ��� l  n n�f�e�d�f  �e  �d  � ��� Q   nu���� k   qR�� ��� Z   q ����c�b� =  q y��� I   q w�a��`�a 0 folderexists FolderExists� ��_� o   r s�^�^ 0 
configpath 
configPath�_  �`  � m   w x�]
�] boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~�\
�\ 
spac� o    ��[�[ 0 
configpath 
configPath� o      �Z�Z 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ��Y��X
�Y .sysoexecTEXT���     TEXT� o   � ��W�W 0 cmdmakepath cmdMakePath�X  �  create path   � ���  c r e a t e   p a t h� ��V� l  � ����� I  � ��U��T
�U .sysodelanull��� ��� nmbr� m   � ��� ?�      �T  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�V  �c  �b  � ��� l  � ��S�R�Q�S  �R  �Q  � ��� Z   � ����P�O� =  � ���� I   � ��N��M�N 0 
fileexists 
FileExists� ��L� o   � ��K�K 0 xmlsettings XMLSettings�L  �M  � m   � ��J
�J boovfals� k   � ��� ��� l  � ��I���I  � g anote: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � ��� � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  � ��� l  � ��H���H  � � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   � ��� � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t� ��� Q   � ����G� k   � ��� ��� I  � ��F��E
�F .sysoexecTEXT���     TEXT� b   � �� � b   � � b   � � o   � ��D�D 
0 mypath   m   � � �  c p   o   � ��C�C 0 
supportloc 
supportLoc  m   � � � " i c o n f i g S S H C . p y   . /�E  � 	�B	 I  � ��A
�@
�A .sysoexecTEXT���     TEXT
 b   � � b   � � b   � � o   � ��?�? 
0 mypath   m   � � �  c h m o d   + x 1   � ��>
�> 
spac o   � ��=�= 0 xmlsettings XMLSettings�@  �B  � R      �<�;�:
�< .ascrerr ****      � ****�;  �:  �G  � �9 I  � ��8�7
�8 .sysodelanull��� ��� nmbr m   � � ?�      �7  �9  �P  �O  �  l  � ��6�5�4�6  �5  �4    Z   ���3�2 F   � � =  � � I   � ��1 �0�1 0 
fileexists 
FileExists  !�/! o   � ��.�. 0 dnca DNCA�/  �0   m   � ��-
�- boovfals @   � �"#" I   � ��,�+�*�, 0 getosxnumber getOSXNumber�+  �*  # m   � ��)�)  k   ��$$ %&% l  � ��('(�(  ' ? 9setup Automator Display Notification Center Action script   ( �)) r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p t& *+* r   � �,-, m   � �.. �// X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p- o      �'�' 0 alertaction alertAction+ 010 I  �&2�%
�& .sysoexecTEXT���     TEXT2 b   343 b   565 b   	787 b   9:9 b   ;<; o   �$�$ 
0 mypath  < m  == �>>  c p  : o  �#�# 0 
supportloc 
supportLoc8 o  �"�" 0 alertaction alertAction6 1  	
�!
�! 
spac4 m  ?? �@@  . /�%  1 ABA I � C�
�  .sysodelanull��� ��� nmbrC m  DD ?�      �  B EFE l ����  �  �  F GHG Z  TIJ��I = *KLK I  (�M�� 0 
fileexists 
FileExistsM N�N b  $OPO b  "QRQ o  �� 0 
configpath 
configPathR m  !SS �TT  /P o  "#�� 0 alertaction alertAction�  �  L m  ()�
� boovtrueJ k  -PUU VWV r  -8XYX b  -6Z[Z b  -4\]\ b  -2^_^ o  -.�� 
0 mypath  _ m  .1`` �aa  u n z i p   - u] 1  23�
� 
spac[ o  45�� 0 alertaction alertActionY o      �� *0 cmdunzipalertaction cmdUnzipAlertActionW bcb I 9>�d�
� .sysoexecTEXT���     TEXTd o  9:�� *0 cmdunzipalertaction cmdUnzipAlertAction�  c efe r  ?Jghg b  ?Hiji b  ?Fklk b  ?Dmnm o  ?@�� 
0 mypath  n m  @Coo �pp   r m   - r f   _ _ M A C O S X /l 1  DE�
� 
spacj o  FG�
�
 0 alertaction alertActionh o      �	�	 .0 cmdcleanupalertaction cmdCleanUpAlertActionf q�q I KP�r�
� .sysoexecTEXT���     TEXTr o  KL�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�  �  �  �  H sts r  UZuvu m  UXww �xx � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !v o      �� 0 qmsg qMsgt yzy r  [e{|{ J  [c}} ~~ m  [^�� ���  Y e s ��� m  ^a�� ���  N o�  | o      �� 0 btnopt btnOptz ��� Q  f����� k  i��� ��� r  i���� n  i���� 1  ��� 
�  
bhit� l i������� I i�����
�� .sysodlogaskr        TEXT� o  ij���� 0 qmsg qMsg� ����
�� 
btns� o  mn���� 0 btnopt btnOpt� ����
�� 
dflt� m  qt�� ���  N o� ����
�� 
appr� m  wz�� ��� > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p� �����
�� 
givu� ]  }���� o  }����� 0 	countdown  � m  ������ <��  ��  ��  � o      ���� 0 yesorno yesOrNo� ��� Z  ��������� = ����� o  ������ 0 yesorno yesOrNo� m  ���� ���  Y e s� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ��� 
 o p e n  � n  ����� 1  ����
�� 
strq� m  ���� ��� P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  ��  ��  � ��� R  ��������
�� .ascrerr ****      � ****��  ��  � ���� I  ��������� 0 msg  � ��� m  ���� ���   S S H - C h e c k :   E r r o r� ��� m  ���� ���  � ���� m  ���� ��� @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  �3  �2   ��� l ����������  ��  ��  � ���� Z  �R������� F  ����� = ����� I  ��������� 0 folderexists FolderExists� ���� o  ������ 0 
configpath 
configPath��  ��  � m  ����
�� boovtrue� = ����� I  ��������� 0 
fileexists 
FileExists� ���� o  ������ 0 dnclocation DNCLocation��  ��  � m  ����
�� boovfals� k  �N�� ��� l ��������  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� r  ����� m  ���� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      ���� 0 
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
�� .sysoexecTEXT���     TEXT� b  !��� b  ��� b  � � b   b   o  ���� 
0 mypath   m   �  c p   o  ���� 0 
supportloc 
supportLoc  o  ���� 0 
dnworkflow 
DNWorkflow� 1  ��
�� 
spac� m    �  . /��  � 	
	 I &-����
�� .sysodelanull��� ��� nmbr m  &) ?�      ��  
  l ..��������  ��  ��   �� Z  .N���� = .< I  .:������ 0 
fileexists 
FileExists �� b  /6 b  /4 o  /0���� 0 
configpath 
configPath m  03 �  / o  45���� 0 
dnworkflow 
DNWorkflow��  ��   m  :;��
�� boovtrue k  ?J  I ?D����
�� .sysoexecTEXT���     TEXT o  ?@���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��    ��  I EJ��!��
�� .sysoexecTEXT���     TEXT! o  EF���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  ��  ��  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  Zu"" #$# I  Zf��%���� 0 msg  % &'& m  [^(( �))  S e t u p   F a i l e d :' *+* m  ^a,, �--  + .��. o  ab���� 0 
configpath 
configPath��  ��  $ /0/ I  gl�������� 0 setupservice setupService��  ��  0 121 I  mr�������� 0 setupprogram setupProgram��  ��  2 3��3 L  su44 m  st��
�� boovfals��  � 565 l vv��������  ��  ��  6 787 l vv��9:��  9 n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   : �;; � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .8 <=< I v���>��
�� .sysodelanull��� ��� nmbr> ^  v}?@? o  v{���� 0 	countdown  @ m  {|���� ��  = ABA I  ���������� 0 
setdisplay 
setDisplay��  ��  B C��C Z  ��DE����D = ��FGF o  ������ *0 displaynoticecenter DisplayNoticeCenterG m  ����
�� boovtrueE k  ��HH IJI I  ����K���� 0 msg  K LML m  ��NN �OO   S S H - C h e c k :   S e t u pM PQP b  ��RSR o  ������ 0 
configpath 
configPathS m  ��TT �UU ,   s e t t i n g s   a r e   c u r r e n t .Q V��V m  ��WW �XX L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !��  ��  J Y��Y I ����Z��
�� .sysodelanull��� ��� nmbrZ m  ������ ��  ��  ��  ��  ��  ��  ��  q [\[ l ����������  ��  ��  \ ]^] l ���_`�  _ # loadSettings from config file   ` �aa : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e^ bcb I  ���~�}�|�~ "0 setservicelevel setServiceLevel�}  �|  c ded Z  ��fg�{�zf F  ��hih = ��jkj I  ���y�x�w�y 0 setupservice setupService�x  �w  k m  ���v
�v boovtruei = ��lml I  ���u�t�s�u 0 setupprogram setupProgram�t  �s  m m  ���r
�r boovtrueg L  ��nn m  ���q
�q boovtrue�{  �z  e opo l ���p�o�n�p  �o  �n  p q�mq L  ��rr m  ���l
�l boovfals�m  ]  return bool   ^ �ss  r e t u r n   b o o lY tut l     �k�j�i�k  �j  �i  u vwv i   J Mxyx I      �hz�g�h 
0 notify  z {|{ o      �f�f 	0 title  | }~} o      �e�e 0 subtitle  ~ �d o      �c�c 0 message  �d  �g  y k     ��� ��� l      �b���b  � 	OS X 8+ make use of System Notifacation Center
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
  � ��� l     �a�`�_�a  �`  �_  � ��� Z    ���^�]� >    ��� c     ��� o     �\�\ 	0 title  � m    �[
�[ 
ctxt� m    �� ���  � r    ��� b    ��� m    	�� ���    - D   t i t l e =� n   	 ��� 1    �Z
�Z 
strq� l  	 ��Y�X� c   	 ��� o   	 
�W�W 	0 title  � m   
 �V
�V 
ctxt�Y  �X  � o      �U�U 	0 title  �^  �]  � ��� Z   +���T�S� >   ��� c    ��� o    �R�R 0 subtitle  � m    �Q
�Q 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   s u b t i t l e =� n    $��� 1   " $�P
�P 
strq� l   "��O�N� c    "��� o     �M�M 0 subtitle  � m     !�L
�L 
ctxt�O  �N  � o      �K�K 0 subtitle  �T  �S  � ��� Z  , A���J�I� >  , 1��� c   , /��� o   , -�H�H 0 message  � m   - .�G
�G 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :�F
�F 
strq� l  5 8��E�D� c   5 8��� o   5 6�C�C 0 message  � m   6 7�B
�B 
ctxt�E  �D  � o      �A�A 0 message  �J  �I  � ��@� Q   B ����� I  E b�?��>
�? .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�=
�= 
spac� o   H I�<�< 	0 title  � 1   J K�;
�; 
spac� o   L M�:�: 0 subtitle  � 1   N O�9
�9 
spac� o   P Q�8�8 0 message  � 1   R S�7
�7 
spac� o   T Y�6�6 0 dnclocation DNCLocation� 1   Z [�5
�5 
spac� m   \ ]�� ���  2 > / d e v / n u l l�>  � R      �4�3�2
�4 .ascrerr ****      � ****�3  �2  � k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �1�1 *0 displaynoticecenter DisplayNoticeCenter� ��0� I   r ��/��.�/ 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��-� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �,�, 0 dnclocation DNCLocation�-  �.  �0  �@  w ��� l     �+�*�)�+  �*  �)  � ��� i   N Q��� I      �( �'�( 0 msg     o      �&�& 0 msgtitle msgTitle  o      �%�% 0 subtitle   �$ o      �#�# 0 message  �$  �'  � Z     *�" =    	
	 o     �!�! *0 displaynoticecenter DisplayNoticeCenter
 m    � 
�  boovtrue l  
  I   
 ��� 
0 notify    o    �� 0 msgtitle msgTitle  o    �� 0 subtitle   � o    �� 0 message  �  �   $  use OS X Noticafaction Center    � <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�"   Q    * L      I   �
� .sysodlogaskr        TEXT o    �� 0 message   ��
� 
appr o    �� 0 msgtitle msgTitle�   R      ���
� .ascrerr ****      � ****�  �   L   ( *��  �  l     ����  �  �    i   R U !  I      ���� 0 isapprunning isAppRunning�  �  ! k     )"" #$# Q     &%&�
% O    '(' Z    )*�	�) =   +,+ n    -.- 1    �
� 
prun.  g    , m    �
� boovtrue* L    // m    �
� boovtrue�	  �  ( 4    �0
� 
capp0 o    
�� 0 program  & R      ��� 
� .ascrerr ****      � ****�  �   �
  $ 1��1 L   ' )22 m   ' (��
�� boovfals��   343 l     ��������  ��  ��  4 565 i   V Y787 I      ��������  0 killrunningapp killRunningApp��  ��  8 Q     59:;9 O     <=< l   >?@> Z    AB����A =   CDC n    EFE 1    ��
�� 
prunF  g    D m    ��
�� boovtrueB I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  ?   doesn't launch app   @ �GG &   d o e s n ' t   l a u n c h   a p p= 4    ��H
�� 
cappH o    
���� 0 program  : R      ������
�� .ascrerr ****      � ****��  ��  ; I  ( 5��I��
�� .sysoexecTEXT���     TEXTI b   ( 1JKJ b   ( /LML m   ( )NN �OO  p s   x   |   g r e p  M o   ) .���� 0 program  K m   / 0PP �QQ l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  6 RSR l     ��������  ��  ��  S TUT i   Z ]VWV I      �������� 0 servicealive serviceAlive��  ��  W k     fXX YZY Q     c[\��[ l   Z]^_] k    Z`` aba r    cdc m    ee �ff  d o      ���� 
0 sshcon  b ghg Z    Dij��ki =   lml o    ���� 0 servicelevel ServiceLevelm m    ��
�� boovfalsj k    )nn opo l   ��qr��  q 3 -is the service being run by the current user?   r �ss Z i s   t h e   s e r v i c e   b e i n g   r u n   b y   t h e   c u r r e n t   u s e r ?p tut r    vwv b    xyx b    z{z m    || �}} @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *{ o    ���� 0 service  y m    ~~ � ( '   |   a w k   ' { p r i n t   $ 8 } 'w o      ���� 0 cmdssh cmdSSHu ���� r    )��� n    '��� 4   $ '���
�� 
cobj� m   % &���� � n    $��� 2  " $��
�� 
cpar� l   "������ I   "�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  ��  k k   , D�� ��� l  , ,������  � * $is the service being run by any user   � ��� H i s   t h e   s e r v i c e   b e i n g   r u n   b y   a n y   u s e r� ��� r   , 7��� b   , 5��� b   , 3��� m   , -�� ��� @ p s   a   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o   - 2���� 0 service  � m   3 4�� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ���� r   8 D��� n   8 B��� 4   ? B���
�� 
cobj� m   @ A���� � n   8 ?��� 2  = ?��
�� 
cpar� l  8 =������ I  8 =�����
�� .sysoexecTEXT���     TEXT� o   8 9���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  h ��� s   E I��� o   E F���� 
0 sshcon  � o      ���� 
0 tunnel  � ��� l  J J��������  ��  ��  � ���� Z   J Z������� E   J Q��� o   J K���� 
0 tunnel  � o   K P���� 0 service  � L   T V�� o   T U���� 
0 tunnel  ��  ��  ��  ^ 0 *check for ssh connected to defined service   _ ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e\ R      ������
�� .ascrerr ****      � ****��  ��  ��  Z ���� L   d f�� m   d e����  ��  U ��� l     ��������  ��  ��  � ���� i   ^ a��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k    B�� ��� I     �������� 0 resetprogram resetProgram��  ��  � ��� I    �������� $0 sshchecksettings sshCheckSettings��  ��  � ��� I    �������� 0 
setdisplay 
setDisplay��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� I    �������� 0 servicealive serviceAlive��  ��  � o      ����  0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      ���� 0 titlemsg  � ��� Z    ������� F    -��� =   %��� I    #�������� 0 isapprunning isAppRunning��  ��  � m   # $��
�� boovtrue� =  ( +��� o   ( )����  0 isservicealive isServiceAlive� m   ) *����  � k   0 S�� ��� r   0 ;��� b   0 9��� b   0 7��� m   0 1�� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   1 6���� 0 program  � m   7 8�� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� o      ���� 0 message  � ��� I   < J������� 0 msg  � ��� o   = >���� 0 titlemsg  � ��� b   > E��� m   > ?�� ���  W a r n i n g  � o   ? D���� 0 service  � ���� o   E F���� 0 message  ��  ��  � ��� I   K P��������  0 killrunningapp killRunningApp��  ��  � ���� l  Q S���� L   Q S����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  � ��� =  V Y��� o   V W����  0 isservicealive isServiceAlive� m   W X����  � ���� k   \ ��� ��� I   \ ��� ���� 0 msg     o   ] ^���� 0 titlemsg    b   ^ e m   ^ _ �  W a r n i n g   a b o u t   o   _ d���� 0 service   	��	 b   e |

 b   e x b   e r b   e n m   e h �  D o n ' t   r u n   o   h m�� 0 program   m   n q � F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o   o   r w�~�~ 0 service   m   x { �  .��  ��  � �} l  � � L   � ��|�|    exit SSH-Check    �  e x i t   S S H - C h e c k�}  ��  ��  �  l  � ��{�z�y�{  �z  �y     l  � ��x!"�x  ! C =Ask if you want to run your program, kill it, or quietly stop   " �## z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p  $%$ r   � �&'& b   � �()( m   � �** �++ 4 A c t i v e   S S H   C o n n e c t i o n   t o :  ) o   � ��w�w  0 isservicealive isServiceAlive' o      �v�v 0 titlemsg  % ,-, Z   ��./�u0. =  � �121 I   � ��t�s�r�t 0 isapprunning isAppRunning�s  �r  2 m   � ��q
�q boovtrue/ l  �3453 k   �66 787 r   � �9:9 J   � �;; <=< m   � �>> �??  R e s t a r t= @A@ m   � �BB �CC  E x i t   S S H - C h e c kA D�pD m   � �EE �FF  T u r n   O f f�p  : o      �o�o 0 btnopt btnOpt8 GHG r   � �IJI b   � �KLK o   � ��n�n 0 program  L m   � �MM �NN �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c kJ o      �m�m 0 qmsg qMsgH OPO r   � �QRQ n   � �STS 1   � ��l
�l 
bhitT l  � �U�k�jU I  � ��iVW
�i .sysodlogaskr        TEXTV o   � ��h�h 0 qmsg qMsgW �gXY
�g 
btnsX o   � ��f�f 0 btnopt btnOptY �eZ[
�e 
dfltZ m   � �\\ �]]  E x i t   S S H - C h e c k[ �d^�c
�d 
appr^ o   � ��b�b 0 titlemsg  �c  �k  �j  R o      �a�a 
0 choice  P _�`_ Z   �`abc` =  � �ded o   � ��_�_ 
0 choice  e m   � �ff �gg  R e s t a r ta I   � ��^�]�\�^  0 killrunningapp killRunningApp�]  �\  b hih =  � �jkj o   � ��[�[ 
0 choice  k m   � �ll �mm  T u r n   O f fi n�Zn k   � �oo pqp I   � ��Y�X�W�Y  0 killrunningapp killRunningApp�X  �W  q r�Vr l  � �stus L   � ��U�U  t  exit SSH-Check   u �vv  e x i t   S S H - C h e c k�V  �Z  c l wxyw l z{|z L  �T�T  {  exit SSH-Check   | �}}  e x i t   S S H - C h e c kx  choice equals Cancel   y �~~ ( c h o i c e   e q u a l s   C a n c e l�`  4 0 * should we kill & restart the running app?   5 � T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�u  0 k  ��� ��� r  ��� b  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	�S�S 0 program  � 1  �R
�R 
spac� o      �Q�Q 0 qmsg qMsg� ��P� Z  ����O�� = ��� o  �N�N *0 displaynoticecenter DisplayNoticeCenter� m  �M
�M boovtrue� k  "F�� ��� I  ":�L��K�L 0 msg  � ��� m  #&�� ���  S S H - C h e c k� ��� b  &/��� b  &+��� o  &'�J�J  0 isservicealive isServiceAlive� 1  '*�I
�I 
spac� m  +.�� ���  i s   a c t i v e� ��H� b  /6��� o  /2�G�G 0 qmsg qMsg� m  25�� ���  u p   n o w !�H  �K  � ��F� I ;F�E��D
�E .sysodelanull��� ��� nmbr� l ;B��C�B� ^  ;B��� o  ;@�A�A 0 	countdown  � m  @A�@�@ �C  �B  �D  �F  �O  � k  I��� ��� r  IU��� J  IQ�� ��� m  IL�� ���  L a u n c h� ��?� m  LO�� ���  S t o p�?  � o      �>�> 0 btnopt btnOpt� ��=� Q  V����� k  Y��� ��� r  Yn��� b  Yj��� b  Yf��� b  Y`��� o  Y\�<�< 0 qmsg qMsg� m  \_�� ���    i n  � o  `e�;�; 0 	countdown  � m  fi�� ���    s e c o n d s !� o      �:�: 0 qmsg qMsg� ��� r  o���� n  o���� 1  ���9
�9 
bhit� l o���8�7� I o��6��
�6 .sysodlogaskr        TEXT� o  or�5�5 0 qmsg qMsg� �4��
�4 
btns� o  ux�3�3 0 btnopt btnOpt� �2��
�2 
dflt� m  {~�� ���  L a u n c h� �1��
�1 
appr� o  ���0�0 0 titlemsg  � �/��.
�/ 
givu� o  ���-�- 0 	countdown  �.  �8  �7  � o      �,�, 0 yesorno yesOrNo� ��+� Z  �����*�)� = ����� o  ���(�( 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ���'�'  �*  �)  �+  � R      �&�%�$
�& .ascrerr ****      � ****�%  �$  � L  ���#�#  �=  �P  - ��� l ���"�!� �"  �!  �   � ��� l ������  � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  ����� n  ����� 1  ���
� 
psxp� l ������ m  ���� ���  / A p p l i c a t i o n s /�  �  � o      �� 0 apppath appPath� ��� l ������  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ����� I �����
� .sysooffslong    ��� null�  � ���
� 
psof� o  ���� 0 program  � � �
� 
psin  o  ���� 0 apppath appPath�  � o      �� 0 
nameoffset 
nameOffset�  l ����   6 0msg("info:", "Msg", "nameoffset" " & nameOffset)    � ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )  r  ��	 n  ��

 7 ���
� 
ctxt m  ����  l ���� \  �� o  ���� 0 
nameoffset 
nameOffset m  ���� �  �   o  ���
�
 0 apppath appPath	 o      �	�	 0 
folderpath 
folderPath  l ����   6 0msg("info:", "Msg", "folderpath: " & folderPath)    � ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )  Q  �@ l �$ k  �$   I �
�!�
� .sysoexecTEXT���     TEXT! b  �"#" b  �$%$ b  ��&'& o  ���� 0 
folderpath 
folderPath' o  ���� 0 program  % m  �(( �))  . a p p# m  ** �++ N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�    ,-, I �.�
� .sysodelanull��� ��� nmbr. m  �� �  - /� / O $010 I #������
�� .miscactvnull��� ��� null��  ��  1 4  ��2
�� 
capp2 o  ���� 0 program  �    ( "start program up in the background    �33 D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d R      ������
�� .ascrerr ****      � ****��  ��   I  ,@��4���� 0 msg  4 565 m  -077 �88   S S H - C h e c k :   E r r o r6 9:9 m  03;; �<< 
 E r r o r: =��= b  3<>?> m  36@@ �AA N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  ? o  6;���� 0 program  ��  ��   B��B l AA��������  ��  ��  ��  ��       ��C   ! ' 1 7 < A����DEFGHIJKLMNOPQRST��  C �������������������������������������������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 getosxnumber getOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****
�� boovfals
�� boovfalsD �� V����UV��
�� .aevtodocnull  �    alis�� 0 these_items  ��  U ������ 0 these_items  �� 0 prog  V  d�� w���� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j E �� �����WX���� 0 resetprogram resetProgram��  ��  W  X  �� fEc  F �� �����YZ���� 0 getosxnumber getOSXNumber��  ��  Y  Z  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&G �� �����[\���� 0 
setdisplay 
setDisplay��  ��  [  \ ���������� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  H �� �����]^���� 0 
fileexists 
FileExists�� ��_�� _  ���� 0 thefile theFile��  ] ���� 0 thefile theFile^ ����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY hUOfI ������`a���� 0 folderexists FolderExists�� ��b�� b  ���� 0 	thefolder 	theFolder��  ` ���� 0 	thefolder 	theFoldera ����
�� 
cfol
�� .coredoexbool       obj �� � *�/j  eY hUOfJ ��$����cd���� 0 	updatexml 	updateXML�� ��e�� e  ���� 0 programname programName��  c �������� 0 programname programName�� 
0 update  �� 0 update2  d ����@����K\mx|�������� 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOfK �������fg���� 0 setupservice setupService��  ��  f ���� 0 ser  g 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOfL �����~hi�}�� "0 setservicelevel setServiceLevel�  �~  h �|�| 
0 slevel  i 	�{�z��y���x�w�{ 0 
fileexists 
FileExists
�z 
spac
�y .sysoexecTEXT���     TEXT�x  �w  �} z*b  k+  e  N Bb  �%�%j E�O��  eEc  	Y ��  fEc  	Y hOb  	O)jhW X  hY hOb  	�  fEc  	Y hOb  	M �v�u�tjk�s�v 0 setupprogram setupProgram�u  �t  j �r�r 0 prog  k 
�q�p0�o;@�n�m�lP�q 0 
fileexists 
FileExists
�p 
spac
�o .sysoexecTEXT���     TEXT
�n 
bool�m  �l  �s r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOfN �k[�j�ilm�h�k $0 sshchecksettings sshCheckSettings�j  �i  l �g�f�e�d�c�b�a�`�_�^�]�\�[�Z�g 0 configfolder configFolder�f 0 
configpath 
configPath�e 
0 mypath  �d 0 
supportloc 
supportLoc�c 0 cmdmakepath cmdMakePath�b 0 alertaction alertAction�a *0 cmdunzipalertaction cmdUnzipAlertAction�` .0 cmdcleanupalertaction cmdCleanUpAlertAction�_ 0 qmsg qMsg�^ 0 btnopt btnOpt�] 0 yesorno yesOrNo�\ 0 
dnworkflow 
DNWorkflow�[ (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�Z ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflowm Adl�Y�X�W�V�U��T��S�R�Q�P���O��N�M�L.=?S`ow���K�J��I��H�G�F�E����D����C���(,�B�A�@NTW�?�Y 0 folderexists FolderExists�X 0 
fileexists 
FileExists
�W 
bool�V 0 getosxnumber getOSXNumber�U 
�T 
spac
�S 
rtyp
�R 
TEXT
�Q .earsffdralis        afdr
�P 
psxp
�O .sysoexecTEXT���     TEXT
�N .sysodelanull��� ��� nmbr�M  �L  
�K 
btns
�J 
dflt
�I 
appr
�H 
givu�G <
�F .sysodlogaskr        TEXT
�E 
bhit
�D 
strq�C 0 msg  �B 0 setupservice setupService�A 0 setupprogram setupProgram�@ 0 
setdisplay 
setDisplay�? "0 setservicelevel setServiceLevel�h��E�O�%E�O*�k+ f 
 *b  k+ f �&
 *b  k+ f �&
 *b  k+ f 	 *j+ ��&�&]�%�%�%�%E�O)��l �,�%E�O�*�k+ f  ��%�%E�O�j Oa j Y hO*b  k+ f  : &�a %�%a %j O�a %�%b  %j W X  hOa j Y hO*b  k+ f 	 *j+ ��& �a E�O�a %�%�%�%a %j Oa j O*�a %�%k+ e  (�a %�%�%E�O�j O�a %�%�%E�O�j Y hOa E�Oa a  lvE�O ^�a !�a "a #a $a %a &b  a ' � (a ),E�O�a *  �a +%a ,a -,%j Y hO)jhO*a .a /a 0m+ 1W X  hOa j Y hO*�k+ e 	 *b  k+ f �& _a 2E�O�a 3%�%�%E�O�a 4%�%�%E�O�a 5%�%�%�%a 6%j Oa j O*�a 7%�%k+ e  �j O�j Y hY hW "X  *a 8a 9�m+ 1O*j+ :O*j+ ;OfOb  m!j O*j+ <Ob  e  *a =�a >%a ?m+ 1Okj Y hY hO*j+ @O*j+ :e 	 *j+ ;e �& eY hOfO �>y�=�<no�;�> 
0 notify  �= �:p�: p  �9�8�7�9 	0 title  �8 0 subtitle  �7 0 message  �<  n �6�5�4�6 	0 title  �5 0 subtitle  �4 0 message  o �3���2������1��0�/�.�����-
�3 
ctxt
�2 
strq
�1 
spac
�0 .sysoexecTEXT���     TEXT�/  �.  �- 0 msg  �; ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ P �,��+�*qr�)�, 0 msg  �+ �(s�( s  �'�&�%�' 0 msgtitle msgTitle�& 0 subtitle  �% 0 message  �*  q �$�#�"�$ 0 msgtitle msgTitle�# 0 subtitle  �" 0 message  r �!� ����! 
0 notify  
�  
appr
� .sysodlogaskr        TEXT�  �  �) +b  e  *���m+  Y  ��l W 	X  hQ �!��tu�� 0 isapprunning isAppRunning�  �  t  u ����
� 
capp
� 
prun�  �  � * *�b  / *�,e  eY hUW X  hOfR �8��vw��  0 killrunningapp killRunningApp�  �  v  w �����NP�
� 
capp
� 
prun
� .aevtquitnull��� ��� null�  �  
� .sysoexecTEXT���     TEXT� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j S �
W�	�xy��
 0 servicealive serviceAlive�	  �  x ���� 
0 sshcon  � 0 cmdssh cmdSSH� 
0 tunnel  y 
e|~������ ��
� .sysoexecTEXT���     TEXT
� 
cpar
� 
cobj�   ��  � g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOjT �������z{��
�� .aevtoappnull  �   � ****��  ��  z  { G��������������������������*>BE��M������\����������fl�������������������������������������������(*������7;@�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
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
spac
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
�� .miscactvnull��� ��� null��C*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 3�j  ,*��b   %a b  %a %b   %a %m+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a  ,E` !O_ !a "  
*j+ Y _ !a #  *j+ OhY hY �a $b  %_ %%E` Ob  e  )*a &�_ %%a '%_ a (%m+ Ob  m!j )Y la *a +lvE` O U_ a ,%b  %a -%E` O_ a _ a a .a �a /b  a 0 a  ,E` 1O_ 1a 2  hY hW 	X 3 4hOa 5a 6,E` 7O*a 8b  a 9_ 7a : ;E` <O_ 7[a =\[Zk\Z_ <k2E` >O 4_ >b  %a ?%a @%j AOkj )O*a Bb  / *j CUW X 3 4*a Da Ea Fb  %m+ OPascr  ��ޭ