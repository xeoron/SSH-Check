FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   XR
	Name: SSH-Check
	Version: 0.7.6
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
 	 V e r s i o n :   0 . 7 . 6 
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
�� boovfals M ^ X false for local and true for global search to see if there is a connection to 'service'    N � P P �   f a l s e   f o r   l o c a l   a n d   t r u e   f o r   g l o b a l   s e a r c h   t o   s e e   i f   t h e r e   i s   a   c o n n e c t i o n   t o   ' s e r v i c e ' K  Q R Q l      S T U S j    "�� V�� 
0 osx OSX V m    !����  T &  which OSX version is being used?    U � W W @ w h i c h   O S X   v e r s i o n   i s   b e i n g   u s e d ? R  X Y X l     ��������  ��  ��   Y  Z [ Z i   # & \ ] \ I     �� ^��
�� .aevtodocnull  �    alis ^ o      ���� 0 these_items  ��   ] k     d _ _  ` a ` l      �� b c��   b�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     c � d d   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   a  e f e l     ��������  ��  ��   f  g h g r      i j i m      k k � l l   j o      ���� 0 prog   h  m n m r    	 o p o c     q r q o    ���� 0 these_items   r m    ��
�� 
TEXT p o      ���� 0 prog   n  s t s l  
 
��������  ��  ��   t  u v u l  
 
�� w x��   w d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    x � y y � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e v  z { z r   
  | } | m   
  ~ ~ �    : } 1    ��
