FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   XR
	Name: SSH-Check
	Version: 0.7.4
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
 	 V e r s i o n :   0 . 7 . 4 
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
�l boovtrue�r  �q   m     �                                                                                  sevs  alis    �  	mini_base                  �kH+     tSystem Events.app                                                ���         ����  	                CoreServices    ��U      � PB       t   g   f  :mini_base:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 m i n i _ b a s e  -System/Library/CoreServices/System Events.app   / ��   � �k L    		 m    �j
�j boovfals�k   � 

 l     �i�h�g�i  �h  �g    i   2 5 I      �f�e�f 0 folderexists FolderExists �d o      �c�c 0 	thefolder 	theFolder�d  �e   k       O      Z    �b�a I   �`�_
�` .coredoexbool       obj  4    �^
�^ 
cfol o    �]�] 0 	thefolder 	theFolder�_   L     m    �\
�\ boovtrue�b  �a   m     �                                                                                  sevs  alis    �  	mini_base                  �kH+     tSystem Events.app                                                ���         ����  	                CoreServices    ��U      � PB       t   g   f  :mini_base:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 m i n i _ b a s e  -System/Library/CoreServices/System Events.app   / ��   �[ L     m    �Z
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
 Etut G   
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
�� boovfalsu l  7 C������ =  7 C��� I   7 A���~� 0 
fileexists 
FileExists� ��}� o   8 =�|�| 0 dnca DNCA�}  �~  � m   A B�{
�{ boovfals��  ��  s k   H��� ��� l  H H�z���z  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  H H�y���y  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   H S��� b   H Q��� b   H O��� b   H M��� b   H K��� m   H I�� ���  c d  � o   I J�x�x 0 
configpath 
configPath� 1   K L�w
�w 
spac� m   M N�� ���  & &� 1   O P�v
�v 
spac� o      �u�u 
0 mypath  � ��� r   T a��� b   T _��� l  T ]��t�s� n   T ]��� 1   [ ]�r
�r 
psxp� l  T [��q�p� I  T [�o��
�o .earsffdralis        afdr�  f   T U� �n��m
�n 
rtyp� m   V W�l
�l 
TEXT�m  �q  �p  �t  �s  � m   ] ^�� ��� " C o n t e n t s / S u p p o r t /� o      �k�k 0 
supportloc 
supportLoc� ��� l  b b�j�i�h�j  �i  �h  � ��� Q   be���� k   eB�� ��� Z   e ����g�f� =  e m��� I   e k�e��d�e 0 folderexists FolderExists� ��c� o   f g�b�b 0 
configpath 
configPath�c  �d  � m   k l�a
�a boovfals� k   p ��� ��� r   p w��� b   p u��� b   p s��� m   p q�� ���  m k d i r   - p� 1   q r�`
�` 
spac� o   s t�_�_ 0 
configpath 
configPath� o      �^�^ 0 cmdmakepath cmdMakePath� ��� l  x }���� I  x }�]��\
�] .sysoexecTEXT���     TEXT� o   x y�[�[ 0 cmdmakepath cmdMakePath�\  �  create path   � ���  c r e a t e   p a t h� ��Z� l  ~ ����� I  ~ ��Y��X
�Y .sysodelanull��� ��� nmbr� m   ~ �� ?�      �X  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�Z  �g  �f  � ��� l  � ��W�V�U�W  �V  �U  � ��� Z   � ����T�S� =  � ���� I   � ��R��Q�R 0 
fileexists 
FileExists� ��P� o   � ��O�O 0 xmlsettings XMLSettings�P  �Q  � m   � ��N
�N boovfals� k   � ��� ��� l  � ��M���M  � g anote: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � ��� � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  � ��� l  � ��L���L  � � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   � ��� � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t� ��� Q   � ����K� k   � ��� ��� I  � ��J��I
�J .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � �� � o   � ��H�H 
0 mypath    m   � � �  c p  � o   � ��G�G 0 
supportloc 
supportLoc� m   � � � " i c o n f i g S S H C . p y   . /�I  � �F I  � ��E�D
�E .sysoexecTEXT���     TEXT b   � � b   � �	
	 b   � � o   � ��C�C 
0 mypath   m   � � �  c h m o d   + x
 1   � ��B
�B 
spac o   � ��A�A 0 xmlsettings XMLSettings�D  �F  � R      �@�?�>
�@ .ascrerr ****      � ****�?  �>  �K  � �= I  � ��<�;
�< .sysodelanull��� ��� nmbr m   � � ?�      �;  �=  �T  �S  �  l  � ��:�9�8�:  �9  �8   �7 Z   �B�6�5 @   � � I   � ��4�3�2�4 0 getosxnumber getOSXNumber�3  �2   m   � ��1�1  k   �>  Z   ���0�/ =  � � I   � ��. �-�. 0 
fileexists 
FileExists  !�,! o   � ��+�+ 0 dnca DNCA�,  �-   m   � ��*
�* boovfals k   ��"" #$# l  � ��)%&�)  % ? 9setup Automator Display Notification Center Action script   & �'' r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p t$ ()( r   � �*+* m   � �,, �-- X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p+ o      �(�( 0 alertaction alertAction) ./. I  ��'0�&
�' .sysoexecTEXT���     TEXT0 b   � �121 b   � �343 b   � �565 b   � �787 b   � �9:9 o   � ��%�% 
0 mypath  : m   � �;; �<<  c p  8 o   � ��$�$ 0 
supportloc 
supportLoc6 o   � ��#�# 0 alertaction alertAction4 1   � ��"
�" 
spac2 m   � �== �>>  . /�&  / ?@? I 	�!A� 
�! .sysodelanull��� ��� nmbrA m  BB ?�      �   @ CDC l 

����  �  �  D EFE Z  
BGH��G = 
IJI I  
�K�� 0 
fileexists 
FileExistsK L�L b  MNM b  OPO o  �� 0 
configpath 
configPathP m  QQ �RR  /N o  �� 0 alertaction alertAction�  �  J m  �
� boovtrueH k  >SS TUT r  &VWV b  $XYX b  "Z[Z b   \]\ o  �� 
0 mypath  ] m  ^^ �__  u n z i p   - u[ 1   !�
� 
spacY o  "#�� 0 alertaction alertActionW o      �� *0 cmdunzipalertaction cmdUnzipAlertActionU `a` I ',�b�
� .sysoexecTEXT���     TEXTb o  '(�� *0 cmdunzipalertaction cmdUnzipAlertAction�  a cdc r  -8efe b  -6ghg b  -4iji b  -2klk o  -.�� 
0 mypath  l m  .1mm �nn   r m   - r f   _ _ M A C O S X /j 1  23�
� 
spach o  45�� 0 alertaction alertActionf o      �
�
 .0 cmdcleanupalertaction cmdCleanUpAlertActiond o�	o I 9>�p�
� .sysoexecTEXT���     TEXTp o  9:�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�  �	  �  �  F qrq r  CHsts m  CFuu �vv � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !t o      �� 0 qmsg qMsgr wxw r  ISyzy J  IQ{{ |}| m  IL~~ �  Y e s} ��� m  LO�� ���  N o�  z o      �� 0 btnopt btnOptx ��� Q  T����� k  W��� ��� r  W���� n  W~��� 1  z~�
� 
bhit� l Wz�� ��� I Wz����
�� .sysodlogaskr        TEXT� o  WX���� 0 qmsg qMsg� ����
�� 
btns� o  [\���� 0 btnopt btnOpt� ����
�� 
dflt� m  _b�� ���  N o� ����
�� 
appr� m  eh�� ��� > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p� �����
�� 
givu� ]  kt��� o  kp���� 0 	countdown  � m  ps���� <��  �   ��  � o      ���� 0 yesorno yesOrNo� ��� Z  ��������� = ����� o  ������ 0 yesorno yesOrNo� m  ���� ���  Y e s� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ��� 
 o p e n  � n  ����� 1  ����
�� 
strq� m  ���� ��� P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  ��  ��  � ��� R  ��������
�� .ascrerr ****      � ****��  ��  � ���� I  ��������� 0 msg  � ��� m  ���� ���   S S H - C h e c k :   E r r o r� ��� m  ���� ���  � ���� m  ���� ��� @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  �0  �/   ��� l ����������  ��  ��  � ���� Z  �>������� F  ����� = ����� I  ��������� 0 folderexists FolderExists� ���� o  ������ 0 
configpath 
configPath��  ��  � m  ����
�� boovtrue� = ����� I  ��������� 0 
fileexists 
FileExists� ���� o  ������ 0 dnclocation DNCLocation��  ��  � m  ����
�� boovfals� k  �:�� ��� l ��������  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� r  ����� m  ���� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      ���� 0 
dnworkflow 
DNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ����
�� 
spac� o  ������ 0 
dnworkflow 
DNWorkflow� o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ����
�� 
spac� o  ������ 0 
dnworkflow 
DNWorkflow� o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� I  �����
�� .sysoexecTEXT���     TEXT� b   ��� b   ��� b   	��� b   � � b    o   ���� 
0 mypath   m   �  c p    o  ���� 0 
supportloc 
supportLoc� o  ���� 0 
dnworkflow 
DNWorkflow� 1  	
��
�� 
spac� m   �  . /��  �  I ��	��
�� .sysodelanull��� ��� nmbr	 m  

 ?�      ��    l ��������  ��  ��   �� Z  :���� = ( I  &������ 0 
fileexists 
FileExists �� b  " b    o  ���� 0 
configpath 
configPath m   �  / o   !���� 0 
dnworkflow 
DNWorkflow��  ��   m  &'��
�� boovtrue k  +6  I +0����
�� .sysoexecTEXT���     TEXT o  +,���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��   �� I 16����
�� .sysoexecTEXT���     TEXT o  12���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  ��  ��  ��  ��  ��  ��  �6  �5  �7  � R      ������
�� .ascrerr ****      � ****��  ��  � k  Je   !"! I  JV��#���� 0 msg  # $%$ m  KN&& �''  S e t u p   F a i l e d :% ()( m  NQ** �++  ) ,��, o  QR���� 0 
configpath 
configPath��  ��  " -.- I  W\�������� 0 setupservice setupService��  ��  . /0/ I  ]b�������� 0 setupprogram setupProgram��  ��  0 1��1 L  ce22 m  cd��
�� boovfals��  � 343 l ff��������  ��  ��  4 565 l ff��78��  7 n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   8 �99 � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .6 :;: I fq��<��
�� .sysodelanull��� ��� nmbr< ^  fm=>= o  fk���� 0 	countdown  > m  kl���� ��  ; ?@? I  rw�������� 0 
setdisplay 
setDisplay��  ��  @ A��A Z  x�BC����B = xDED o  x}���� *0 displaynoticecenter DisplayNoticeCenterE m  }~��
�� boovtrueC k  ��FF GHG I  ����I���� 0 msg  I JKJ m  ��LL �MM   S S H - C h e c k :   S e t u pK NON b  ��PQP o  ������ 0 
configpath 
configPathQ m  ��RR �SS ,   s e t t i n g s   a r e   c u r r e n t .O T��T m  ��UU �VV L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !��  ��  H W��W I ����X��
�� .sysodelanull��� ��� nmbrX m  ������ ��  ��  ��  ��  ��  ��  ��  q YZY l ����������  ��  ��  Z [\[ l ����]^��  ] # loadSettings from config file   ^ �__ : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e\ `a` I  ����~�}� "0 setservicelevel setServiceLevel�~  �}  a bcb Z  ��de�|�{d F  ��fgf = ��hih I  ���z�y�x�z 0 setupservice setupService�y  �x  i m  ���w
�w boovtrueg = ��jkj I  ���v�u�t�v 0 setupprogram setupProgram�u  �t  k m  ���s
�s boovtruee L  ��ll m  ���r
�r boovtrue�|  �{  c mnm l ���q�p�o�q  �p  �o  n o�no L  ��pp m  ���m
�m boovfals�n  ]  return bool   ^ �qq  r e t u r n   b o o lY rsr l     �l�k�j�l  �k  �j  s tut i   J Mvwv I      �ix�h�i 
0 notify  x yzy o      �g�g 	0 title  z {|{ o      �f�f 0 subtitle  | }�e} o      �d�d 0 message  �e  �h  w k     �~~ � l      �c���c  � 	OS X 8+ make use of System Notifacation Center
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
  � ��� l     �b�a�`�b  �a  �`  � ��� Z    ���_�^� >    ��� c     ��� o     �]�] 	0 title  � m    �\
