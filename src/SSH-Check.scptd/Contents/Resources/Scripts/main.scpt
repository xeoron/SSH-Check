FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   `Z
	Name: SSH-Check
	Version: 0.8.4-2
	Author: Jason Campisi
	Date: 9.7.2013->2014
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
 	 V e r s i o n :   0 . 8 . 4 - 2 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 - > 2 0 1 4 
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
�Y boovtrue�_  �^    m     &&�                                                                                  sevs  alis    �  Thneed                     �lpH+   x�BSystem Events.app                                               |��A��        ����  	                CoreServices    �l�U      �A�9     x�B x�? x�>  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   '�X' L    (( m    �W
�W boovfals�X   )*) l     �V�U�T�V  �U  �T  * +,+ i   E H-.- I      �S/�R�S 0 folderexists FolderExists/ 0�Q0 o      �P�P 0 	thefolder 	theFolder�Q  �R  . k     11 232 O     454 Z    67�O�N6 I   �M8�L
�M .coredoexnull���     ****8 4    �K9
�K 
cfol9 o    �J�J 0 	thefolder 	theFolder�L  7 L    :: m    �I
�I boovtrue�O  �N  5 m     ;;�                                                                                  sevs  alis    �  Thneed                     �lpH+   x�BSystem Events.app                                               |��A��        ����  	                CoreServices    �l�U      �A�9     x�B x�? x�>  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��  3 <�H< L    == m    �G
�G boovfals�H  , >?> l     �F�E�D�F  �E  �D  ? @A@ i   I LBCB I      �CD�B�C 0 	updatexml 	updateXMLD E�AE o      �@�@ 0 programname programName�A  �B  C k     �FF GHG Z     �IJ�?�>I =    KLK I     
�=M�<�= 0 
fileexists 
FileExistsM N�;N o    �:�: 0 xmlsettings XMLSettings�;  �<  L m   
 �9
�9 boovtrueJ Q    }OPQO k    sRR STS r    'UVU I   %�8W�7
�8 .sysoexecTEXT���     TEXTW b    !XYX b    Z[Z b    \]\ b    ^_^ o    �6�6 0 xmlsettings XMLSettings_ 1    �5
�5 
spac] m    `` �aa  - u p[ 1    �4
�4 
spacY n     bcb 1     �3
�3 
strqc o    �2�2 0 programname programName�7  V o      �1�1 
0 update  T d�0d Z   ( sef�/ge =  ( +hih o   ( )�.�. 
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
� boovtrue�  �  �  �0  P R      ���
� .ascrerr ****      � ****�  �  Q L   { }�� m   { |�
� boovfals�?  �>  H ��� L   � ��� m   � ��
� boovfals�  A ��� l     ����  �  �  � ��� i   M P��� I      ���� 0 setupservice setupService�  �  � k     m�� ��� Z     O���
�	� =    ��� I     
���� 0 
fileexists 
FileExists� ��� o    �� 0 xmlsettings XMLSettings�  �  � m   
 �
� boovtrue� Q    K���� k    A�� ��� r    !��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    �� 0 xmlsettings XMLSettings� 1    � 
�  
spac� m    �� ���  - s�  � o      ���� 0 ser  � ���� Z   " A������� F   " /��� H   " &�� E   " %��� o   " #���� 0 ser  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *���� 0 ser  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3���� 0 ser  � o      ���� 0 service  � ���� L   ; =�� m   ; <��
�� boovtrue��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   I K�� m   I J��
�� boovfals�
  �	  � ��� Z   P j������� =  P W��� o   P U���� 0 service  � m   U V�� ���  � s   Z f��� o   Z _���� 0 servicebackup serviceBackup� o      ���� 0 service  ��  ��  � ���� L   k m�� m   k l��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   Q T��� I      �������� "0 setservicelevel setServiceLevel��  ��  � k     k�� ��� l     ������  � ^ XShould the ssh tunnel to service X be run by the current user or any user on the system?   � ��� � S h o u l d   t h e   s s h   t u n n e l   t o   s e r v i c e   X   b e   r u n   b y   t h e   c u r r e n t   u s e r   o r   a n y   u s e r   o n   t h e   s y s t e m ?� ��� l     ������  � < 6True is to search globally and False to search locally   � ��� l T r u e   i s   t o   s e a r c h   g l o b a l l y   a n d   F a l s e   t o   s e a r c h   l o c a l l y� ��� Z     N������� =    ��� I     
������� 0 
fileexists 
FileExists� ���� o    ���� 0 xmlsettings XMLSettings��  ��  � m   
 ��
�� boovtrue� Q    J���� k    @�� � � r    ! I   ����
�� .sysoexecTEXT���     TEXT b     b     o    ���� 0 xmlsettings XMLSettings 1    ��
�� 
spac m     �		  - s l��   o      ���� 
0 slevel    

 Z   " 9�� =  " % o   " #���� 
0 slevel   m   # $ �  g l o b a l l y r   ( / m   ( )��
�� boovtrue o      ���� 0 servicelevel ServiceLevel��   l  2 9 r   2 9 m   2 3��
�� boovfals o      ���� 0 servicelevel ServiceLevel ( " slevel is equal to "locally" then    � D   s l e v e l   i s   e q u a l   t o   " l o c a l l y "   t h e n  l  : :����   = 7msg("service level", "", slevel & " = " & ServiceLevel)    � n m s g ( " s e r v i c e   l e v e l " ,   " " ,   s l e v e l   &   "   =   "   &   S e r v i c e L e v e l )  ��  L   : @!! o   : ?���� 0 servicelevel ServiceLevel��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   H J"" m   H I��
�� boovfals��  ��  � #$# l  O O��������  ��  ��  $ %&% Z   O d'(����' =  O V)*) o   O T���� 0 servicelevel ServiceLevel* m   T U++ �,,  ( r   Y `-.- m   Y Z��
�� boovfals. o      ���� 0 servicelevel ServiceLevel��  ��  & /��/ L   e k00 o   e j���� 0 servicelevel ServiceLevel��  � 121 l     ��������  ��  ��  2 343 i   U X565 I      �������� 0 setupprogram setupProgram��  ��  6 k     m77 898 Z     O:;����: =    <=< I     
��>���� 0 
fileexists 
FileExists> ?��? o    ���� 0 xmlsettings XMLSettings��  ��  = m   
 ��
