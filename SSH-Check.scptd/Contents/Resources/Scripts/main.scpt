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
configPathg non Z   
 pq����p I   
 ��r���� 0 folderexists FolderExistsr s��s o    ���� 0 
configpath 
configPath��  ��  q I    �������� "0 setservicelevel setServiceLevel��  ��  ��  ��  o tut l   ��������  ��  ��  u vwv Z   �xy����x G    dz{z G    G|}| G    6~~ =   %��� I    #������� 0 folderexists FolderExists� ���� o    ���� 0 
configpath 
configPath��  ��  � m   # $��
�� boovfals =  ( 4��� I   ( 2������� 0 
fileexists 
FileExists� ���� o   ) .�� 0 dnclocation DNCLocation��  ��  � m   2 3�~
�~ boovfals} =  9 E��� I   9 C�}��|�} 0 
fileexists 
FileExists� ��{� o   : ?�z�z 0 xmlsettings XMLSettings�{  �|  � m   C D�y
�y boovfals{ l  J b��x�w� F   J b��� =  J V��� I   J T�v��u�v 0 
fileexists 
FileExists� ��t� o   K P�s�s 0 dnca DNCA�t  �u  � m   T U�r
�r boovfals� @   Y `��� I   Y ^�q�p�o�q 0 getosxnumber getOSXNumber�p  �o  � m   ^ _�n�n �x  �w  y k   g��� ��� l  g g�m���m  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  g g�l���l  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   g r��� b   g p��� b   g n��� b   g l��� b   g j��� m   g h�� ���  c d  � o   h i�k�k 0 
configpath 
configPath� 1   j k�j
�j 
spac� m   l m�� ���  & &� 1   n o�i
�i 
spac� o      �h�h 
0 mypath  � ��� r   s ���� b   s ~��� l  s |��g�f� n   s |��� 1   z |�e
�e 
psxp� l  s z��d�c� I  s z�b��
�b .earsffdralis        afdr�  f   s t� �a��`
�a 
rtyp� m   u v�_
�_ 
TEXT�`  �d  �c  �g  �f  � m   | }�� ��� " C o n t e n t s / S u p p o r t /� o      �^�^ 0 
supportloc 
supportLoc� ��� l  � ��]�\�[�]  �\  �[  � ��� Q   ������ k   �g�� ��� Z   � ����Z�Y� =  � ���� I   � ��X��W�X 0 folderexists FolderExists� ��V� o   � ��U�U 0 
configpath 
configPath�V  �W  � m   � ��T
�T boovfals� k   � ��� ��� r   � ���� b   � ���� b   � ���� m   � ��� ���  m k d i r   - p� 1   � ��S
�S 
spac� o   � ��R�R 0 
configpath 
configPath� o      �Q�Q 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ��P��O
�P .sysoexecTEXT���     TEXT� o   � ��N�N 0 cmdmakepath cmdMakePath�O  �  create path   � ���  c r e a t e   p a t h� ��M� l  � ����� I  � ��L��K
�L .sysodelanull��� ��� nmbr� m   � ��� ?�      �K  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�M  �Z  �Y  � ��� l  � ��J�I�H�J  �I  �H  � ��� Z   � ����G�F� =  � ���� I   � ��E��D�E 0 
fileexists 
FileExists� ��C� o   � ��B�B 0 xmlsettings XMLSettings�C  �D  � m   � ��A
�A boovfals� k   � ��� ��� l  � ��@���@  � g anote: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � ��� � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  � ��� l  � ��?���?  � � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   � ��� � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t� ��� Q   � �� �>� k   � �  I  � ��=�<
�= .sysoexecTEXT���     TEXT b   � � b   � � b   � �	
	 o   � ��;�; 
0 mypath  
 m   � � �  c p   o   � ��:�: 0 
supportloc 
supportLoc m   � � � " i c o n f i g S S H C . p y   . /�<   �9 I  � ��8�7
�8 .sysoexecTEXT���     TEXT b   � � b   � � b   � � o   � ��6�6 
0 mypath   m   � � �  c h m o d   + x 1   � ��5
�5 
spac o   � ��4�4 0 xmlsettings XMLSettings�7  �9    R      �3�2�1
�3 .ascrerr ****      � ****�2  �1  �>  � �0 I  � ��/�.
�/ .sysodelanull��� ��� nmbr m   � � ?�      �.  �0  �G  �F  �  l  � ��-�,�+�-  �,  �+    Z   �� !�*�)  F   �"#" =  � $%$ I   � ��(&�'�( 0 
fileexists 
FileExists& '�&' o   � ��%�% 0 dnca DNCA�&  �'  % m   � ��$
�$ boovfals# @  
()( I  �#�"�!�# 0 getosxnumber getOSXNumber�"  �!  ) m  	� �  ! k  �** +,+ l �-.�  - ? 9setup Automator Display Notification Center Action script   . �// r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p t, 010 r  232 m  44 �55 X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p3 o      �� 0 alertaction alertAction1 676 I (�8�
� .sysoexecTEXT���     TEXT8 b  $9:9 b   ;<; b  =>= b  ?@? b  ABA o  �� 
0 mypath  B m  CC �DD  c p  @ o  �� 0 
supportloc 
supportLoc> o  �� 0 alertaction alertAction< 1  �
� 
spac: m   #EE �FF  . /�  7 GHG I )0�I�
� .sysodelanull��� ��� nmbrI m  ),JJ ?�      �  H KLK l 11����  �  �  L MNM Z  1iOP��O = 1?QRQ I  1=�S�� 0 
fileexists 
FileExistsS T�T b  29UVU b  27WXW o  23�� 0 
configpath 
configPathX m  36YY �ZZ  /V o  78�� 0 alertaction alertAction�  �  R m  =>�
� boovtrueP k  Be[[ \]\ r  BM^_^ b  BK`a` b  BIbcb b  BGded o  BC�
�
 
0 mypath  e m  CFff �gg  u n z i p   - uc 1  GH�	
�	 
spaca o  IJ�� 0 alertaction alertAction_ o      �� *0 cmdunzipalertaction cmdUnzipAlertAction] hih I NS�j�
� .sysoexecTEXT���     TEXTj o  NO�� *0 cmdunzipalertaction cmdUnzipAlertAction�  i klk r  T_mnm b  T]opo b  T[qrq b  TYsts o  TU�� 
0 mypath  t m  UXuu �vv   r m   - r f   _ _ M A C O S X /r 1  YZ�
� 
spacp o  [\�� 0 alertaction alertActionn o      � �  .0 cmdcleanupalertaction cmdCleanUpAlertActionl w��w I `e��x��
�� .sysoexecTEXT���     TEXTx o  `a���� .0 cmdcleanupalertaction cmdCleanUpAlertAction��  ��  �  �  N yzy r  jo{|{ m  jm}} �~~ � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !| o      ���� 0 qmsg qMsgz � r  pz��� J  px�� ��� m  ps�� ���  Y e s� ���� m  sv�� ���  N o��  � o      ���� 0 btnopt btnOpt� ��� Q  {������ k  ~��� ��� r  ~���� n  ~���� 1  ����
�� 
bhit� l ~������� I ~�����
�� .sysodlogaskr        TEXT� o  ~���� 0 qmsg qMsg� ����
�� 
btns� o  ������ 0 btnopt btnOpt� ����
�� 
dflt� m  ���� ���  N o� ����
�� 
appr� m  ���� ��� > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p� �����
�� 
givu� ]  ����� o  ������ 0 	countdown  � m  ������ <��  ��  ��  � o      ���� 0 yesorno yesOrNo� ��� Z  ��������� = ����� o  ������ 0 yesorno yesOrNo� m  ���� ���  Y e s� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ��� 
 o p e n  � n  ����� 1  ����
�� 
strq� m  ���� ��� P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  ��  ��  � ��� R  ��������
�� .ascrerr ****      � ****��  ��  � ���� I  ��������� 0 msg  � ��� m  ���� ���   S S H - C h e c k :   E r r o r� ��� m  ���� ���  � ���� m  ���� ��� @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  �*  �)   ��� l ����������  ��  ��  � ���� Z  �g������� F  ���� = ����� I  ��������� 0 folderexists FolderExists� ���� o  ������ 0 
configpath 
configPath��  ��  � m  ����
�� boovtrue� = ���� I  �������� 0 
fileexists 
FileExists� ���� o  ������ 0 dnclocation DNCLocation��  ��  � m  ��
�� boovfals� k  	c�� ��� l 		������  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� r  	��� m  	�� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      ���� 0 
dnworkflow 
DNWorkflow� ��� r  ��� b  ��� b  ��� b  ��� o  ���� 
0 mypath  � m  �� ���  u n z i p   - u� 1  ��
�� 
spac� o  ���� 0 
dnworkflow 
DNWorkflow� o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  &��� b  $��� b  "��� b   ��� o  ���� 
0 mypath  � m  �� ���   r m   - r f   _ _ M A C O S X /� 1   !��
�� 
spac� o  "#���� 0 
dnworkflow 
DNWorkflow� o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� I ':�� ��
�� .sysoexecTEXT���     TEXT  b  '6 b  '2 b  '0 b  '. b  ',	
	 o  '(���� 
0 mypath  
 m  (+ �  c p   o  ,-���� 0 
supportloc 
supportLoc o  ./���� 0 
dnworkflow 
DNWorkflow 1  01��
�� 
spac m  25 �  . /��  �  I ;B����
�� .sysodelanull��� ��� nmbr m  ;> ?�      ��    l CC��������  ��  ��   �� Z  Cc���� = CQ I  CO������ 0 
fileexists 
FileExists �� b  DK b  DI o  DE���� 0 
configpath 
configPath m  EH   �!!  / o  IJ���� 0 
dnworkflow 
DNWorkflow��  ��   m  OP��
�� boovtrue k  T_"" #$# I TY��%��
�� .sysoexecTEXT���     TEXT% o  TU���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  $ &��& I Z_��'��
�� .sysoexecTEXT���     TEXT' o  Z[���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  ��  ��  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  o�(( )*) I  o{��+���� 0 msg  + ,-, m  ps.. �//  S e t u p   F a i l e d :- 010 m  sv22 �33  1 4��4 o  vw���� 0 
configpath 
configPath��  ��  * 565 I  |��������� 0 setupservice setupService��  ��  6 787 I  ���������� 0 setupprogram setupProgram��  ��  8 9��9 L  ��:: m  ����
�� boovfals��  � ;<; l ����������  ��  ��  < =>= l ����?@��  ? n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   @ �AA � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .> BCB I ����D��
�� .sysodelanull��� ��� nmbrD ^  ��EFE o  ������ 0 	countdown  F m  ������ ��  C GHG I  ���������� 0 
setdisplay 
setDisplay��  ��  H I��I Z  ��JK����J = ��LML o  ������ *0 displaynoticecenter DisplayNoticeCenterM m  ����
�� boovtrueK k  ��NN OPO I  ����Q���� 0 msg  Q RSR m  ��TT �UU   S S H - C h e c k :   S e t u pS VWV b  ��XYX o  ���� 0 
configpath 
configPathY m  ��ZZ �[[ ,   s e t t i n g s   a r e   c u r r e n t .W \�~\ m  ��]] �^^ L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�~  ��  P _�}_ I ���|`�{
�| .sysodelanull��� ��� nmbr` m  ���z�z �{  �}  ��  ��  ��  ��  ��  w aba l ���y�x�w�y  �x  �w  b cdc l ���vef�v  e # loadSettings from config file   f �gg : l o a d S e t t i n g s   f r o m   c o n f i g   f i l ed hih Z  ��jk�u�tj F  ��lml = ��non I  ���s�r�q�s 0 setupservice setupService�r  �q  o m  ���p
�p boovtruem = ��pqp I  ���o�n�m�o 0 setupprogram setupProgram�n  �m  q m  ���l
�l boovtruek L  ��rr m  ���k
�k boovtrue�u  �t  i sts l ���j�i�h�j  �i  �h  t u�gu L  ��vv m  ���f
�f boovfals�g  ]  return bool   ^ �ww  r e t u r n   b o o lY xyx l     �e�d�c�e  �d  �c  y z{z i   J M|}| I      �b~�a�b 
0 notify  ~ � o      �`�` 	0 title  � ��� o      �_�_ 0 subtitle  � ��^� o      �]�] 0 message  �^  �a  } k     ��� ��� l      �\���\  � 	OS X 8+ make use of System Notifacation Center
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
  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� Z    ���X�W� >    ��� c     ��� o     �V�V 	0 title  � m    �U
�U 
ctxt� m    �� ���  � r    ��� b    ��� m    	�� ���    - D   t i t l e =� n   	 ��� 1    �T
�T 
strq� l  	 ��S�R� c   	 ��� o   	 
�Q�Q 	0 title  � m   
 �P
�P 
ctxt�S  �R  � o      �O�O 	0 title  �X  �W  � ��� Z   +���N�M� >   ��� c    ��� o    �L�L 0 subtitle  � m    �K
�K 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   s u b t i t l e =� n    $��� 1   " $�J
�J 
strq� l   "��I�H� c    "��� o     �G�G 0 subtitle  � m     !�F
�F 
ctxt�I  �H  � o      �E�E 0 subtitle  �N  �M  � ��� Z  , A���D�C� >  , 1��� c   , /��� o   , -�B�B 0 message  � m   - .�A
�A 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :�@
�@ 
strq� l  5 8��?�>� c   5 8��� o   5 6�=�= 0 message  � m   6 7�<
�< 
ctxt�?  �>  � o      �;�; 0 message  �D  �C  � ��:� Q   B ����� I  E b�9��8
�9 .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G�7
�7 
spac� o   H I�6�6 	0 title  � 1   J K�5
�5 
spac� o   L M�4�4 0 subtitle  � 1   N O�3
�3 
spac� o   P Q�2�2 0 message  � 1   R S�1
�1 
spac� o   T Y�0�0 0 dnclocation DNCLocation� 1   Z [�/
�/ 
spac� m   \ ]�� ���  2 > / d e v / n u l l�8  � R      �.�-�,
�. .ascrerr ****      � ****�-  �,  � k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �+�+ *0 displaynoticecenter DisplayNoticeCenter� ��*� I   r ��)��(�) 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��'� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �&�& 0 dnclocation DNCLocation�'  �(  �*  �:  { ��� l     �%�$�#�%  �$  �#  �    i   N Q I      �"�!�" 0 msg    o      � �  0 msgtitle msgTitle  o      �� 0 subtitle   	�	 o      �� 0 message  �  �!   Z     *
�
 =     o     �� *0 displaynoticecenter DisplayNoticeCenter m    �
� boovtrue l  
  I   
 ��� 
0 notify    o    �� 0 msgtitle msgTitle  o    �� 0 subtitle   � o    �� 0 message  �  �   $  use OS X Noticafaction Center    � <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�   Q    * L      I   �
� .sysodlogaskr        TEXT o    �� 0 message   ��
� 
appr o    �� 0 msgtitle msgTitle�   R      ���
� .ascrerr ****      � ****�  �   L   ( *��    !  l     �
�	��
  �	  �  ! "#" i   R U$%$ I      ���� 0 isapprunning isAppRunning�  �  % k     )&& '(' Q     &)*�) O    +,+ Z    -.��- =   /0/ n    121 1    �
� 
prun2  g    0 m    � 
�  boovtrue. L    33 m    ��
�� boovtrue�  �  , 4    ��4
�� 
capp4 o    
���� 0 program  * R      ������
�� .ascrerr ****      � ****��  ��  �  ( 5��5 L   ' )66 m   ' (��
�� boovfals��  # 787 l     ��������  ��  ��  8 9:9 i   V Y;<; I      ��������  0 killrunningapp killRunningApp��  ��  < Q     5=>?= O     @A@ l   BCDB Z    EF����E =   GHG n    IJI 1    ��
�� 
prunJ  g    H m    ��
�� boovtrueF I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  C   doesn't launch app   D �KK &   d o e s n ' t   l a u n c h   a p pA 4    ��L
�� 
cappL o    
���� 0 program  > R      ������
�� .ascrerr ****      � ****��  ��  ? I  ( 5��M��
�� .sysoexecTEXT���     TEXTM b   ( 1NON b   ( /PQP m   ( )RR �SS  p s   x   |   g r e p  Q o   ) .���� 0 program  O m   / 0TT �UU l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  : VWV l     ��������  ��  ��  W XYX i   Z ]Z[Z I      �������� 0 servicealive serviceAlive��  ��  [ k     f\\ ]^] Q     c_`��_ l   Zabca k    Zdd efe r    ghg m    ii �jj  h o      ���� 
0 sshcon  f klk Z    Dmn��om =   pqp o    ���� 0 servicelevel ServiceLevelq m    ��
�� boovfalsn k    )rr sts l   ��uv��  u 3 -is the service being run by the current user?   v �ww Z i s   t h e   s e r v i c e   b e i n g   r u n   b y   t h e   c u r r e n t   u s e r ?t xyx r    z{z b    |}| b    ~~ m    �� ��� @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . * o    ���� 0 service  } m    �� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '{ o      ���� 0 cmdssh cmdSSHy ���� r    )��� n    '��� 4   $ '���
�� 
cobj� m   % &���� � n    $��� 2  " $��
�� 
cpar� l   "������ I   "�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  ��  o k   , D�� ��� l  , ,������  � * $is the service being run by any user   � ��� H i s   t h e   s e r v i c e   b e i n g   r u n   b y   a n y   u s e r� ��� r   , 7��� b   , 5��� b   , 3��� m   , -�� ��� @ p s   a   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *� o   - 2���� 0 service  � m   3 4�� ��� ( '   |   a w k   ' { p r i n t   $ 8 } '� o      ���� 0 cmdssh cmdSSH� ���� r   8 D��� n   8 B��� 4   ? B���
�� 
cobj� m   @ A���� � n   8 ?��� 2  = ?��
�� 
cpar� l  8 =������ I  8 =�����
�� .sysoexecTEXT���     TEXT� o   8 9���� 0 cmdssh cmdSSH��  ��  ��  � o      ���� 
0 sshcon  ��  l ��� s   E I��� o   E F���� 
0 sshcon  � o      ���� 
0 tunnel  � ��� l  J J��������  ��  ��  � ���� Z   J Z������� E   J Q��� o   J K���� 
0 tunnel  � o   K P���� 0 service  � L   T V�� o   T U���� 
0 tunnel  ��  ��  ��  b 0 *check for ssh connected to defined service   c ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e` R      ������
�� .ascrerr ****      � ****��  ��  ��  ^ ���� L   d f�� m   d e����  ��  Y ��� l     ��������  ��  ��  � ���� i   ^ a��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k    B�� ��� I     �������� 0 resetprogram resetProgram��  ��  � ��� I    �������� $0 sshchecksettings sshCheckSettings��  ��  � ��� I    �������� 0 
setdisplay 
setDisplay��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� I    �������� 0 servicealive serviceAlive��  ��  � o      ����  0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      ���� 0 titlemsg  � ��� Z    ������� F    -��� =   %��� I    #�������� 0 isapprunning isAppRunning��  ��  � m   # $��
�� boovtrue� =  ( +��� o   ( )����  0 isservicealive isServiceAlive� m   ) *����  � k   0 S�� ��� r   0 ;��� b   0 9��� b   0 7��� m   0 1�� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   1 6���� 0 program  � m   7 8�� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� o      ���� 0 message  � ��� I   < J������� 0 msg  � ��� o   = >���� 0 titlemsg  � ��� b   > E��� m   > ?�� ���  W a r n i n g  � o   ? D���� 0 service  � ���� o   E F���� 0 message  ��  ��  � ��� I   K P��������  0 killrunningapp killRunningApp��  ��  � ���� l  Q S���� L   Q S����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  � ��� =  V Y��� o   V W����  0 isservicealive isServiceAlive� m   W X����  �  �  k   \ �  I   \ ��~�}�~ 0 msg    o   ] ^�|�| 0 titlemsg    b   ^ e	
	 m   ^ _ �  W a r n i n g   a b o u t  
 o   _ d�{�{ 0 service   �z b   e | b   e x b   e r b   e n m   e h �  D o n ' t   r u n   o   h m�y�y 0 program   m   n q � F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o   o   r w�x�x 0 service   m   x { �  .�z  �}   �w l  � � L   � ��v�v    exit SSH-Check    �    e x i t   S S H - C h e c k�w  �  ��  � !"! l  � ��u�t�s�u  �t  �s  " #$# l  � ��r%&�r  % C =Ask if you want to run your program, kill it, or quietly stop   & �'' z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p$ ()( r   � �*+* b   � �,-, m   � �.. �// 4 A c t i v e   S S H   C o n n e c t i o n   t o :  - o   � ��q�q  0 isservicealive isServiceAlive+ o      �p�p 0 titlemsg  ) 010 Z   ��23�o42 =  � �565 I   � ��n�m�l�n 0 isapprunning isAppRunning�m  �l  6 m   � ��k
�k boovtrue3 l  �7897 k   �:: ;<; r   � �=>= J   � �?? @A@ m   � �BB �CC  R e s t a r tA DED m   � �FF �GG  E x i t   S S H - C h e c kE H�jH m   � �II �JJ  T u r n   O f f�j  > o      �i�i 0 btnopt btnOpt< KLK r   � �MNM b   � �OPO o   � ��h�h 0 program  P m   � �QQ �RR �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c kN o      �g�g 0 qmsg qMsgL STS r   � �UVU n   � �WXW 1   � ��f
�f 
bhitX l  � �Y�e�dY I  � ��cZ[
�c .sysodlogaskr        TEXTZ o   � ��b�b 0 qmsg qMsg[ �a\]
�a 
btns\ o   � ��`�` 0 btnopt btnOpt] �_^_
�_ 
dflt^ m   � �`` �aa  E x i t   S S H - C h e c k_ �^b�]
�^ 
apprb o   � ��\�\ 0 titlemsg  �]  �e  �d  V o      �[�[ 
0 choice  T c�Zc Z   �defgd =  � �hih o   � ��Y�Y 
0 choice  i m   � �jj �kk  R e s t a r te I   � ��X�W�V�X  0 killrunningapp killRunningApp�W  �V  f lml =  � �non o   � ��U�U 
0 choice  o m   � �pp �qq  T u r n   O f fm r�Tr k   � �ss tut I   � ��S�R�Q�S  0 killrunningapp killRunningApp�R  �Q  u v�Pv l  � �wxyw L   � ��O�O  x  exit SSH-Check   y �zz  e x i t   S S H - C h e c k�P  �T  g l {|}{ l ~�~ L  �N�N    exit SSH-Check   � ���  e x i t   S S H - C h e c k|  choice equals Cancel   } ��� ( c h o i c e   e q u a l s   C a n c e l�Z  8 0 * should we kill & restart the running app?   9 ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�o  4 k  ��� ��� r  ��� b  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	�M�M 0 program  � 1  �L
�L 
spac� o      �K�K 0 qmsg qMsg� ��J� Z  ����I�� = ��� o  �H�H *0 displaynoticecenter DisplayNoticeCenter� m  �G
�G boovtrue� k  "F�� ��� I  ":�F��E�F 0 msg  � ��� m  #&�� ���  S S H - C h e c k� ��� b  &/��� b  &+��� o  &'�D�D  0 isservicealive isServiceAlive� 1  '*�C
�C 
spac� m  +.�� ���  i s   a c t i v e� ��B� b  /6��� o  /2�A�A 0 qmsg qMsg� m  25�� ���  u p   n o w !�B  �E  � ��@� I ;F�?��>
�? .sysodelanull��� ��� nmbr� l ;B��=�<� ^  ;B��� o  ;@�;�; 0 	countdown  � m  @A�:�: �=  �<  �>  �@  �I  � k  I��� ��� r  IU��� J  IQ�� ��� m  IL�� ���  L a u n c h� ��9� m  LO�� ���  S t o p�9  � o      �8�8 0 btnopt btnOpt� ��7� Q  V����� k  Y��� ��� r  Yn��� b  Yj��� b  Yf��� b  Y`��� o  Y\�6�6 0 qmsg qMsg� m  \_�� ���    i n  � o  `e�5�5 0 	countdown  � m  fi�� ���    s e c o n d s !� o      �4�4 0 qmsg qMsg� ��� r  o���� n  o���� 1  ���3
�3 
bhit� l o���2�1� I o��0��
�0 .sysodlogaskr        TEXT� o  or�/�/ 0 qmsg qMsg� �.��
�. 
btns� o  ux�-�- 0 btnopt btnOpt� �,��
�, 
dflt� m  {~�� ���  L a u n c h� �+��
�+ 
appr� o  ���*�* 0 titlemsg  � �)��(
�) 
givu� o  ���'�' 0 	countdown  �(  �2  �1  � o      �&�& 0 yesorno yesOrNo� ��%� Z  �����$�#� = ����� o  ���"�" 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ���!�!  �$  �#  �%  � R      � ��
�  .ascrerr ****      � ****�  �  � L  ����  �7  �J  1 ��� l ������  �  �  � ��� l ������  � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  ����� n  ����� 1  ���
� 
psxp� l ������ m  ���� ���  / A p p l i c a t i o n s /�  �  � o      �� 0 apppath appPath� ��� l ������  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ��� � I ����
� .sysooffslong    ��� null�   �
� 
psof o  ���� 0 program   ��
� 
psin o  ���� 0 apppath appPath�    o      �� 0 
nameoffset 
nameOffset�  l ����   6 0msg("info:", "Msg", "nameoffset" " & nameOffset)    �		 ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t ) 

 r  �� n  �� 7 ���

�
 
ctxt m  ���	�	  l ���� \  �� o  ���� 0 
nameoffset 
nameOffset m  ���� �  �   o  ���� 0 apppath appPath o      �� 0 
folderpath 
folderPath  l ����   6 0msg("info:", "Msg", "folderpath: " & folderPath)    � ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )  Q  �@ l �$ ! k  �$"" #$# I �
�%� 
� .sysoexecTEXT���     TEXT% b  �&'& b  �()( b  ��*+* o  ������ 0 
folderpath 
folderPath+ o  ������ 0 program  ) m  �,, �--  . a p p' m  .. �// N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�   $ 010 I ��2��
�� .sysodelanull��� ��� nmbr2 m  ���� ��  1 3��3 O $454 I #������
�� .miscactvnull��� ��� null��  ��  5 4  ��6
�� 
capp6 o  ���� 0 program  ��    ( "start program up in the background   ! �77 D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d R      ������
�� .ascrerr ****      � ****��  ��   I  ,@��8���� 0 msg  8 9:9 m  -0;; �<<   S S H - C h e c k :   E r r o r: =>= m  03?? �@@ 
 E r r o r> A��A b  3<BCB m  36DD �EE N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  C o  6;���� 0 program  ��  ��   F��F l AA��������  ��  ��  ��  ��       ��G   ! ' 1 7 < A����HIJKLMNOPQRSTUVWX��  G �������������������������������������������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 getosxnumber getOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****
�� boovfals
�� boovfalsH �� V����YZ��
�� .aevtodocnull  �    alis�� 0 these_items  ��  Y ������ 0 these_items  �� 0 prog  Z  d�� w���� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j I �� �����[\���� 0 resetprogram resetProgram��  ��  [  \  �� fEc  J �� �����]^���� 0 getosxnumber getOSXNumber��  ��  ]  ^  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&K �� �����_`���� 0 
setdisplay 
setDisplay��  ��  _  ` ���������� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  L �� �����ab���� 0 
fileexists 
FileExists�� ��c�� c  ���� 0 thefile theFile��  a ���� 0 thefile theFileb ����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY hUOfM ������de���� 0 folderexists FolderExists�� ��f�� f  ���� 0 	thefolder 	theFolder��  d ���� 0 	thefolder 	theFoldere ����
�� 
cfol
�� .coredoexbool       obj �� � *�/j  eY hUOfN ��$����gh���� 0 	updatexml 	updateXML�� ��i�� i  ���� 0 programname programName��  g �������� 0 programname programName�� 
0 update  �� 0 update2  h ����@����K\mx|�������� 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOfO �������jk���� 0 setupservice setupService��  ��  j ���� 0 ser  k 
�����~���}�|�{��� 0 
fileexists 
FileExists
� 
spac
�~ .sysoexecTEXT���     TEXT
�} 
bool�|  �{  �� r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOfP �z��y�xlm�w�z "0 setservicelevel setServiceLevel�y  �x  l �v�v 
0 slevel  m 	�u�t��s���r�q�u 0 
fileexists 
FileExists
�t 
spac
�s .sysoexecTEXT���     TEXT�r  �q  �w z*b  k+  e  N Bb  �%�%j E�O��  eEc  	Y ��  fEc  	Y hOb  	O)jhW X  hY hOb  	�  fEc  	Y hOb  	Q �p�o�nno�m�p 0 setupprogram setupProgram�o  �n  n �l�l 0 prog  o 
�k�j0�i;@�h�g�fP�k 0 
fileexists 
FileExists
�j 
spac
�i .sysoexecTEXT���     TEXT
�h 
bool�g  �f  �m r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOfR �e[�d�cpq�b�e $0 sshchecksettings sshCheckSettings�d  �c  p �a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�a 0 configfolder configFolder�` 0 
configpath 
configPath�_ 
0 mypath  �^ 0 
supportloc 
supportLoc�] 0 cmdmakepath cmdMakePath�\ 0 alertaction alertAction�[ *0 cmdunzipalertaction cmdUnzipAlertAction�Z .0 cmdcleanupalertaction cmdCleanUpAlertAction�Y 0 qmsg qMsg�X 0 btnopt btnOpt�W 0 yesorno yesOrNo�V 0 
dnworkflow 
DNWorkflow�U (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�T ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflowq Adl�S�R�Q�P�O�N��M��L�K�J�I���H��G�F�E4CEYfu}���D�C��B��A�@�?�>����=����<��� .2�;�:�9TZ]�S 0 folderexists FolderExists�R "0 setservicelevel setServiceLevel�Q 0 
fileexists 
FileExists
�P 
bool�O 0 getosxnumber getOSXNumber�N 
�M 
spac
�L 
rtyp
�K 
TEXT
�J .earsffdralis        afdr
�I 
psxp
�H .sysoexecTEXT���     TEXT
�G .sysodelanull��� ��� nmbr�F  �E  
�D 
btns
�C 
dflt
�B 
appr
�A 
givu�@ <
�? .sysodlogaskr        TEXT
�> 
bhit
�= 
strq�< 0 msg  �; 0 setupservice setupService�: 0 setupprogram setupProgram�9 0 
setdisplay 
setDisplay�b��E�O�%E�O*�k+  
*j+ Y hO*�k+ f 
 *b  k+ f �&
 *b  k+ f �&
 *b  k+ f 	 *j+ ��&�&_�%�%�%�%E�O)��l �,�%E�O�*�k+ f  a �%�%E�O�j Oa j Y hO*b  k+ f  : &�a %�%a %j O�a %�%b  %j W X  hOa j Y hO*b  k+ f 	 *j+ ��& �a E�O�a %�%�%�%a %j Oa j O*�a %�%k+ e  (�a %�%�%E�O�j O�a %�%�%E�O�j Y hOa E�Oa  a !lvE�O ^�a "�a #a $a %a &a 'b  a ( � )a *,E�O�a +  �a ,%a -a .,%j Y hO)jhO*a /a 0a 1m+ 2W X  hOa j Y hO*�k+ e 	 *b  k+ f �& _a 3E�O�a 4%�%�%E�O�a 5%�%�%E�O�a 6%�%�%�%a 7%j Oa j O*�a 8%�%k+ e  �j O�j Y hY hW "X  *a 9a :�m+ 2O*j+ ;O*j+ <OfOb  m!j O*j+ =Ob  e  *a >�a ?%a @m+ 2Okj Y hY hO*j+ ;e 	 *j+ <e �& eY hOfS �8}�7�6rs�5�8 
0 notify  �7 �4t�4 t  �3�2�1�3 	0 title  �2 0 subtitle  �1 0 message  �6  r �0�/�.�0 	0 title  �/ 0 subtitle  �. 0 message  s �-���,������+��*�)�(�����'
�- 
ctxt
�, 
strq
�+ 
spac
�* .sysoexecTEXT���     TEXT�)  �(  �' 0 msg  �5 ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ T �&�%�$uv�#�& 0 msg  �% �"w�" w  �!� ��! 0 msgtitle msgTitle�  0 subtitle  � 0 message  �$  u ���� 0 msgtitle msgTitle� 0 subtitle  � 0 message  v ������ 
0 notify  
� 
appr
� .sysodlogaskr        TEXT�  �  �# +b  e  *���m+  Y  ��l W 	X  hU �%��xy�� 0 isapprunning isAppRunning�  �  x  y ����
� 
capp
� 
prun�  �  � * *�b  / *�,e  eY hUW X  hOfV �<��z{��  0 killrunningapp killRunningApp�  �  z  { �
�	���RT�
�
 
capp
�	 
prun
� .aevtquitnull��� ��� null�  �  
� .sysoexecTEXT���     TEXT� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j W �[��|}�� 0 servicealive serviceAlive�  �  | � �����  
0 sshcon  �� 0 cmdssh cmdSSH�� 
0 tunnel  } 
i��������������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  � g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOjX �������~��
�� .aevtoappnull  �   � ****��  ��  ~   G��������������������������.BFI��Q������`����������jp�������������������������������������������,.������;?D�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
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