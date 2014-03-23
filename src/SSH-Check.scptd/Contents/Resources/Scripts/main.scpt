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
�� boovfals��  4 rsr l     ��������  ��  ��  s tut i   Y \vwv I      �������� 0 vcmp  ��  ��  w k     /xx yzy l      ��{|��  { � �  versionCompareProgram for iconfigSSHC.py
	Results translation
	-1 if the current program installed is older
	0 when both programs are equal and
	1 when the current program is newer
   | �}}n     v e r s i o n C o m p a r e P r o g r a m   f o r   i c o n f i g S S H C . p y 
 	 R e s u l t s   t r a n s l a t i o n 
 	 - 1   i f   t h e   c u r r e n t   p r o g r a m   i n s t a l l e d   i s   o l d e r 
 	 0   w h e n   b o t h   p r o g r a m s   a r e   e q u a l   a n d 
 	 1   w h e n   t h e   c u r r e n t   p r o g r a m   i s   n e w e r 
z ~~ r     ��� b     ��� l    	������ n     	��� 1    	��
�� 
psxp� l    ������ I    ����
�� .earsffdralis        afdr�  f     � �����
�� 
rtyp� m    ��
�� 
TEXT��  ��  ��  ��  ��  � m   	 
�� ��� " C o n t e n t s / S u p p o r t /� o      ���� 0 
supportloc 
supportLoc ��� l   ��������  ��  ��  � ���� Q    /���� k    %�� ��� r    ��� b    ��� b    ��� m    �� ���  c d  � o    ���� 0 
supportloc 
supportLoc� m    �� ��� , ;   . / c o m p a r e V e r s i o n s . p y� o      ���� 0 cmd  � ��� r    "��� c     ��� l   ������ I   ����
�� .sysoexecTEXT���     TEXT� o    �~�~ 0 cmd  �  ��  ��  � m    �}
�} 
nmbr� o      �|�| 0 iver  � ��{� L   # %�� o   # $�z�z 0 iver  �{  � R      �y�x�w
�y .ascrerr ****      � ****�x  �w  � L   - /�� m   - .�� ��� 
 E r r o r��  u ��� l     �v�u�t�v  �u  �t  � ��� i   ] `��� I      �s�r�q�s 0 copyiconfig copyiConfig�r  �q  � k     y�� ��� r     ��� m     �� ��� 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y� o      �p�p 0 iconfig  � ��� Z    w���o�n� G    ��� =   ��� I    
�m��l�m 0 
fileexists 
FileExists� ��k� o    �j�j 0 iconfig  �k  �l  � m   
 �i
�i boovfals� =   ��� I    �h�g�f�h 0 vcmp  �g  �f  � m    �e�e � k    s�� ��� l   �d���d  � f `note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,   � ��� � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,� ��� l   �c���c  � � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   � ��� � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i t� ��� r    &��� b    $��� b    "��� b     ��� b    ��� m    �� ���  c d  � m    �� ���  ~ / . s s h - c h e c k� 1    �b
�b 
spac� m     !�� ���  & &� 1   " #�a
�a 
spac� o      �`�` 
0 mypath  � ��� r   ' 4��� b   ' 2��� l  ' 0��_�^� n   ' 0��� 1   . 0�]
�] 
psxp� l  ' .��\�[� I  ' .�Z��
�Z .earsffdralis        afdr�  f   ' (� �Y��X
�Y 
rtyp� m   ) *�W
�W 
TEXT�X  �\  �[  �_  �^  � m   0 1�� ��� " C o n t e n t s / S u p p o r t /� o      �V�V 0 
supportloc 
supportLoc� ��� l  5 5�U���U  � � �display dialog "Upgrading your copy of  " & mypath & "cp " & supportLoc & "iconfigSSHC.py  to update the version here ~/.ssh-check/" with title iconfig   � ���. d i s p l a y   d i a l o g   " U p g r a d i n g   y o u r   c o p y   o f     "   &   m y p a t h   &   " c p   "   &   s u p p o r t L o c   &   " i c o n f i g S S H C . p y     t o   u p d a t e   t h e   v e r s i o n   h e r e   ~ / . s s h - c h e c k / "   w i t h   t i t l e   i c o n f i g� ��� Q   5 k���� k   8 U�� ��� I  8 C�T��S
�T .sysoexecTEXT���     TEXT� b   8 ?   b   8 = b   8 ; o   8 9�R�R 
0 mypath   m   9 : �  c p   o   ; <�Q�Q 0 
supportloc 
supportLoc m   = > �		 " i c o n f i g S S H C . p y   . /�S  � 
�P
 I  D U�O�N
�O .sysoexecTEXT���     TEXT b   D Q b   D K b   D I o   D E�M�M 
0 mypath   m   E H �  c h m o d   + x 1   I J�L
�L 
spac o   K P�K�K 0 xmlsettings XMLSettings�N  �P  � R      �J�I�H
�J .ascrerr ****      � ****�I  �H  � I   ] k�G�F�G 0 msg    m   ^ a � 
 E r r o r  m   a d � < F a i l e d   t o   s e t u p   i c o n f i g S S H C . p y �E m   d g �  �E  �F  �  �D  I  l s�C!�B
�C .sysodelanull��� ��� nmbr! m   l o"" ?�      �B  �D  �o  �n  � #�A# l  x x�@�?�>�@  �?  �>  �A  � $%$ l     �=�<�;�=  �<  �;  % &'& i   a d()( I      �:�9�8�: $0 sshchecksettings sshCheckSettings�9  �8  ) l   �*+,* k    �-- ./. r     010 m     22 �33  . s s h - c h e c k1 o      �7�7 0 configfolder configFolder/ 454 r    	676 b    898 m    :: �;;  ~ /9 o    �6�6 0 configfolder configFolder7 o      �5�5 0 
configpath 
configPath5 <=< r   
 >?> m   
 @@ �AA 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y? o      �4�4 0 iconfig  = BCB r    DED b    FGF b    HIH b    JKJ b    LML m    NN �OO  c d  M o    �3�3 0 