�� boovtrue; Q    K@AB@ k    ACC DED r    !FGF I   ��H��
�� .sysoexecTEXT���     TEXTH b    IJI b    KLK o    ���� 0 xmlsettings XMLSettingsL 1    ��
�� 
spacJ m    MM �NN  - p��  G o      ���� 0 prog  E O��O Z   " APQ����P F   " /RSR H   " &TT E   " %UVU o   " #���� 0 prog  V m   # $WW �XX  N o n eS H   ) -YY E   ) ,Z[Z o   ) *���� 0 prog  [ m   * +\\ �]]  Q k   2 =^^ _`_ s   2 :aba o   2 3���� 0 prog  b o      ���� 0 program  ` c��c L   ; =dd m   ; <��
�� boovtrue��  ��  ��  ��  A R      ������
�� .ascrerr ****      � ****��  ��  B L   I Kee m   I J��
�� boovfals��  ��  9 fgf Z   P jhi����h =  P Wjkj o   P U���� 0 program  k m   U Vll �mm  i s   Z fnon o   Z _���� 0 programbackup programBackupo o      ���� 0 program  ��  ��  g p��p L   k mqq m   k l��
�� boovfals��  4 rsr l     ��������  ��  ��  s tut i   Y \vwv I      �������� $0 sshchecksettings sshCheckSettings��  ��  w l   xyzx k    {{ |}| r     ~~ m     �� ���  . s s h - c h e c k o      ���� 0 configfolder configFolder} ��� r    	��� b    ��� m    �� ���  ~ /� o    ���� 0 configfolder configFolder� o      ���� 0 
configpath 
configPath� ��� r   
 ��� m   
 �� ��� 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y� o      ���� 0 iconfig  � ��� l   ��������  ��  ��  � ��� Z   �������� G    Q��� G    #��� =   ��� I    ������� 0 folderexists FolderExists� ���� o    ���� 0 