�� 
txdl {  � � � r     � � � n     � � � 4    �� �
�� 
citm � m    ����  � o    ���� 0 prog   � o      ���� 0 prog   �  � � � r     � � � m     � � � � �  . � 1    ��
�� 
txdl �  � � � r    # � � � n    ! � � � 4    !�� �
�� 
citm � m     ����  � o    ���� 0 prog   � o      ���� 0 prog   �  � � � I   $ )�������� $0 sshchecksettings sshCheckSettings��  ��   �  � � � I   * 0�� ����� 0 	updatexml 	updateXML �  ��� � o   + ,���� 0 prog  ��  ��   �  � � � s   1 9 � � � o   1 2���� 0 prog   � o      ���� 0 program   �  � � � l  : :��������  ��  ��   �  � � � I   : ?�������� 0 
setdisplay 
setDisplay��  ��   �  � � � I   @ T�� ����� 0 msg   �  � � � m   A B � � � � �  S S H - C h e c K �  � � � b   B I � � � m   B C � � � � �  S e t t i n g   � o   C H���� 0 program   �  ��� � b   I P � � � m   I J � � � � � & N o w   s e t   t o   s t a r t u p   � o   J O���� 0 program  ��  ��   �  � � � I  U ^�� ���
�� .sysodelanull��� ��� nmbr � o   U Z���� 0 	countdown  ��   �  ��� � I  _ d������
�� .aevtoappnull  �   � ****��  ��  ��   [  � � � l     ��������  ��  ��   �  � � � i   ' * � � � I      �������� 0 resetprogram resetProgram��  ��   � k      � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  ��� � r      � � � m     ��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   �  � � � l     ��������  ��  ��   �  � � � i   + . � � � I      �������� 0 setosxnumber setOSXNumber��  ��   � k      � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  � � � s     � � � l    ����� � c     � � � l    ����� � n     � � � 4    �� �
�� 
citm � m    ����  � l    ����� � n     � � � 1    ��
�� 
sisv � l    ����� � I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m    ��
�� 
nmbr��  ��   � o      ���� 
0 osx OSX �  ��� � l   �� � ���   � ) #display dialog "osx is this " & OSX    � � � � F d i s p l a y   d i a l o g   " o s x   i s   t h i s   "   &   O S X��   �  � � � l     ��������  ��  ��   �  � � � i   / 2 � � � I      �������� 0 
setdisplay 
setDisplay��  ��   � k     O � �  � � � I     �������� 0 setosxnumber setOSXNumber��  ��   �  ��� � Z    O � ��� � � G    ; � � � @     � � � o    ���� 
0 osx OSX � m    ���� 	 � l   9 ����� � F    9 � � � F    ( � � � =    � � � o    �� 
0 osx OSX � m    �~�~  � =   & �  � I    $�}�|�} 0 
fileexists 
FileExists �{ o     �z�z 0 dnclocation DNCLocation�{  �|    m   $ %�y
�y boovtrue � =  + 7 I   + 5�x�w�x 0 
fileexists 
FileExists �v o   , 1�u�u 0 dnca DNCA�v  �w   m   5 6�t
�t boovtrue��  ��   � r   > E m   > ?�s
�s boovtrue o      �r�r *0 displaynoticecenter DisplayNoticeCenter��   � r   H O	
	 m   H I�q
�q boovfals
 o      �p�p *0 displaynoticecenter DisplayNoticeCenter��   �  l     �o�n�m�o  �n  �m    i   3 6 I      �l�k�l 0 
fileexists 
FileExists �j o      �i�i 0 thefile theFile�j  �k   k       O      Z    �h�g I   �f�e
�f .coredoexnull���     **** 4    �d
�d 
file o    �c�c 0 thefile theFile�e   L     m    �b
�b boovtrue�h  �g   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+   x�BSystem Events.app                                               |��A��        ����  	                CoreServices    �l�U      �A�9     x�B x�? x�>  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �a L     m    �`
�` boovfals�a    !  l     �_�^�]�_  �^  �]  ! "#" i   7 :$%$ I      �\&�[�\ 0 folderexists FolderExists& '�Z' o      �Y�Y 0 	thefolder 	theFolder�Z  �[  % k     (( )*) O     +,+ Z    -.�X�W- I   �V/�U
�V .coredoexnull���     ****/ 4    �T0
�T 
cfol0 o    �S�S 0 	thefolder 	theFolder�U  . L    11 m    �R
�R boovtrue�X  �W  , m     22�                                                                                  sevs  alis    �  Thneed                     �lpH+   x�BSystem Events.app                                               |��A��        ����  	                CoreServices    �l�U      �A�9     x�B x�? x�>  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��  * 3�Q3 L    44 m    �P
�P boovfals�Q  # 565 l     �O�N�M�O  �N  �M  6 787 i   ; >9:9 I      �L;�K�L 0 	updatexml 	updateXML; <�J< o      �I�I 0 programname programName�J  �K  : k     �== >?> Z     �@A�H�G@ =    BCB I     
�FD�E�F 0 
fileexists 
FileExistsD E�DE o    �C�C 0 xmlsettings XMLSettings�D  �E  C m   
 �B
�B boovtrueA Q    �FG�AF k    xHH IJI r    'KLK I   %�@M�?
�@ .sysoexecTEXT���     TEXTM b    !NON b    PQP b    RSR b    TUT o    �>�> 0 xmlsettings XMLSettingsU 1    �=
�= 
spacS m    VV �WW  - u pQ 1    �<
�< 
spacO n     XYX 1     �;
�; 
strqY o    �:�: 0 programname programName�?  L o      �9�9 
0 update  J Z[Z Z   ( s\]�8^\ =  ( +_`_ o   ( )�7�7 
0 update  ` m   ) *aa �bb  T r u e] L   . 0cc m   . /�6
�6 boovtrue�8  ^ k   3 sdd efe r   3 Hghg I  3 F�5i�4
�5 .sysoexecTEXT���     TEXTi b   3 Bjkj b   3 >lml b   3 <non b   3 :pqp o   3 8�3�3 0 xmlsettings XMLSettingsq 1   8 9�2
�2 
spaco m   : ;rr �ss  - cm 1   < =�1
�1 
spack n   > Atut 1   ? A�0
�0 
strqu o   > ?�/�/ 0 programname programName�4  h o      �.�. 
0 update  f vwv r   I ^xyx I  I \�-z�,
�- .sysoexecTEXT���     TEXTz b   I X{|{ b   I T}~} b   I R� b   I P��� o   I N�+�+ 0 xmlsettings XMLSettings� 1   N O�*
�* 
spac� m   P Q�� ���  - u p~ 1   R S�)
�) 
spac| n   T W��� 1   U W�(
�( 
strq� o   T U�'�' 0 programname programName�,  y o      �&�& 0 update2  w ��%� Z   _ s���$�#� F   _ j��� =  _ b��� o   _ `�"�" 
0 update  � m   ` a�� ���  T r u e� =  e h��� o   e f�!�! 0 update2  � m   f g�� ���  T r u e� L   m o�� m   m n� 
�  boovtrue�$  �#  �%  [ ��� R   t x���
� .ascrerr ****      � ****�  �  �  G R      ���
� .ascrerr ****      � ****�  �  �A  �H  �G  ? ��� L   � ��� m   � ��
� boovfals�  8 ��� l     ����  �  �  � ��� i   ? B��� I      ���� 0 setupservice setupService�  �  � k     q�� ��� Z     S����� =    ��� I     
���� 0 
fileexists 
FileExists� ��� o    �� 0 xmlsettings XMLSettings�  �  � m   
 �

�
 boovtrue� Q    O���	� k    F�� ��� r    !��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    �� 0 xmlsettings XMLSettings� 1    �
� 
spac� m    �� ���  - s�  � o      �� 0 ser  � ��� Z   " A����� F   " /��� H   " &�� E   " %��� o   " #�� 0 ser  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *� �  0 ser  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3���� 0 ser  � o      ���� 0 service  � ���� L   ; =�� m   ; <��
�� boovtrue��  �  �  � ���� R   B F������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �	  �  �  � ��� Z   T n������� =  T [��� o   T Y���� 0 service  � m   Y Z�� ���  � s   ^ j��� o   ^ c���� 0 servicebackup serviceBackup� o      ���� 0 service  ��  ��  � ���� L   o q�� m   o p��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   C F��� I      �������� "0 setservicelevel setServiceLevel��  ��  � k     �� ��� l     ������  � ^ XShould the ssh tunnel to service X be run by the current user or any user on the system?   � ��� � S h o u l d   t h e   s s h   t u n n e l   t o   s e r v i c e   X   b e   r u n   b y   t h e   c u r r e n t   u s e r   o r   a n y   u s e r   o n   t h e   s y s t e m ?� ��� l     ������  � < 6True is to search globally and False to search locally   � ��� l T r u e   i s   t o   s e a r c h   g l o b a l l y   a n d   F a l s e   t o   s e a r c h   l o c a l l y� ��� Z     b������� =    ��� I     
������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m   
 ��
�� boovtrue� Q    ^����� k    U�� ��� r    !��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    ���� 0 xmlsettings XMLSettings� 1    ��
�� 
spac� m    �� ���  - s l��  � o      ���� 
0 slevel  �    Z   " I =  " % o   " #���� 
0 slevel   m   # $ �		  g l o b a l l y r   ( /

 m   ( )��
�� boovtrue o      ���� 0 servicelevel ServiceLevel  =  2 5 o   2 3���� 
0 slevel   m   3 4 �  l o c a l l y �� r   8 ? m   8 9��
�� boovfals o      ���� 0 servicelevel ServiceLevel��   r   B I m   B C��
�� boovfals o      ���� 0 servicelevel ServiceLevel  l  J J����   = 7msg("service level", "", slevel & " = " & ServiceLevel)    � n m s g ( " s e r v i c e   l e v e l " ,   " " ,   s l e v e l   &   "   =   "   &   S e r v i c e L e v e l )  L   J P o   J O���� 0 servicelevel ServiceLevel �� R   Q U������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  �  !  l  c c��������  ��  ��  ! "#" Z   c x$%����$ =  c j&'& o   c h���� 0 servicelevel ServiceLevel' m   h i(( �))  % r   m t*+* m   m n��
�� boovfals+ o      ���� 0 servicelevel ServiceLevel��  ��  # ,��, L   y -- o   y ~���� 0 servicelevel ServiceLevel��  � ./. l     ��������  ��  ��  / 010 i   G J232 I      �������� 0 setupprogram setupProgram��  ��  3 k     q44 565 Z     S78����7 =    9:9 I     
��;���� 0 
fileexists 
FileExists; <��< o    ���� 0 xmlsettings XMLSettings��  ��  : m   
 ��
�� boovtrue8 Q    O=>��= k    F?? @A@ r    !BCB I   ��D��
�� .sysoexecTEXT���     TEXTD b    EFE b    GHG o    ���� 0 xmlsettings XMLSettingsH 1    ��
�� 
spacF m    II �JJ  - p��  C o      ���� 0 prog  A KLK Z   " AMN����M F   " /OPO H   " &QQ E   " %RSR o   " #���� 0 prog  S m   # $TT �UU  N o n eP H   ) -VV E   ) ,WXW o   ) *���� 0 prog  X m   * +YY �ZZ  N k   2 =[[ \]\ s   2 :^_^ o   2 3���� 0 prog  _ o      ���� 0 program  ] `��` L   ; =aa m   ; <��
�� boovtrue��  ��  ��  L b��b R   B F������
�� .ascrerr ****      � ****��  ��  ��  > R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  6 cdc Z   T nef����e =  T [ghg o   T Y���� 0 program  h m   Y Zii �jj  f s   ^ jklk o   ^ c���� 0 programbackup programBackupl o      ���� 0 program  ��  ��  d m��m L   o qnn m   o p��
�� boovfals��  1 opo l     ��������  ��  ��  p qrq i   K Nsts I      �������� $0 sshchecksettings sshCheckSettings��  ��  t l   uvwu k    xx yzy r     {|{ m     }} �~~  . s s h - c h e c k| o      ���� 0 configfolder configFolderz � r    	��� b    ��� m    �� ���  ~ /� o    ���� 0 configfolder configFolder� o      ���� 0 
configpath 
configPath� ��� l  
 
��������  ��  ��  � ��� Z   
�������� G   
 Q��� G   
 #��� =  
 ��� I   
 ������� 0 folderexists FolderExists� ���� o    ���� 0 
configpath 
configPath��  ��  � m    ��
�� boovfals� =   !��� I    ������ 0 
fileexists 
FileExists� ��~� o    �}�} 0 xmlsettings XMLSettings�~  �  � m     �|
�| boovfals� l  & O��{�z� F   & O��� =  & -��� o   & +�y�y 
0 osx OSX� m   + ,�x�x � l  0 M��w�v� G   0 M��� =  0 <��� I   0 :�u��t�u 0 
fileexists 
FileExists� ��s� o   1 6�r�r 0 dnclocation DNCLocation�s  �t  � m   : ;�q
�q boovfals� =  ? K��� I   ? I�p��o�p 0 
fileexists 
FileExists� ��n� o   @ E�m�m 0 dnca DNCA�n  �o  � m   I J�l
�l boovfals�w  �v  �{  �z  � k   T��� ��� l  T T�k���k  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  T T�j���j  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   T _��� b   T ]��� b   T [��� b   T Y��� b   T W��� m   T U�� ���  c d  � o   U V�i�i 0 
configpath 
configPath� 1   W X�h
�h 
spac� m   Y Z�� ���  & &� 1   [ \�g
�g 
spac� o      �f�f 
0 mypath  � ��� r   ` m��� b   ` k��� l  ` i��e�d� n   ` i��� 1   g i�c
�c 
psxp� l  ` g��b�a� I  ` g�`��
�` .earsffdralis        afdr�  f   ` a� �_��^
�_ 
rtyp� m   b c�]
�] 
TEXT�^  �b  �a  �e  �d  � m   i j�� ��� " C o n t e n t s / S u p p o r t /� o      �\�\ 0 
supportloc 
supportLoc� ��� l  n n�[�Z�Y�[  �Z  �Y  � ��� Q   n����� k   q��� ��� Z   q ����X�W� =  q y��� I   q w�V��U�V 0 folderexists FolderExists� ��T� o   r s�S�S 0 
configpath 
configPath�T  �U  � m   w x�R
�R boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~�Q
�Q 
spac� o    ��P�P 0 
configpath 
configPath� o      �O�O 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ��N��M
�N .sysoexecTEXT���     TEXT� o   � ��L�L 0 cmdmakepath cmdMakePath�M  �  create path   � ���  c r e a t e   p a t h� ��K� l  � ����� I  � ��J��I
�J .sysodelanull��� ��� nmbr� m   � ��� ?�      �I  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�K  �X  �W  � ��� l  � ��H�G�F�H  �G  �F  � ��� Z   � � �E�D  =  � � I   � ��C�B�C 0 
fileexists 
FileExists �A o   � ��@�@ 0 xmlsettings XMLSettings�A  �B   m   � ��?
�? boovfals k   � �  l  � ��>	
�>  	 g anote: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    
 � � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,    l  � ��=�=   � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it    � � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t  Q   � ��< k   � �  I  � ��;�:
�; .sysoexecTEXT���     TEXT b   � � b   � � b   � � o   � ��9�9 
0 mypath   m   � � �    c p   o   � ��8�8 0 
supportloc 
supportLoc m   � �!! �"" " i c o n f i g S S H C . p y   . /�:   #�7# I  � ��6$�5
�6 .sysoexecTEXT���     TEXT$ b   � �%&% b   � �'(' b   � �)*) o   � ��4�4 
0 mypath  * m   � �++ �,,  c h m o d   + x( 1   � ��3
�3 
spac& o   � ��2�2 0 xmlsettings XMLSettings�5  �7   R      �1�0�/
�1 .ascrerr ****      � ****�0  �/  �<   -�.- I  � ��-.�,
�- .sysodelanull��� ��� nmbr. m   � �// ?�      �,  �.  �E  �D  � 010 l  � ��+�*�)�+  �*  �)  1 2�(2 Z   ��34�'�&3 =  � �565 o   � ��%�% 
0 osx OSX6 m   � ��$�$ 4 l  ��7897 k   ��:: ;<; Z   ��=>�#�"= =  � �?@? I   � ��!A� �! 0 
fileexists 
FileExistsA B�B o   � ��� 0 dnca DNCA�  �   @ m   � ��
� boovfals> k   ��CC DED l  � ��FG�  F ? 9setup Automator Display Notification Center Action script   G �HH r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p tE IJI r   � �KLK m   � �MM �NN � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !L o      �� 0 qmsg qMsgJ OPO r   �QRQ J   �SS TUT m   �VV �WW  Y e sU X�X m  YY �ZZ  N o�  R o      �� 0 btnopt btnOptP [\[ Q  	<]^�] r  3_`_ n  1aba 1  -1�
� 
bhitb l -c��c I -�de
� .sysodlogaskr        TEXTd o  �� 0 qmsg qMsge �fg
� 
btnsf o  �� 0 btnopt btnOptg �hi
� 
dflth m  jj �kk  N oi �lm
� 
apprl m  nn �oo > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l pm �p�
� 
givup ]   )qrq o   %�� 0 	countdown  r m  %(�� <�  �  �  ` o      �
�
 0 yesorno yesOrNo^ R      �	��
�	 .ascrerr ****      � ****�  �  �  \ s�s l =�tuvt Z  =�wx��w = =Byzy o  =>�� 0 yesorno yesOrNoz m  >A{{ �||  Y e sx k  E�}} ~~ r  EJ��� m  EH�� ��� X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p� o      �� 0 alertaction alertAction ��� Q  Kj���� I Na� ���
�  .sysoexecTEXT���     TEXT� b  N]��� b  NY��� b  NW��� b  NU��� b  NS��� o  NO���� 
0 mypath  � m  OR�� ���  c p  � o  ST���� 0 
supportloc 
supportLoc� o  UV���� 0 alertaction alertAction� 1  WX��
�� 
spac� m  Y\�� ���  . /��  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ��� I kr�����
�� .sysodelanull��� ��� nmbr� m  kn�� ?�      ��  � ��� l ss��������  ��  ��  � ��� Z  s�������� = s���� I  s������� 0 
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
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  �  �  u   end of "Yes" go setup DNCA   v ��� 4 e n d   o f   " Y e s "   g o   s e t u p   D N C A�  �#  �"  < ��� l ����������  ��  ��  � ���� Z  ��������� F  ���� = ���� I  � ������� 0 folderexists FolderExists� ���� o  ������ 0 
configpath 
configPath��  ��  � m   ��
�� boovtrue� = ��� I  ������� 0 
fileexists 
FileExists� ���� o  ���� 0 dnclocation DNCLocation��  ��  � m  ��
�� boovfals� k  ���    l ����   0 *setup display notification center workflow    � T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w  r   m  		 �

 B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p o      ���� 0 