configpath 
configPathK 1    �2
�2 
spacI m    PP �QQ  & &G 1    �1
�1 
spacE o      �0�0 
0 mypath  C RSR r    'TUT b    %VWV l   #X�/�.X n    #YZY 1   ! #�-
�- 
psxpZ l   ![�,�+[ I   !�*\]
�* .earsffdralis        afdr\  f    ] �)^�(
�) 
rtyp^ m    �'
�' 
TEXT�(  �,  �+  �/  �.  W m   # $__ �`` " C o n t e n t s / S u p p o r t /U o      �&�& 0 
supportloc 
supportLocS aba l  ( (�%�$�#�%  �$  �#  b cdc Z   (�ef�"�!e G   ( kghg G   ( =iji =  ( 0klk I   ( .� m��  0 folderexists FolderExistsm n�n o   ) *�� 0 
configpath 
configPath�  �  l m   . /�
� boovfalsj =  3 ;opo I   3 9�q�� 0 
fileexists 
FileExistsq r�r o   4 5�� 0 iconfig  �  �  p m   9 :�
� boovfalsh l  @ is��s F   @ itut =  @ Gvwv o   @ E�� 
0 osx OSXw m   E F�� u l  J gx��x G   J gyzy =  J V{|{ I   J T�}�� 0 
fileexists 
FileExists} ~�~ o   K P�� 0 dnclocation DNCLocation�  �  | m   T U�
� boovfalsz =  Y e� I   Y c���
� 0 
fileexists 
FileExists� ��	� o   Z _�� 0 dnca DNCA�	  �
  � m   c d�
� boovfals�  �  �  �  f k   n��� ��� l  n n����  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  n n����  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� Q   ni���� k   qF�� ��� Z   q ������ =  q y��� I   q w���� 0 folderexists FolderExists� �� � o   r s���� 0 
configpath 
configPath�   �  � m   w x��
�� boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~��
�� 
spac� o    ����� 0 
configpath 
configPath� o      ���� 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdmakepath cmdMakePath��  �  create path   � ���  c r e a t e   p a t h� ���� l  � ����� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ��� ?�      ��  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t��  �  �  � ��� l  � ���������  ��  ��  � ��� I   � ��������� 0 copyiconfig copyiConfig��  ��  � ��� l  � ���������  ��  ��  � ���� Z   �F������� =  � ���� o   � ����� 
0 osx OSX� m   � ����� � l  �B���� l  �B���� Z   �B������� =  � ���� I   � �������� 0 
fileexists 
FileExists� ���� o   � ����� 0 dnca DNCA��  ��  � m   � ���
�� boovfals� k   �>�� ��� l  � �������  � ? 9setup Automator Display Notification Center Action script   � ��� r s e t u p   A u t o m a t o r   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A c t i o n   s c r i p t� ��� r   � ���� m   � ��� ��� � S S H - C h e c k   w o u l d   l i k e   t o   s e t u p   A u t o m a t o r   N o t i f i c a t i o n   C e n t e r .   P r e s s   ' Y e s '   t o   s e t u p   a n d   ' N o '   t o   s k i p !� o      ���� 0 qmsg qMsg� ��� r   � ���� J   � ��� ��� m   � ��� ���  Y e s� ���� m   � ��� ���  N o��  � o      ���� 0 btnopt btnOpt� ��� Q   � ������ r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  N o� ����
�� 
appr� m   � ��� ��� > S S H - C h e c k   S e t u p   N e e d s   Y o u r   H e l p� �����
�� 
givu� ]   � ���� o   � ����� 0 	countdown  � m   � ����� <��  ��  ��  � o      ���� 0 yesorno yesOrNo� R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  ���� � Z   ������ =  � � o   � ����� 0 yesorno yesOrNo m   � � �  Y e s k  � 	 r  

 m   � X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p o      ���� 0 alertaction alertAction	  Q  '�� I ����
�� .sysoexecTEXT���     TEXT b   b   b   b   b   o  ���� 
0 mypath   m   �  c p   o  ���� 0 
supportloc 
supportLoc o  ���� 0 alertaction alertAction 1  ��
�� 
spac m   �    . /��   R      ������
�� .ascrerr ****      � ****��  ��  ��   !"! I (/��#��
�� .sysodelanull��� ��� nmbr# m  (+$$ ?�      ��  " %&% l 00��������  ��  ��  & '(' Z  0t)*����) = 0>+,+ I  0<��-���� 0 
fileexists 
FileExists- .��. b  18/0/ b  16121 o  12���� 0 
configpath 
configPath2 m  2533 �44  /0 o  67���� 0 alertaction alertAction��  ��  , m  <=��
�� boovtrue* Q  Ap56��5 k  Dg77 898 r  DO:;: b  DM<=< b  DK>?> b  DI@A@ o  DE���� 
0 mypath  A m  EHBB �CC  u n z i p   - u? 1  IJ��
�� 
spac= o  KL���� 0 alertaction alertAction; o      ���� *0 cmdunzipalertaction cmdUnzipAlertAction9 DED I PU��F��
�� .sysoexecTEXT���     TEXTF o  PQ���� *0 cmdunzipalertaction cmdUnzipAlertAction��  E GHG r  VaIJI b  V_KLK b  V]MNM b  V[OPO o  VW���� 
0 mypath  P m  WZQQ �RR   r m   - r f   _ _ M A C O S X /N 1  [\��
�� 
spacL o  ]^���� 0 alertaction alertActionJ o      ���� .0 cmdcleanupalertaction cmdCleanUpAlertActionH S��S I bg��T��
�� .sysoexecTEXT���     TEXTT o  bc���� .0 cmdcleanupalertaction cmdCleanUpAlertAction��  ��  6 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ( UVU Q  u�WXYW I x���Z��
�� .sysoexecTEXT���     TEXTZ b  x�[\[ b  x}]^] o  xy���� 
0 mypath  ^ m  y|__ �`` 
 o p e n  \ n  }�aba 1  ����
�� 
strqb m  }�cc �dd P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  X R      ������
�� .ascrerr ****      � ****��  ��  Y I  ����e���� 0 msg  e fgf m  ��hh �ii   S S H - C h e c k :   E r r o rg jkj m  ��ll �mm  k n��n m  ��oo �pp @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  V q��q I ����r��
�� .sysodelanull��� ��� nmbrr m  ��ss ?�      ��  ��  ��  ��  �   end of "Yes" go setup DNCA     �tt 4 e n d   o f   " Y e s "   g o   s e t u p   D N C A� uvu l ����������  ��  ��  v w��w Z  �>xy����x F  ��z{z = ��|}| I  ����~���� 0 folderexists FolderExists~ �� o  ������ 0 
configpath 
configPath��  ��  } m  ����
�� boovtrue{ = ����� I  ��������� 0 
fileexists 
FileExists� ���� o  ������ 0 dnclocation DNCLocation��  ��  � m  ���
� boovfalsy k  �:�� ��� l ���~���~  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� r  ����� m  ���� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      �}�} 0 
dnworkflow 
DNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ���|�| 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ���{
�{ 
spac� o  ���z�z 0 
dnworkflow 
DNWorkflow� o      �y�y (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ���x�x 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ���w
�w 
spac� o  ���v�v 0 
dnworkflow 
DNWorkflow� o      �u�u ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� Q  ����t� I ���s��r
�s .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���q�q 
0 mypath  � m  ���� ���  c p  � o  ���p�p 0 
supportloc 
supportLoc� o  ���o�o 0 
dnworkflow 
DNWorkflow� 1  ���n
�n 
spac� m  ���� ���  . /�r  � R      �m�l�k
�m .ascrerr ****      � ****�l  �k  �t  � ��� I �j��i
�j .sysodelanull��� ��� nmbr� m  	�� ?�      �i  � ��� l �h�g�f�h  �g  �f  � ��e� Z  :���d�c� = ��� I  �b��a�b 0 
fileexists 
FileExists� ��`� b  ��� b  ��� o  �_�_ 0 
configpath 
configPath� m  �� ���  /� o  �^�^ 0 
dnworkflow 
DNWorkflow�`  �a  � m  �]
�] boovtrue� Q  6���\� k  "-�� ��� I "'�[��Z
�[ .sysoexecTEXT���     TEXT� o  "#�Y�Y (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�Z  � ��X� I (-�W��V
�W .sysoexecTEXT���     TEXT� o  ()�U�U ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow�V  �X  � R      �T�S�R
�T .ascrerr ****      � ****�S  �R  �\  �d  �c  �e  ��  ��  ��  ��  ��  �  os x.8 only   � ���  o s   x . 8   o n l y� > 8OS X.8 only install Display Noticafaction Center support   � ��� p O S   X . 8   o n l y   i n s t a l l   D i s p l a y   N o t i c a f a c t i o n   C e n t e r   s u p p o r t��  ��  ��  � R      �Q�P�O
�Q .ascrerr ****      � ****�P  �O  � k  Ni�� ��� I  NZ�N��M�N 0 msg  � ��� m  OR�� ���  S e t u p   F a i l e d :� ��� m  RU�� ���  � ��L� o  UV�K�K 0 
configpath 
configPath�L  �M  � ��� I  [`�J�I�H�J 0 setupservice setupService�I  �H  � ��� I  af�G�F�E�G 0 setupprogram setupProgram�F  �E  � ��D� L  gi�� m  gh�C
�C boovfals�D  � ��� l jj�B�A�@�B  �A  �@  � ��� l jj�?���?  � n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   � ��� � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .� ��� I ju�>��=
�> .sysodelanull��� ��� nmbr� ^  jq��� o  jo�<�< 0 	countdown  � m  op�;�; �=  � ��� I  v{�:�9�8�: 0 
setdisplay 
setDisplay�9  �8  � ��7� Z  |����6�5� = |���� o  |��4�4 *0 displaynoticecenter DisplayNoticeCenter� m  ���3
�3 boovtrue� k  ���� � � I  ���2�1�2 0 msg    m  �� �   S S H - C h e c k :   S e t u p  b  ��	 o  ���0�0 0 
configpath 
configPath	 m  ��

 � ,   s e t t i n g s   a r e   c u r r e n t . �/ m  �� � L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�/  �1    �. I ���-�,
�- .sysodelanull��� ��� nmbr m  ���+�+ �,  �.  �6  �5  �7  �"  �!  d  Z  ���*�) F  �� = �� I  ���(�'�( 0 folderexists FolderExists �& o  ���%�% 0 
configpath 
configPath�&  �'   m  ���$
�$ boovtrue = �� I  ���#�"�!�# 0 vcmp  �"  �!   m  ��� �   I  ������ 0 copyiconfig copyiConfig�  �  �*  �)    l ������  �  �     l ������  �  �    !"! l ���#$�  # # loadSettings from config file   $ �%% : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e" &'& I  ������ "0 setservicelevel setServiceLevel�  �  ' ()( Z  ��*+��* F  ��,-, = ��./. I  ������ 0 setupservice setupService�  �  / m  ���
� boovtrue- = ��010 I  �����
� 0 setupprogram setupProgram�  �
  1 m  ���	
�	 boovtrue+ L  ��22 m  ���
� boovtrue�  �  ) 343 l ������  �  �  4 5�5 L  ��66 m  ���
� boovfals�  +  return bool   , �77  r e t u r n   b o o l' 898 l     ��� �  �  �   9 :;: i   e h<=< I      ��>���� 
0 notify  > ?@? o      ���� 0 msgtitle msgTitle@ ABA o      ���� 0 msgsubtitle msgSubtitleB C��C o      ���� 0 message  ��  ��  = Z     �DE��FD @     GHG o     ���� 
0 osx OSXH m    ���� 	E l  
 IJKI I  
 ��LM
�� .sysonotfnull��� ��� TEXTL o   
 ���� 0 message  M ��NO
�� 
apprN o    ���� 0 msgtitle msgTitleO ��P��
�� 
subtP o    ���� 0 msgsubtitle msgSubtitle��  J h b use OS X Noticafaction Center: OS x.9 http://macosxautomation.com/mavericks/notifications/01.html   K �QQ �   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r :   O S   x . 9   h t t p : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l��  F l   �RSTR k    �UU VWV l    ��XY��  X 	OS X 8 make use of System Notifacation Center
     Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    Y �ZZ    	 O S   X   8   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  W [\[ Z   +]^����] >   _`_ c    aba o    ���� 0 msgtitle msgTitleb m    ��
�� 
ctxt` m    cc �dd  ^ r    'efe b    %ghg m    ii �jj    - D   t i t l e =h n    $klk 1   " $��
�� 
strql l   "m����m c    "non o     ���� 0 msgtitle msgTitleo m     !��
�� 
ctxt��  ��  f o      ���� 0 msgtitle msgTitle��  ��  \ pqp Z  , Ars����r >  , 1tut c   , /vwv o   , -���� 0 msgsubtitle msgSubtitlew m   - .��
�� 
ctxtu m   / 0xx �yy  s r   4 =z{z b   4 ;|}| m   4 5~~ �    - D   s u b t i t l e =} n   5 :��� 1   8 :��
�� 
strq� l  5 8������ c   5 8��� o   5 6���� 0 msgsubtitle msgSubtitle� m   6 7��
�� 
ctxt��  ��  { o      ���� 0 msgsubtitle msgSubtitle��  ��  q ��� Z  B W������� >  B G��� c   B E��� o   B C���� 0 message  � m   C D��
�� 
ctxt� m   E F�� ���  � r   J S��� b   J Q��� m   J K�� ���    - D   m e s s a g e =� n   K P��� 1   N P��
�� 
strq� l  K N������ c   K N��� o   K L���� 0 message  � m   L M��
�� 
ctxt��  ��  � o      ���� 0 message  ��  ��  � ���� Q   X ����� I  [ x�����
�� .sysoexecTEXT���     TEXT� b   [ t��� b   [ r��� b   [ p��� b   [ j��� b   [ h��� b   [ f��� b   [ d��� b   [ b��� b   [ `��� b   [ ^��� m   [ \�� ���  a u t o m a t o r� 1   \ ]��
�� 
spac� o   ^ _���� 0 msgtitle msgTitle� 1   ` a��
�� 
spac� o   b c���� 0 msgsubtitle msgSubtitle� 1   d e��
�� 
spac� o   f g���� 0 message  � 1   h i��
�� 
spac� o   j o���� 0 dnclocation DNCLocation� 1   p q��
�� 
spac� m   r s�� ���  2 > / d e v / n u l l��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� r   � ���� m   � ��� ��� 
 f a l s e� o      ���� *0 displaynoticecenter DisplayNoticeCenter� ���� I   � �������� 0 msg  � ��� m   � ��� ���   S S H - C h e c k :   E r r o r� ��� m   � ��� ���  � ���� b   � ���� m   � ��� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   � ����� 0 dnclocation DNCLocation��  ��  ��  ��  S c ]if OSX is 8 --OS X.8 Mountain Lion DNC does not have Applescript support, so this provides it   T ��� � i f   O S X   i s   8   - - O S   X . 8   M o u n t a i n   L i o n   D N C   d o e s   n o t   h a v e   A p p l e s c r i p t   s u p p o r t ,   s o   t h i s   p r o v i d e s   i t; ��� l     ��������  ��  ��  � ��� i   i l��� I      ������� 0 msg  � ��� o      ���� 0 msgtitle msgTitle� ��� o      ���� 0 msgsub msgSub� ���� o      ���� 0 message  ��  ��  � Z     (������ o     ���� *0 displaynoticecenter DisplayNoticeCenter� I    ������� 
0 notify  � ��� o   	 
���� 0 msgtitle msgTitle� ��� o   
 ���� 0 msgsub msgSub� ���� o    ���� 0 message  ��  ��  ��  � Q    (���� L    �� I   ����
�� .sysodlogaskr        TEXT� o    ���� 0 message  � �����
�� 
appr� o    ���� 0 msgtitle msgTitle��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   & (����  � ��� l     ��������  ��  ��  � ��� i   m p��� I      �������� 0 isapprunning isAppRunning��  ��  � k     )�� ��� Q     &����� O    ��� Z    ������� =   ��� n    ��� 1    ��
�� 
prun�  g    � m    ��
�� boovtrue� L    �� m    ��
�� boovtrue��  ��  � 4    ���
�� 
capp� o    
���� 0 program  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   ' )   m   ' (��
�� boovfals��  �  l     ��������  ��  ��    i   q t I      ��������  0 killrunningapp killRunningApp��  ��   Q     5	 O     

 l    Z    ���� =    n     1    ��
�� 
prun  g     m    ��
�� boovtrue I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��     doesn't launch app    � &   d o e s n ' t   l a u n c h   a p p 4    ��
�� 
capp o    
���� 0 program   R      ��~�}
� .ascrerr ****      � ****�~  �}  	 I  ( 5�|�{
�| .sysoexecTEXT���     TEXT b   ( 1 b   ( / m   ( ) �  p s   x   |   g r e p   o   ) .�z�z 0 program   m   / 0 � l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�{    !  l     �y�x�w�y  �x  �w  ! "#" i   u x$%$ I      �v�u�t�v 0 servicealive serviceAlive�u  �t  % k     f&& '(' Q     c)*�s) l   Z+,-+ k    Z.. /0/ r    121 m    33 �44  2 o      �r�r 
0 sshcon  0 565 Z    D78�q97 =   :;: o    �p�p 0 servicelevel ServiceLevel; m    �o
�o boovfals8 k    )<< =>= l   �n?@�n  ? 3 -is the service being run by the current user?   @ �AA Z i s   t h e   s e r v i c e   b e i n g   r u n   b y   t h e   c u r r e n t   u s e r ?> BCB r    DED b    FGF b    HIH m    JJ �KK @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *I o    �m�m 0 service  G m    LL �MM ( '   |   a w k   ' { p r i n t   $ 8 } 'E o      �l�l 0 cmdssh cmdSSHC N�kN r    )OPO n    'QRQ 4   $ '�jS
�j 
cobjS m   % &�i�i R n    $TUT 2  " $�h
�h 
cparU l   "V�g�fV I   "�eW�d
�e .sysoexecTEXT���     TEXTW o    �c�c 0 cmdssh cmdSSH�d  �g  �f  P o      �b�b 
0 sshcon  �k  �q  9 k   , DXX YZY l  , ,�a[\�a  [ * $is the service being run by any user   \ �]] H i s   t h e   s e r v i c e   b e i n g   r u n   b y   a n y   u s e rZ ^_^ r   , 7`a` b   , 5bcb b   , 3ded m   , -ff �gg @ p s   a   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *e o   - 2�`�` 0 service  c m   3 4hh �ii ( '   |   a w k   ' { p r i n t   $ 8 } 'a o      �_�_ 0 cmdssh cmdSSH_ j�^j r   8 Dklk n   8 Bmnm 4   ? B�]o
�] 
cobjo m   @ A�\�\ n n   8 ?pqp 2  = ?�[
�[ 
cparq l  8 =r�Z�Yr I  8 =�Xs�W
�X .sysoexecTEXT���     TEXTs o   8 9�V�V 0 cmdssh cmdSSH�W  �Z  �Y  l o      �U�U 
0 sshcon  �^  6 tut s   E Ivwv o   E F�T�T 
0 sshcon  w o      �S�S 
0 tunnel  u xyx l  J J�R�Q�P�R  �Q  �P  y z�Oz Z   J Z{|�N�M{ E   J Q}~} o   J K�L�L 
0 tunnel  ~ o   K P�K�K 0 service  | L   T V o   T U�J�J 
0 tunnel  �N  �M  �O  , 0 *check for ssh connected to defined service   - ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e* R      �I�H�G
�I .ascrerr ****      � ****�H  �G  �s  ( ��F� L   d f�� m   d e�E�E  �F  # ��� l     �D�C�B�D  �C  �B  � ��� i   y |��� I      �A�@�?�A 00 copyservicetoclipboard copyServiceToClipboard�@  �?  � k     �� ��� l     �>���>  � \ V copy the service name to the clipboard to easily check in a terminal, webbrowser, etc   � ��� �   c o p y   t h e   s e r v i c e   n a m e   t o   t h e   c l i p b o a r d   t o   e a s i l y   c h e c k   i n   a   t e r m i n a l ,   w e b b r o w s e r ,   e t c� ��=� Q     ���<� I   �;��:
�; .sysoexecTEXT���     TEXT� b    ��� b    
��� o    �9�9 0 xmlsettings XMLSettings� 1    	�8
�8 
spac� m   
 �� ���  - x�:  � R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  �<  �=  � ��� l     �4�3�2�4  �3  �2  � ��� i   } ���� I      �1��0�1 0 hms  � ��/� o      �.�. 0 sec  �/  �0  � k     >�� ��� l     �-���-  � @ : convert Seconds into a list of Days Hours Minutes Seconds   � ��� t   c o n v e r t   S e c o n d s   i n t o   a   l i s t   o f   D a y s   H o u r s   M i n u t e s   S e c o n d s� ��� r     ��� m     �� ���  � o      �,�, 0 secinhms secInHMS� ��� Q    ;���� k    (�� ��� r    ��� I   �+��*
�+ .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� o    �)�) 0 xmlsettings XMLSettings� 1    �(
�( 
spac� m    �� ���  - h m s� 1    �'
�' 
spac� o    �&�& 0 sec  �*  � o      �%�% 0 secinhms secInHMS� ��$� Z    (���#�"� =   ��� o    �!�! 0 secinhms secInHMS� m    �� ���  N o n e� r   ! $��� m   ! "� �   � o      �� 0 secinhms secInHMS�#  �"  �$  � R      ���
� .ascrerr ****      � ****�  �  � r   0 ;��� I  0 9���
� .sysoexecTEXT���     TEXT� b   0 5��� b   0 3��� m   0 1�� ��� ( e c h o   " "   |   a w k   - v   " S =� o   1 2�� 0 sec  � m   3 4�� ��� l "   ' { p r i n t f   " % d h : % d m : % d s " , S / ( 6 0 * 6 0 ) , S % ( 6 0 * 6 0 ) / 6 0 , S % 6 0 } '�  � o      �� 0 secinhms secInHMS� ��� L   < >�� o   < =�� 0 secinhms secInHMS�  � ��� l     ����  �  �  � ��� i   � ���� I     ���
� .aevtoappnull  �   � ****�  �  � k    �� ��� I     ���� 0 resetprogram resetProgram�  �  � ��� I    ���
� $0 sshchecksettings sshCheckSettings�  �
  � ��� I    �	���	 0 
setdisplay 
setDisplay�  �  � ��� l   ����  �  �  � ��� r    ��� I    ���� 0 servicealive serviceAlive�  �  � o      � �   0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      ���� 0 titlemsg  � ��� Z    ������� F    -��� =   %��� I    #�������� 0 isapprunning isAppRunning��  ��  � m   # $��
�� boovtrue� =  ( +��� o   ( )����  0 isservicealive isServiceAlive� m   ) *����  � k   0 e�� ��� r   0 ;� � b   0 9 b   0 7 m   0 1 � , I t   i s   n o t   s a f e   t o   r u n   o   1 6���� 0 program   m   7 8 � H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !  o      ���� 0 message  � 	
	 I   < J������ 0 msg    o   = >���� 0 titlemsg    b   > E m   > ? �  W a r n i n g   o   ? D���� 0 service   �� o   E F���� 0 message  ��  ��  
  I   K P��������  0 killrunningapp killRunningApp��  ��    I   Q V�������� 00 copyservicetoclipboard copyServiceToClipboard��  ��    l  W b I  W b����
�� .sysodelanull��� ��� nmbr ^   W ^  o   W \���� 0 	countdown    m   \ ]���� ��   . (pause to display DNC message as a banner    �!! P p a u s e   t o   d i s p l a y   D N C   m e s s a g e   a s   a   b a n n e r "��" l  c e#$%# L   c e����  $  exit SSH-Check   % �&&  e x i t   S S H - C h e c k��  � '(' =  h k)*) o   h i����  0 isservicealive isServiceAlive* m   i j����  ( +��+ k   n �,, -.- I   n ���/���� 0 msg  / 010 o   o p���� 0 titlemsg  1 232 b   p y454 m   p s66 �77  W a r n i n g   a b o u t  5 o   s x���� 0 service  3 8��8 b   y �9:9 b   y �;<; b   y �=>= b   y �?@? m   y |AA �BB  D o n ' t   r u n  @ o   | ����� 0 program  > m   � �CC �DD F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  < o   � ����� 0 service  : m   � �EE �FF  .��  ��  . GHG I   � ��������� 00 copyservicetoclipboard copyServiceToClipboard��  ��  H IJI l  � �KLMK I  � ���N��
�� .sysodelanull��� ��� nmbrN ^   � �OPO o   � ����� 0 	countdown  P m   � ����� ��  L . (pause to display DNC message as a banner   M �QQ P p a u s e   t o   d i s p l a y   D N C   m e s s a g e   a s   a   b a n n e rJ R��R l  � �STUS L   � �����  T  exit SSH-Check   U �VV  e x i t   S S H - C h e c k��  ��  ��  � WXW l  � ���������  ��  ��  X YZY l  � ���[\��  [ C =Ask if you want to run your program, kill it, or quietly stop   \ �]] z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o pZ ^_^ r   � �`a` b   � �bcb m   � �dd �ee 4 A c t i v e   S S H   C o n n e c t i o n   t o :  c o   � �����  0 isservicealive isServiceAlivea o      ���� 0 titlemsg  _ fgf Z   ��hi��jh =  � �klk I   � ��������� 0 isapprunning isAppRunning��  ��  l m   � ���
�� boovtruei l  �>mnom k   �>pp qrq r   � �sts J   � �uu vwv m   � �xx �yy  R e s t a r tw z{z m   � �|| �}}  E x i t   S S H - C h e c k{ ~��~ m   � � ���  T u r n   O f f��  t o      ���� 0 btnopt btnOptr ��� r   � ���� b   � ���� o   � ����� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k ?� o      ���� 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �����
�� 
appr� o   � ����� 0 titlemsg  ��  ��  ��  � o      ���� 
0 choice  � ���� Z   >����� =  ��� o   ���� 
0 choice  � m  �� ���  R e s t a r t� I  
��������  0 killrunningapp killRunningApp��  ��  � ��� = ��� o  ���� 
0 choice  � m  �� ���  T u r n   O f f� ���� l 9���� k  9�� ��� r  #��� m  �� ���  N o� o      ���� 
0 answer  � ��� V  $0��� l 0+���� Q  0+���� k  3�� ��� r  3X��� I 3T����
�� .sysodlogaskr        TEXT� b  3@��� b  3<��� m  36�� ���  T i m e r :   T u r n  � o  6;���� 0 program  � m  <?�� ��� 2   o f f   i n   h o w   m a n y   s e c o n d s ?� ����
�� 
dtxt� m  CD����  � ����
�� 
appr� o  GH���� 0 titlemsg  � �����
�� 
givu� m  KN���� <��  � o      ���� 0 	bttnpress 	bttnPress� ��� r  Yp��� b  Yl��� b  Yh��� m  Y\�� ��� 
 e c h o  � l \g������ c  \g��� n  \c��� 1  _c��
�� 
ttxt� 1  \_��
�� 
rslt� m  cf��
�� 
TEXT��  ��  � m  hk�� ��� 
   |   b c� o      ���� 0 cmd  � ��� Z  q�������� = qx��� o  qt���� 0 	bttnpress 	bttnPress� m  tw�� ���  C a n c e l� L  {�� m  {~��
�� 
null��  ��  � ��� r  ����� I �������
�� .sysoexecTEXT���     TEXT� o  ������ 0 cmd  ��  � o      ���� 0 xseconds xSeconds� ��� r  ����� I  ��������� 0 hms  � ���� o  ������ 0 xseconds xSeconds��  ��  � o      ���� &0 humanreadabletime humanReadableTime� ��� r  ����� J  ���� ��� m  ���� ���  Y e s� ���� m  ��   �  N o��  � o      ���� 0 bttnopt bttnOpt�  r  �� n  �� 1  ����
�� 
bhit l ������ I ����	

�� .sysodlogaskr        TEXT	 b  �� b  �� m  �� �  S h u t d o w n   i n   o  ������ &0 humanreadabletime humanReadableTime m  �� �  ?
 ��
�� 
btns o  ������ 0 bttnopt bttnOpt ��
�� 
dflt m  �� �  Y e s ����
�� 
appr o  ������ 0 titlemsg  ��  ��  ��   o      ���� 
0 answer   �� Z  ����� F  �� = ��  o  ���� 
0 answer    m  ��!! �""  Y e s ? ��#$# o  ���~�~ 0 xseconds xSeconds$ m  ���}�}   k  �%% &'& I  ��|(�{�| 0 msg  ( )*) b  ��+,+ m  ��-- �..  C l o s i n g  , o  ���z�z 0 program  * /0/ b  ��121 b  ��343 m  ��55 �66  W a i t i n g  4 o  ���y�y &0 humanreadabletime humanReadableTime2 m  ��77 �88  !0 9�x9 m  � :: �;;  . . .�x  �{  ' <�w< l =>?= I �v@�u
�v .sysodelanull��� ��� nmbr@ o  �t�t 0 xseconds xSeconds�u  > 1 +sleep until user the provided time runs out   ? �AA V s l e e p   u n t i l   u s e r   t h e   p r o v i d e d   t i m e   r u n s   o u t�w  ��  ��  ��  � R      �s�r�q
�s .ascrerr ****      � ****�r  �q  � k  +BB CDC I  &�pE�o�p 0 msg  E FGF m  HH �II   S S H - C h e c k :   E r r o rG JKJ m  LL �MM 6 C a n ' t   e v a l u a t e   w a i t   t i m e . . .K N�nN m  "OO �PP @ S S H - C h e c k   i s   t e r m i n a t i n g   i t s e l f !�n  �o  D Q�mQ L  '+RR m  '*�l
�l 
null�m  � U Oonce the answer switches to Yes, it will break the loop or if a error is thrown   � �SS � o n c e   t h e   a n s w e r   s w i t c h e s   t o   Y e s ,   i t   w i l l   b r e a k   t h e   l o o p   o r   i f   a   e r r o r   i s   t h r o w n� =  (/TUT o  (+�k�k 
0 answer  U m  +.VV �WW  N o� XYX I  16�j�i�h�j  0 killrunningapp killRunningApp�i  �h  Y Z�gZ l 79[\][ L  79�f�f  \  exit SSH-Check   ] �^^  e x i t   S S H - C h e c k�g  � % shut off in x number of seconds   � �__ > s h u t   o f f   i n   x   n u m b e r   o f   s e c o n d s��  � l <>`ab` l <>cdec L  <>�e�e  d  exit SSH-Check   e �ff  e x i t   S S H - C h e c ka ! choice equals Exit SH-Check   b �gg 6 c h o i c e   e q u a l s   E x i t   S H - C h e c k��  n 0 * should we kill & restart the running app?   o �hh T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  j l A�ijki k  A�ll mnm r  ARopo b  ANqrq b  AJsts m  ADuu �vv  S t a r t i n g  t o  DI�d�d 0 program  r 1  JM�c
�c 
spacp o      �b�b 0 qmsg qMsgn w�aw Z  S�xy�`zx = SZ{|{ o  SX�_�_ *0 displaynoticecenter DisplayNoticeCenter| m  XY�^
�^ boovtruey k  ]�}} ~~ I  ]u�]��\�] 0 msg  � ��� m  ^a�� ���  S S H - C h e c k� ��� b  aj��� b  af��� o  ab�[�[  0 isservicealive isServiceAlive� 1  be�Z
�Z 
spac� m  fi�� ���  i s   a c t i v e� ��Y� b  jq��� o  jm�X�X 0 qmsg qMsg� m  mp�� ���  u p   n o w !�Y  �\   ��W� I v��V��U
�V .sysodelanull��� ��� nmbr� l v��T�S� ^  v��� o  v{�R�R 0 	countdown  � m  {~�Q�Q 	�T  �S  �U  �W  �`  z k  ���� ��� r  ����� J  ���� ��� m  ���� ���  L a u n c h� ��P� m  ���� ���  S t o p�P  � o      �O�O 0 btnopt btnOpt� ��N� Q  ������ k  ���� ��� r  ����� b  ����� b  ����� b  ����� o  ���M�M 0 qmsg qMsg� m  ���� ���    i n  � o  ���L�L 0 	countdown  � m  ���� ���    s e c o n d s !� o      �K�K 0 qmsg qMsg� ��� r  ����� n  ����� 1  ���J
�J 
bhit� l ����I�H� I ���G��
�G .sysodlogaskr        TEXT� o  ���F�F 0 qmsg qMsg� �E��
�E 
btns� o  ���D�D 0 btnopt btnOpt� �C��
�C 
dflt� m  ���� ���  L a u n c h� �B��
�B 
appr� o  ���A�A 0 titlemsg  � �@��?
�@ 
givu� o  ���>�> 0 	countdown  �?  �I  �H  � o      �=�= 0 yesorno yesOrNo� ��<� Z  �����;�:� = ����� o  ���9�9 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ���8�8  �;  �:  �<  � R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  � L  ���4�4  �N  �a  j  start the program   k ��� " s t a r t   t h e   p r o g r a mg ��� l ���3�2�1�3  �2  �1  � ��� l ���0���0  � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  ����� n  ����� 1  ���/
�/ 
psxp� l ����.�-� m  ���� ���  / A p p l i c a t i o n s /�.  �-  � o      �,�, 0 apppath appPath� ��� l ���+���+  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ���� I ��*�)�
�* .sysooffslong    ��� null�)  � �(��
�( 
psof� o  �'�' 0 program  � �&��%
�& 
psin� o  	�$�$ 0 apppath appPath�%  � o      �#�# 0 
nameoffset 
nameOffset� ��� l �"���"  � 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )� ��� r  .��� n  *��� 7 *�!��
�! 
ctxt� m   "� �  � l #)���� \  #)��� o  $'�� 0 
nameoffset 
nameOffset� m  '(�� �  �  � o  �� 0 apppath appPath� o      �� 0 
folderpath 
folderPath� ��� l //�	 	�  	  6 0msg("info:", "Msg", "folderpath: " & folderPath)   	 �		 ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )� 			 Q  /}				 l 2a				
	 k  2a		 			 I 2G�	�
� .sysoexecTEXT���     TEXT	 b  2C			 b  2?			 b  2;			 o  25�� 0 
folderpath 
folderPath	 o  5:�� 0 program  	 m  ;>		 �		  . a p p	 m  ?B		 �		 N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�  	 			 I HM�	�
� .sysodelanull��� ��� nmbr	 m  HI�� �  	 	�	 O Na			 I [`���
� .miscactvnull��� ��� null�  �  	 4  NX�	
� 
capp	 o  RW�� 0 program  �  		 ( "start program up in the background   	
 �	 	  D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d	 R      ��
�	
� .ascrerr ****      � ****�
  �	  	 I  i}�	!�� 0 msg  	! 	"	#	" m  jm	$	$ �	%	%   S S H - C h e c k :   E r r o r	# 	&	'	& m  mp	(	( �	)	) 
 E r r o r	' 	*�	* b  py	+	,	+ m  ps	-	- �	.	. N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  	, o  sx�� 0 program  �  �  	 	/�	/ l ~~����  �  �  �  � 	0	1	0 l     � �����   ��  ��  	1 	2��	2 l     ��������  ��  ��  ��       "��	3   ! ' 1 7	4 J������	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I��  	3  ������������������������������������������������������������������ 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel�� 
0 osx OSX
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 setosxnumber setOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� 0 vcmp  �� 0 copyiconfig copyiConfig�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive�� 00 copyservicetoclipboard copyServiceToClipboard�� 0 hms  
�� .aevtoappnull  �   � ****	4 �	J	J � / U s e r s / t w i l i g h t / G i t H u b / S S H - C h e c k / S S H - C h e c k - n e x t . s c p t d / C o n t e n t s / S u p p o r t / i c o n f i g S S H C . p y
�� boovfals
�� boovfals�� 	5 �� f����	K	L��
�� .aevtodocnull  �    alis�� 0 these_items  ��  	K ������ 0 these_items  �� 0 prog  	L  t�� ����� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j 	6 �� �����	M	N���� 0 resetprogram resetProgram��  ��  	M  	N  �� fEc  	7 �� �����	O	P���� 0 setosxnumber setOSXNumber��  ��  	O  	P  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&EQc  
OP	8 �� �����	Q	R���� 0 
setdisplay 
setDisplay��  ��  	Q  	R ������������ 0 setosxnumber setOSXNumber�� 	�� �� 0 
fileexists 
FileExists
�� 
bool�� P*j+  Ob  
�
 -b  
� 	 *b  k+ e �&	 *b  k+ e �&�& eEc  Y 	fEc  	9 ������	S	T���� 0 
fileexists 
FileExists�� ��	U�� 	U  ���� 0 thefile theFile��  	S ���� 0 thefile theFile	T &����
�� 
file
�� .coredoexnull���     ****�� � *�/j  eY hUOf	: ��.����	V	W���� 0 folderexists FolderExists�� ��	X�� 	X  ���� 0 	thefolder 	theFolder��  	V ���� 0 	thefolder 	theFolder	W ;����
�� 
cfol
�� .coredoexnull���     ****�� � *�/j  eY hUOf	; ��C����	Y	Z���� 0 	updatexml 	updateXML�� ��	[�� 	[  ���� 0 programname programName��  	Y �������� 0 programname programName�� 
0 update  �� 0 update2  	Z ����`����j{����������� 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  s fb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hW 	X  fY hOf	< �������	\	]���� 0 setupservice setupService��  ��  	\ ���� 0 ser  	] 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� n*b  k+  e  A 4b  �%�%j E�O��	 ���& �EQc   OeY hW 	X  fY hOb   �  b  EQc   Y hOf	= �������	^	_���� "0 setservicelevel setServiceLevel��  ��  	^ �� 
0 slevel  	_ �~�}�|�{�z+�~ 0 
fileexists 
FileExists
�} 
spac
�| .sysoexecTEXT���     TEXT�{  �z  �� l*b  k+  e  @ 3b  �%�%j E�O��  eEc  	Y 	fEc  	Ob  	W 	X  fY hOb  	�  fEc  	Y hOb  		> �y6�x�w	`	a�v�y 0 setupprogram setupProgram�x  �w  	` �u�u 0 prog  	a 
�t�sM�rW\�q�p�ol�t 0 
fileexists 
FileExists
�s 
spac
�r .sysoexecTEXT���     TEXT
�q 
bool�p  �o  �v n*b  k+  e  A 4b  �%�%j E�O��	 ���& �EQc  OeY hW 	X  fY hOb  �  b  EQc  Y hOf	? �nw�m�l	b	c�k�n 0 vcmp  �m  �l  	b �j�i�h�j 0 
supportloc 
supportLoc�i 0 cmd  �h 0 iver  	c �g�f�e�d����c�b�a�`�
�g 
rtyp
�f 
TEXT
�e .earsffdralis        afdr
�d 
psxp
�c .sysoexecTEXT���     TEXT
�b 
nmbr�a  �`  �k 0)��l �,�%E�O �%�%E�O�j �&E�O�W 	X 	 
�	@ �_��^�]	d	e�\�_ 0 copyiconfig copyiConfig�^  �]  	d �[�Z�Y�[ 0 iconfig  �Z 
0 mypath  �Y 0 
supportloc 
supportLoc	e ��X�W�V���U��T�S�R�Q��P�O�N�M"�L�X 0 
fileexists 
FileExists�W 0 vcmp  
�V 
bool
�U 
spac
�T 
rtyp
�S 
TEXT
�R .earsffdralis        afdr
�Q 
psxp
�P .sysoexecTEXT���     TEXT�O  �N  �M 0 msg  
�L .sysodelanull��� ��� nmbr�\ z�E�O*�k+ f 
 *j+ k �& ]��%�%�%�%E�O)��l 
�,�%E�O "��%�%�%j O�a %�%b  %j W X  *a a a m+ Oa j Y hOP	A �K)�J�I	f	g�H�K $0 sshchecksettings sshCheckSettings�J  �I  	f �G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�G 0 configfolder configFolder�F 0 
configpath 
configPath�E 0 iconfig  �D 
0 mypath  �C 0 
supportloc 
supportLoc�B 0 cmdmakepath cmdMakePath�A 0 qmsg qMsg�@ 0 btnopt btnOpt�? 0 yesorno yesOrNo�> 0 alertaction alertAction�= *0 cmdunzipalertaction cmdUnzipAlertAction�< .0 cmdcleanupalertaction cmdCleanUpAlertAction�; 0 
dnworkflow 
DNWorkflow�: (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�9 ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow	g @2:@N�8P�7�6�5�4_�3�2�1�0��/��.�-����,�+��*��)�(�'�&�%�$3BQ_c�#hlo�"���������!� �
��
�8 
spac
�7 
rtyp
�6 
TEXT
�5 .earsffdralis        afdr
�4 
psxp�3 0 folderexists FolderExists�2 0 
fileexists 
FileExists
�1 
bool�0 
�/ .sysoexecTEXT���     TEXT
�. .sysodelanull��� ��� nmbr�- 0 copyiconfig copyiConfig
�, 
btns
�+ 
dflt
�* 
appr
�) 
givu�( <
�' .sysodlogaskr        TEXT
�& 
bhit�%  �$  
�# 
strq�" 0 msg  �! 0 setupservice setupService�  0 setupprogram setupProgram� 0 
setdisplay 
setDisplay� 0 vcmp  � "0 setservicelevel setServiceLevel�H��E�O�%E�O�E�O�%�%�%�%E�O)��l �,�%E�O*�k+ f 
 *�k+ f �&
 -b  
� 	 !*b  k+ f 
 *b  k+ f �&�&�&7�*�k+ f  ��%�%E�O�j Oa j Y hO*j+ Ob  
� �*b  k+ f �a E�Oa a lvE�O ,�a �a a a a a b  a  � a ,E�W X   !hO�a "  �a #E�O �a $%�%�%�%a %%j W X   !hOa j O*�a &%�%k+ e  4 (�a '%�%�%E�O�j O�a (%�%�%E�O�j W X   !hY hO �a )%a *a +,%j W X   !*a ,a -a .m+ /Oa j Y hO*�k+ e 	 *b  k+ f �& wa 0E�O�a 1%�%�%E�O�a 2%�%�%E�O �a 3%�%�%�%a 4%j W X   !hOa j O*�a 5%�%k+ e   �j O�j W X   !hY hY hY hY hW "X   !*a 6a 7�m+ /O*j+ 8O*j+ 9OfOb  m!j O*j+ :Ob  e  *a ;�a <%a =m+ /Okj Y hY hO*�k+ e 	 *j+ >k �& 
*j+ Y hO*j+ ?O*j+ 8e 	 *j+ 9e �& eY hOf	B �=��	h	i�� 
0 notify  � �	j� 	j  ���� 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 message  �  	h ���� 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 message  	i ������ci�x~����
��	�������� 	
� 
appr
� 
subt� 
� .sysonotfnull��� ��� TEXT
� 
ctxt
� 
strq
�
 
spac
�	 .sysoexecTEXT���     TEXT�  �  � 0 msg  � �b  
� ���� Y ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W %X  a Ec  O*a a a b  %m+ 	C ����	k	l�� 0 msg  � �	m� 	m  � �����  0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  �  	k �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  	l ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  � )b   *���m+  Y  ��l W 	X  h	D �������	n	o���� 0 isapprunning isAppRunning��  ��  	n  	o ��������
�� 
capp
�� 
prun��  ��  �� * *�b  / *�,e  eY hUW X  hOf	E ������	p	q����  0 killrunningapp killRunningApp��  ��  	p  	q ������������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j 	F ��%����	r	s���� 0 servicealive serviceAlive��  ��  	r �������� 
0 sshcon  �� 0 cmdssh cmdSSH�� 
0 tunnel  	s 
3JL������fh����
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOj	G �������	t	u���� 00 copyservicetoclipboard copyServiceToClipboard��  ��  	t  	u ���������
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  ��  b  �%�%j W X  h	H �������	v	w���� 0 hms  �� ��	x�� 	x  ���� 0 sec  ��  	v ������ 0 sec  �� 0 secinhms secInHMS	w 	�������������
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� ?�E�O &b  �%�%�%�%j E�O��  jE�Y hW X  �%�%j E�O�	I �������	y	z��
�� .aevtoappnull  �   � ****��  ��  	y  	z j���������������������������6ACEdx|�������������������������V�������������������������������� ��!-57:����HLOu������������������������������������		����	$	(	-�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
setdisplay 
setDisplay�� 0 servicealive serviceAlive��  0 isservicealive isServiceAlive�� 0 titlemsg  �� 0 isapprunning isAppRunning
�� 
bool�� 0 message  �� 0 msg  ��  0 killrunningapp killRunningApp�� 00 copyservicetoclipboard copyServiceToClipboard
�� .sysodelanull��� ��� nmbr�� 0 btnopt btnOpt�� 0 qmsg qMsg
�� 
btns
�� 
dflt
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 
0 choice  �� 
0 answer  
�� 
dtxt
�� 
givu�� <�� 0 	bttnpress 	bttnPress
�� 
rslt
�� 
ttxt
�� 
TEXT�� 0 cmd  
�� 
null
�� .sysoexecTEXT���     TEXT�� 0 xseconds xSeconds�� 0 hms  �� &0 humanreadabletime humanReadableTime�� 0 bttnopt bttnOpt��  ��  
�� 
spac�� 	�� �� 0 yesorno yesOrNo
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
�� 
capp
�� .miscactvnull��� ��� null���*j+  O*j+ O*j+ O*j+ E�O�E�O*j+ e 	 �j �& :�b  %�%E�O*��b   %�m+ O*j+ O*j+ Ob  l!j OhY G�j  @*�a b   %a b  %a %b   %a %m+ O*j+ Ob  l!j OhY hOa �%E�O*j+ e �a a a mvE` Ob  a %E` O_ a _ a a a �a   !a ",E` #O_ #a $  
*j+ Y._ #a % "a &E` 'Oh_ 'a (  �a )b  %a *%a +ja �a ,a -a   !E` .Oa /_ 0a 1,a 2&%a 3%E` 4O_ .a 5  	a 6Y hO_ 4j 7E` 8O*_ 8k+ 9E` :Oa ;a <lvE` =Oa >_ :%a ?%a _ =a a @a �a   !a ",E` 'O_ 'a A 	 	_ 8j�& )*a Bb  %a C_ :%a D%a Em+ O_ 8j Y hW X F G*a Ha Ia Jm+ Oa 6[OY��O*j+ OhY hY �a Kb  %_ L%E` Ob  e  +*a M�_ L%a N%_ a O%m+ Ob  a P!j Y la Qa RlvE` O U_ a S%b  %a T%E` O_ a _ a a Ua �a ,b  a V !a ",E` WO_ Wa X  hY hW 	X F GhOa Ya Z,E` [O*a \b  a ]_ [a ^ _E` `O_ [[a a\[Zk\Z_ `k2E` bO 4_ bb  %a c%a d%j 7Okj O*a eb  / *j fUW X F G*a ga ha ib  %m+ OP ascr  ��ޭ