configpath 
configPath��  ��  � m    ��
�� boovfals� =   !��� I    ������� 0 
fileexists 
FileExists� ���� o    ���� 0 iconfig  ��  ��  � m     ��
�� boovfals� l  & O����� F   & O��� =  & -��� o   & +�~�~ 
0 osx OSX� m   + ,�}�} � l  0 M��|�{� G   0 M��� =  0 <��� I   0 :�z��y�z 0 
fileexists 
FileExists� ��x� o   1 6�w�w 0 dnclocation DNCLocation�x  �y  � m   : ;�v
�v boovfals� =  ? K��� I   ? I�u��t�u 0 
fileexists 
FileExists� ��s� o   @ E�r�r 0 dnca DNCA�s  �t  � m   I J�q
�q boovfals�|  �{  ��  �  � k   T��� ��� l  T T�p���p  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  T T�o���o  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� r   T _��� b   T ]��� b   T [��� b   T Y��� b   T W��� m   T U�� ���  c d  � o   U V�n�n 0 
configpath 
configPath� 1   W X�m
�m 
spac� m   Y Z�� ���  & &� 1   [ \�l
�l 
spac� o      �k�k 
0 mypath  � ��� r   ` m��� b   ` k��� l  ` i��j�i� n   ` i��� 1   g i�h
�h 
psxp� l  ` g��g�f� I  ` g�e��
�e .earsffdralis        afdr�  f   ` a� �d��c
�d 
rtyp� m   b c�b
�b 
TEXT�c  �g  �f  �j  �i  � m   i j�� ��� " C o n t e n t s / S u p p o r t /� o      �a�a 0 
supportloc 
supportLoc� ��� Q   n����� k   q��� ��� Z   q ����`�_� =  q y��� I   q w�^��]�^ 0 folderexists FolderExists� ��\� o   r s�[�[ 0 
configpath 
configPath�\  �]  � m   w x�Z
�Z boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~�Y
�Y 
spac� o    ��X�X 0 
configpath 
configPath� o      �W�W 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ��V��U
�V .sysoexecTEXT���     TEXT� o   � ��T�T 0 cmdmakepath cmdMakePath�U  �  create path   � ���  c r e a t e   p a t h� ��S� l  � ����� I  � ��R �Q
�R .sysodelanull��� ��� nmbr  m   � � ?�      �Q  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � � � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t�S  �`  �_  �  l  � ��P�O�N�P  �O  �N    Z   � ��M�L =  � �	
	 I   � ��K�J�K 0 
fileexists 
FileExists �I o   � ��H�H 0 iconfig  �I  �J  
 m   � ��G
�G boovfals k   � �  l  � ��F�F   f `note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,    � � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,  l  � ��E�E   � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it    � � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t  Q   � ��D k   � �  I  � ��C�B
�C .sysoexecTEXT���     TEXT b   � � !  b   � �"#" b   � �$%$ o   � ��A�A 
0 mypath  % m   � �&& �''  c p  # o   � ��@�@ 0 
supportloc 
supportLoc! m   � �(( �)) " i c o n f i g S S H C . p y   . /�B   *�?* I  � ��>+�=
�> .sysoexecTEXT���     TEXT+ b   � �,-, b   � �./. b   � �010 o   � ��<�< 
0 mypath  1 m   � �22 �33  c h m o d   + x/ 1   � ��;
�; 
spac- o   � ��:�: 0 xmlsettings XMLSettings�=  �?   R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  �D   454 I  � ��66�5
�6 .sysodelanull��� ��� nmbr6 m   � �77 ?�      �5  5 8�48 l  � ��39:�3  9  else if   : �;;  e l s e   i f�4  �M  �L   <=< l  � ��2�1�0�2  �1  �0  = >�/> Z   ��?@�.�-? =  � �ABA o   � ��,�, 
0 osx OSXB m   � ��+�+ @ l  ��CDEC l  ��FGHF Z   ��IJ�*�)I =  � �KLK I   � ��(M�'�( 0 
fileexists 
FileExistsM N�&N o   � ��%�% 0 dnca DNCA�&  �'  L m   � ��$
�$ boovfalsJ k   �OO PQP l  � ��#RS�#  R ? 9setup Automator Display Notification Center Action script   S �TT r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p tQ UVU r   � �WXW m   � �YY �ZZ � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !X o      �"�" 0 qmsg qMsgV [\[ r   �]^] J   �__ `a` m   � �bb �cc  Y e sa d�!d m   �ee �ff  N o�!  ^ o      � �  0 btnopt btnOpt\ ghg Q  :ij�i r  
1klk n  
/mnm 1  +/�
� 
bhitn l 
+o��o I 
+�pq
� .sysodlogaskr        TEXTp o  
�� 0 qmsg qMsgq �rs
� 
btnsr o  �� 0 btnopt btnOpts �tu
� 
dfltt m  vv �ww  N ou �xy
� 
apprx m  zz �{{ > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l py �|�
� 
givu| ]  '}~} o  #�� 0 	countdown  ~ m  #&�� <�  �  �  l o      �� 0 yesorno yesOrNoj R      ���
� .ascrerr ****      � ****�  �  �  h � l ;����� Z  ;������ = ;@��� o  ;<�� 0 yesorno yesOrNo� m  <?�� ���  Y e s� k  C��� ��� r  CH��� m  CF�� ��� X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p� o      �
�
 0 alertaction alertAction� ��� Q  Ih���	� I L_���
� .sysoexecTEXT���     TEXT� b  L[��� b  LW��� b  LU��� b  LS��� b  LQ��� o  LM�� 
0 mypath  � m  MP�� ���  c p  � o  QR�� 0 
supportloc 
supportLoc� o  ST�� 0 alertaction alertAction� 1  UV�
� 
spac� m  WZ�� ���  . /�  � R      ��� 
� .ascrerr ****      � ****�  �   �	  � ��� I ip�����
�� .sysodelanull��� ��� nmbr� m  il�� ?�      ��  � ��� l qq��������  ��  ��  � ��� Z  q�������� = q��� I  q}������� 0 
fileexists 
FileExists� ���� b  ry��� b  rw��� o  rs���� 0 
configpath 
configPath� m  sv�� ���  /� o  wx���� 0 alertaction alertAction��  ��  � m  }~��
�� boovtrue� Q  ������� k  ���� ��� r  ����� b  ����� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ����
�� 
spac� o  ������ 0 alertaction alertAction� o      ���� *0 cmdunzipalertaction cmdUnzipAlertAction� ��� I �������
�� .sysoexecTEXT���     TEXT� o  ������ *0 cmdunzipalertaction cmdUnzipAlertAction��  � ��� r  ����� b  ����� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ����
�� 
spac� o  ������ 0 alertaction alertAction� o      ���� .0 cmdcleanupalertaction cmdCleanUpAlertAction� ���� I �������
�� .sysoexecTEXT���     TEXT� o  ������ .0 cmdcleanupalertaction cmdCleanUpAlertAction��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� Q  ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� o  ������ 
0 mypath  � m  ���� ��� 
 o p e n  � n  ����� 1  ����
�� 
strq� m  ���� ��� P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  � R      ������
�� .ascrerr ****      � ****��  ��  � I  ��������� 0 msg  � ��� m  ���� ���   S S H - C h e c k :   E r r o r� ��� m  ���� ���  � ���� m  ���� ��� @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  �  �  �   end of "Yes" go setup DNCA   � ��� 4 e n d   o f   " Y e s "   g o   s e t u p   D N C A� ��� l ����������  ��  ��  � ���� Z  �������� F  ���� = ��� � I  �������� 0 folderexists FolderExists �� o  ������ 0 
configpath 
configPath��  ��    m  ����
�� boovtrue� = � I  ������� 0 
fileexists 
FileExists �� o  ������ 0 dnclocation DNCLocation��  ��   m  ��
�� boovfals� k  	{ 	 l 		��
��  
 0 *setup display notification center workflow    � T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w	  r  	 m  	 � B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p o      ���� 0 
dnworkflow 
DNWorkflow  r   b   b   b   o  ���� 
0 mypath   m   �  u n z i p   - u 1  ��
�� 
spac o  ���� 0 
dnworkflow 
DNWorkflow o      ���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow   r  &!"! b  $#$# b  "%&% b   '(' o  ���� 
0 mypath  ( m  )) �**   r m   - r f   _ _ M A C O S X /& 1   !��
�� 
spac$ o  "#���� 0 
dnworkflow 
DNWorkflow" o      ���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow  +,+ Q  'F-.��- I *=��/��
�� .sysoexecTEXT���     TEXT/ b  *9010 b  *5232 b  *3454 b  *1676 b  */898 o  *+���� 
0 mypath  9 m  +.:: �;;  c p  7 o  /0���� 0 
supportloc 
supportLoc5 o  12���� 0 
dnworkflow 
DNWorkflow3 1  34��
�� 
spac1 m  58<< �==  . /��  . R      ������
�� .ascrerr ****      � ****��  ��  ��  , >?> I GN��@��
�� .sysodelanull��� ��� nmbr@ m  GJAA ?�      ��  ? BCB l OO��������  ��  ��  C D��D Z  O{EF����E = O]GHG I  O[��I���� 0 
fileexists 
FileExistsI J��J b  PWKLK b  PUMNM o  PQ���� 0 
configpath 
configPathN m  QTOO �PP  /L o  UV���� 0 
dnworkflow 
DNWorkflow��  ��  H m  [\��
�� boovtrueF Q  `wQR��Q k  cnSS TUT I ch��V��
�� .sysoexecTEXT���     TEXTV o  cd���� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow��  U W��W I in��X��
�� .sysoexecTEXT���     TEXTX o  ij���� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow��  ��  R R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��  ��  ��  �*  �)  G  os x.8 only   H �YY  o s   x . 8   o n l yD > 8OS X.8 only install Display Noticafaction Center support   E �ZZ p O S   X . 8   o n l y   i n s t a l l   D i s p l a y   N o t i c a f a c t i o n   C e n t e r   s u p p o r t�.  �-  �/  � R      ������
�� .ascrerr ****      � ****��  ��  � k  ��[[ \]\ I  ����^���� 0 msg  ^ _`_ m  ��aa �bb  S e t u p   F a i l e d :` cdc m  ��ee �ff  d g��g o  ������ 0 
configpath 
configPath��  ��  ] hih I  ���������� 0 setupservice setupService��  ��  i jkj I  ���������� 0 setupprogram setupProgram��  ��  k l��l L  ��mm m  ����
�� boovfals��  � non l ����������  ��  ��  o pqp l ����rs��  r n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   s �tt � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .q uvu I ����w��
�� .sysodelanull��� ��� nmbrw ^  ��xyx o  ������ 0 	countdown  y m  ���� ��  v z{z I  ���~�}�|�~ 0 
setdisplay 
setDisplay�}  �|  { |�{| Z  ��}~�z�y} = ��� o  ���x�x *0 displaynoticecenter DisplayNoticeCenter� m  ���w
�w boovtrue~ k  ���� ��� I  ���v��u�v 0 msg  � ��� m  ���� ���   S S H - C h e c k :   S e t u p� ��� b  ����� o  ���t�t 0 
configpath 
configPath� m  ���� ��� ,   s e t t i n g s   a r e   c u r r e n t .� ��s� m  ���� ��� L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�s  �u  � ��r� I ���q��p
�q .sysodelanull��� ��� nmbr� m  ���o�o �p  �r  �z  �y  �{  ��  ��  � ��� l ���n�m�l�n  �m  �l  � ��� l ���k���k  � # loadSettings from config file   � ��� : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e� ��� I  ���j�i�h�j "0 setservicelevel setServiceLevel�i  �h  � ��� Z  ����g�f� F  ����� = ����� I  ���e�d�c�e 0 setupservice setupService�d  �c  � m  ���b
�b boovtrue� = ����� I  ���a�`�_�a 0 setupprogram setupProgram�`  �_  � m  ���^
�^ boovtrue� L  �� m  �]
�] boovtrue�g  �f  � ��� l 		�\�[�Z�\  �[  �Z  � ��Y� L  	�� m  	
�X
�X boovfals�Y  y  return bool   z ���  r e t u r n   b o o lu ��� l     �W�V�U�W  �V  �U  � ��� i   ] `��� I      �T��S�T 
0 notify  � ��� o      �R�R 0 msgtitle msgTitle� ��� o      �Q�Q 0 msgsubtitle msgSubtitle� ��P� o      �O�O 0 message  �P  �S  � Z     ����N�� @     ��� o     �M�M 
0 osx OSX� m    �L�L 	� l  
 ���� I  
 �K��
�K .sysonotfnull��� ��� TEXT� o   
 �J�J 0 message  � �I��
�I 
appr� o    �H�H 0 msgtitle msgTitle� �G��F
�G 
subt� o    �E�E 0 msgsubtitle msgSubtitle�F  � h b use OS X Noticafaction Center: OS x.9 http://macosxautomation.com/mavericks/notifications/01.html   � ��� �   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r :   O S   x . 9   h t t p : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l�N  � l   ����� k    ��� ��� l    �D���D  � 	OS X 8 make use of System Notifacation Center
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
  � ��� Z   +���C�B� >   ��� c    ��� o    �A�A 0 msgtitle msgTitle� m    �@
�@ 
ctxt� m    �� ���  � r    '��� b    %��� m    �� ���    - D   t i t l e =� n    $��� 1   " $�?
�? 
strq� l   "��>�=� c    "��� o     �<�< 0 msgtitle msgTitle� m     !�;
�; 
ctxt�>  �=  � o      �:�: 0 msgtitle msgTitle�C  �B  � ��� Z  , A���9�8� >  , 1��� c   , /��� o   , -�7�7 0 msgsubtitle msgSubtitle� m   - .�6
�6 
ctxt� m   / 0�� ���  � r   4 =��� b   4 ;��� m   4 5�� ���    - D   s u b t i t l e =� n   5 :��� 1   8 :�5
�5 
strq� l  5 8��4�3� c   5 8��� o   5 6�2�2 0 msgsubtitle msgSubtitle� m   6 7�1
�1 
ctxt�4  �3  � o      �0�0 0 msgsubtitle msgSubtitle�9  �8  � ��� Z  B W���/�.� >  B G��� c   B E   o   B C�-�- 0 message   m   C D�,
�, 
ctxt� m   E F �  � r   J S b   J Q m   J K �		    - D   m e s s a g e = n   K P

 1   N P�+
�+ 
strq l  K N�*�) c   K N o   K L�(�( 0 message   m   L M�'
�' 
ctxt�*  �)   o      �&�& 0 message  �/  �.  � �% Q   X � I  [ x�$�#
�$ .sysoexecTEXT���     TEXT b   [ t b   [ r b   [ p b   [ j b   [ h b   [ f b   [ d !  b   [ b"#" b   [ `$%$ b   [ ^&'& m   [ \(( �))  a u t o m a t o r' 1   \ ]�"
�" 
spac% o   ^ _�!�! 0 msgtitle msgTitle# 1   ` a� 
�  
spac! o   b c�� 0 msgsubtitle msgSubtitle 1   d e�
� 
spac o   f g�� 0 message   1   h i�
� 
spac o   j o�� 0 dnclocation DNCLocation 1   p q�
� 
spac m   r s** �++  2 > / d e v / n u l l�#   R      ���
� .ascrerr ****      � ****�  �   k   � �,, -.- r   � �/0/ m   � �11 �22 
 f a l s e0 o      �� *0 displaynoticecenter DisplayNoticeCenter. 3�3 I   � ��4�� 0 msg  4 565 m   � �77 �88   S S H - C h e c k :   E r r o r6 9:9 m   � �;; �<<  : =�= b   � �>?> m   � �@@ �AA � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  ? o   � ��� 0 dnclocation DNCLocation�  �  �  �%  � c ]if OSX is 8 --OS X.8 Mountain Lion DNC does not have Applescript support, so this provides it   � �BB � i f   O S X   i s   8   - - O S   X . 8   M o u n t a i n   L i o n   D N C   d o e s   n o t   h a v e   A p p l e s c r i p t   s u p p o r t ,   s o   t h i s   p r o v i d e s   i t� CDC l     ����  �  �  D EFE i   a dGHG I      �I�� 0 msg  I JKJ o      �� 0 msgtitle msgTitleK LML o      �
�
 0 msgsub msgSubM N�	N o      �� 0 message  �	  �  H Z     (OP�QO o     �� *0 displaynoticecenter DisplayNoticeCenterP I    �R�� 
0 notify  R STS o   	 
�� 0 msgtitle msgTitleT UVU o   
 �� 0 msgsub msgSubV W�W o    � �  0 message  �  �  �  Q Q    (XYZX L    [[ I   ��\]
�� .sysodlogaskr        TEXT\ o    ���� 0 message  ] ��^��
�� 
appr^ o    ���� 0 msgtitle msgTitle��  Y R      ������
�� .ascrerr ****      � ****��  ��  Z L   & (����  F _`_ l     ��������  ��  ��  ` aba i   e hcdc I      �������� 0 isapprunning isAppRunning��  ��  d k     )ee fgf Q     &hi��h O    jkj Z    lm����l =   non n    pqp 1    ��
�� 
prunq  g    o m    ��
�� boovtruem L    rr m    ��
�� boovtrue��  ��  k 4    ��s
�� 
capps o    
���� 0 program  i R      ������
�� .ascrerr ****      � ****��  ��  ��  g t��t L   ' )uu m   ' (��
�� boovfals��  b vwv l     ��������  ��  ��  w xyx i   i lz{z I      ��������  0 killrunningapp killRunningApp��  ��  { Q     5|}~| O     � l   ���� Z    ������� =   ��� n    ��� 1    ��
�� 
prun�  g    � m    ��
�� boovtrue� I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��  �   doesn't launch app   � ��� &   d o e s n ' t   l a u n c h   a p p� 4    ���
�� 
capp� o    
���� 0 program  } R      ������
�� .ascrerr ****      � ****��  ��  ~ I  ( 5�����
�� .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� m   ( )�� ���  p s   x   |   g r e p  � o   ) .���� 0 program  � m   / 0�� ��� l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��  y ��� l     ��������  ��  ��  � ��� i   m p��� I      �������� 0 servicealive serviceAlive��  ��  � k     f�� ��� Q     c����� l   Z���� k    Z�� ��� r    ��� m    �� ���  � o      ���� 
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
�� .ascrerr ****      � ****��  ��  ��  � ���� L   d f�� m   d e����  ��  � ��� l     ��������  ��  ��  � ��� i   q t��� I      �������� 00 copyservicetoclipboard copyServiceToClipboard��  ��  � k     �� � � l     ����   \ V copy the service name to the clipboard to easily check in a terminal, webbrowser, etc    � �   c o p y   t h e   s e r v i c e   n a m e   t o   t h e   c l i p b o a r d   t o   e a s i l y   c h e c k   i n   a   t e r m i n a l ,   w e b b r o w s e r ,   e t c  �� Q     �� I   ����
�� .sysoexecTEXT���     TEXT b    	 b    


 o    ���� 0 xmlsettings XMLSettings 1    	��
�� 
spac	 m   
  �  - x��   R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �  l     ��������  ��  ��    i   u x I      ������ 0 hms   �� o      ���� 0 sec  ��  ��   k     >  l     ����   @ : convert Seconds into a list of Days Hours Minutes Seconds    � t   c o n v e r t   S e c o n d s   i n t o   a   l i s t   o f   D a y s   H o u r s   M i n u t e s   S e c o n d s  r      m        �!!   o      ���� 0 secinhms secInHMS "#" Q    ;$%&$ k    ('' ()( r    *+* I   ��,�
�� .sysoexecTEXT���     TEXT, b    -.- b    /0/ b    121 b    343 o    �~�~ 0 xmlsettings XMLSettings4 1    �}
�} 
spac2 m    55 �66  - h m s0 1    �|
�| 
spac. o    �{�{ 0 sec  �  + o      �z�z 0 secinhms secInHMS) 7�y7 Z    (89�x�w8 =   :;: o    �v�v 0 secinhms secInHMS; m    << �==  N o n e9 r   ! $>?> m   ! "�u�u  ? o      �t�t 0 secinhms secInHMS�x  �w  �y  % R      �s�r�q
�s .ascrerr ****      � ****�r  �q  & r   0 ;@A@ I  0 9�pB�o
�p .sysoexecTEXT���     TEXTB b   0 5CDC b   0 3EFE m   0 1GG �HH ( e c h o   " "   |   a w k   - v   " S =F o   1 2�n�n 0 sec  D m   3 4II �JJ l "   ' { p r i n t f   " % d h : % d m : % d s " , S / ( 6 0 * 6 0 ) , S % ( 6 0 * 6 0 ) / 6 0 , S % 6 0 } '�o  A o      �m�m 0 secinhms secInHMS# K�lK L   < >LL o   < =�k�k 0 secinhms secInHMS�l   MNM l     �j�i�h�j  �i  �h  N OPO i   y |QRQ I     �g�f�e
�g .aevtoappnull  �   � ****�f  �e  R k    SS TUT I     �d�c�b�d 0 resetprogram resetProgram�c  �b  U VWV I    �a�`�_�a $0 sshchecksettings sshCheckSettings�`  �_  W XYX I    �^�]�\�^ 0 
setdisplay 
setDisplay�]  �\  Y Z[Z l   �[�Z�Y�[  �Z  �Y  [ \]\ r    ^_^ I    �X�W�V�X 0 servicealive serviceAlive�W  �V  _ o      �U�U  0 isservicealive isServiceAlive] `a` r    bcb m    dd �ee ( S S H   S e r v i c e   i s   D o w n !c o      �T�T 0 titlemsg  a fgf Z    �hij�Sh F    -klk =   %mnm I    #�R�Q�P�R 0 isapprunning isAppRunning�Q  �P  n m   # $�O
�O boovtruel =  ( +opo o   ( )�N�N  0 isservicealive isServiceAlivep m   ) *�M�M  i k   0 eqq rsr r   0 ;tut b   0 9vwv b   0 7xyx m   0 1zz �{{ , I t   i s   n o t   s a f e   t o   r u n  y o   1 6�L�L 0 program  w m   7 8|| �}} H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !u o      �K�K 0 message  s ~~ I   < J�J��I�J 0 msg  � ��� o   = >�H�H 0 titlemsg  � ��� b   > E��� m   > ?�� ���  W a r n i n g  � o   ? D�G�G 0 service  � ��F� o   E F�E�E 0 message  �F  �I   ��� I   K P�D�C�B�D  0 killrunningapp killRunningApp�C  �B  � ��� I   Q V�A�@�?�A 00 copyservicetoclipboard copyServiceToClipboard�@  �?  � ��� l  W b���� I  W b�>��=
�> .sysodelanull��� ��� nmbr� ^   W ^��� o   W \�<�< 0 	countdown  � m   \ ]�;�; �=  � . (pause to display DNC message as a banner   � ��� P p a u s e   t o   d i s p l a y   D N C   m e s s a g e   a s   a   b a n n e r� ��:� l  c e���� L   c e�9�9  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�:  j ��� =  h k��� o   h i�8�8  0 isservicealive isServiceAlive� m   i j�7�7  � ��6� k   n ��� ��� I   n ��5��4�5 0 msg  � ��� o   o p�3�3 0 titlemsg  � ��� b   p y��� m   p s�� ���  W a r n i n g   a b o u t  � o   s x�2�2 0 service  � ��1� b   y ���� b   y ���� b   y ���� b   y ���� m   y |�� ���  D o n ' t   r u n  � o   | ��0�0 0 program  � m   � ��� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   � ��/�/ 0 service  � m   � ��� ���  .�1  �4  � ��� I   � ��.�-�,�. 00 copyservicetoclipboard copyServiceToClipboard�-  �,  � ��� l  � ����� I  � ��+��*
�+ .sysodelanull��� ��� nmbr� ^   � ���� o   � ��)�) 0 	countdown  � m   � ��(�( �*  � . (pause to display DNC message as a banner   � ��� P p a u s e   t o   d i s p l a y   D N C   m e s s a g e   a s   a   b a n n e r� ��'� l  � ����� L   � ��&�&  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k�'  �6  �S  g ��� l  � ��%�$�#�%  �$  �#  � ��� l  � ��"���"  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � ��!�!  0 isservicealive isServiceAlive� o      � �  0 titlemsg  � ��� Z   ������� =  � ���� I   � ����� 0 isapprunning isAppRunning�  �  � m   � ��
� boovtrue� l  �>���� k   �>�� ��� r   � ���� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ��� m   � ��� ���  T u r n   O f f�  � o      �� 0 btnopt btnOpt� ��� r   � ���� b   � ���� o   � ��� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k ?� o      �� 0 qmsg qMsg� ��� r   � �   n   � � 1   � ��
� 
bhit l  � ��� I  � ��
� .sysodlogaskr        TEXT o   � ��� 0 qmsg qMsg �
� 
btns o   � ��� 0 btnopt btnOpt �	

� 
dflt	 m   � � �  E x i t   S S H - C h e c k
 ��
� 
appr o   � ��� 0 titlemsg  �  �  �   o      �� 
0 choice  � �
 Z   > =   o   �	�	 
0 choice   m   �  R e s t a r t I  
����  0 killrunningapp killRunningApp�  �    =  o  �� 
0 choice   m   �  T u r n   O f f � l 9  k  9!! "#" r  #$%$ m  && �''  N o% o      �� 
0 answer  # ()( V  $0*+* l 0+,-., Q  0+/01/ k  322 343 r  3X565 I 3T�78
� .sysodlogaskr        TEXT7 b  3@9:9 b  3<;<; m  36== �>>  T i m e r :   T u r n  < o  6;�� 0 program  : m  <??? �@@ 2   o f f   i n   h o w   m a n y   s e c o n d s ?8 � AB
�  
dtxtA m  CD����  B ��CD
�� 
apprC o  GH���� 0 titlemsg  D ��E��
�� 
givuE m  KN���� <��  6 o      ���� 0 	bttnpress 	bttnPress4 FGF r  YpHIH b  YlJKJ b  YhLML m  Y\NN �OO 
 e c h o  M l \gP����P c  \gQRQ n  \cSTS 1  _c��
�� 
ttxtT 1  \_��
�� 
rsltR m  cf��
�� 
TEXT��  ��  K m  hkUU �VV 
   |   b cI o      ���� 0 cmd  G WXW Z  q�YZ����Y = qx[\[ o  qt���� 0 	bttnpress 	bttnPress\ m  tw]] �^^  C a n c e lZ L  {__ m  {~��
�� 
null��  ��  X `a` r  ��bcb I ����d��
�� .sysoexecTEXT���     TEXTd o  ������ 0 cmd  ��  c o      ���� 0 xseconds xSecondsa efe r  ��ghg I  ����i���� 0 hms  i j��j o  ������ 0 xseconds xSeconds��  ��  h o      ���� &0 humanreadabletime humanReadableTimef klk r  ��mnm J  ��oo pqp m  ��rr �ss  Y e sq t��t m  ��uu �vv  N o��  n o      ���� 0 bttnopt bttnOptl wxw r  ��yzy n  ��{|{ 1  ����
�� 
bhit| l ��}����} I ����~
�� .sysodlogaskr        TEXT~ b  ����� b  ����� m  ���� ���  S h u t d o w n   i n  � o  ������ &0 humanreadabletime humanReadableTime� m  ���� ���  ? ����
�� 
btns� o  ������ 0 bttnopt bttnOpt� ����
�� 
dflt� m  ���� ���  Y e s� �����
�� 
appr� o  ������ 0 titlemsg  ��  ��  ��  z o      ���� 
0 answer  x ���� Z  �������� F  ����� = ����� o  ������ 
0 answer  � m  ���� ���  Y e s� ? ����� o  ������ 0 xseconds xSeconds� m  ������  � k  ��� ��� I  �������� 0 msg  � ��� b  ����� m  ���� ���  C l o s i n g  � o  ������ 0 program  � ��� b  ����� b  ����� m  ���� ���  W a i t i n g  � o  ������ &0 humanreadabletime humanReadableTime� m  ���� ���  !� ���� m  � �� ���  . . .��  ��  � ���� l ���� I �����
�� .sysodelanull��� ��� nmbr� o  ���� 0 xseconds xSeconds��  � 1 +sleep until user the provided time runs out   � ��� V s l e e p   u n t i l   u s e r   t h e   p r o v i d e d   t i m e   r u n s   o u t��  ��  ��  ��  0 R      ������
�� .ascrerr ****      � ****��  ��  1 k  +�� ��� I  &������� 0 msg  � ��� m  �� ���   S S H - C h e c k :   E r r o r� ��� m  �� ��� 6 C a n ' t   e v a l u a t e   w a i t   t i m e . . .� ���� m  "�� ��� @ S S H - C h e c k   i s   t e r m i n a t i n g   i t s e l f !��  ��  � ���� L  '+�� m  '*��
�� 
null��  - U Oonce the answer switches to Yes, it will break the loop or if a error is thrown   . ��� � o n c e   t h e   a n s w e r   s w i t c h e s   t o   Y e s ,   i t   w i l l   b r e a k   t h e   l o o p   o r   i f   a   e r r o r   i s   t h r o w n+ =  (/��� o  (+���� 
0 answer  � m  +.�� ���  N o) ��� I  16��������  0 killrunningapp killRunningApp��  ��  � ���� l 79���� L  79����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��   % shut off in x number of seconds     ��� > s h u t   o f f   i n   x   n u m b e r   o f   s e c o n d s�   l <>���� l <>���� L  <>����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k� ! choice equals Exit SH-Check   � ��� 6 c h o i c e   e q u a l s   E x i t   S H - C h e c k�
  � 0 * should we kill & restart the running app?   � ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�  � l A����� k  A��� ��� r  AR��� b  AN��� b  AJ��� m  AD�� ���  S t a r t i n g  � o  DI���� 0 program  � 1  JM��
�� 
spac� o      ���� 0 qmsg qMsg� ���� Z  S������� = SZ��� o  SX���� *0 displaynoticecenter DisplayNoticeCenter� m  XY��
�� boovtrue� k  ]��� ��� I  ]u������� 0 msg  � ��� m  ^a�� ���  S S H - C h e c k� ��� b  aj��� b  af��� o  ab����  0 isservicealive isServiceAlive� 1  be��
�� 
spac� m  fi   �  i s   a c t i v e� �� b  jq o  jm���� 0 qmsg qMsg m  mp �  u p   n o w !��  ��  � �� I v�����
�� .sysodelanull��� ��� nmbr l v	����	 ^  v

 o  v{���� 0 	countdown   m  {~���� 	��  ��  ��  ��  ��  � k  ��  r  �� J  ��  m  �� �  L a u n c h �� m  �� �  S t o p��   o      ���� 0 btnopt btnOpt �� Q  �� k  ��  r  �� !  b  ��"#" b  ��$%$ b  ��&'& o  ������ 0 qmsg qMsg' m  ��(( �))    i n  % o  ������ 0 	countdown  # m  ��** �++    s e c o n d s !! o      ���� 0 qmsg qMsg ,-, r  ��./. n  ��010 1  ����
�� 
bhit1 l ��2����2 I ����34
�� .sysodlogaskr        TEXT3 o  ������ 0 qmsg qMsg4 ��56
�� 
btns5 o  ������ 0 btnopt btnOpt6 ��78
�� 
dflt7 m  ��99 �::  L a u n c h8 ��;<
�� 
appr; o  ������ 0 titlemsg  < ��=��
�� 
givu= o  ������ 0 	countdown  ��  ��  ��  / o      ���� 0 yesorno yesOrNo- >��> Z  ��?@����? = ��ABA o  ������ 0 yesorno yesOrNoB m  ��CC �DD  S t o p@ L  ������  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��   L  ������  ��  ��  �  start the program   � �EE " s t a r t   t h e   p r o g r a m� FGF l ����������  ��  ��  G HIH l ����JK��  J ! Prepare to launch a program   K �LL 6 P r e p a r e   t o   l a u n c h   a   p r o g r a mI MNM r  ��OPO n  ��QRQ 1  ����
�� 
psxpR l ��S����S m  ��TT �UU  / A p p l i c a t i o n s /��  ��  P o      ���� 0 apppath appPathN VWV l ����XY��  X 0 *msg("info:", "Msg", "apppath: " & appPath)   Y �ZZ T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )W [\[ r  �]^] I ���~_
� .sysooffslong    ��� null�~  _ �}`a
�} 
psof` o  �|�| 0 program  a �{b�z
�{ 
psinb o  	�y�y 0 apppath appPath�z  ^ o      �x�x 0 
nameoffset 
nameOffset\ cdc l �wef�w  e 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   f �gg ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )d hih r  .jkj n  *lml 7 *�vno
�v 
ctxtn m   "�u�u o l #)p�t�sp \  #)qrq o  $'�r�r 0 
nameoffset 
nameOffsetr m  '(�q�q �t  �s  m o  �p�p 0 apppath appPathk o      �o�o 0 
folderpath 
folderPathi sts l //�nuv�n  u 6 0msg("info:", "Msg", "folderpath: " & folderPath)   v �ww ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )t xyx Q  /}z{|z l 2a}~} k  2a�� ��� I 2G�m��l
�m .sysoexecTEXT���     TEXT� b  2C��� b  2?��� b  2;��� o  25�k�k 0 
folderpath 
folderPath� o  5:�j�j 0 program  � m  ;>�� ���  . a p p� m  ?B�� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�l  � ��� I HM�i��h
�i .sysodelanull��� ��� nmbr� m  HI�g�g �h  � ��f� O Na��� I [`�e�d�c
�e .miscactvnull��� ��� null�d  �c  � 4  NX�b�
�b 
capp� o  RW�a�a 0 program  �f  ~ ( "start program up in the background    ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d{ R      �`�_�^
�` .ascrerr ****      � ****�_  �^  | I  i}�]��\�] 0 msg  � ��� m  jm�� ���   S S H - C h e c k :   E r r o r� ��� m  mp�� ��� 
 E r r o r� ��[� b  py��� m  ps�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  sx�Z�Z 0 program  �[  �\  y ��Y� l ~~�X�W�V�X  �W  �V  �Y  P ��� l     �U�T�S�U  �T  �S  � ��R� l     �Q�P�O�Q  �P  �O  �R        �N�   ! ' 1 7� J�M�L�K��������������������N  � �J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�J 0 service  �I 0 program  �H 0 programbackup programBackup�G 0 servicebackup serviceBackup�F 0 	countdown  �E 0 dnclocation DNCLocation�D 0 xmlsettings XMLSettings�C 0 dnca DNCA�B *0 displaynoticecenter DisplayNoticeCenter�A 0 servicelevel ServiceLevel�@ 
0 osx OSX
�? .aevtodocnull  �    alis�> 0 resetprogram resetProgram�= 0 setosxnumber setOSXNumber�< 0 
setdisplay 
setDisplay�; 0 
fileexists 
FileExists�: 0 folderexists FolderExists�9 0 	updatexml 	updateXML�8 0 setupservice setupService�7 "0 setservicelevel setServiceLevel�6 0 setupprogram setupProgram�5 $0 sshchecksettings sshCheckSettings�4 
0 notify  �3 0 msg  �2 0 isapprunning isAppRunning�1  0 killrunningapp killRunningApp�0 0 servicealive serviceAlive�/ 00 copyservicetoclipboard copyServiceToClipboard�. 0 hms  
�- .aevtoappnull  �   � ****� ��� � / U s e r s / t w i l i g h t / G i t H u b / S S H - C h e c k / s r c / S S H - C h e c k . s c p t d / C o n t e n t s / S u p p o r t / i c o n f i g S S H C . p y
�M boovfals
�L boovfals�K � �, f�+�*���)
�, .aevtodocnull  �    alis�+ 0 these_items  �*  � �(�'�( 0 these_items  �' 0 prog  �  t�& ��%�$ ��#�"�! � � �� ��
�& 
TEXT
�% 
txdl
�$ 
citm�# $0 sshchecksettings sshCheckSettings�" 0 	updatexml 	updateXML�! 0 
setdisplay 
setDisplay�  0 msg  
� .sysodelanull��� ��� nmbr
� .aevtoappnull  �   � ****�) e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j � � ������� 0 resetprogram resetProgram�  �  �  �  � fEc  � � ������� 0 setosxnumber setOSXNumber�  �  �  �  ������
� 
txdl
� .sysosigtsirr   ��� null
� 
sisv
� 
citm
� 
nmbr� �*�,FO*j �,�l/�&EQc  
OP� � ������� 0 
setdisplay 
setDisplay�  �  �  � ���
�	�� 0 setosxnumber setOSXNumber� 	�
 �	 0 
fileexists 
FileExists
� 
bool� P*j+  Ob  
�
 -b  
� 	 *b  k+ e �&	 *b  k+ e �&�& eEc  Y 	fEc  � ������� 0 
fileexists 
FileExists� ��� �  �� 0 thefile theFile�  � �� 0 thefile theFile� &� ��
�  
file
�� .coredoexnull���     ****� � *�/j  eY hUOf� ��.���������� 0 folderexists FolderExists�� ����� �  ���� 0 	thefolder 	theFolder��  � ���� 0 	thefolder 	theFolder� ;����
�� 
cfol
�� .coredoexnull���     ****�� � *�/j  eY hUOf� ��C���������� 0 	updatexml 	updateXML�� ����� �  ���� 0 programname programName��  � �������� 0 programname programName�� 
0 update  �� 0 update2  � ����`����j{����������� 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  s fb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hW 	X  fY hOf� ������������� 0 setupservice setupService��  ��  � ���� 0 ser  � 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� n*b  k+  e  A 4b  �%�%j E�O��	 ���& �EQc   OeY hW 	X  fY hOb   �  b  EQc   Y hOf� ������������� "0 setservicelevel setServiceLevel��  ��  � ���� 
0 slevel  � ����������+�� 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� l*b  k+  e  @ 3b  �%�%j E�O��  eEc  	Y 	fEc  	Ob  	W 	X  fY hOb  	�  fEc  	Y hOb  	� ��6���������� 0 setupprogram setupProgram��  ��  � ���� 0 prog  � 
����M��W\������l�� 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� n*b  k+  e  A 4b  �%�%j E�O��	 ���& �EQc  OeY hW 	X  fY hOb  �  b  EQc  Y hOf� ��w���������� $0 sshchecksettings sshCheckSettings��  ��  � �������������������������������� 0 configfolder configFolder�� 0 
configpath 
configPath�� 0 iconfig  �� 
0 mypath  �� 0 
supportloc 
supportLoc�� 0 cmdmakepath cmdMakePath�� 0 qmsg qMsg�� 0 btnopt btnOpt�� 0 yesorno yesOrNo�� 0 alertaction alertAction�� *0 cmdunzipalertaction cmdUnzipAlertAction�� .0 cmdcleanupalertaction cmdCleanUpAlertAction�� 0 
dnworkflow 
DNWorkflow�� (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�� ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� A�����������������������������&(2����Ybe����v��z������������������������):<Oae������������� 0 folderexists FolderExists�� 0 
fileexists 
FileExists
�� 
bool�� 
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
strq�� 0 msg  �� 0 setupservice setupService�� 0 setupprogram setupProgram�� 0 
setdisplay 
setDisplay�� "0 setservicelevel setServiceLevel���E�O�%E�O�E�O*�k+ f 
 *�k+ f �&
 -b  
� 	 !*b  k+ f 
 *b  k+ f �&�&�&��%�%�%�%E�O)��l �,�%E�O*�k+ f  ��%�%E�O�j Oa j Y hO*�k+ f  < &�a %�%a %j O�a %�%b  %j W X  hOa j OPY hOb  
� �*b  k+ f �a E�Oa a lvE�O ,�a �a a a a a  b  a ! � "a #,E�W X  hO�a $  �a %E�O �a &%�%�%�%a '%j W X  hOa j O*�a (%�%k+ e  4 (�a )%�%�%E�O�j O�a *%�%�%E�O�j W X  hY hO �a +%a ,a -,%j W X  *a .a /a 0m+ 1Oa j Y hO*�k+ e 	 *b  k+ f �& wa 2E�O�a 3%�%�%E�O�a 4%�%�%E�O �a 5%�%�%�%a 6%j W X  hOa j O*�a 7%�%k+ e   �j O�j W X  hY hY hY hY hW "X  *a 8a 9�m+ 1O*j+ :O*j+ ;OfOb  m!j O*j+ <Ob  e  *a =�a >%a ?m+ 1Okj Y hY hO*j+ @O*j+ :e 	 *j+ ;e �& eY hOf� ������������� 
0 notify  �� ����� �  �������� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 message  ��  � �������� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 message  � ������������������(��*������17;@���� 	
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
� ���� Y ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W %X  a Ec  O*a a a b  %m+ � ��H������~�� 0 msg  �� �}��} �  �|�{�z�| 0 msgtitle msgTitle�{ 0 msgsub msgSub�z 0 message  �  � �y�x�w�y 0 msgtitle msgTitle�x 0 msgsub msgSub�w 0 message  � �v�u�t�s�r�v 
0 notify  
�u 
appr
�t .sysodlogaskr        TEXT�s  �r  �~ )b   *���m+  Y  ��l W 	X  h� �qd�p�o���n�q 0 isapprunning isAppRunning�p  �o  �  � �m�l�k�j
�m 
capp
�l 
prun�k  �j  �n * *�b  / *�,e  eY hUW X  hOf� �i{�h�g���f�i  0 killrunningapp killRunningApp�h  �g  �  � �e�d�c�b�a���`
�e 
capp
�d 
prun
�c .aevtquitnull��� ��� null�b  �a  
�` .sysoexecTEXT���     TEXT�f 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � �_��^�]���\�_ 0 servicealive serviceAlive�^  �]  � �[�Z�Y�[ 
0 sshcon  �Z 0 cmdssh cmdSSH�Y 
0 tunnel  � 
����X�W�V���U�T
�X .sysoexecTEXT���     TEXT
�W 
cpar
�V 
cobj�U  �T  �\ g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOj� �S��R�Q���P�S 00 copyservicetoclipboard copyServiceToClipboard�R  �Q  �  � �O�N�M�L
�O 
spac
�N .sysoexecTEXT���     TEXT�M  �L  �P  b  �%�%j W X  h� �K�J�I���H�K 0 hms  �J �G��G �  �F�F 0 sec  �I  � �E�D�E 0 sec  �D 0 secinhms secInHMS� 	 �C5�B<�A�@GI
�C 
spac
�B .sysoexecTEXT���     TEXT�A  �@  �H ?�E�O &b  �%�%�%�%j E�O��  jE�Y hW X  �%�%j E�O�� �?R�>�=���<
�? .aevtoappnull  �   � ****�>  �=  �  � j�;�:�9�8�7d�6�5�4z|�3��2�1�0�/���������.��-�,�+�*�)�(�'�&&�%�=?�$�#�"�!N� ��U�]�����ru����������������� �(*9��CT�������
�	���������; 0 resetprogram resetProgram�: $0 sshchecksettings sshCheckSettings�9 0 
setdisplay 
setDisplay�8 0 servicealive serviceAlive�7  0 isservicealive isServiceAlive�6 0 titlemsg  �5 0 isapprunning isAppRunning
�4 
bool�3 0 message  �2 0 msg  �1  0 killrunningapp killRunningApp�0 00 copyservicetoclipboard copyServiceToClipboard
�/ .sysodelanull��� ��� nmbr�. 0 btnopt btnOpt�- 0 qmsg qMsg
�, 
btns
�+ 
dflt
�* 
appr�) 
�( .sysodlogaskr        TEXT
�' 
bhit�& 
0 choice  �% 
0 answer  
�$ 
dtxt
�# 
givu�" <�! 0 	bttnpress 	bttnPress
�  
rslt
� 
ttxt
� 
TEXT� 0 cmd  
� 
null
� .sysoexecTEXT���     TEXT� 0 xseconds xSeconds� 0 hms  � &0 humanreadabletime humanReadableTime� 0 bttnopt bttnOpt�  �  
� 
spac� 	� � 0 yesorno yesOrNo
� 
psxp� 0 apppath appPath
� 
psof
� 
psin� 
� .sysooffslong    ��� null�
 0 
nameoffset 
nameOffset
�	 
ctxt� 0 
folderpath 
folderPath
� 
capp
� .miscactvnull��� ��� null�<�*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& :�b  %�%E�O*��b   %�m+ O*j+ O*j+ Ob  l!j OhY G�j  @*�a b   %a b  %a %b   %a %m+ O*j+ Ob  l!j OhY hOa �%E�O*j+ e �a a a mvE` Ob  a %E` O_ a _ a a a �a   !a ",E` #O_ #a $  
*j+ Y._ #a % "a &E` 'Oh_ 'a (  �a )b  %a *%a +ja �a ,a -a   !E` .Oa /_ 0a 1,a 2&%a 3%E` 4O_ .a 5  	a 6Y hO_ 4j 7E` 8O*_ 8k+ 9E` :Oa ;a <lvE` =Oa >_ :%a ?%a _ =a a @a �a   !a ",E` 'O_ 'a A 	 	_ 8j�& )*a Bb  %a C_ :%a D%a Em+ O_ 8j Y hW X F G*a Ha Ia Jm+ Oa 6[OY��O*j+ OhY hY �a Kb  %_ L%E` Ob  e  +*a M�_ L%a N%_ a O%m+ Ob  a P!j Y la Qa RlvE` O U_ a S%b  %a T%E` O_ a _ a a Ua �a ,b  a V !a ",E` WO_ Wa X  hY hW 	X F GhOa Ya Z,E` [O*a \b  a ]_ [a ^ _E` `O_ [[a a\[Zk\Z_ `k2E` bO 4_ bb  %a c%a d%j 7Okj O*a eb  / *j fUW X F G*a ga ha ib  %m+ OPascr  ��ޭ