�\ 
ctxt� m    �� ���  � r    ��� b    ��� m    	�� ���    - D   t i t l e =� n   	 ��� 1    �[
�[ 
strq� l  	 ��Z�Y� c   	 ��� o   	 
�X�X 	0 title  � m   
 �W
�W 
ctxt�Z  �Y  � o      �V�V 	0 title  �_  �^  � ��� Z   +���U�T� >   ��� c    ��� o    �S�S 0 subtitle  � m    �R
�R 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   s u b t i t l e =� n    $��� 1   " $�Q
�Q 
strq� l   "��P�O� c    "��� o     �N�N 0 subtitle  � m     !�M
�M 
ctxt�P  �O  � o      �L�L 0 subtitle  �U  �T  � ��� Z  , A���K�J� >  , 1��� c   , /��� o   , -�I�I 0 message  � m   - .�H
�H 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :�G
�G 
strq� l  5 8��F�E� c   5 8��� o   5 6�D�D 0 message  � m   6 7�C
�C 
ctxt�F  �E  � o      �B�B 0 message  �K  �J  � ��A� Q   B ����� I  E b�@��?
�@ .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�>
�> 
spac� o   H I�=�= 	0 title  � 1   J K�<
�< 
spac� o   L M�;�; 0 subtitle  � 1   N O�:
�: 
spac� o   P Q�9�9 0 message  � 1   R S�8
�8 
spac� o   T Y�7�7 0 dnclocation DNCLocation� 1   Z [�6
�6 
spac� m   \ ]�� ���  2 > / d e v / n u l l�?  � R      �5�4�3
�5 .ascrerr ****      � ****�4  �3  � k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �2�2 *0 displaynoticecenter DisplayNoticeCenter� ��1� I   r ��0��/�0 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��.� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �-�- 0 dnclocation DNCLocation�.  �/  �1  �A  u ��� l     �,�+�*�,  �+  �*  � ��� i   N Q��� I      �)��(�) 0 msg  � � � o      �'�' 0 msgtitle msgTitle   o      �&�& 0 subtitle   �% o      �$�$ 0 message  �%  �(  � Z     *�# =     o     �"�" *0 displaynoticecenter DisplayNoticeCenter m    �!
�! boovtrue l  
 	
	 I   
 � ��  
0 notify    o    �� 0 msgtitle msgTitle  o    �� 0 subtitle   � o    �� 0 message  �  �  
 $  use OS X Noticafaction Center    � <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�#   Q    * L      I   �
� .sysodlogaskr        TEXT o    �� 0 message   ��
� 
appr o    �� 0 msgtitle msgTitle�   R      ���
� .ascrerr ****      � ****�  �   L   ( *��  �  l     ����  �  �    i   R U I      ���� 0 isapprunning isAppRunning�  �   k     )   !"! Q     &#$�# O    %&% Z    '(�
�	' =   )*) n    +,+ 1    �
� 
prun,  g    * m    �
� boovtrue( L    -- m    �
� boovtrue�
  �	  & 4    �.
� 
capp. o    
�� 0 program  $ R      ���
� .ascrerr ****      � ****�  �  �  " /� / L   ' )00 m   ' (��
�� boovfals�    121 l     ��������  ��  ��  2 343 i   V Y565 I      ��������  0 killrunningapp killRunningApp��  ��  6 Q     57897 O     :;: l   <=>< Z    ?@����? =   ABA n    CDC 1    ��
�� 
prunD  g    B m    ��
�� boovtrue@ I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  =   doesn't launch app   > �EE &   d o e s n ' t   l a u n c h   a p p; 4    ��F
�� 
cappF o    
���� 0 program  8 R      ������
�� .ascrerr ****      � ****��  ��  9 I  ( 5��G��
�� .sysoexecTEXT���     TEXTG b   ( 1HIH b   ( /JKJ m   ( )LL �MM  p s   x   |   g r e p  K o   ) .���� 0 program  I m   / 0NN �OO l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  4 PQP l     ��������  ��  ��  Q RSR i   Z ]TUT I      �������� 0 servicealive serviceAlive��  ��  U k     fVV WXW Q     cYZ��Y l   Z[\][ k    Z^^ _`_ r    aba m    cc �dd  b o      ���� 
0 sshcon  ` efe Z    Dgh��ig =   jkj o    ���� 0 servicelevel ServiceLevelk m    ��
�� boovfalsh k    )ll mnm l   ��op��  o 3 -is the service being run by the current user?   p �qq Z i s   t h e   s e r v i c e   b e i n g   r u n   b y   t h e   c u r r e n t   u s e r ?n rsr r    tut b    vwv b    xyx m    zz �{{ @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *y o    ���� 0 service  w m    || �}} ( '   |   a w k   ' { p r i n t   $ 8 } 'u o      ���� 0 cmdssh cmdSSHs ~��~ r    )� n    '��� 4   $ '���
�� 
cobj� m   % &���� � n    $��� 2  " $��
�� 
cpar� l   "������ I   "�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  ��  i k   , D�� ��� l  , ,������  � * $is the service being run by any user   � ��� H i s   t h e   s e r v i c e   b e i n g   r u n   b y   a n y   u s e r� ��� r   , 7��� b   , 5��� b   , 3��� m   , -�� ��� @ p s   a   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o   - 2���� 0 service  � m   3 4�� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ���� r   8 D��� n   8 B��� 4   ? B���
�� 
cobj� m   @ A���� � n   8 ?��� 2  = ?��
�� 
cpar� l  8 =������ I  8 =�����
�� .sysoexecTEXT���     TEXT� o   8 9���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  f ��� s   E I��� o   E F���� 
0 sshcon  � o      ���� 
0 tunnel  � ��� l  J J��������  ��  ��  � ���� Z   J Z������� E   J Q��� o   J K���� 
0 tunnel  � o   K P���� 0 service  � L   T V�� o   T U���� 
0 tunnel  ��  ��  ��  \ 0 *check for ssh connected to defined service   ] ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c eZ R      ������
�� .ascrerr ****      � ****��  ��  ��  X ���� L   d f�� m   d e����  ��  S ��� l     ��������  ��  ��  � ���� i   ^ a��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k    B�� ��� I     �������� 0 resetprogram resetProgram��  ��  � ��� I    �������� $0 sshchecksettings sshCheckSettings��  ��  � ��� I    �������� 0 
setdisplay 
setDisplay��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� I    �������� 0 servicealive serviceAlive��  ��  � o      ����  0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      ���� 0 titlemsg  � ��� Z    ������� F    -��� =   %��� I    #�������� 0 isapprunning isAppRunning��  ��  � m   # $��
�� boovtrue� =  ( +��� o   ( )����  0 isservicealive isServiceAlive� m   ) *����  � k   0 S�� ��� r   0 ;��� b   0 9��� b   0 7��� m   0 1�� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   1 6���� 0 program  � m   7 8�� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� o      ���� 0 message  � ��� I   < J������� 0 msg  � ��� o   = >���� 0 titlemsg  � ��� b   > E��� m   > ?�� ���  W a r n i n g  � o   ? D���� 0 service  � ���� o   E F���� 0 message  ��  ��  � ��� I   K P��������  0 killrunningapp killRunningApp��  ��  � ���� l  Q S���� L   Q S����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  � ��� =  V Y��� o   V W����  0 isservicealive isServiceAlive� m   W X����  � ���� k   \ ��� ��� I   \ �������� 0 msg  � � � o   ] ^���� 0 titlemsg     b   ^ e m   ^ _ �  W a r n i n g   a b o u t   o   _ d���� 0 service   �� b   e |	 b   e x

 b   e r b   e n m   e h �  D o n ' t   r u n   o   h m���� 0 program   m   n q � F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o   o   r w�� 0 service  	 m   x { �  .��  ��  � �~ l  � � L   � ��}�}    exit SSH-Check    �  e x i t   S S H - C h e c k�~  ��  ��  �  l  � ��|�{�z�|  �{  �z    l  � ��y �y   C =Ask if you want to run your program, kill it, or quietly stop     �!! z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p "#" r   � �$%$ b   � �&'& m   � �(( �)) 4 A c t i v e   S S H   C o n n e c t i o n   t o :  ' o   � ��x�x  0 isservicealive isServiceAlive% o      �w�w 0 titlemsg  # *+* Z   ��,-�v., =  � �/0/ I   � ��u�t�s�u 0 isapprunning isAppRunning�t  �s  0 m   � ��r
�r boovtrue- l  �1231 k   �44 565 r   � �787 J   � �99 :;: m   � �<< �==  R e s t a r t; >?> m   � �@@ �AA  E x i t   S S H - C h e c k? B�qB m   � �CC �DD  T u r n   O f f�q  8 o      �p�p 0 btnopt btnOpt6 EFE r   � �GHG b   � �IJI o   � ��o�o 0 program  J m   � �KK �LL �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c kH o      �n�n 0 qmsg qMsgF MNM r   � �OPO n   � �QRQ 1   � ��m
�m 
bhitR l  � �S�l�kS I  � ��jTU
�j .sysodlogaskr        TEXTT o   � ��i�i 0 qmsg qMsgU �hVW
�h 
btnsV o   � ��g�g 0 btnopt btnOptW �fXY
�f 
dfltX m   � �ZZ �[[  E x i t   S S H - C h e c kY �e\�d
�e 
appr\ o   � ��c�c 0 titlemsg  �d  �l  �k  P o      �b�b 
0 choice  N ]�a] Z   �^_`a^ =  � �bcb o   � ��`�` 
0 choice  c m   � �dd �ee  R e s t a r t_ I   � ��_�^�]�_  0 killrunningapp killRunningApp�^  �]  ` fgf =  � �hih o   � ��\�\ 
0 choice  i m   � �jj �kk  T u r n   O f fg l�[l k   � �mm non I   � ��Z�Y�X�Z  0 killrunningapp killRunningApp�Y  �X  o p�Wp l  � �qrsq L   � ��V�V  r  exit SSH-Check   s �tt  e x i t   S S H - C h e c k�W  �[  a l uvwu l xyzx L  �U�U  y  exit SSH-Check   z �{{  e x i t   S S H - C h e c kv  choice equals Cancel   w �|| ( c h o i c e   e q u a l s   C a n c e l�a  2 0 * should we kill & restart the running app?   3 �}} T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�v  . k  �~~ � r  ��� b  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	�T�T 0 program  � 1  �S
�S 
spac� o      �R�R 0 qmsg qMsg� ��Q� Z  ����P�� = ��� o  �O�O *0 displaynoticecenter DisplayNoticeCenter� m  �N
�N boovtrue� k  "F�� ��� I  ":�M��L�M 0 msg  � ��� m  #&�� ���  S S H - C h e c k� ��� b  &/��� b  &+��� o  &'�K�K  0 isservicealive isServiceAlive� 1  '*�J
�J 
spac� m  +.�� ���  i s   a c t i v e� ��I� b  /6��� o  /2�H�H 0 qmsg qMsg� m  25�� ���  u p   n o w !�I  �L  � ��G� I ;F�F��E
�F .sysodelanull��� ��� nmbr� l ;B��D�C� ^  ;B��� o  ;@�B�B 0 	countdown  � m  @A�A�A �D  �C  �E  �G  �P  � k  I��� ��� r  IU��� J  IQ�� ��� m  IL�� ���  L a u n c h� ��@� m  LO�� ���  S t o p�@  � o      �?�? 0 btnopt btnOpt� ��>� Q  V����� k  Y��� ��� r  Yn��� b  Yj��� b  Yf��� b  Y`��� o  Y\�=�= 0 qmsg qMsg� m  \_�� ���    i n  � o  `e�<�< 0 	countdown  � m  fi�� ���    s e c o n d s !� o      �;�; 0 qmsg qMsg� ��� r  o���� n  o���� 1  ���:
�: 
bhit� l o���9�8� I o��7��
�7 .sysodlogaskr        TEXT� o  or�6�6 0 qmsg qMsg� �5��
�5 
btns� o  ux�4�4 0 btnopt btnOpt� �3��
�3 
dflt� m  {~�� ���  L a u n c h� �2��
�2 
appr� o  ���1�1 0 titlemsg  � �0��/
�0 
givu� o  ���.�. 0 	countdown  �/  �9  �8  � o      �-�- 0 yesorno yesOrNo� ��,� Z  �����+�*� = ����� o  ���)�) 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ���(�(  �+  �*  �,  � R      �'�&�%
�' .ascrerr ****      � ****�&  �%  � L  ���$�$  �>  �Q  + ��� l ���#�"�!�#  �"  �!  � ��� l ��� ���   � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  ����� n  ����� 1  ���
� 
psxp� l ������ m  ���� ���  / A p p l i c a t i o n s /�  �  � o      �� 0 apppath appPath� ��� l ������  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ����� I �����
� .sysooffslong    ��� null�  � ���
� 
psof� o  ���� 0 program  � ���
� 
psin� o  ���� 0 apppath appPath�  � o      �� 0 
nameoffset 
nameOffset� � � l ����   6 0msg("info:", "Msg", "nameoffset" " & nameOffset)    � ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )   r  �� n  ��	 7 ���

� 
ctxt
 m  ����  l ���� \  �� o  ���� 0 
nameoffset 
nameOffset m  ���� �  �  	 o  ���� 0 apppath appPath o      �
�
 0 
folderpath 
folderPath  l ���	�	   6 0msg("info:", "Msg", "folderpath: " & folderPath)    � ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )  Q  �@ l �$ k  �$  I �
��
� .sysoexecTEXT���     TEXT b  � !  b  �"#" b  ��$%$ o  ���� 0 
folderpath 
folderPath% o  ���� 0 program  # m  �&& �''  . a p p! m  (( �)) N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�   *+* I �,�
� .sysodelanull��� ��� nmbr, m  �� �  + -�- O $./. I #� ����
�  .miscactvnull��� ��� null��  ��  / 4  ��0
�� 
capp0 o  ���� 0 program  �   ( "start program up in the background    �11 D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d R      ������
�� .ascrerr ****      � ****��  ��   I  ,@��2���� 0 msg  2 343 m  -055 �66   S S H - C h e c k :   E r r o r4 787 m  0399 �:: 
 E r r o r8 ;��; b  3<<=< m  36>> �?? N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  = o  6;���� 0 program  ��  ��   @��@ l AA��������  ��  ��  ��  ��       ��A   ! ' 1 7 < A����BCDEFGHIJKLMNOPQR��  A �������������������������������������������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 getosxnumber getOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****
�� boovfals
�� boovfalsB �� V����ST��
�� .aevtodocnull  �    alis�� 0 these_items  ��  S ������ 0 these_items  �� 0 prog  T  d�� w���� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j C �� �����UV���� 0 resetprogram resetProgram��  ��  U  V  �� fEc  D �� �����WX���� 0 getosxnumber getOSXNumber��  ��  W  X  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&E �� �����YZ���� 0 
setdisplay 
setDisplay��  ��  Y  Z ���������� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  F �� �����[\���� 0 
fileexists 
FileExists�� ��]�� ]  ���� 0 thefile theFile��  [ ���� 0 thefile theFile\ ����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY hUOfG ������^_���� 0 folderexists FolderExists�� ��`�� `  ���� 0 	thefolder 	theFolder��  ^ ���� 0 	thefolder 	theFolder_ ����
�� 
cfol
�� .coredoexbool       obj �� � *�/j  eY hUOfH ��$����ab���� 0 	updatexml 	updateXML�� ��c�� c  ���� 0 programname programName��  a �������� 0 programname programName�� 
0 update  �� 0 update2  b ����@����K\mx|�������� 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOfI �������de���� 0 setupservice setupService��  ��  d ���� 0 ser  e 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOfJ ������fg�~�� "0 setservicelevel setServiceLevel��  �  f �}�} 
0 slevel  g 	�|�{��z���y�x�| 0 
fileexists 
FileExists
�{ 
spac
�z .sysoexecTEXT���     TEXT�y  �x  �~ z*b  k+  e  N Bb  �%�%j E�O��  eEc  	Y ��  fEc  	Y hOb  	O)jhW X  hY hOb  	�  fEc  	Y hOb  	K �w�v�uhi�t�w 0 setupprogram setupProgram�v  �u  h �s�s 0 prog  i 
�r�q0�p;@�o�n�mP�r 0 
fileexists 
FileExists
�q 
spac
�p .sysoexecTEXT���     TEXT
�o 
bool�n  �m  �t r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOfL �l[�k�jjk�i�l $0 sshchecksettings sshCheckSettings�k  �j  j �h�g�f�e�d�c�b�a�`�_�^�]�\�[�h 0 configfolder configFolder�g 0 
configpath 
configPath�f 
0 mypath  �e 0 
supportloc 
supportLoc�d 0 cmdmakepath cmdMakePath�c 0 alertaction alertAction�b *0 cmdunzipalertaction cmdUnzipAlertAction�a .0 cmdcleanupalertaction cmdCleanUpAlertAction�` 0 qmsg qMsg�_ 0 btnopt btnOpt�^ 0 yesorno yesOrNo�] 0 
dnworkflow 
DNWorkflow�\ (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�[ ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflowk Adl�Z�Y�X��W��V�U�T�S���R��Q�P�O�N�M,;=Q^mu~��L�K��J��I�H�G�F����E����D���&*�C�B�ALRU�@�Z 0 folderexists FolderExists�Y 0 
fileexists 
FileExists
�X 
bool
�W 
spac
�V 
rtyp
�U 
TEXT
�T .earsffdralis        afdr
�S 
psxp
�R .sysoexecTEXT���     TEXT
�Q .sysodelanull��� ��� nmbr�P  �O  �N 0 getosxnumber getOSXNumber�M 
�L 
btns
�K 
dflt
�J 
appr
�I 
givu�H <
�G .sysodlogaskr        TEXT
�F 
bhit
�E 
strq�D 0 msg  �C 0 setupservice setupService�B 0 setupprogram setupProgram�A 0 
setdisplay 
setDisplay�@ "0 setservicelevel setServiceLevel�i��E�O�%E�O*�k+ f 
 *b  k+ f �&
 *b  k+ f �&
 *b  k+ f �&Y�%�%�%�%E�O)��l 
�,�%E�O�*�k+ f  ��%�%E�O�j O�j Y hO*b  k+ f  8 &�a %�%a %j O�a %�%b  %j W X  hO�j Y hO*j+ a h*b  k+ f  �a E�O�a %�%�%�%a %j O�j O*�a %�%k+ e  (�a %�%�%E�O�j O�a %�%�%E�O�j Y hOa E�Oa a  lvE�O `�a !�a "a #a $a %a &b  a ' a  (a ),E�O�a *  �a +%a ,a -,%j Y hO)jhO*a .a /a 0m+ 1W X  hO�j Y hO*�k+ e 	 *b  k+ f �& ]a 2E�O�a 3%�%�%E�O�a 4%�%�%E�O�a 5%�%�%�%a 6%j O�j O*�a 7%�%k+ e  �j O�j Y hY hY hW "X  *a 8a 9�m+ 1O*j+ :O*j+ ;OfOb  m!j O*j+ <Ob  e  *a =�a >%a ?m+ 1Okj Y hY hO*j+ @O*j+ :e 	 *j+ ;e �& eY hOfM �?w�>�=lm�<�? 
0 notify  �> �;n�; n  �:�9�8�: 	0 title  �9 0 subtitle  �8 0 message  �=  l �7�6�5�7 	0 title  �6 0 subtitle  �5 0 message  m �4���3������2��1�0�/�����.
�4 
ctxt
�3 
strq
�2 
spac
�1 .sysoexecTEXT���     TEXT�0  �/  �. 0 msg  �< ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ N �-��,�+op�*�- 0 msg  �, �)q�) q  �(�'�&�( 0 msgtitle msgTitle�' 0 subtitle  �& 0 message  �+  o �%�$�#�% 0 msgtitle msgTitle�$ 0 subtitle  �# 0 message  p �"�!� ���" 
0 notify  
�! 
appr
�  .sysodlogaskr        TEXT�  �  �* +b  e  *���m+  Y  ��l W 	X  hO ���rs�� 0 isapprunning isAppRunning�  �  r  s ����
� 
capp
� 
prun�  �  � * *�b  / *�,e  eY hUW X  hOfP �6��tu��  0 killrunningapp killRunningApp�  �  t  u �����LN�
� 
capp
� 
prun
� .aevtquitnull��� ��� null�  �  
� .sysoexecTEXT���     TEXT� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j Q �U�
�	vw�� 0 servicealive serviceAlive�
  �	  v ���� 
0 sshcon  � 0 cmdssh cmdSSH� 
0 tunnel  w 
cz|������� 
� .sysoexecTEXT���     TEXT
� 
cpar
� 
cobj�  �   � g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOjR �������xy��
�� .aevtoappnull  �   � ****��  ��  x  y G��������������������������(<@C��K������Z����������dj�������������������������������������������&(������59>�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
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
*j+ Y _ !a #  *j+ OhY hY �a $b  %_ %%E` Ob  e  )*a &�_ %%a '%_ a (%m+ Ob  m!j )Y la *a +lvE` O U_ a ,%b  %a -%E` O_ a _ a a .a �a /b  a 0 a  ,E` 1O_ 1a 2  hY hW 	X 3 4hOa 5a 6,E` 7O*a 8b  a 9_ 7a : ;E` <O_ 7[a =\[Zk\Z_ <k2E` >O 4_ >b  %a ?%a @%j AOkj )O*a Bb  / *j CUW X 3 4*a Da Ea Fb  %m+ OP ascr  ��ޭ