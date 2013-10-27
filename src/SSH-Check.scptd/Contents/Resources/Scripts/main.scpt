FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ZT
	Name: SSH-Check
	Version: 0.7.7-1
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
 	 V e r s i o n :   0 . 7 . 7 - 1 
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
 ' ' � ( (  t u n n e l r . c o m %  ) * ) l     ��������  ��  ��   *  + , + l      - . / - j    �� 0�� 0 	countdown   0 m     1 1 � 2 2  6 .  time out in seconds    / � 3 3 & t i m e   o u t   i n   s e c o n d s ,  4 5 4 j    �� 6�� 0 dnclocation DNCLocation 6 m     7 7 � 8 8 T ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 5  9 : 9 j     �� ;�� 0 xmlsettings XMLSettings ; b     < = < l    >���� > n     ? @ ? 1    ��
�� 
psxp @ l    A���� A I   �� B C
�� .earsffdralis        afdr B  f     C �� D��
�� 
rtyp D m    ��
�� 
TEXT��  ��  ��  ��  ��   = m     E E � F F > C o n t e n t s / S u p p o r t / i c o n f i g S S H C . p y :  G H G j   ! %�� I�� 0 dnca DNCA I m   ! $ J J � K K x ~ / L i b r a r y / A u t o m a t o r / D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n H  L M L l      N O P N j   & (�� Q�� *0 displaynoticecenter DisplayNoticeCenter Q m   & '��
�� boovfals O a [script switchings to true when running on OS X.8 or higher & if "DNCLocation & DNCA" exists    P � R R � s c r i p t   s w i t c h i n g s   t o   t r u e   w h e n   r u n n i n g   o n   O S   X . 8   o r   h i g h e r   &   i f   " D N C L o c a t i o n   &   D N C A "   e x i s t s M  S T S l      U V W U j   ) +�� X�� 0 servicelevel ServiceLevel X m   ) *��
�� boovfals V ^ X false for local and true for global search to see if there is a connection to 'service'    W � Y Y �   f a l s e   f o r   l o c a l   a n d   t r u e   f o r   g l o b a l   s e a r c h   t o   s e e   i f   t h e r e   i s   a   c o n n e c t i o n   t o   ' s e r v i c e ' T  Z [ Z l      \ ] ^ \ j   , 0�� _�� 
0 osx OSX _ m   , /����  ] &  which OSX version is being used?    ^ � ` ` @ w h i c h   O S X   v e r s i o n   i s   b e i n g   u s e d ? [  a b a l     ��������  ��  ��   b  c d c i   1 4 e f e I     �� g��
�� .aevtodocnull  �    alis g o      ���� 0 these_items  ��   f k     d h h  i j i l      �� k l��   k�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     l � m m   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   j  n o n l     ��������  ��  ��   o  p q p r      r s r m      t t � u u   s o      ���� 0 prog   q  v w v r    	 x y x c     z { z o    ���� 0 these_items   { m    ��
�� 
TEXT y o      ���� 0 prog   w  | } | l  
 
��������  ��  ��   }  ~  ~ l  
 
�� � ���   � d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    � � � � � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e   � � � r   
  � � � m   
  � � � � �  : � 1    ��
�� 
txdl �  � � � r     � � � n     � � � 4    �� �
�� 
citm � m    ����  � o    ���� 0 prog   � o      ���� 0 prog   �  � � � r     � � � m     � � � � �  . � 1    ��
�� 
txdl �  � � � r    # � � � n    ! � � � 4    !�� �
�� 
citm � m     ����  � o    ���� 0 prog   � o      ���� 0 prog   �  � � � I   $ )�������� $0 sshchecksettings sshCheckSettings��  ��   �  � � � I   * 0�� ����� 0 	updatexml 	updateXML �  ��� � o   + ,���� 0 prog  ��  ��   �  � � � s   1 9 � � � o   1 2���� 0 prog   � o      ���� 0 program   �  � � � l  : :��������  ��  ��   �  � � � I   : ?�������� 0 
setdisplay 
setDisplay��  ��   �  � � � I   @ T�� ����� 0 msg   �  � � � m   A B � � � � �  S S H - C h e c K �  � � � b   B I � � � m   B C � � � � �  S e t t i n g   � o   C H���� 0 program   �  ��� � b   I P � � � m   I J � � � � � & N o w   s e t   t o   s t a r t u p   � o   J O���� 0 program  ��  ��   �  � � � I  U ^�� ���
�� .sysodelanull��� ��� nmbr � o   U Z���� 0 	countdown  ��   �  ��� � I  _ d������
�� .aevtoappnull  �   � ****��  ��  ��   d  � � � l     ��������  ��  ��   �  � � � i   5 8 � � � I      �������� 0 resetprogram resetProgram��  ��   � k      � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  ��� � r      � � � m     ��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter��   �  � � � l     ��������  ��  ��   �  � � � i   9 < � � � I      �������� 0 setosxnumber setOSXNumber��  ��   � k      � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  � � � s     � � � l    ����� � c     � � � l    ����� � n     � � � 4    �� �
�� 
citm � m    ����  � l    ����� � n     � � � 1    ��
�� 
sisv � l    ����� � I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m    ��
�� 
nmbr��  ��   � o      ���� 
0 osx OSX �  ��� � l   �� � ���   � ) #display dialog "osx is this " & OSX    � � � � F d i s p l a y   d i a l o g   " o s x   i s   t h i s   "   &   O S X��   �  � � � l     ��������  ��  ��   �  � � � i   = @ � � � I      �������� 0 
setdisplay 
setDisplay��  ��   � k     O � �  � � � I     ��~�}� 0 setosxnumber setOSXNumber�~  �}   �  ��| � Z    O � ��{ � � G    ; � � � @     �  � o    �z�z 
0 osx OSX  m    �y�y 	 � l   9�x�w F    9 F    ( =    o    �v�v 
0 osx OSX m    �u�u  =   &	 I    $�t
�s�t 0 
fileexists 
FileExists
 �r o     �q�q 0 dnclocation DNCLocation�r  �s  	 m   $ %�p
�p boovtrue =  + 7 I   + 5�o�n�o 0 
fileexists 
FileExists �m o   , 1�l�l 0 dnca DNCA�m  �n   m   5 6�k
�k boovtrue�x  �w   � r   > E m   > ?�j
�j boovtrue o      �i�i *0 displaynoticecenter DisplayNoticeCenter�{   � r   H O m   H I�h
�h boovfals o      �g�g *0 displaynoticecenter DisplayNoticeCenter�|   �  l     �f�e�d�f  �e  �d    i   A D I      �c�b�c 0 
fileexists 
FileExists �a o      �`�` 0 thefile theFile�a  �b   k       O       Z    !"�_�^! I   �]#�\
�] .coredoexnull���     ****# 4    �[$
�[ 
file$ o    �Z�Z 0 thefile theFile�\  " L    %% m    �Y
�Y boovtrue�_  �^    m     &&�                                                                                  sevs  alis    �  	mini_base                  �kH+  ���System Events.app                                              ���A��        ����  	                CoreServices    ��U      �A�9    ���������  :mini_base:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 m i n i _ b a s e  -System/Library/CoreServices/System Events.app   / ��   '�X' L    (( m    �W
�W boovfals�X   )*) l     �V�U�T�V  �U  �T  * +,+ i   E H-.- I      �S/�R�S 0 folderexists FolderExists/ 0�Q0 o      �P�P 0 	thefolder 	theFolder�Q  �R  . k     11 232 O     454 Z    67�O�N6 I   �M8�L
�M .coredoexnull���     ****8 4    �K9
�K 
cfol9 o    �J�J 0 	thefolder 	theFolder�L  7 L    :: m    �I
�I boovtrue�O  �N  5 m     ;;�                                                                                  sevs  alis    �  	mini_base                  �kH+  ���System Events.app                                              ���A��        ����  	                CoreServices    ��U      �A�9    ���������  :mini_base:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 m i n i _ b a s e  -System/Library/CoreServices/System Events.app   / ��  3 <�H< L    == m    �G
�G boovfals�H  , >?> l     �F�E�D�F  �E  �D  ? @A@ i   I LBCB I      �CD�B�C 0 	updatexml 	updateXMLD E�AE o      �@�@ 0 programname programName�A  �B  C k     �FF GHG Z     �IJ�?�>I =    KLK I     
�=M�<�= 0 
fileexists 
FileExistsM N�;N o    �:�: 0 xmlsettings XMLSettings�;  �<  L m   
 �9
�9 boovtrueJ Q    �OP�8O k    xQQ RSR r    'TUT I   %�7V�6
�7 .sysoexecTEXT���     TEXTV b    !WXW b    YZY b    [\[ b    ]^] o    �5�5 0 xmlsettings XMLSettings^ 1    �4
�4 
spac\ m    __ �``  - u pZ 1    �3
�3 
spacX n     aba 1     �2
�2 
strqb o    �1�1 0 programname programName�6  U o      �0�0 
0 update  S cdc Z   ( sef�/ge =  ( +hih o   ( )�.�. 
0 update  i m   ) *jj �kk  T r u ef L   . 0ll m   . /�-
�- boovtrue�/  g k   3 smm non r   3 Hpqp I  3 F�,r�+
�, .sysoexecTEXT���     TEXTr b   3 Bsts b   3 >uvu b   3 <wxw b   3 :yzy o   3 8�*�* 0 xmlsettings XMLSettingsz 1   8 9�)
�) 
spacx m   : ;{{ �||  - cv 1   < =�(
�( 
spact n   > A}~} 1   ? A�'
�' 
strq~ o   > ?�&�& 0 programname programName�+  q o      �%�% 
0 update  o � r   I ^��� I  I \�$��#
�$ .sysoexecTEXT���     TEXT� b   I X��� b   I T��� b   I R��� b   I P��� o   I N�"�" 0 xmlsettings XMLSettings� 1   N O�!
�! 
spac� m   P Q�� ���  - u p� 1   R S� 
�  
spac� n   T W��� 1   U W�
� 
strq� o   T U�� 0 programname programName�#  � o      �� 0 update2  � ��� Z   _ s����� F   _ j��� =  _ b��� o   _ `�� 
0 update  � m   ` a�� ���  T r u e� =  e h��� o   e f�� 0 update2  � m   f g�� ���  T r u e� L   m o�� m   m n�
� boovtrue�  �  �  d ��� R   t x���
� .ascrerr ****      � ****�  �  �  P R      ���
� .ascrerr ****      � ****�  �  �8  �?  �>  H ��� L   � ��� m   � ��
� boovfals�  A ��� l     ����  �  �  � ��� i   M P��� I      �
�	��
 0 setupservice setupService�	  �  � k     q�� ��� Z     S����� =    ��� I     
���� 0 
fileexists 
FileExists� ��� o    �� 0 xmlsettings XMLSettings�  �  � m   
 �
� boovtrue� Q    O��� � k    F�� ��� r    !��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    ���� 0 xmlsettings XMLSettings� 1    ��
�� 
spac� m    �� ���  - s��  � o      ���� 0 ser  � ��� Z   " A������� F   " /��� H   " &�� E   " %��� o   " #���� 0 ser  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *���� 0 ser  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3���� 0 ser  � o      ���� 0 service  � ���� L   ; =�� m   ; <��
�� boovtrue��  ��  ��  � ���� R   B F������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �   �  �  � ��� Z   T n������� =  T [��� o   T Y���� 0 service  � m   Y Z�� ���  � s   ^ j��� o   ^ c���� 0 servicebackup serviceBackup� o      ���� 0 service  ��  ��  � ���� L   o q�� m   o p��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   Q T��� I      �������� "0 setservicelevel setServiceLevel��  ��  � k     �� ��� l     ������  � ^ XShould the ssh tunnel to service X be run by the current user or any user on the system?   � ��� � S h o u l d   t h e   s s h   t u n n e l   t o   s e r v i c e   X   b e   r u n   b y   t h e   c u r r e n t   u s e r   o r   a n y   u s e r   o n   t h e   s y s t e m ?� ��� l     ������  � < 6True is to search globally and False to search locally   � ��� l T r u e   i s   t o   s e a r c h   g l o b a l l y   a n d   F a l s e   t o   s e a r c h   l o c a l l y� ��� Z     b������� =    ��� I     
������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m   
 ��
�� boovtrue� Q    ^����� k    U�� ��� r    !   I   ����
�� .sysoexecTEXT���     TEXT b     b     o    ���� 0 xmlsettings XMLSettings 1    ��
�� 
spac m     �  - s l��   o      ���� 
0 slevel  � 	
	 Z   " I =  " % o   " #���� 
0 slevel   m   # $ �  g l o b a l l y r   ( / m   ( )��
�� boovtrue o      ���� 0 servicelevel ServiceLevel  =  2 5 o   2 3���� 
0 slevel   m   3 4 �  l o c a l l y �� r   8 ? m   8 9��
�� boovfals o      ���� 0 servicelevel ServiceLevel��   r   B I m   B C��
�� boovfals o      ���� 0 servicelevel ServiceLevel
  !  l  J J��"#��  " = 7msg("service level", "", slevel & " = " & ServiceLevel)   # �$$ n m s g ( " s e r v i c e   l e v e l " ,   " " ,   s l e v e l   &   "   =   "   &   S e r v i c e L e v e l )! %&% L   J P'' o   J O���� 0 servicelevel ServiceLevel& (��( R   Q U������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � )*) l  c c��������  ��  ��  * +,+ Z   c x-.����- =  c j/0/ o   c h���� 0 servicelevel ServiceLevel0 m   h i11 �22  . r   m t343 m   m n��
�� boovfals4 o      ���� 0 servicelevel ServiceLevel��  ��  , 5��5 L   y 66 o   y ~���� 0 servicelevel ServiceLevel��  � 787 l     ��������  ��  ��  8 9:9 i   U X;<; I      �������� 0 setupprogram setupProgram��  ��  < k     q== >?> Z     S@A����@ =    BCB I     
��D���� 0 
fileexists 
FileExistsD E��E o    ���� 0 xmlsettings XMLSettings��  ��  C m   
 ��
�� boovtrueA Q    OFG��F k    FHH IJI r    !KLK I   ��M��
�� .sysoexecTEXT���     TEXTM b    NON b    PQP o    ���� 0 xmlsettings XMLSettingsQ 1    ��
�� 
spacO m    RR �SS  - p��  L o      ���� 0 prog  J TUT Z   " AVW����V F   " /XYX H   " &ZZ E   " %[\[ o   " #���� 0 prog  \ m   # $]] �^^  N o n eY H   ) -__ E   ) ,`a` o   ) *���� 0 prog  a m   * +bb �cc  W k   2 =dd efe s   2 :ghg o   2 3���� 0 prog  h o      ���� 0 program  f i��i L   ; =jj m   ; <��
�� boovtrue��  ��  ��  U k��k R   B F������
�� .ascrerr ****      � ****��  ��  ��  G R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ? lml Z   T nno����n =  T [pqp o   T Y���� 0 program  q m   Y Zrr �ss  o s   ^ jtut o   ^ c���� 0 programbackup programBackupu o      ���� 0 program  ��  ��  m v��v L   o qww m   o p��
�� boovfals��  : xyx l     ��������  ��  ��  y z{z i   Y \|}| I      �������� $0 sshchecksettings sshCheckSettings��  ��  } l   ~�~ k    �� ��� r     ��� m     �� ���  . s s h - c h e c k� o      ���� 0 configfolder configFolder� ��� r    	��� b    ��� m    �� ���  ~ /� o    ���� 0 configfolder configFolder� o      ���� 0 
configpath 
configPath� ��� r   
 ��� m   
 �� ��� 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y� o      ���� 0 iconfig  � ��� l   ����~��  �  �~  � ��� Z   ����}�|� G    Q��� G    #��� =   ��� I    �{��z�{ 0 folderexists FolderExists� ��y� o    �x�x 0 
configpath 
configPath�y  �z  � m    �w
�w boovfals� =   !��� I    �v��u�v 0 
fileexists 
FileExists� ��t� o    �s�s 0 iconfig  �t  �u  � m     �r
�r boovfals� l  & O��q�p� F   & O��� =  & -��� o   & +�o�o 
0 osx OSX� m   + ,�n�n � l  0 M��m�l� G   0 M��� =  0 <��� I   0 :�k��j�k 0 
fileexists 
FileExists� ��i� o   1 6�h�h 0 dnclocation DNCLocation�i  �j  � m   : ;�g
�g boovfals� =  ? K��� I   ? I�f��e�f 0 
fileexists 
FileExists� ��d� o   @ E�c�c 0 dnca DNCA�d  �e  � m   I J�b
�b boovfals�m  �l  �q  �p  � k   T��� ��� l  T T�a���a  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  T T�`���`  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   T _��� b   T ]��� b   T [��� b   T Y��� b   T W��� m   T U�� ���  c d  � o   U V�_�_ 0 
configpath 
configPath� 1   W X�^
�^ 
spac� m   Y Z�� ���  & &� 1   [ \�]
�] 
spac� o      �\�\ 
0 mypath  � ��� r   ` m��� b   ` k��� l  ` i��[�Z� n   ` i��� 1   g i�Y
�Y 
psxp� l  ` g��X�W� I  ` g�V��
�V .earsffdralis        afdr�  f   ` a� �U��T
�U 
rtyp� m   b c�S
�S 
TEXT�T  �X  �W  �[  �Z  � m   i j�� ��� " C o n t e n t s / S u p p o r t /� o      �R�R 0 
supportloc 
supportLoc� ��� l  n n�Q�P�O�Q  �P  �O  � ��� Q   n����� k   q��� ��� Z   q ����N�M� =  q y��� I   q w�L��K�L 0 folderexists FolderExists� ��J� o   r s�I�I 0 
configpath 
configPath�J  �K  � m   w x�H
�H boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~�G
�G 
spac� o    ��F�F 0 
configpath 
configPath� o      �E�E 0 cmdmakepath cmdMakePath� ��� l  � �� � I  � ��D�C
�D .sysoexecTEXT���     TEXT o   � ��B�B 0 cmdmakepath cmdMakePath�C     create path    �  c r e a t e   p a t h� �A l  � � I  � ��@�?
�@ .sysodelanull��� ��� nmbr m   � �		 ?�      �?   R Lnote: FileExist will fail, even if true, if the program does not pause first    �

 � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�A  �N  �M  �  l  � ��>�=�<�>  �=  �<    Z   � ��;�: =  � � I   � ��9�8�9 0 
fileexists 
FileExists �7 o   � ��6�6 0 iconfig  �7  �8   m   � ��5
�5 boovfals k   � �  l  � ��4�4   f `note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  l  � ��3�3   � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it    � � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t  !  Q   � �"#�2" k   � �$$ %&% I  � ��1'�0
�1 .sysoexecTEXT���     TEXT' b   � �()( b   � �*+* b   � �,-, o   � ��/�/ 
0 mypath  - m   � �.. �//  c p  + o   � ��.�. 0 
supportloc 
supportLoc) m   � �00 �11 " i c o n f i g S S H C . p y   . /�0  & 2�-2 I  � ��,3�+
�, .sysoexecTEXT���     TEXT3 b   � �454 b   � �676 b   � �898 o   � ��*�* 
0 mypath  9 m   � �:: �;;  c h m o d   + x7 1   � ��)
�) 
spac5 o   � ��(�( 0 xmlsettings XMLSettings�+  �-  # R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �2  ! <�$< I  � ��#=�"
�# .sysodelanull��� ��� nmbr= m   � �>> ?�      �"  �$  �;  �:   ?@? l  � ��!� ��!  �   �  @ A�A Z   ��BC��B =  � �DED o   � ��� 
0 osx OSXE m   � ��� C l  ��FGHF k   ��II JKJ Z   ��LM��L =  � �NON I   � ��P�� 0 
fileexists 
FileExistsP Q�Q o   � ��� 0 dnca DNCA�  �  O m   � ��
� boovfalsM k   ��RR STS l  � ��UV�  U ? 9setup Automator Display Notification Center Action script   V �WW r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p tT XYX r   � �Z[Z m   � �\\ �]] � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p ![ o      �� 0 qmsg qMsgY ^_^ r   �`a` J   �bb cdc m   � �ee �ff  Y e sd g�g m   � hh �ii  N o�  a o      �� 0 btnopt btnOpt_ jkj Q  8lm�l r  /non n  -pqp 1  )-�
� 
bhitq l )r��r I )�
st
�
 .sysodlogaskr        TEXTs o  	�	�	 0 qmsg qMsgt �uv
� 
btnsu o  �� 0 btnopt btnOptv �wx
� 
dfltw m  yy �zz  N ox �{|
� 
appr{ m  }} �~~ > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p| ��
� 
givu ]  %��� o  !�� 0 	countdown  � m  !$�� <�  �  �  o o      � �  0 yesorno yesOrNom R      ������
�� .ascrerr ****      � ****��  ��  �  k ���� l 9����� Z  9�������� = 9>��� o  9:���� 0 yesorno yesOrNo� m  :=�� ���  Y e s� k  A��� ��� r  AF��� m  AD�� ��� X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p� o      ���� 0 alertaction alertAction� ��� Q  Gf����� I J]�����
�� .sysoexecTEXT���     TEXT� b  JY��� b  JU��� b  JS��� b  JQ��� b  JO��� o  JK���� 
0 mypath  � m  KN�� ���  c p  � o  OP���� 0 
supportloc 
supportLoc� o  QR���� 0 alertaction alertAction� 1  ST��
�� 
spac� m  UX�� ���  . /��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� I gn�����
�� .sysodelanull��� ��� nmbr� m  gj�� ?�      ��  � ��� l oo��������  ��  ��  � ��� Z  o�������� = o}��� I  o{������� 0 
fileexists 
FileExists� ���� b  pw��� b  pu��� o  pq���� 0 
configpath 
configPath� m  qt�� ���  /� o  uv���� 0 alertaction alertAction��  ��  � m  {|��
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
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  ��  ��  �   end of "Yes" go setup DNCA   � ��� 4 e n d   o f   " Y e s "   g o   s e t u p   D N C A��  �  �  K � � l ����������  ��  ��    �� Z  ������ F  � = �� I  �������� 0 folderexists FolderExists 	��	 o  ������ 0 
configpath 
configPath��  ��   m  ����
�� boovtrue = 

 I  ������ 0 
fileexists 
FileExists �� o  ���� 0 dnclocation DNCLocation��  ��   m  ��
�� boovfals k  �  l ����   0 *setup display notification center workflow    � T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w  r   m   � B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p o      ���� 0 
dnworkflow 
DNWorkflow  r  # b  ! b   !  b  "#" o  ���� 
0 mypath  # m  $$ �%%  u n z i p   - u! 1  ��
�� 
spac o   ���� 0 
dnworkflow 
DNWorkflow o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow &'& r  $/()( b  $-*+* b  $+,-, b  $)./. o  $%���� 
0 mypath  / m  %(00 �11   r m   - r f   _ _ M A C O S X /- 1  )*��
�� 
spac+ o  +,���� 0 
dnworkflow 
DNWorkflow) o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow' 232 Q  0O45��4 I 3F��6��
�� .sysoexecTEXT���     TEXT6 b  3B787 b  3>9:9 b  3<;<; b  3:=>= b  38?@? o  34���� 
0 mypath  @ m  47AA �BB  c p  > o  89���� 0 
supportloc 
supportLoc< o  :;���� 0 
dnworkflow 
DNWorkflow: 1  <=��
�� 
spac8 m  >ACC �DD  . /��  5 R      ������
�� .ascrerr ****      � ****��  ��  ��  3 EFE I PW��G��
�� .sysodelanull��� ��� nmbrG m  PSHH ?�      ��  F IJI l XX��������  ��  ��  J K��K Z  X�LM����L = XfNON I  Xd��P���� 0 
fileexists 
FileExistsP Q��Q b  Y`RSR b  Y^TUT o  YZ���� 0 
configpath 
configPathU m  Z]VV �WW  /S o  ^_���� 0 
dnworkflow 
DNWorkflow��  ��  O m  de��
�� boovtrueM Q  i�XY��X k  lwZZ [\[ I lq��]��
�� .sysoexecTEXT���     TEXT] o  lm���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  \ ^��^ I rw��_��
�� .sysoexecTEXT���     TEXT_ o  rs���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  Y R      �����
�� .ascrerr ****      � ****��  �  ��  ��  ��  ��  ��  ��  ��  G > 8OS X.8 only install Display Noticafaction Center support   H �`` p O S   X . 8   o n l y   i n s t a l l   D i s p l a y   N o t i c a f a c t i o n   C e n t e r   s u p p o r t�  �  �  � R      �~�}�|
�~ .ascrerr ****      � ****�}  �|  � k  ��aa bcb I  ���{d�z�{ 0 msg  d efe m  ��gg �hh  S e t u p   F a i l e d :f iji m  ��kk �ll  j m�ym o  ���x�x 0 
configpath 
configPath�y  �z  c non I  ���w�v�u�w 0 setupservice setupService�v  �u  o pqp I  ���t�s�r�t 0 setupprogram setupProgram�s  �r  q r�qr L  ��ss m  ���p
�p boovfals�q  � tut l ���o�n�m�o  �n  �m  u vwv l ���lxy�l  x n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   y �zz � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .w {|{ I ���k}�j
�k .sysodelanull��� ��� nmbr} ^  ��~~ o  ���i�i 0 	countdown   m  ���h�h �j  | ��� I  ���g�f�e�g 0 
setdisplay 
setDisplay�f  �e  � ��d� Z  �����c�b� = ����� o  ���a�a *0 displaynoticecenter DisplayNoticeCenter� m  ���`
�` boovtrue� k  ���� ��� I  ���_��^�_ 0 msg  � ��� m  ���� ���   S S H - C h e c k :   S e t u p� ��� b  ����� o  ���]�] 0 
configpath 
configPath� m  ���� ��� ,   s e t t i n g s   a r e   c u r r e n t .� ��\� m  ���� ��� L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�\  �^  � ��[� I ���Z��Y
�Z .sysodelanull��� ��� nmbr� m  ���X�X �Y  �[  �c  �b  �d  �}  �|  � ��� l ���W�V�U�W  �V  �U  � ��� l ���T���T  � # loadSettings from config file   � ��� : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e� ��� I  ���S�R�Q�S "0 setservicelevel setServiceLevel�R  �Q  � ��� Z  ����P�O� F  ���� = ����� I  ���N�M�L�N 0 setupservice setupService�M  �L  � m  ���K
�K boovtrue� = ���� I  � �J�I�H�J 0 setupprogram setupProgram�I  �H  � m   �G
�G boovtrue� L  	�� m  �F
�F boovtrue�P  �O  � ��� l �E�D�C�E  �D  �C  � ��B� L  �� m  �A
�A boovfals�B    return bool   � ���  r e t u r n   b o o l{ ��� l     �@�?�>�@  �?  �>  � ��� i   ] `��� I      �=��<�= 
0 notify  � ��� o      �;�; 0 msgtitle msgTitle� ��� o      �:�: 0 msgsubtitle msgSubtitle� ��9� o      �8�8 0 message  �9  �<  � Z     ����7�� @     ��� o     �6�6 
0 osx OSX� m    �5�5 	� l  
 ���� I  
 �4��
�4 .sysonotfnull��� ��� TEXT� o   
 �3�3 0 message  � �2��
�2 
appr� o    �1�1 0 msgtitle msgTitle� �0��/
�0 
subt� o    �.�. 0 msgsubtitle msgSubtitle�/  � h b use OS X Noticafaction Center: OS x.9 http://macosxautomation.com/mavericks/notifications/01.html   � ��� �   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r :   O S   x . 9   h t t p : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l�7  � l   ����� k    ��� ��� l    �-���-  � 	OS X 8 make use of System Notifacation Center
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
  � ��� Z   +���,�+� >   ��� c    ��� o    �*�* 0 msgtitle msgTitle� m    �)
�) 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   t i t l e =� n    $��� 1   " $�(
�( 
strq� l   "��'�&� c    "��� o     �%�% 0 msgtitle msgTitle� m     !�$
�$ 
ctxt�'  �&  � o      �#�# 0 msgtitle msgTitle�,  �+  � ��� Z  , A���"�!� >  , 1��� c   , /��� o   , -� �  0 msgsubtitle msgSubtitle� m   - .�
� 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   s u b t i t l e =� n   5 :��� 1   8 :�
� 
strq� l  5 8���� c   5 8��� o   5 6�� 0 msgsubtitle msgSubtitle� m   6 7�
� 
ctxt�  �  � o      �� 0 msgsubtitle msgSubtitle�"  �!  �    Z  B W�� >  B G c   B E o   B C�� 0 message   m   C D�
� 
ctxt m   E F �		   r   J S

 b   J Q m   J K �    - D   m e s s a g e = n   K P 1   N P�
� 
strq l  K N�� c   K N o   K L�� 0 message   m   L M�
� 
ctxt�  �   o      �� 0 message  �  �   � Q   X � I  [ x��
� .sysoexecTEXT���     TEXT b   [ t b   [ r b   [ p b   [ j !  b   [ h"#" b   [ f$%$ b   [ d&'& b   [ b()( b   [ `*+* b   [ ^,-, m   [ \.. �//  a u t o m a t o r- 1   \ ]�
� 
spac+ o   ^ _�
�
 0 msgtitle msgTitle) 1   ` a�	
�	 
spac' o   b c�� 0 msgsubtitle msgSubtitle% 1   d e�
� 
spac# o   f g�� 0 message  ! 1   h i�
� 
spac o   j o�� 0 dnclocation DNCLocation 1   p q�
� 
spac m   r s00 �11  2 > / d e v / n u l l�   R      ��� 
� .ascrerr ****      � ****�  �    k   � �22 343 r   � �565 m   � �77 �88 
 f a l s e6 o      ���� *0 displaynoticecenter DisplayNoticeCenter4 9��9 I   � ���:���� 0 msg  : ;<; m   � �== �>>   S S H - C h e c k :   E r r o r< ?@? m   � �AA �BB  @ C��C b   � �DED m   � �FF �GG � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  E o   � ����� 0 dnclocation DNCLocation��  ��  ��  �  � c ]if OSX is 8 --OS X.8 Mountain Lion DNC does not have Applescript support, so this provides it   � �HH � i f   O S X   i s   8   - - O S   X . 8   M o u n t a i n   L i o n   D N C   d o e s   n o t   h a v e   A p p l e s c r i p t   s u p p o r t ,   s o   t h i s   p r o v i d e s   i t� IJI l     ��������  ��  ��  J KLK i   a dMNM I      ��O���� 0 msg  O PQP o      ���� 0 msgtitle msgTitleQ RSR o      ���� 0 msgsub msgSubS T��T o      ���� 0 message  ��  ��  N Z     (UV��WU o     ���� *0 displaynoticecenter DisplayNoticeCenterV I    ��X���� 
0 notify  X YZY o   	 
���� 0 msgtitle msgTitleZ [\[ o   
 ���� 0 msgsub msgSub\ ]��] o    ���� 0 message  ��  ��  ��  W Q    (^_`^ L    aa I   ��bc
�� .sysodlogaskr        TEXTb o    ���� 0 message  c ��d��
�� 
apprd o    ���� 0 msgtitle msgTitle��  _ R      ������
�� .ascrerr ****      � ****��  ��  ` L   & (����  L efe l     ��������  ��  ��  f ghg i   e hiji I      �������� 0 isapprunning isAppRunning��  ��  j k     )kk lml Q     &no��n O    pqp Z    rs����r =   tut n    vwv 1    ��
�� 
prunw  g    u m    ��
�� boovtrues L    xx m    ��
�� boovtrue��  ��  q 4    ��y
�� 
cappy o    
���� 0 program  o R      ������
�� .ascrerr ****      � ****��  ��  ��  m z��z L   ' ){{ m   ' (��
�� boovfals��  h |}| l     ��������  ��  ��  } ~~ i   i l��� I      ��������  0 killrunningapp killRunningApp��  ��  � Q     5���� O     ��� l   ���� Z    ������� =   ��� n    ��� 1    ��
�� 
prun�  g    � m    ��
�� boovtrue� I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  �   doesn't launch app   � ��� &   d o e s n ' t   l a u n c h   a p p� 4    ���
�� 
capp� o    
���� 0 program  � R      ������
�� .ascrerr ****      � ****��  ��  � I  ( 5�����
�� .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .���� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��   ��� l     ��������  ��  ��  � ��� i   m p��� I      �������� 0 servicealive serviceAlive��  ��  � k     f�� ��� Q     c����� l   Z���� k    Z�� ��� r    ��� m    �� ���  � o      ���� 
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
�� .ascrerr ****      � ****��  ��  ��  � ���� L   d f�� m   d e����  ��  � ��� l     ��������  ��  ��  �    i   q t I      ��~�}� 00 copyservicetoclipboard copyServiceToClipboard�~  �}   k       l     �|�|   \ V copy the service name to the clipboard to easily check in a terminal, webbrowser, etc    �		 �   c o p y   t h e   s e r v i c e   n a m e   t o   t h e   c l i p b o a r d   t o   e a s i l y   c h e c k   i n   a   t e r m i n a l ,   w e b b r o w s e r ,   e t c 
�{
 Q     �z k      I   �y�x
�y .sysoexecTEXT���     TEXT b     b    
 o    �w�w 0 xmlsettings XMLSettings 1    	�v
�v 
spac m   
  �  - x�x   �u R    �t�s�r
�t .ascrerr ****      � ****�s  �r  �u   R      �q�p�o
�q .ascrerr ****      � ****�p  �o  �z  �{    l     �n�m�l�n  �m  �l   �k i   u x I     �j�i�h
�j .aevtoappnull  �   � ****�i  �h   k    R  I     �g�f�e�g 0 resetprogram resetProgram�f  �e    !  I    �d�c�b�d $0 sshchecksettings sshCheckSettings�c  �b  ! "#" I    �a�`�_�a 0 
setdisplay 
setDisplay�`  �_  # $%$ l   �^�]�\�^  �]  �\  % &'& r    ()( I    �[�Z�Y�[ 0 servicealive serviceAlive�Z  �Y  ) o      �X�X  0 isservicealive isServiceAlive' *+* r    ,-, m    .. �// ( S S H   S e r v i c e   i s   D o w n !- o      �W�W 0 titlemsg  + 010 Z    �234�V2 F    -565 =   %787 I    #�U�T�S�U 0 isapprunning isAppRunning�T  �S  8 m   # $�R
�R boovtrue6 =  ( +9:9 o   ( )�Q�Q  0 isservicealive isServiceAlive: m   ) *�P�P  3 k   0 Y;; <=< r   0 ;>?> b   0 9@A@ b   0 7BCB m   0 1DD �EE , I t   i s   n o t   s a f e   t o   r u n  C o   1 6�O�O 0 program  A m   7 8FF �GG H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !? o      �N�N 0 message  = HIH I   < J�MJ�L�M 0 msg  J KLK o   = >�K�K 0 titlemsg  L MNM b   > EOPO m   > ?QQ �RR  W a r n i n g  P o   ? D�J�J 0 service  N S�IS o   E F�H�H 0 message  �I  �L  I TUT I   K P�G�F�E�G  0 killrunningapp killRunningApp�F  �E  U VWV I   Q V�D�C�B�D 00 copyservicetoclipboard copyServiceToClipboard�C  �B  W X�AX l  W YYZ[Y L   W Y�@�@  Z  exit SSH-Check   [ �\\  e x i t   S S H - C h e c k�A  4 ]^] =  \ __`_ o   \ ]�?�?  0 isservicealive isServiceAlive` m   ] ^�>�>  ^ a�=a k   b �bb cdc I   b ��<e�;�< 0 msg  e fgf o   c d�:�: 0 titlemsg  g hih b   d mjkj m   d gll �mm  W a r n i n g   a b o u t  k o   g l�9�9 0 service  i n�8n b   m �opo b   m �qrq b   m zsts b   m vuvu m   m pww �xx  D o n ' t   r u n  v o   p u�7�7 0 program  t m   v yyy �zz F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  r o   z �6�6 0 service  p m   � �{{ �||  .�8  �;  d }~} I   � ��5�4�3�5 00 copyservicetoclipboard copyServiceToClipboard�4  �3  ~ �2 l  � ����� L   � ��1�1  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�2  �=  �V  1 ��� l  � ��0�/�.�0  �/  �.  � ��� l  � ��-���-  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � ��,�,  0 isservicealive isServiceAlive� o      �+�+ 0 titlemsg  � ��� Z   �����*�� =  � ���� I   � ��)�(�'�) 0 isapprunning isAppRunning�(  �'  � m   � ��&
�& boovtrue� l  ����� k   ��� ��� r   � ���� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ��%� m   � ��� ���  T u r n   O f f�%  � o      �$�$ 0 btnopt btnOpt� ��� r   � ���� b   � ���� o   � ��#�# 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k ?� o      �"�" 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ��!
�! 
bhit� l  � ��� �� I  � ����
� .sysodlogaskr        TEXT� o   � ��� 0 qmsg qMsg� ���
� 
btns� o   � ��� 0 btnopt btnOpt� ���
� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� ���
� 
appr� o   � ��� 0 titlemsg  �  �   �  � o      �� 
0 choice  � ��� Z   ������ =  � ���� o   � ��� 
0 choice  � m   � ��� ���  R e s t a r t� I   � �����  0 killrunningapp killRunningApp�  �  � ��� =  ���� o   � ��� 
0 choice  � m   � �� ���  T u r n   O f f� ��� k  �� ��� I  	����  0 killrunningapp killRunningApp�  �  � ��� l 
���� L  
�
�
  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  �  � l ���� l ���� L  �	�	  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l�  � 0 * should we kill & restart the running app?   � ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�*  � k  ��� ��� r  %��� b  !��� b  ��� m  �� ���  S t a r t i n g  � o  �� 0 program  � 1   �
� 
spac� o      �� 0 qmsg qMsg� ��� Z  &������ = &-��� o  &+�� *0 displaynoticecenter DisplayNoticeCenter� m  +,�
� boovtrue� k  0V�� ��� I  0H��� � 0 msg  � ��� m  14�� ���  S S H - C h e c k�    b  4= b  49 o  45����  0 isservicealive isServiceAlive 1  58��
�� 
spac m  9< �  i s   a c t i v e �� b  =D	
	 o  =@���� 0 qmsg qMsg
 m  @C �  u p   n o w !��  �   � �� I IV����
�� .sysodelanull��� ��� nmbr l IR���� ^  IR o  IN���� 0 	countdown   m  NQ���� 	��  ��  ��  ��  �  � k  Y�  r  Ye J  Ya  m  Y\ �  L a u n c h �� m  \_ �  S t o p��   o      ���� 0 btnopt btnOpt �� Q  f� !"  k  i�## $%$ r  i~&'& b  iz()( b  iv*+* b  ip,-, o  il���� 0 qmsg qMsg- m  lo.. �//    i n  + o  pu���� 0 	countdown  ) m  vy00 �11    s e c o n d s !' o      ���� 0 qmsg qMsg% 232 r  �454 n  �676 1  ����
�� 
bhit7 l �8����8 I ���9:
�� .sysodlogaskr        TEXT9 o  ����� 0 qmsg qMsg: ��;<
�� 
btns; o  ������ 0 btnopt btnOpt< ��=>
�� 
dflt= m  ��?? �@@  L a u n c h> ��AB
�� 
apprA o  ������ 0 titlemsg  B ��C��
�� 
givuC o  ������ 0 	countdown  ��  ��  ��  5 o      ���� 0 yesorno yesOrNo3 D��D Z  ��EF����E = ��GHG o  ������ 0 yesorno yesOrNoH m  ��II �JJ  S t o pF L  ������  ��  ��  ��  ! R      ������
�� .ascrerr ****      � ****��  ��  " L  ������  ��  �  � KLK l ����������  ��  ��  L MNM l ����OP��  O ! Prepare to launch a program   P �QQ 6 P r e p a r e   t o   l a u n c h   a   p r o g r a mN RSR r  ��TUT n  ��VWV 1  ����
�� 
psxpW l ��X����X m  ��YY �ZZ  / A p p l i c a t i o n s /��  ��  U o      ���� 0 apppath appPathS [\[ l ����]^��  ] 0 *msg("info:", "Msg", "apppath: " & appPath)   ^ �__ T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )\ `a` r  ��bcb I ������d
�� .sysooffslong    ��� null��  d ��ef
�� 
psofe o  ������ 0 program  f ��g��
�� 
psing o  ������ 0 apppath appPath��  c o      ���� 0 
nameoffset 
nameOffseta hih l ����jk��  j 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   k �ll ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )i mnm r  �opo n  ��qrq 7 ����st
�� 
ctxts m  ������ t l ��u����u \  ��vwv o  ������ 0 
nameoffset 
nameOffsetw m  ������ ��  ��  r o  ������ 0 apppath appPathp o      ���� 0 
folderpath 
folderPathn xyx l ��z{��  z 6 0msg("info:", "Msg", "folderpath: " & folderPath)   { �|| ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )y }~} Q  P�� l 4���� k  4�� ��� I �����
�� .sysoexecTEXT���     TEXT� b  ��� b  ��� b  ��� o  ���� 0 
folderpath 
folderPath� o  ���� 0 program  � m  �� ���  . a p p� m  �� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  � ��� I  �����
�� .sysodelanull��� ��� nmbr� m  ���� ��  � ���� O !4��� I .3������
�� .miscactvnull��� ��� null��  ��  � 4  !+���
�� 
capp� o  %*���� 0 program  ��  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      ������
�� .ascrerr ****      � ****��  ��  � I  <P������� 0 msg  � ��� m  =@�� ���   S S H - C h e c k :   E r r o r� ��� m  @C�� ��� 
 E r r o r� ���� b  CL��� m  CF�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  FK���� 0 program  ��  ��  ~ ���� l QQ��������  ��  ��  ��  �k       ���   ! ' 1 7� J��������������������������  � ������������������������������������������������������������ 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel�� 
0 osx OSX
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 setosxnumber setOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive�� 00 copyservicetoclipboard copyServiceToClipboard
�� .aevtoappnull  �   � ****� ��� � / U s e r s / t w i l i g h t / g i t h u b / S S H - C h e c k / s r c / S S H - C h e c k . s c p t d / C o n t e n t s / S u p p o r t / i c o n f i g S S H C . p y
�� boovfals
�� boovfals�� � �� f��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ��~� 0 these_items  �~ 0 prog  �  t�} ��|�{ ��z�y�x � � ��w�v�u
�} 
TEXT
�| 
txdl
�{ 
citm�z $0 sshchecksettings sshCheckSettings�y 0 	updatexml 	updateXML�x 0 
setdisplay 
setDisplay�w 0 msg  
�v .sysodelanull��� ��� nmbr
�u .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j � �t ��s�r���q�t 0 resetprogram resetProgram�s  �r  �  �  �q fEc  � �p ��o�n���m�p 0 setosxnumber setOSXNumber�o  �n  �  �  ��l�k�j�i�h
�l 
txdl
�k .sysosigtsirr   ��� null
�j 
sisv
�i 
citm
�h 
nmbr�m �*�,FO*j �,�l/�&EQc  
OP� �g ��f�e���d�g 0 
setdisplay 
setDisplay�f  �e  �  � �c�b�a�`�_�c 0 setosxnumber setOSXNumber�b 	�a �` 0 
fileexists 
FileExists
�_ 
bool�d P*j+  Ob  
�
 -b  
� 	 *b  k+ e �&	 *b  k+ e �&�& eEc  Y 	fEc  � �^�]�\���[�^ 0 
fileexists 
FileExists�] �Z��Z �  �Y�Y 0 thefile theFile�\  � �X�X 0 thefile theFile� &�W�V
�W 
file
�V .coredoexnull���     ****�[ � *�/j  eY hUOf� �U.�T�S���R�U 0 folderexists FolderExists�T �Q��Q �  �P�P 0 	thefolder 	theFolder�S  � �O�O 0 	thefolder 	theFolder� ;�N�M
�N 
cfol
�M .coredoexnull���     ****�R � *�/j  eY hUOf� �LC�K�J���I�L 0 	updatexml 	updateXML�K �H��H �  �G�G 0 programname programName�J  � �F�E�D�F 0 programname programName�E 
0 update  �D 0 update2  � �C�B_�A�@j{����?�>�=�C 0 
fileexists 
FileExists
�B 
spac
�A 
strq
�@ .sysoexecTEXT���     TEXT
�? 
bool�>  �=  �I �*b  k+  e  w kb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hO)jhW X  hY hOf� �<��;�:���9�< 0 setupservice setupService�;  �:  � �8�8 0 ser  � 
�7�6��5���4�3�2��7 0 
fileexists 
FileExists
�6 
spac
�5 .sysoexecTEXT���     TEXT
�4 
bool�3  �2  �9 r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc   OeY hO)jhW X  hY hOb   �  b  EQc   Y hOf� �1��0�/���.�1 "0 setservicelevel setServiceLevel�0  �/  � �-�- 
0 slevel  � 	�,�+�*�)�(1�, 0 
fileexists 
FileExists
�+ 
spac
�* .sysoexecTEXT���     TEXT�)  �(  �. �*b  k+  e  T Hb  �%�%j E�O��  eEc  	Y ��  fEc  	Y 	fEc  	Ob  	O)jhW X  hY hOb  	�  fEc  	Y hOb  	� �'<�&�%���$�' 0 setupprogram setupProgram�&  �%  � �#�# 0 prog  � 
�"�!R� ]b���r�" 0 
fileexists 
FileExists
�! 
spac
�  .sysoexecTEXT���     TEXT
� 
bool�  �  �$ r*b  k+  e  E 9b  �%�%j E�O��	 ���& �EQc  OeY hO)jhW X  hY hOb  �  b  EQc  Y hOf� �}������ $0 sshchecksettings sshCheckSettings�  �  � ���������������
� 0 configfolder configFolder� 0 
configpath 
configPath� 0 iconfig  � 
0 mypath  � 0 
supportloc 
supportLoc� 0 cmdmakepath cmdMakePath� 0 qmsg qMsg� 0 btnopt btnOpt� 0 yesorno yesOrNo� 0 alertaction alertAction� *0 cmdunzipalertaction cmdUnzipAlertAction� .0 cmdcleanupalertaction cmdCleanUpAlertAction� 0 
dnworkflow 
DNWorkflow� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�
 ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� A����	������������� 	��.0:����\eh����y��}������������������������$0ACVgk������������	 0 folderexists FolderExists� 0 
fileexists 
FileExists
� 
bool� 
� 
spac
� 
rtyp
� 
TEXT
� .earsffdralis        afdr
� 
psxp
�  .sysoexecTEXT���     TEXT
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
strq�� 0 msg  �� 0 setupservice setupService�� 0 setupprogram setupProgram�� 0 
setdisplay 
setDisplay�� "0 setservicelevel setServiceLevel��E�O�%E�O�E�O*�k+ f 
 *�k+ f �&
 -b  
� 	 !*b  k+ f 
 *b  k+ f �&�&�&��%�%�%�%E�O)��l �,�%E�O *�k+ f  ��%�%E�O�j Oa j Y hO*�k+ f  : &�a %�%a %j O�a %�%b  %j W X  hOa j Y hOb  
� �*b  k+ f a E�Oa a lvE�O ,�a �a a a a a  b  a ! � "a #,E�W X  hO�a $  �a %E�O �a &%�%�%�%a '%j W X  hOa j O*�a (%�%k+ e  4 (�a )%�%�%E�O�j O�a *%�%�%E�O�j W X  hY hO *�a +%a ,a -,%j O)jhO*a .a /a 0m+ 1W X  hOa j Y hY hO*�k+ e 	 *b  k+ f �& wa 2E�O�a 3%�%�%E�O�a 4%�%�%E�O �a 5%�%�%�%a 6%j W X  hOa j O*�a 7%�%k+ e   �j O�j W X  hY hY hY hW "X  *a 8a 9�m+ 1O*j+ :O*j+ ;OfOb  m!j O*j+ <Ob  e  *a =�a >%a ?m+ 1Okj Y hY hO*j+ @O*j+ :e 	 *j+ ;e �& eY hOf� ������������� 
0 notify  �� ����� �  �������� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 message  ��  � �������� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 message  � ������������������.��0������7=AF���� 	
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� �b  
� ���� Y ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W %X  a Ec  O*a a a b  %m+ � ��N���������� 0 msg  �� ����� �  �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  ��  � �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  � ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� )b   *���m+  Y  ��l W 	X  h� ��j���������� 0 isapprunning isAppRunning��  ��  �  � ��������
�� 
capp
�� 
prun��  ��  �� * *�b  / *�,e  eY hUW X  hOf� �������������  0 killrunningapp killRunningApp��  ��  �  � ��������������
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
cobj��  ��  �� g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOj� ������������ 00 copyservicetoclipboard copyServiceToClipboard��  ��  �  � ��������
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  ��  b  �%�%j O)jhW X  h� ����������
�� .aevtoappnull  �   � ****��  ��  �  � I����������.������DF��Q������lwy{����������������������������������.0?������I����Y������~�}�|�{�z�y���x�w�v����� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
setdisplay 
setDisplay�� 0 servicealive serviceAlive��  0 isservicealive isServiceAlive�� 0 titlemsg  �� 0 isapprunning isAppRunning
�� 
bool�� 0 message  �� 0 msg  ��  0 killrunningapp killRunningApp�� 00 copyservicetoclipboard copyServiceToClipboard�� 0 btnopt btnOpt�� 0 qmsg qMsg
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
� 
psof
�~ 
psin�} 
�| .sysooffslong    ��� null�{ 0 
nameoffset 
nameOffset
�z 
ctxt�y 0 
folderpath 
folderPath
�x .sysoexecTEXT���     TEXT
�w 
capp
�v .miscactvnull��� ��� null��S*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& .�b  %�%E�O*��b   %�m+ O*j+ O*j+ OhY ;�j  4*�a b   %a b  %a %b   %a %m+ O*j+ OhY hOa �%E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a   a !,E` "O_ "a #  
*j+ Y _ "a $  *j+ OhY hY �a %b  %_ &%E` Ob  e  +*a '�_ &%a (%_ a )%m+ Ob  a *!j +Y la ,a -lvE` O U_ a .%b  %a /%E` O_ a _ a a 0a �a 1b  a 2  a !,E` 3O_ 3a 4  hY hW 	X 5 6hOa 7a 8,E` 9O*a :b  a ;_ 9a < =E` >O_ 9[a ?\[Zk\Z_ >k2E` @O 4_ @b  %a A%a B%j COkj +O*a Db  / *j EUW X 5 6*a Fa Ga Hb  %m+ OPascr  ��ޭ