dnworkflow 
DNWorkflow  r  ' b  % b  # b  ! o  ���� 
0 mypath   m    �  u n z i p   - u 1  !"��
�� 
spac o  #$���� 0 
dnworkflow 
DNWorkflow o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow  r  (3 b  (1 b  (/ b  (-  o  ()���� 
0 mypath    m  ),!! �""   r m   - r f   _ _ M A C O S X / 1  -.��
�� 
spac o  /0���� 0 
dnworkflow 
DNWorkflow o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow #$# Q  4S%&��% I 7J��'��
�� .sysoexecTEXT���     TEXT' b  7F()( b  7B*+* b  7@,-, b  7>./. b  7<010 o  78���� 
0 mypath  1 m  8;22 �33  c p  / o  <=���� 0 
supportloc 
supportLoc- o  >?���� 0 
dnworkflow 
DNWorkflow+ 1  @A��
�� 
spac) m  BE44 �55  . /��  & R      ������
�� .ascrerr ****      � ****��  ��  ��  $ 676 I T[��8��
�� .sysodelanull��� ��� nmbr8 m  TW99 ?�      ��  7 :;: l \\��������  ��  ��  ; <��< Z  \�=>����= = \j?@? I  \h��A���� 0 
fileexists 
FileExistsA B��B b  ]dCDC b  ]bEFE o  ]^���� 0 
configpath 
configPathF m  ^aGG �HH  /D o  bc���� 0 
dnworkflow 
DNWorkflow��  ��  @ m  hi��
�� boovtrue> Q  m�IJ��I k  p{KK LML I pu��N��
�� .sysoexecTEXT���     TEXTN o  pq���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  M O��O I v{��P��
�� .sysoexecTEXT���     TEXTP o  vw���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  J R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��  ��  ��  8 > 8OS X.8 only Display Noticafaction Center install support   9 �QQ p O S   X . 8   o n l y   D i s p l a y   N o t i c a f a c t i o n   C e n t e r   i n s t a l l   s u p p o r t�'  �&  �(  � R      ������
�� .ascrerr ****      � ****��  ��  � k  ��RR STS I  ����U���� 0 msg  U VWV m  ��XX �YY  S e t u p   F a i l e d :W Z[Z m  ��\\ �]]  [ ^��^ o  ������ 0 
configpath 
configPath��  ��  T _`_ I  ��������� 0 setupservice setupService��  �  ` aba I  ���~�}�|�~ 0 setupprogram setupProgram�}  �|  b c�{c L  ��dd m  ���z
�z boovfals�{  � efe l ���y�x�w�y  �x  �w  f ghg l ���vij�v  i n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   j �kk � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .h lml I ���un�t
�u .sysodelanull��� ��� nmbrn ^  ��opo o  ���s�s 0 	countdown  p m  ���r�r �t  m qrq I  ���q�p�o�q 0 
setdisplay 
setDisplay�p  �o  r s�ns Z  ��tu�m�lt = ��vwv o  ���k�k *0 displaynoticecenter DisplayNoticeCenterw m  ���j
�j boovtrueu k  ��xx yzy I  ���i{�h�i 0 msg  { |}| m  ��~~ �   S S H - C h e c k :   S e t u p} ��� b  ����� o  ���g�g 0 
configpath 
configPath� m  ���� ��� ,   s e t t i n g s   a r e   c u r r e n t .� ��f� m  ���� ��� L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�f  �h  z ��e� I ���d��c
�d .sysodelanull��� ��� nmbr� m  ���b�b �c  �e  �m  �l  �n  ��  ��  � ��� l ���a�`�_�a  �`  �_  � ��� l ���^���^  � # loadSettings from config file   � ��� : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e� ��� I  ���]�\�[�] "0 setservicelevel setServiceLevel�\  �[  � ��� Z  ����Z�Y� F  ���� = ����� I  ���X�W�V�X 0 setupservice setupService�W  �V  � m  ���U
�U boovtrue� = ���� I  ��T�S�R�T 0 setupprogram setupProgram�S  �R  � m  �Q
�Q boovtrue� L  �� m  �P
�P boovtrue�Z  �Y  � ��� l �O�N�M�O  �N  �M  � ��L� L  �� m  �K
�K boovfals�L  v  return bool   w ���  r e t u r n   b o o lr ��� l     �J�I�H�J  �I  �H  � ��� i   O R��� I      �G��F�G 
0 notify  � ��� o      �E�E 0 msgtitle msgTitle� ��� o      �D�D 0 msgsubtitle msgSubtitle� ��C� o      �B�B 0 message  �C  �F  � Z     ����A�� @     ��� o     �@�@ 
0 osx OSX� m    �?�? 	� l  
 ���� I  
 �>��
�> .sysonotfnull��� ��� TEXT� o   
 �=�= 0 message  � �<��
�< 
appr� o    �;�; 0 msgtitle msgTitle� �:��9
�: 
subt� o    �8�8 0 msgsubtitle msgSubtitle�9  � h b use OS X Noticafaction Center: OS x.9 http://macosxautomation.com/mavericks/notifications/01.html   � ��� �   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r :   O S   x . 9   h t t p : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l�A  � l   ����� k    ��� ��� l    �7���7  � 	OS X 8 make use of System Notifacation Center
     Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    � ���    	 O S   X   8   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
           R e q u i r e s :   S E T U P   
   	 1 )   a u t o m a t i o n   w o r k f l o w   t o   b e   i n s t a l l e d   f r o m   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 / 
 	 2 )   C r e a t e   a   n e w   w o r k f l o w   i n   A u t o m a t o r   c o n t a i n i n g   o n l y   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 3 )   I n   t h e   v a r i a b l e s   s e c t i o n   a t   t h e   b o t t o m   o f   t h e   w o r k f l o w   c o n s t r u c t i o n   a r e a   i n   A u t o m a t o r ' s   w i n d o w ,   c r e a t e   t h r e e   v a r i a b l e s   n a m e d   t i t l e ,   s u b t i t l e ,   a n d   m e s s a g e . 
 	 4 )   G i v e   m e s s a g e   a   d e f a u l t   v a l u e   l i k e   " N o t i f i c a t i o n   s e n t . "   Y o u   c a n   l e a v e   t h e   d e f a u l t   v a l u e s   o t h e r   t w o   b l a n k . 
 	 5 )   D r a g   e a c h   v a r i a b l e   t o   i t s   c o r r e s p o n d i n g   f i e l d   i n   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 6 )   S a v e   t h e   w o r k f l o w   a s   D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w .   A   g o o d   p l a c e   t o   s a v e   i t   i s   i n   ~ / . s s h - c h e c k   ( c r e a t e   t h e   f o l d e r   i f   n e c e s s a r y ) . 
 
 	 N o w   y o u   c a n   d i s p l a y   a   n o t i f i c a t i o n   f r o m   t h e   c o m m a n d   l i n e   u s i n g   t h e   f o l l o w i n g   c o m m a n d : 
 	 	 a u t o m a t o r   - D   t i t l e = ' T i t l e   t e x t '   - D   s u b t i t l e = ' S u b t i t l e   t e x t '   - D   m e s s a g e = ' M e s s a g e   t e x t '   ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 
  � ��� Z   +���6�5� >   ��� c    ��� o    �4�4 0 msgtitle msgTitle� m    �3
�3 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   t i t l e =� n    $��� 1   " $�2
�2 
strq� l   "��1�0� c    "��� o     �/�/ 0 msgtitle msgTitle� m     !�.
�. 
ctxt�1  �0  � o      �-�- 0 msgtitle msgTitle�6  �5  � ��� Z  , A���,�+� >  , 1��� c   , /��� o   , -�*�* 0 msgsubtitle msgSubtitle� m   - .�)
�) 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   s u b t i t l e =� n   5 :��� 1   8 :�(
�( 
strq� l  5 8��'�&� c   5 8��� o   5 6�%�% 0 msgsubtitle msgSubtitle� m   6 7�$
�$ 
ctxt�'  �&  � o      �#�# 0 msgsubtitle msgSubtitle�,  �+  � ��� Z  B W���"�!� >  B G��� c   B E��� o   B C� �  0 message  � m   C D�
� 
ctxt� m   E F�� ���  � r   J S��� b   J Q��� m   J K�� �      - D   m e s s a g e =� n   K P 1   N P�
� 
strq l  K N�� c   K N o   K L�� 0 message   m   L M�
� 
ctxt�  �  � o      �� 0 message  �"  �!  � � Q   X �	 I  [ x�
�
� .sysoexecTEXT���     TEXT
 b   [ t b   [ r b   [ p b   [ j b   [ h b   [ f b   [ d b   [ b b   [ ` b   [ ^ m   [ \ �    a u t o m a t o r 1   \ ]�
� 
spac o   ^ _�� 0 msgtitle msgTitle 1   ` a�
� 
spac o   b c�� 0 msgsubtitle msgSubtitle 1   d e�
� 
spac o   f g�� 0 message   1   h i�
� 
spac o   j o�� 0 dnclocation DNCLocation 1   p q�
� 
spac m   r s!! �""  2 > / d e v / n u l l�   R      ���

� .ascrerr ****      � ****�  �
  	 k   � �## $%$ r   � �&'& m   � �(( �)) 
 f a l s e' o      �	�	 *0 displaynoticecenter DisplayNoticeCenter% *�* I   � ��+�� 0 msg  + ,-, m   � �.. �//   S S H - C h e c k :   E r r o r- 010 m   � �22 �33  1 4�4 b   � �565 m   � �77 �88 � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  6 o   � ��� 0 dnclocation DNCLocation�  �  �  �  � c ]if OSX is 8 --OS X.8 Mountain Lion DNC does not have Applescript support, so this provides it   � �99 � i f   O S X   i s   8   - - O S   X . 8   M o u n t a i n   L i o n   D N C   d o e s   n o t   h a v e   A p p l e s c r i p t   s u p p o r t ,   s o   t h i s   p r o v i d e s   i t� :;: l     ����  �  �  ; <=< i   S V>?> I      � @���  0 msg  @ ABA o      ���� 0 msgtitle msgTitleB CDC o      ���� 0 msgsub msgSubD E��E o      ���� 0 message  ��  ��  ? Z     (FG��HF o     ���� *0 displaynoticecenter DisplayNoticeCenterG I    ��I���� 
0 notify  I JKJ o   	 
���� 0 msgtitle msgTitleK LML o   
 ���� 0 msgsub msgSubM N��N o    ���� 0 message  ��  ��  ��  H Q    (OPQO L    RR I   ��ST
�� .sysodlogaskr        TEXTS o    ���� 0 message  T ��U��
�� 
apprU o    ���� 0 msgtitle msgTitle��  P R      ������
�� .ascrerr ****      � ****��  ��  Q L   & (����  = VWV l     ��������  ��  ��  W XYX i   W ZZ[Z I      �������� 0 isapprunning isAppRunning��  ��  [ k     )\\ ]^] Q     &_`��_ O    aba Z    cd����c =   efe n    ghg 1    ��
�� 
prunh  g    f m    ��
�� boovtrued L    ii m    ��
�� boovtrue��  ��  b 4    ��j
�� 
cappj o    
���� 0 program  ` R      ������
�� .ascrerr ****      � ****��  ��  ��  ^ k��k L   ' )ll m   ' (��
�� boovfals��  Y mnm l     ��������  ��  ��  n opo i   [ ^qrq I      ��������  0 killrunningapp killRunningApp��  ��  r Q     5stus O     vwv l   xyzx Z    {|����{ =   }~} n    � 1    ��
�� 
prun�  g    ~ m    ��
�� boovtrue| I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  y   doesn't launch app   z ��� &   d o e s n ' t   l a u n c h   a p pw 4    ���
�� 
capp� o    
���� 0 program  t R      ������
�� .ascrerr ****      � ****��  ��  u I  ( 5�����
�� .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .���� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  p ��� l     ��������  ��  ��  � ��� i   _ b��� I      �������� 0 servicealive serviceAlive��  ��  � k     f�� ��� Q     c����� l   Z���� k    Z�� ��� r    ��� m    �� ���  � o      ���� 
0 sshcon  � ��� Z    D������ =   ��� o    ���� 0 servicelevel ServiceLevel� m    ��
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
0 sshcon  ��  � ��� s   E I��� o   E F���� 
0 sshcon  � o      ���� 
0 tunnel  � ��� l  J J��������  ��  ��  � ���� Z   J Z������� E   J Q��� o   J K���� 
0 tunnel  � o   K P���� 0 service  � L   T V�� o   T U���� 
0 tunnel  ��  ��  ��  � 0 *check for ssh connected to defined service   � ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e� R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   d f�� m   d e����  ��  � ��� l     ��������  ��  ��  � ���� i   c f��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k    D�� ��� I     �������� 0 resetprogram resetProgram��  ��  � ��� I    �������� $0 sshchecksettings sshCheckSettings��  ��  � ��� I    ��~�}� 0 
setdisplay 
setDisplay�~  �}  � ��� l   �|�{�z�|  �{  �z  � ��� r    � � I    �y�x�w�y 0 servicealive serviceAlive�x  �w    o      �v�v  0 isservicealive isServiceAlive�  r     m     � ( S S H   S e r v i c e   i s   D o w n ! o      �u�u 0 titlemsg    Z    �	
�t	 F    - =   % I    #�s�r�q�s 0 isapprunning isAppRunning�r  �q   m   # $�p
�p boovtrue =  ( + o   ( )�o�o  0 isservicealive isServiceAlive m   ) *�n�n  
 k   0 S  r   0 ; b   0 9 b   0 7 m   0 1 � , I t   i s   n o t   s a f e   t o   r u n   o   1 6�m�m 0 program   m   7 8 � H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " ! o      �l�l 0 message     I   < J�k!�j�k 0 msg  ! "#" o   = >�i�i 0 titlemsg  # $%$ b   > E&'& m   > ?(( �))  W a r n i n g  ' o   ? D�h�h 0 service  % *�g* o   E F�f�f 0 message  �g  �j    +,+ I   K P�e�d�c�e  0 killrunningapp killRunningApp�d  �c  , -�b- l  Q S./0. L   Q S�a�a  /  exit SSH-Check   0 �11  e x i t   S S H - C h e c k�b   232 =  V Y454 o   V W�`�`  0 isservicealive isServiceAlive5 m   W X�_�_  3 6�^6 k   \ �77 898 I   \ ��]:�\�] 0 msg  : ;<; o   ] ^�[�[ 0 titlemsg  < =>= b   ^ e?@? m   ^ _AA �BB  W a r n i n g   a b o u t  @ o   _ d�Z�Z 0 service  > C�YC b   e |DED b   e xFGF b   e rHIH b   e nJKJ m   e hLL �MM  D o n ' t   r u n  K o   h m�X�X 0 program  I m   n qNN �OO F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  G o   r w�W�W 0 service  E m   x {PP �QQ  .�Y  �\  9 R�VR l  � �STUS L   � ��U�U  T  exit SSH-Check   U �VV  e x i t   S S H - C h e c k�V  �^  �t   WXW l  � ��T�S�R�T  �S  �R  X YZY l  � ��Q[\�Q  [ C =Ask if you want to run your program, kill it, or quietly stop   \ �]] z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o pZ ^_^ r   � �`a` b   � �bcb m   � �dd �ee 4 A c t i v e   S S H   C o n n e c t i o n   t o :  c o   � ��P�P  0 isservicealive isServiceAlivea o      �O�O 0 titlemsg  _ fgf Z   ��hi�Njh =  � �klk I   � ��M�L�K�M 0 isapprunning isAppRunning�L  �K  l m   � ��J
�J boovtruei l  �mnom k   �pp qrq r   � �sts J   � �uu vwv m   � �xx �yy  R e s t a r tw z{z m   � �|| �}}  E x i t   S S H - C h e c k{ ~�I~ m   � � ���  T u r n   O f f�I  t o      �H�H 0 btnopt btnOptr ��� r   � ���� b   � ���� o   � ��G�G 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k ?� o      �F�F 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ��E
�E 
bhit� l  � ���D�C� I  � ��B��
�B .sysodlogaskr        TEXT� o   � ��A�A 0 qmsg qMsg� �@��
�@ 
btns� o   � ��?�? 0 btnopt btnOpt� �>��
�> 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �=��<
�= 
appr� o   � ��;�; 0 titlemsg  �<  �D  �C  � o      �:�: 
0 choice  � ��9� Z   ������ =  � ���� o   � ��8�8 
0 choice  � m   � ��� ���  R e s t a r t� I   � ��7�6�5�7  0 killrunningapp killRunningApp�6  �5  � ��� =  � ���� o   � ��4�4 
0 choice  � m   � ��� ���  T u r n   O f f� ��3� k   � ��� ��� I   � ��2�1�0�2  0 killrunningapp killRunningApp�1  �0  � ��/� l  � ����� L   � ��.�.  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�/  �3  � l ���� l ���� L  �-�-  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l�9  n 0 * should we kill & restart the running app?   o ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�N  j k  ��� ��� r  ��� b  ��� b  ��� m  	�� ���  S t a r t i n g  � o  	�,�, 0 program  � 1  �+
�+ 
spac� o      �*�* 0 qmsg qMsg� ��)� Z  ����(�� = ��� o  �'�' *0 displaynoticecenter DisplayNoticeCenter� m  �&
�& boovtrue� k  "H�� ��� I  ":�%��$�% 0 msg  � ��� m  #&�� ���  S S H - C h e c k� ��� b  &/��� b  &+��� o  &'�#�#  0 isservicealive isServiceAlive� 1  '*�"
�" 
spac� m  +.�� ���  i s   a c t i v e� ��!� b  /6��� o  /2� �  0 qmsg qMsg� m  25�� ���  u p   n o w !�!  �$  � ��� I ;H���
� .sysodelanull��� ��� nmbr� l ;D���� ^  ;D��� o  ;@�� 0 	countdown  � m  @C�� 	�  �  �  �  �(  � k  K��� ��� r  KW��� J  KS�� ��� m  KN�� ���  L a u n c h� ��� m  NQ�� ���  S t o p�  � o      �� 0 btnopt btnOpt� ��� Q  X����� k  [��� ��� r  [p��� b  [l��� b  [h��� b  [b� � o  [^�� 0 qmsg qMsg  m  ^a �    i n  � o  bg�� 0 	countdown  � m  hk �    s e c o n d s !� o      �� 0 qmsg qMsg�  r  q� n  q�	
	 1  ���
� 
bhit
 l q��� I q��
� .sysodlogaskr        TEXT o  qt�� 0 qmsg qMsg �
� 
btns o  wz�� 0 btnopt btnOpt �
� 
dflt m  }� �  L a u n c h �

�
 
appr o  ���	�	 0 titlemsg   ��
� 
givu o  ���� 0 	countdown  �  �  �   o      �� 0 yesorno yesOrNo � Z  ���� = �� o  ���� 0 yesorno yesOrNo m  �� �  S t o p L  ��� �   �  �  �  � R      ������
�� .ascrerr ****      � ****��  ��  � L  ������  �  �)  g  l ����������  ��  ��    !  l ����"#��  " ! Prepare to launch a program   # �$$ 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m! %&% r  ��'(' n  ��)*) 1  ����
�� 
psxp* l ��+����+ m  ��,, �--  / A p p l i c a t i o n s /��  ��  ( o      ���� 0 apppath appPath& ./. l ����01��  0 0 *msg("info:", "Msg", "apppath: " & appPath)   1 �22 T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )/ 343 r  ��565 I ������7
�� .sysooffslong    ��� null��  7 ��89
�� 
psof8 o  ������ 0 program  9 ��:��
�� 
psin: o  ������ 0 apppath appPath��  6 o      ���� 0 
nameoffset 
nameOffset4 ;<; l ����=>��  = 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   > �?? ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )< @A@ r  ��BCB n  ��DED 7 ����FG
�� 
ctxtF m  ������ G l ��H����H \  ��IJI o  ������ 0 
nameoffset 
nameOffsetJ m  ������ ��  ��  E o  ������ 0 apppath appPathC o      ���� 0 
folderpath 
folderPathA KLK l ����MN��  M 6 0msg("info:", "Msg", "folderpath: " & folderPath)   N �OO ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )L PQP Q  �BRSTR l �&UVWU k  �&XX YZY I ���[��
�� .sysoexecTEXT���     TEXT[ b  �\]\ b  �^_^ b  � `a` o  ������ 0 
folderpath 
folderPatha o  ������ 0 program  _ m   bb �cc  . a p p] m  dd �ee N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  Z fgf I ��h��
�� .sysodelanull��� ��� nmbrh m  ���� ��  g i��i O &jkj I  %������
�� .miscactvnull��� ��� null��  ��  k 4  ��l
�� 
cappl o  ���� 0 program  ��  V ( "start program up in the background   W �mm D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dS R      ������
�� .ascrerr ****      � ****��  ��  T I  .B��n���� 0 msg  n opo m  /2qq �rr   S S H - C h e c k :   E r r o rp sts m  25uu �vv 
 E r r o rt w��w b  5>xyx m  58zz �{{ N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  y o  8=���� 0 program  ��  ��  Q |��| l CC��������  ��  ��  ��  ��       ��}   ! ' 1 7 < A������~�����������������  } ���������������������������������������������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel�� 
0 osx OSX
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 setosxnumber setOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****
�� boovfals
�� boovfals�� ~ �� ]��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ������ 0 these_items  �� 0 prog  �  k�� ~���� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j  �� ����������� 0 resetprogram resetProgram��  ��  �  �  �� fEc  � �� ����������� 0 setosxnumber setOSXNumber��  ��  �  �  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&EQc  
OP� �� ����������� 0 
setdisplay 
setDisplay��  ��  �  � ������������ 0 setosxnumber setOSXNumber�� 	�� �� 0 
fileexists 
FileExists
�� 
bool�� P*j+  Ob  
�
 -b  
� 	 *b  k+ e �&	 *b  k+ e �&�& eEc  Y 	fEc  � ������������ 0 
fileexists 
FileExists�� ��� �  �~�~ 0 thefile theFile��  � �}�} 0 thefile theFile� �|�{
�| 
file
�{ .coredoexnull���     ****�� � *�/j  eY hUOf� �z%�y�x���w�z 0 folderexists FolderExists�y �v��v �  �u�u 0 	thefolder 	theFolder�x  � �t�t 0 	thefolder 	theFolder� 2�s�r
�s 
cfol
�r .coredoexnull���     ****�w � *�/j  eY hUOf� �q:�p�o���n�q 0 	updatexml 	updateXML�p �m��m �  �l�l 0 programname programName�o  � �k�j�i�k 0 programname programName�j 
0 update  �i 0 update2  � �h�gV�f�ear����d�c�b�h 0 
fileexists 
FileExists
�g 
spac
�f 
strq
�e .sysoexecTEXT���     TEXT
�d 
bool�c  �b  �n �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOf� �a��`�_���^�a 0 setupservice setupService�`  �_  � �]�] 0 ser  � 
�\�[��Z���Y�X�W��\ 0 
fileexists 
FileExists
�[ 
spac
�Z .sysoexecTEXT���     TEXT
�Y 
bool�X  �W  �^ r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOf� �V��U�T���S�V "0 setservicelevel setServiceLevel�U  �T  � �R�R 
0 slevel  � 	�Q�P��O�N�M(�Q 0 
fileexists 
FileExists
�P 
spac
�O .sysoexecTEXT���     TEXT�N  �M  �S �*b  k+  e  T Hb  �%�%j E�O��  eEc  	Y ��  fEc  	Y 	fEc  	Ob  	O)jhW X  hY hOb  	�  fEc  	Y hOb  	� �L3�K�J���I�L 0 setupprogram setupProgram�K  �J  � �H�H 0 prog  � 
�G�FI�ETY�D�C�Bi�G 0 
fileexists 
FileExists
�F 
spac
�E .sysoexecTEXT���     TEXT
�D 
bool�C  �B  �I r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOf� �At�@�?���>�A $0 sshchecksettings sshCheckSettings�@  �?  � �=�<�;�:�9�8�7�6�5�4�3�2�1�0�= 0 configfolder configFolder�< 0 
configpath 
configPath�; 
0 mypath  �: 0 
supportloc 
supportLoc�9 0 cmdmakepath cmdMakePath�8 0 qmsg qMsg�7 0 btnopt btnOpt�6 0 yesorno yesOrNo�5 0 alertaction alertAction�4 *0 cmdunzipalertaction cmdUnzipAlertAction�3 .0 cmdcleanupalertaction cmdCleanUpAlertAction�2 0 
dnworkflow 
DNWorkflow�1 (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�0 ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� @}��/�.�-�,��+��*�)�(�'���&��%!+�$�#MVY�"�!j� n����{�������������	!24GX\���~����/ 0 folderexists FolderExists�. 0 
fileexists 
FileExists
�- 
bool�, 
�+ 
spac
�* 
rtyp
�) 
TEXT
�( .earsffdralis        afdr
�' 
psxp
�& .sysoexecTEXT���     TEXT
�% .sysodelanull��� ��� nmbr�$  �#  
�" 
btns
�! 
dflt
�  
appr
� 
givu� <
� .sysodlogaskr        TEXT
� 
bhit
� 
strq� 0 msg  � 0 setupservice setupService� 0 setupprogram setupProgram� 0 
setdisplay 
setDisplay� "0 setservicelevel setServiceLevel�>�E�O�%E�O*�k+ f 
 *b  k+ f �&
 -b  
� 	 !*b  k+ f 
 *b  k+ f �&�&�&��%�%�%�%E�O)��l �,�%E�O$*�k+ f  ��%�%E�O�j Oa j Y hO*b  k+ f  : &�a %�%a %j O�a %�%b  %j W X  hOa j Y hOb  
� �*b  k+ f a E�Oa a lvE�O ,�a �a a a a a b  a   � !a ",E�W X  hO�a #  �a $E�O �a %%�%�%�%a &%j W X  hOa j O*�a '%�%k+ e  4 (�a (%�%�%E�O�j O�a )%�%�%E�O�j W X  hY hO *�a *%a +a ,,%j O)jhO*a -a .a /m+ 0W X  hOa j Y hY hO*�k+ e 	 *b  k+ f �& wa 1E�O�a 2%�%�%E�O�a 3%�%�%E�O �a 4%�%�%�%a 5%j W X  hOa j O*�a 6%�%k+ e   �j O�j W X  hY hY hY hW "X  *a 7a 8�m+ 0O*j+ 9O*j+ :OfOb  m!j O*j+ ;Ob  e  *a <�a =%a >m+ 0Okj Y hY hO*j+ ?O*j+ 9e 	 *j+ :e �& eY hOf� �������� 
0 notify  � ��� �  ���� 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 message  �  � ���� 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 message  � �
�	������������!��� (.27���
 	
�	 
appr
� 
subt� 
� .sysonotfnull��� ��� TEXT
� 
ctxt
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT�  �   �� 0 msg  � �b  
� ���� Y ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W %X  a Ec  O*a a a b  %m+ � ��?���������� 0 msg  �� ����� �  �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  ��  � �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  � ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� )b   *���m+  Y  ��l W 	X  h� ��[���������� 0 isapprunning isAppRunning��  ��  �  � ��������
�� 
capp
�� 
prun��  ��  �� * *�b  / *�,e  eY hUW X  hOf� ��r����������  0 killrunningapp killRunningApp��  ��  �  � ��������������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � ������������� 0 servicealive serviceAlive��  ��  � �������� 
0 sshcon  �� 0 cmdssh cmdSSH�� 
0 tunnel  � 
���������������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOj� �����������
�� .aevtoappnull  �   � ****��  ��  �  � H������������������(����ALNPdx|��������������������������������������������,������������������bd������quz�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
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