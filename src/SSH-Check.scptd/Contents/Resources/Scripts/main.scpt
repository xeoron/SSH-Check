FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   `Z
	Name: SSH-Check
	Version: 0.9.1.1
	Author: Jason Campisi
	Date: 9.7.2013->2015
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
 	 V e r s i o n :   0 . 9 . 1 . 1 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 - > 2 0 1 5 
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
�Y boovtrue�_  �^    m     &&�                                                                                  sevs  alis    �  Thneed                     �lpH+  p;�System Events.app                                              tV�4�]        ����  	                CoreServices    �l�U      �5"�    p;�p;�p;�  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   '�X' L    (( m    �W
�W boovfals�X   )*) l     �V�U�T�V  �U  �T  * +,+ i   E H-.- I      �S/�R�S 0 folderexists FolderExists/ 0�Q0 o      �P�P 0 	thefolder 	theFolder�Q  �R  . k     11 232 O     454 Z    67�O�N6 I   �M8�L
�M .coredoexnull���     ****8 4    �K9
�K 
cfol9 o    �J�J 0 	thefolder 	theFolder�L  7 L    :: m    �I
�I boovtrue�O  �N  5 m     ;;�                                                                                  sevs  alis    �  Thneed                     �lpH+  p;�System Events.app                                              tV�4�]        ����  	                CoreServices    �l�U      �5"�    p;�p;�p;�  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��  3 <�H< L    == m    �G
�G boovfals�H  , >?> l     �F�E�D�F  �E  �D  ? @A@ i   I LBCB I      �CD�B�C 0 	updatexml 	updateXMLD E�AE o      �@�@ 0 programname programName�A  �B  C k     �FF GHG l     �?IJ�?  I f `note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml,   J �KK � n o t e :   t h e   f i r s t   t i m e   X M L S e t t i n g s   ( i c o n f i g S S H C . p y )   i s   a s k e d   f o r   d a t a   i t   w i l l   g e n e r a t e   c o n f i g . x m l ,H LML l     �>NO�>  N � }then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it   O �PP � t h e n   a l l   o t h e r   t i m e s   i t   w i l l   u s e   t h e   d a t a   s e t   i n   t h e   f i l e .   A n d ,   i f   c o n f i g . x m l   b e c o m e s   c o r r u p t ,   i c o n f i g S S H C . p y   w i l l   r e p l a c e   i tM QRQ Z     �ST�=�<S =    UVU I     
�;W�:�; 0 
fileexists 
FileExistsW X�9X o    �8�8 0 xmlsettings XMLSettings�9  �:  V m   
 �7
�7 boovtrueT Q    }YZ[Y k    s\\ ]^] r    '_`_ I   %�6a�5
�6 .sysoexecTEXT���     TEXTa b    !bcb b    ded b    fgf b    hih o    �4�4 0 xmlsettings XMLSettingsi 1    �3
�3 
spacg m    jj �kk  - u pe 1    �2
�2 
spacc n     lml 1     �1
�1 
strqm o    �0�0 0 programname programName�5  ` o      �/�/ 
0 update  ^ n�.n Z   ( sop�-qo =  ( +rsr o   ( )�,�, 
0 update  s m   ) *tt �uu  T r u ep L   . 0vv m   . /�+
�+ boovtrue�-  q k   3 sww xyx r   3 Hz{z I  3 F�*|�)
�* .sysoexecTEXT���     TEXT| b   3 B}~} b   3 >� b   3 <��� b   3 :��� o   3 8�(�( 0 xmlsettings XMLSettings� 1   8 9�'
�' 
spac� m   : ;�� ���  - c� 1   < =�&
�& 
spac~ n   > A��� 1   ? A�%
�% 
strq� o   > ?�$�$ 0 programname programName�)  { o      �#�# 
0 update  y ��� r   I ^��� I  I \�"��!
�" .sysoexecTEXT���     TEXT� b   I X��� b   I T��� b   I R��� b   I P��� o   I N� �  0 xmlsettings XMLSettings� 1   N O�
� 
spac� m   P Q�� ���  - u p� 1   R S�
� 
spac� n   T W��� 1   U W�
� 
strq� o   T U�� 0 programname programName�!  � o      �� 0 update2  � ��� Z   _ s����� F   _ j��� =  _ b��� o   _ `�� 
0 update  � m   ` a�� ���  T r u e� =  e h��� o   e f�� 0 update2  � m   f g�� ���  T r u e� L   m o�� m   m n�
� boovtrue�  �  �  �.  Z R      ���
� .ascrerr ****      � ****�  �  [ L   { }�� m   { |�
� boovfals�=  �<  R ��� L   � ��� m   � ��
� boovfals�  A ��� l     ����  �  �  � ��� i   M P��� I      ��
�	� 0 setupservice setupService�
  �	  � k     m�� ��� Z     O����� =    ��� I     
���� 0 
fileexists 
FileExists� ��� o    �� 0 xmlsettings XMLSettings�  �  � m   
 �
� boovtrue� Q    K���� k    A�� ��� r    !��� I   ��� 
� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    ���� 0 xmlsettings XMLSettings� 1    ��
�� 
spac� m    �� ���  - s�   � o      ���� 0 ser  � ���� Z   " A������� F   " /��� H   " &�� E   " %��� o   " #���� 0 ser  � m   # $�� ���  N o n e� H   ) -�� E   ) ,��� o   ) *���� 0 ser  � m   * +�� ���  � k   2 =�� ��� s   2 :��� o   2 3���� 0 ser  � o      ���� 0 service  � ���� L   ; =�� m   ; <��
�� boovtrue��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   I K�� m   I J��
�� boovfals�  �  � ��� Z   P j������� =  P W��� o   P U���� 0 service  � m   U V�� ���  � s   Z f��� o   Z _���� 0 servicebackup serviceBackup� o      ���� 0 service  ��  ��  � ���� L   k m�� m   k l��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   Q T��� I      �������� "0 setservicelevel setServiceLevel��  ��  � k     k�� ��� l     ������  � ^ XShould the ssh tunnel to service X be run by the current user or any user on the system?   � ��� � S h o u l d   t h e   s s h   t u n n e l   t o   s e r v i c e   X   b e   r u n   b y   t h e   c u r r e n t   u s e r   o r   a n y   u s e r   o n   t h e   s y s t e m ?� ��� l     ������  � < 6True is to search globally and False to search locally   � ��� l T r u e   i s   t o   s e a r c h   g l o b a l l y   a n d   F a l s e   t o   s e a r c h   l o c a l l y� ��� Z     N� ����� =     I     
������ 0 
fileexists 
FileExists �� o    ���� 0 xmlsettings XMLSettings��  ��   m   
 ��
�� boovtrue  Q    J k    @ 	
	 r    ! I   ����
�� .sysoexecTEXT���     TEXT b     b     o    ���� 0 xmlsettings XMLSettings 1    ��
�� 
spac m     �  - s l��   o      ���� 
0 slevel  
  Z   " 9�� =  " % o   " #���� 
0 slevel   m   # $ �  g l o b a l l y r   ( / m   ( )��
�� boovtrue o      ���� 0 servicelevel ServiceLevel��   l  2 9 ! r   2 9"#" m   2 3��
�� boovfals# o      ���� 0 servicelevel ServiceLevel  ( " slevel is equal to "locally" then   ! �$$ D   s l e v e l   i s   e q u a l   t o   " l o c a l l y "   t h e n %&% l  : :��'(��  ' = 7msg("service level", "", slevel & " = " & ServiceLevel)   ( �)) n m s g ( " s e r v i c e   l e v e l " ,   " " ,   s l e v e l   &   "   =   "   &   S e r v i c e L e v e l )& *��* L   : @++ o   : ?���� 0 servicelevel ServiceLevel��   R      ������
�� .ascrerr ****      � ****��  ��   L   H J,, m   H I��
�� boovfals��  ��  � -.- l  O O��������  ��  ��  . /0/ Z   O d12����1 =  O V343 o   O T���� 0 servicelevel ServiceLevel4 m   T U55 �66  2 r   Y `787 m   Y Z��
�� boovfals8 o      ���� 0 servicelevel ServiceLevel��  ��  0 9��9 L   e k:: o   e j���� 0 servicelevel ServiceLevel��  � ;<; l     ��������  ��  ��  < =>= i   U X?@? I      �������� 0 setupprogram setupProgram��  ��  @ k     mAA BCB Z     ODE����D =    FGF I     
��H���� 0 
fileexists 
FileExistsH I��I o    ���� 0 xmlsettings XMLSettings��  ��  G m   
 ��
�� boovtrueE Q    KJKLJ k    AMM NON r    !PQP I   ��R��
�� .sysoexecTEXT���     TEXTR b    STS b    UVU o    ���� 0 xmlsettings XMLSettingsV 1    ��
�� 
spacT m    WW �XX  - p��  Q o      ���� 0 prog  O Y��Y Z   " AZ[����Z F   " /\]\ H   " &^^ E   " %_`_ o   " #���� 0 prog  ` m   # $aa �bb  N o n e] H   ) -cc E   ) ,ded o   ) *���� 0 prog  e m   * +ff �gg  [ k   2 =hh iji s   2 :klk o   2 3���� 0 prog  l o      ���� 0 program  j m��m L   ; =nn m   ; <��
�� boovtrue��  ��  ��  ��  K R      ������
�� .ascrerr ****      � ****��  ��  L L   I Koo m   I J��
�� boovfals��  ��  C pqp Z   P jrs����r =  P Wtut o   P U���� 0 program  u m   U Vvv �ww  s s   Z fxyx o   Z _���� 0 programbackup programBackupy o      ���� 0 program  ��  ��  q z��z L   k m{{ m   k l��
�� boovfals��  > |}| l     ��������  ��  ��  } ~~ i   Y \��� I      �������� 0 vcmp  ��  ��  � k     /�� ��� l      ������  � � �  versionCompareProgram for iconfigSSHC.py
	Results translation
	-1 if the current program installed is older
	0 when both programs are equal and
	1 when the current program is newer
   � ���n     v e r s i o n C o m p a r e P r o g r a m   f o r   i c o n f i g S S H C . p y 
 	 R e s u l t s   t r a n s l a t i o n 
 	 - 1   i f   t h e   c u r r e n t   p r o g r a m   i n s t a l l e d   i s   o l d e r 
 	 0   w h e n   b o t h   p r o g r a m s   a r e   e q u a l   a n d 
 	 1   w h e n   t h e   c u r r e n t   p r o g r a m   i s   n e w e r 
� ��� r     ��� b     ��� l    	������ n     	��� 1    	��
�� 
psxp� l    ������ I    ����
�� .earsffdralis        afdr�  f     � �����
�� 
rtyp� m    ��
�� 
TEXT��  ��  ��  ��  ��  � m   	 
�� ��� " C o n t e n t s / S u p p o r t /� o      ���� 0 
supportloc 
supportLoc� ��� l   ��������  ��  ��  � ���� Q    /���� k    %�� ��� r    ��� b    ��� b    ��� m    �� ���  c d  � o    ���� 0 
supportloc 
supportLoc� m    �� ��� , ;   . / c o m p a r e V e r s i o n s . p y� o      ���� 0 cmd  � ��� r    "��� c     ��� l   ����� I   �~��}
�~ .sysoexecTEXT���     TEXT� o    �|�| 0 cmd  �}  ��  �  � m    �{
�{ 
nmbr� o      �z�z 0 iver  � ��y� L   # %�� o   # $�x�x 0 iver  �y  � R      �w�v�u
�w .ascrerr ****      � ****�v  �u  � L   - /�� m   - .�� ��� 
 E r r o r��   ��� l     �t�s�r�t  �s  �r  � ��� i   ] `��� I      �q�p�o�q 0 copyiconfig copyiConfig�p  �o  � k     y�� ��� r     ��� m     �� ��� 6 ~ / . s s h - c h e c k / i c o n f i g S S H C . p y� o      �n�n 0 iconfig  � ��� Z    w���m�l� G    ��� =   ��� I    
�k��j�k 0 
fileexists 
FileExists� ��i� o    �h�h 0 iconfig  �i  �j  � m   
 �g
�g boovfals� =   ��� I    �f�e�d�f 0 vcmp  �e  �d  � m    �c�c � k    s�� ��� r    &��� b    $��� b    "��� b     ��� b    ��� m    �� ���  c d  � m    �� ���  ~ / . s s h - c h e c k� 1    �b
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
�C .sysodelanull��� ��� nmbr! m   l o"" ?�      �B  �D  �m  �l  � #�A# l  x x�@�?�>�@  �?  �>  �A  � $%$ l     �=�<�;�=  �<  �;  % &'& i   a d()( I      �:�9�8�: $0 sshchecksettings sshCheckSettings�9  �8  ) l   �*+,* k    �-- ./. r     010 m     22 �33  . s s h - c h e c k1 o      �7�7 0 configfolder configFolder/ 454 r    	676 b    898 m    :: �;;  ~ /9 o    �6�6 0 configfolder configFolder7 o      �5�5 0 
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
supportLocS aba l  ( (�%�$�#�%  �$  �#  b cdc Z   (�efg�"e G   ( khih G   ( =jkj =  ( 0lml I   ( .�!n� �! 0 folderexists FolderExistsn o�o o   ) *�� 0 
configpath 
configPath�  �   m m   . /�
� boovfalsk =  3 ;pqp I   3 9�r�� 0 
fileexists 
FileExistsr s�s o   4 5�� 0 iconfig  �  �  q m   9 :�
� boovfalsi l  @ it��t F   @ iuvu =  @ Gwxw o   @ E�� 
0 osx OSXx m   E F�� v l  J gy��y G   J gz{z =  J V|}| I   J T�~�� 0 
fileexists 
FileExists~ � o   K P�� 0 dnclocation DNCLocation�  �  } m   T U�
� boovfals{ =  Y e��� I   Y c���� 0 
fileexists 
FileExists� ��
� o   Z _�	�	 0 dnca DNCA�
  �  � m   c d�
� boovfals�  �  �  �  f k   n��� ��� l  n n����  � F @# setup path, display notification data, and config file manager   � ��� � #   s e t u p   p a t h ,   d i s p l a y   n o t i f i c a t i o n   d a t a ,   a n d   c o n f i g   f i l e   m a n a g e r� ��� l  n n����  � � {# Note: a copy of the workflow folder, DNC action-script, and iconfigSSHC.py master copy is stored inside SSH-Check binary    � ��� � #   N o t e :   a   c o p y   o f   t h e   w o r k f l o w   f o l d e r ,   D N C   a c t i o n - s c r i p t ,   a n d   i c o n f i g S S H C . p y   m a s t e r   c o p y   i s   s t o r e d   i n s i d e   S S H - C h e c k   b i n a r y  � ��� Q   ni���� k   qF�� ��� Z   q ������ =  q y��� I   q w���� 0 folderexists FolderExists� ��� o   r s� �  0 
configpath 
configPath�  �  � m   w x��
�� boovfals� k   | ��� ��� r   | ���� b   | ���� b   | ��� m   | }�� ���  m k d i r   - p� 1   } ~��
�� 
spac� o    ����� 0 
configpath 
configPath� o      ���� 0 cmdmakepath cmdMakePath� ��� l  � ����� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdmakepath cmdMakePath��  �  create path   � ���  c r e a t e   p a t h� ���� l  � ����� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ��� ?�      ��  � R Lnote: FileExist will fail, even if true, if the program does not pause first   � ��� � n o t e :   F i l e E x i s t   w i l l   f a i l ,   e v e n   i f   t r u e ,   i f   t h e   p r o g r a m   d o e s   n o t   p a u s e   f i r s t��  �  �  � ��� l  � ���������  ��  ��  � ��� I   � ��������� 0 copyiconfig copyiConfig��  ��  � ��� l  � ���������  ��  ��  � ���� Z   �F������� =  � ���� o   � ����� 
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
�� .ascrerr ****      � ****��  ��  ��  � ��� l  ��� � Z   ������ =  � � o   � ����� 0 yesorno yesOrNo m   � � �  Y e s k  � 	
	 r   m   � X D i s p l a y _ N o t i f i c a t i o n _ C e n t e r _ A l e r t . a c t i o n . z i p o      ���� 0 alertaction alertAction
  Q  '�� I ����
�� .sysoexecTEXT���     TEXT b   b   b   b   b   o  ���� 
0 mypath   m   �  c p   o  ���� 0 
supportloc 
supportLoc o  ���� 0 alertaction alertAction 1  ��
�� 
spac m     �!!  . /��   R      ������
�� .ascrerr ****      � ****��  ��  ��   "#" I (/��$��
�� .sysodelanull��� ��� nmbr$ m  (+%% ?�      ��  # &'& l 00��������  ��  ��  ' ()( Z  0t*+����* = 0>,-, I  0<��.���� 0 
fileexists 
FileExists. /��/ b  18010 b  16232 o  12���� 0 
configpath 
configPath3 m  2544 �55  /1 o  67���� 0 alertaction alertAction��  ��  - m  <=��
�� boovtrue+ Q  Ap67��6 k  Dg88 9:9 r  DO;<; b  DM=>= b  DK?@? b  DIABA o  DE���� 
0 mypath  B m  EHCC �DD  u n z i p   - u@ 1  IJ��
�� 
spac> o  KL���� 0 alertaction alertAction< o      ���� *0 cmdunzipalertaction cmdUnzipAlertAction: EFE I PU��G��
�� .sysoexecTEXT���     TEXTG o  PQ���� *0 cmdunzipalertaction cmdUnzipAlertAction��  F HIH r  VaJKJ b  V_LML b  V]NON b  V[PQP o  VW���� 
0 mypath  Q m  WZRR �SS   r m   - r f   _ _ M A C O S X /O 1  [\��
�� 
spacM o  ]^���� 0 alertaction alertActionK o      ���� .0 cmdcleanupalertaction cmdCleanUpAlertActionI T��T I bg��U��
�� .sysoexecTEXT���     TEXTU o  bc���� .0 cmdcleanupalertaction cmdCleanUpAlertAction��  ��  7 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ) VWV Q  u�XYZX I x���[��
�� .sysoexecTEXT���     TEXT[ b  x�\]\ b  x}^_^ o  xy���� 
0 mypath  _ m  y|`` �aa 
 o p e n  ] n  }�bcb 1  ����
�� 
strqc m  }�dd �ee P D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n��  Y R      ������
�� .ascrerr ****      � ****��  ��  Z I  ����f���� 0 msg  f ghg m  ��ii �jj   S S H - C h e c k :   E r r o rh klk m  ��mm �nn  l o��o m  ��pp �qq @ F a i l e d   t o   i n s t a l l   a c t i o n   s c r i p t !��  ��  W r��r I ����s��
�� .sysodelanull��� ��� nmbrs m  ��tt ?�      ��  ��  ��  ��      end of "Yes" go setup DNCA    �uu 4 e n d   o f   " Y e s "   g o   s e t u p   D N C A� vwv l ����������  ��  ��  w x��x Z  �>yz����y F  ��{|{ = ��}~} I  �������� 0 folderexists FolderExists ���� o  ������ 0 
configpath 
configPath��  ��  ~ m  ����
�� boovtrue| = ����� I  ��������� 0 
fileexists 
FileExists� ���� o  ������ 0 dnclocation DNCLocation��  ��  � m  ����
�� boovfalsz k  �:�� ��� l ������  � 0 *setup display notification center workflow   � ��� T s e t u p   d i s p l a y   n o t i f i c a t i o n   c e n t e r   w o r k f l o w� ��� r  ����� m  ���� ��� B D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p� o      �~�~ 0 
dnworkflow 
DNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ���}�} 
0 mypath  � m  ���� ���  u n z i p   - u� 1  ���|
�| 
spac� o  ���{�{ 0 
dnworkflow 
DNWorkflow� o      �z�z (0 cmdunzipdnworkflow cmdUnzipDNWorkflow� ��� r  ����� b  ����� b  ����� b  ����� o  ���y�y 
0 mypath  � m  ���� ���   r m   - r f   _ _ M A C O S X /� 1  ���x
�x 
spac� o  ���w�w 0 
dnworkflow 
DNWorkflow� o      �v�v ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow� ��� Q  ����u� I ���t��s
�t .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���r�r 
0 mypath  � m  ���� ���  c p  � o  ���q�q 0 
supportloc 
supportLoc� o  ���p�p 0 
dnworkflow 
DNWorkflow� 1  ���o
�o 
spac� m  ���� ���  . /�s  � R      �n�m�l
�n .ascrerr ****      � ****�m  �l  �u  � ��� I �k��j
�k .sysodelanull��� ��� nmbr� m  	�� ?�      �j  � ��� l �i�h�g�i  �h  �g  � ��f� Z  :���e�d� = ��� I  �c��b�c 0 
fileexists 
FileExists� ��a� b  ��� b  ��� o  �`�` 0 
configpath 
configPath� m  �� ���  /� o  �_�_ 0 
dnworkflow 
DNWorkflow�a  �b  � m  �^
�^ boovtrue� Q  6���]� k  "-�� ��� I "'�\��[
�\ .sysoexecTEXT���     TEXT� o  "#�Z�Z (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�[  � ��Y� I (-�X��W
�X .sysoexecTEXT���     TEXT� o  ()�V�V ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow�W  �Y  � R      �U�T�S
�U .ascrerr ****      � ****�T  �S  �]  �e  �d  �f  ��  ��  ��  ��  ��  �  os x.8 only   � ���  o s   x . 8   o n l y� > 8OS X.8 only install Display Noticafaction Center support   � ��� p O S   X . 8   o n l y   i n s t a l l   D i s p l a y   N o t i c a f a c t i o n   C e n t e r   s u p p o r t��  ��  ��  � R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  � k  Ni�� ��� I  NZ�O��N�O 0 msg  � ��� m  OR�� ���  S e t u p   F a i l e d :� ��� m  RU�� ���  � ��M� o  UV�L�L 0 
configpath 
configPath�M  �N  � ��� I  [`�K�J�I�K 0 setupservice setupService�J  �I  � ��� I  af�H�G�F�H 0 setupprogram setupProgram�G  �F  � ��E� L  gi�� m  gh�D
�D boovfals�E  � ��� l jj�C�B�A�C  �B  �A  � ��� l jj�@���@  � n hre-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.   � ��� � r e - c h e c k   d i s p l a y   s e t t i n g s   t o   s e e   i f   D N C   i s   w o r k i n g   n o w ,   b u t   f i r s t   p a u s e   t o   a l l o w   f i n d e r   t i m e   t o   r e f r e s h .� ��� I ju�?��>
�? .sysodelanull��� ��� nmbr� ^  jq��� o  jo�=�= 0 	countdown  � m  op�<�< �>  � ��� I  v{�;�:�9�; 0 
setdisplay 
setDisplay�:  �9  � ��8� Z  |����7�6� = |���� o  |��5�5 *0 displaynoticecenter DisplayNoticeCenter� m  ���4
�4 boovtrue� k  ����    I  ���3�2�3 0 msg    m  �� �   S S H - C h e c k :   S e t u p  b  ��	
	 o  ���1�1 0 
configpath 
configPath
 m  �� � ,   s e t t i n g s   a r e   c u r r e n t . �0 m  �� � L D i s p l a y   N o t i f i c a t i o n   C e n t e r   I s   A c t i v e !�0  �2   �/ I ���.�-
�. .sysodelanull��� ��� nmbr m  ���,�, �-  �/  �7  �6  �8  g  F  �� = �� I  ���+�*�+ 0 folderexists FolderExists �) o  ���(�( 0 
configpath 
configPath�)  �*   m  ���'
�' boovtrue = �� I  ���&�%�$�& 0 vcmp  �%  �$   m  ���#�#  �" I  ���!� ��! 0 copyiconfig copyiConfig�   �  �"  �"  d  l ������  �  �     l ���!"�  ! # loadSettings from config file   " �## : l o a d S e t t i n g s   f r o m   c o n f i g   f i l e  $%$ I  ������ "0 setservicelevel setServiceLevel�  �  % &'& Z  ��()��( F  ��*+* = ��,-, I  ������ 0 setupservice setupService�  �  - m  ���
� boovtrue+ = ��./. I  ������ 0 setupprogram setupProgram�  �  / m  ���
� boovtrue) L  ��00 m  ���
� boovtrue�  �  ' 121 l �����
�  �  �
  2 3�	3 L  ��44 m  ���
� boovfals�	  +  return bool   , �55  r e t u r n   b o o l' 676 l     ����  �  �  7 898 i   e h:;: I      �<�� 
0 notify  < =>= o      �� 0 msgtitle msgTitle> ?@? o      �� 0 msgsubtitle msgSubtitle@ A� A o      ���� 0 message  �   �  ; Z     �BC��DB @     EFE o     ���� 
0 osx OSXF m    ���� 	C l  
 GHIG I  
 ��JK
�� .sysonotfnull��� ��� TEXTJ o   
 ���� 0 message  K ��LM
�� 
apprL o    ���� 0 msgtitle msgTitleM ��N��
�� 
subtN o    ���� 0 msgsubtitle msgSubtitle��  H h b use OS X Noticafaction Center: OS x.9 http://macosxautomation.com/mavericks/notifications/01.html   I �OO �   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r :   O S   x . 9   h t t p : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l��  D l   �PQRP k    �SS TUT l    ��VW��  V 	OS X 8 make use of System Notifacation Center
     Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    W �XX    	 O S   X   8   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
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
  U YZY Z   +[\����[ >   ]^] c    _`_ o    ���� 0 msgtitle msgTitle` m    ��
�� 
ctxt^ m    aa �bb  \ r    'cdc b    %efe m    gg �hh    - D   t i t l e =f n    $iji 1   " $��
�� 
strqj l   "k����k c    "lml o     ���� 0 msgtitle msgTitlem m     !��
�� 
ctxt��  ��  d o      ���� 0 msgtitle msgTitle��  ��  Z non Z  , Apq����p >  , 1rsr c   , /tut o   , -���� 0 msgsubtitle msgSubtitleu m   - .��
�� 
ctxts m   / 0vv �ww  q r   4 =xyx b   4 ;z{z m   4 5|| �}}    - D   s u b t i t l e ={ n   5 :~~ 1   8 :��
�� 
strq l  5 8������ c   5 8��� o   5 6���� 0 msgsubtitle msgSubtitle� m   6 7��
�� 
ctxt��  ��  y o      ���� 0 msgsubtitle msgSubtitle��  ��  o ��� Z  B W������� >  B G��� c   B E��� o   B C���� 0 message  � m   C D��
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
 f a l s e� o      ���� *0 displaynoticecenter DisplayNoticeCenter� ���� I   � �������� 0 msg  � ��� m   � ��� ���   S S H - C h e c k :   E r r o r� ��� m   � ��� ���  � ���� b   � ���� m   � ��� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   � ����� 0 dnclocation DNCLocation��  ��  ��  ��  Q c ]if OSX is 8 --OS X.8 Mountain Lion DNC does not have Applescript support, so this provides it   R ��� � i f   O S X   i s   8   - - O S   X . 8   M o u n t a i n   L i o n   D N C   d o e s   n o t   h a v e   A p p l e s c r i p t   s u p p o r t ,   s o   t h i s   p r o v i d e s   i t9 ��� l     ��������  ��  ��  � ��� i   i l��� I      ������� 0 msg  � ��� o      ���� 0 msgtitle msgTitle� ��� o      ���� 0 msgsub msgSub� ���� o      ���� 0 message  ��  ��  � Z     (������ o     ���� *0 displaynoticecenter DisplayNoticeCenter� I    ������� 
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
�� .ascrerr ****      � ****��  ��  ��  � ���� L   ' )�� m   ' (��
�� boovfals��  � � � l     ��������  ��  ��     i   q t I      ��������  0 killrunningapp killRunningApp��  ��   Q     5 O     	 l   

 Z    ���� =    n     1    ��
�� 
prun  g     m    ��
�� boovtrue I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��     doesn't launch app    � &   d o e s n ' t   l a u n c h   a p p	 4    ��
�� 
capp o    
���� 0 program   R      ������
�� .ascrerr ****      � ****��  ��   I  ( 5����
�� .sysoexecTEXT���     TEXT b   ( 1 b   ( / m   ( ) �  p s   x   |   g r e p   o   ) .�� 0 program   m   / 0 � l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��    l     �~�}�|�~  �}  �|    !  i   u x"#" I      �{�z�y�{ 0 servicealive serviceAlive�z  �y  # k     f$$ %&% Q     c'(�x' l   Z)*+) k    Z,, -.- r    /0/ m    11 �22  0 o      �w�w 
0 sshcon  . 343 Z    D56�v75 =   898 o    �u�u 0 servicelevel ServiceLevel9 m    �t
�t boovfals6 k    ):: ;<; l   �s=>�s  = 3 -is the service being run by the current user?   > �?? Z i s   t h e   s e r v i c e   b e i n g   r u n   b y   t h e   c u r r e n t   u s e r ?< @A@ l   �rBC�r  B � �note would use this but too slow half the time: lsof -i |grep --color=no -i tunnelr |grep --color=no -i ssh | awk '{ print $9;}'    C �DD n o t e   w o u l d   u s e   t h i s   b u t   t o o   s l o w   h a l f   t h e   t i m e :   l s o f   - i   | g r e p   - - c o l o r = n o   - i   t u n n e l r   | g r e p   - - c o l o r = n o   - i   s s h   |   a w k   ' {   p r i n t   $ 9 ; } '  A EFE r    GHG b    IJI b    KLK m    MM �NN @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *L o    �q�q 0 service  J m    OO �PP ( '   |   a w k   ' { p r i n t   $ 8 } 'H o      �p�p 0 cmdssh cmdSSHF Q�oQ r    )RSR n    'TUT 4   $ '�nV
�n 
cobjV m   % &�m�m U n    $WXW 2  " $�l
�l 
cparX l   "Y�k�jY I   "�iZ�h
�i .sysoexecTEXT���     TEXTZ o    �g�g 0 cmdssh cmdSSH�h  �k  �j  S o      �f�f 
0 sshcon  �o  �v  7 k   , D[[ \]\ l  , ,�e^_�e  ^ * $is the service being run by any user   _ �`` H i s   t h e   s e r v i c e   b e i n g   r u n   b y   a n y   u s e r] aba r   , 7cdc b   , 5efe b   , 3ghg m   , -ii �jj @ p s   a   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *h o   - 2�d�d 0 service  f m   3 4kk �ll ( '   |   a w k   ' { p r i n t   $ 8 } 'd o      �c�c 0 cmdssh cmdSSHb m�bm r   8 Dnon n   8 Bpqp 4   ? B�ar
�a 
cobjr m   @ A�`�` q n   8 ?sts 2  = ?�_
�_ 
cpart l  8 =u�^�]u I  8 =�\v�[
�\ .sysoexecTEXT���     TEXTv o   8 9�Z�Z 0 cmdssh cmdSSH�[  �^  �]  o o      �Y�Y 
0 sshcon  �b  4 wxw s   E Iyzy o   E F�X�X 
0 sshcon  z o      �W�W 
0 tunnel  x {|{ l  J J�V�U�T�V  �U  �T  | }�S} Z   J Z~�R�Q~ E   J Q��� o   J K�P�P 
0 tunnel  � o   K P�O�O 0 service   L   T V�� o   T U�N�N 
0 tunnel  �R  �Q  �S  * 0 *check for ssh connected to defined service   + ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e( R      �M�L�K
�M .ascrerr ****      � ****�L  �K  �x  & ��J� L   d f�� m   d e�I�I  �J  ! ��� l     �H�G�F�H  �G  �F  � ��� i   y |��� I      �E�D�C�E 00 copyservicetoclipboard copyServiceToClipboard�D  �C  � k     �� ��� l     �B���B  � \ V copy the service name to the clipboard to easily check in a terminal, webbrowser, etc   � ��� �   c o p y   t h e   s e r v i c e   n a m e   t o   t h e   c l i p b o a r d   t o   e a s i l y   c h e c k   i n   a   t e r m i n a l ,   w e b b r o w s e r ,   e t c� ��A� Q     ���@� I   �?��>
�? .sysoexecTEXT���     TEXT� b    ��� b    
��� o    �=�= 0 xmlsettings XMLSettings� 1    	�<
�< 
spac� m   
 �� ���  - x�>  � R      �;�:�9
�; .ascrerr ****      � ****�:  �9  �@  �A  � ��� l     �8�7�6�8  �7  �6  � ��� i   } ���� I      �5��4�5 0 hms  � ��3� o      �2�2 0 sec  �3  �4  � k     >�� ��� l     �1���1  � @ : convert Seconds into a list of Days Hours Minutes Seconds   � ��� t   c o n v e r t   S e c o n d s   i n t o   a   l i s t   o f   D a y s   H o u r s   M i n u t e s   S e c o n d s� ��� r     ��� m     �� ���  � o      �0�0 0 secinhms secInHMS� ��� Q    ;���� k    (�� ��� r    ��� I   �/��.
�/ .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� o    �-�- 0 xmlsettings XMLSettings� 1    �,
�, 
spac� m    �� ���  - h m s� 1    �+
�+ 
spac� o    �*�* 0 sec  �.  � o      �)�) 0 secinhms secInHMS� ��(� Z    (���'�&� =   ��� o    �%�% 0 secinhms secInHMS� m    �� ���  N o n e� r   ! $��� m   ! "�$�$  � o      �#�# 0 secinhms secInHMS�'  �&  �(  � R      �"�!� 
�" .ascrerr ****      � ****�!  �   � r   0 ;��� I  0 9���
� .sysoexecTEXT���     TEXT� b   0 5��� b   0 3��� m   0 1�� ��� ( e c h o   " "   |   a w k   - v   " S =� o   1 2�� 0 sec  � m   3 4�� ��� l "   ' { p r i n t f   " % d h : % d m : % d s " , S / ( 6 0 * 6 0 ) , S % ( 6 0 * 6 0 ) / 6 0 , S % 6 0 } '�  � o      �� 0 secinhms secInHMS� ��� L   < >�� o   < =�� 0 secinhms secInHMS�  � ��� l     ����  �  �  � ��� i   � ���� I     ���
� .aevtoappnull  �   � ****�  �  � k    ��� ��� I     ���� 0 resetprogram resetProgram�  �  � ��� I    ���� $0 sshchecksettings sshCheckSettings�  �  � ��� I    ���� 0 
setdisplay 
setDisplay�  �  � ��� l   �
�	��
  �	  �  � ��� r    ��� I    ���� 0 servicealive serviceAlive�  �  � o      ��  0 isservicealive isServiceAlive� ��� r    ��� m    �� ��� ( S S H   S e r v i c e   i s   D o w n !� o      �� 0 titlemsg  � ��� Z    ������ F    -��� =   %��� I    #�� ��� 0 isapprunning isAppRunning�   ��  � m   # $��
�� boovtrue� =  ( +��� o   ( )����  0 isservicealive isServiceAlive� m   ) *����  � k   0 e��    r   0 ; b   0 9 b   0 7 m   0 1 �		 , I t   i s   n o t   s a f e   t o   r u n   o   1 6���� 0 program   m   7 8

 � H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " ! o      ���� 0 message    I   < J������ 0 msg    o   = >���� 0 titlemsg    b   > E m   > ? �  W a r n i n g   o   ? D���� 0 service   �� o   E F���� 0 message  ��  ��    I   K P��������  0 killrunningapp killRunningApp��  ��    I   Q V�������� 00 copyservicetoclipboard copyServiceToClipboard��  ��    l  W b  I  W b��!��
�� .sysodelanull��� ��� nmbr! ^   W ^"#" o   W \���� 0 	countdown  # m   \ ]���� ��   . (pause to display DNC message as a banner     �$$ P p a u s e   t o   d i s p l a y   D N C   m e s s a g e   a s   a   b a n n e r %��% l  c e&'(& L   c e����  '  exit SSH-Check   ( �))  e x i t   S S H - C h e c k��  � *+* =  h k,-, o   h i����  0 isservicealive isServiceAlive- m   i j����  + .��. k   n �// 010 I   n ���2���� 0 msg  2 343 o   o p���� 0 titlemsg  4 565 b   p y787 m   p s99 �::  W a r n i n g   a b o u t  8 o   s x���� 0 service  6 ;��; b   y �<=< b   y �>?> b   y �@A@ b   y �BCB m   y |DD �EE  D o n ' t   r u n  C o   | ����� 0 program  A m   � �FF �GG F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  ? o   � ����� 0 service  = m   � �HH �II  .��  ��  1 JKJ I   � ��������� 00 copyservicetoclipboard copyServiceToClipboard��  ��  K LML l  � �NOPN I  � ���Q��
�� .sysodelanull��� ��� nmbrQ ^   � �RSR o   � ����� 0 	countdown  S m   � ����� ��  O . (pause to display DNC message as a banner   P �TT P p a u s e   t o   d i s p l a y   D N C   m e s s a g e   a s   a   b a n n e rM U��U l  � �VWXV L   � �����  W  exit SSH-Check   X �YY  e x i t   S S H - C h e c k��  ��  �  � Z[Z l  � ���������  ��  ��  [ \]\ l  � ���^_��  ^ C =Ask if you want to run your program, kill it, or quietly stop   _ �`` z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p] aba r   � �cdc b   � �efe m   � �gg �hh 4 A c t i v e   S S H   C o n n e c t i o n   t o :  f o   � �����  0 isservicealive isServiceAlived o      ���� 0 titlemsg  b iji Z   ��kl��mk =  � �non I   � ��������� 0 isapprunning isAppRunning��  ��  o m   � ���
�� boovtruel l  �Lpqrp k   �Lss tut r   � �vwv J   � �xx yzy m   � �{{ �||  R e s t a r tz }~} m   � � ���  E x i t   S S H - C h e c k~ ���� m   � ��� ���  T u r n   O f f��  w o      ���� 0 btnopt btnOptu ��� r   � ���� b   � ���� o   � ����� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k ?� o      ���� 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �����
�� 
appr� o   � ����� 0 titlemsg  ��  ��  ��  � o      ���� 
0 choice  � ���� Z   L����� =  ��� o   ���� 
0 choice  � m  �� ���  R e s t a r t� I  
��������  0 killrunningapp killRunningApp��  ��  � ��� = ��� o  ���� 
0 choice  � m  �� ���  T u r n   O f f� ���� l G���� k  G�� ��� r  #��� m  �� ���  N o� o      ���� 
0 answer  � ��� V  $>��� l 09���� Q  09���� k  3�� ��� r  3X��� I 3T����
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
�� .sysoexecTEXT���     TEXT� o  ������ 0 cmd  ��  � o      ���� 0 xseconds xSeconds� ��� l ��������  � � }don't wait to confirm leaving if 0 time is given, otherwise confirm all other wait times before forcing "program" to shutdown   � ��� � d o n ' t   w a i t   t o   c o n f i r m   l e a v i n g   i f   0   t i m e   i s   g i v e n ,   o t h e r w i s e   c o n f i r m   a l l   o t h e r   w a i t   t i m e s   b e f o r e   f o r c i n g   " p r o g r a m "   t o   s h u t d o w n� ��� Z ��������� B  ����� o  ������ 0 xseconds xSeconds� m  ������  �  S  ����  ��  � ��� r  ��   I  �������� 0 hms   �� o  ������ 0 xseconds xSeconds��  ��   o      ���� &0 humanreadabletime humanReadableTime�  r  �� J  �� 	
	 m  �� �  Y e s
 �� m  �� �  N o��   o      ���� 0 bttnopt bttnOpt  r  �� n  �� 1  ����
�� 
bhit l ������ I ����
�� .sysodlogaskr        TEXT b  �� b  �� m  �� �  S h u t d o w n   i n   o  ������ &0 humanreadabletime humanReadableTime m  �� �    ? ��!"
�� 
btns! o  ������ 0 bttnopt bttnOpt" ��#$
�� 
dflt# m  ��%% �&&  Y e s$ ��'��
�� 
appr' o  ������ 0 titlemsg  ��  ��  ��   o      ���� 
0 answer   (��( Z  �)*���) F  ��+,+ = ��-.- o  ���~�~ 
0 answer  . m  ��// �00  Y e s, ? ��121 o  ���}�} 0 xseconds xSeconds2 m  ���|�|  * k  �33 454 I  ��{6�z�{ 0 msg  6 787 b  � 9:9 m  ��;; �<<  C l o s i n g  : o  ���y�y 0 program  8 =>= b   ?@? b   ABA m   CC �DD  W a i t i n g  B o  �x�x &0 humanreadabletime humanReadableTime@ m  
EE �FF  !> G�wG m  HH �II  . . .�w  �z  5 J�vJ l KLMK I �uN�t
�u .sysodelanull��� ��� nmbrN o  �s�s 0 xseconds xSeconds�t  L 1 +sleep until user the provided time runs out   M �OO V s l e e p   u n t i l   u s e r   t h e   p r o v i d e d   t i m e   r u n s   o u t�v  ��  �  ��  � R      �r�q�p
�r .ascrerr ****      � ****�q  �p  � k  &9PP QRQ I  &4�oS�n�o 0 msg  S TUT m  '*VV �WW   S S H - C h e c k :   E r r o rU XYX m  *-ZZ �[[ 6 C a n ' t   e v a l u a t e   w a i t   t i m e . . .Y \�m\ m  -0]] �^^ @ S S H - C h e c k   i s   t e r m i n a t i n g   i t s e l f !�m  �n  R _�l_ L  59`` m  58�k
�k 
null�l  � U Oonce the answer switches to Yes, it will break the loop or if a error is thrown   � �aa � o n c e   t h e   a n s w e r   s w i t c h e s   t o   Y e s ,   i t   w i l l   b r e a k   t h e   l o o p   o r   i f   a   e r r o r   i s   t h r o w n� =  (/bcb o  (+�j�j 
0 answer  c m  +.dd �ee  N o� fgf I  ?D�i�h�g�i  0 killrunningapp killRunningApp�h  �g  g h�fh l EGijki L  EG�e�e  j  exit SSH-Check   k �ll  e x i t   S S H - C h e c k�f  � % shut off in x number of seconds   � �mm > s h u t   o f f   i n   x   n u m b e r   o f   s e c o n d s��  � l JLnopn l JLqrsq L  JL�d�d  r  exit SSH-Check   s �tt  e x i t   S S H - C h e c ko ! choice equals Exit SH-Check   p �uu 6 c h o i c e   e q u a l s   E x i t   S H - C h e c k��  q 0 * should we kill & restart the running app?   r �vv T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  m l O�wxyw k  O�zz {|{ r  O`}~} b  O\� b  OX��� m  OR�� ���  S t a r t i n g  � o  RW�c�c 0 program  � 1  X[�b
�b 
spac~ o      �a�a 0 qmsg qMsg| ��`� Z  a����_�� = ah��� o  af�^�^ *0 displaynoticecenter DisplayNoticeCenter� m  fg�]
�] boovtrue� k  k��� ��� I  k��\��[�\ 0 msg  � ��� m  lo�� ���  S S H - C h e c k� ��� b  ox��� b  ot��� o  op�Z�Z  0 isservicealive isServiceAlive� 1  ps�Y
�Y 
spac� m  tw�� ���  i s   a c t i v e� ��X� b  x��� o  x{�W�W 0 qmsg qMsg� m  {~�� ���  u p   n o w !�X  �[  � ��V� I ���U��T
�U .sysodelanull��� ��� nmbr� l ����S�R� ^  ����� o  ���Q�Q 0 	countdown  � m  ���P�P 	�S  �R  �T  �V  �_  � k  ���� ��� r  ����� J  ���� ��� m  ���� ���  L a u n c h� ��O� m  ���� ���  S t o p�O  � o      �N�N 0 btnopt btnOpt� ��M� Q  ������ k  ���� ��� r  ����� b  ����� b  ����� b  ����� o  ���L�L 0 qmsg qMsg� m  ���� ���    i n  � o  ���K�K 0 	countdown  � m  ���� ���    s e c o n d s !� o      �J�J 0 qmsg qMsg� ��� r  ����� n  ����� 1  ���I
�I 
bhit� l ����H�G� I ���F��
�F .sysodlogaskr        TEXT� o  ���E�E 0 qmsg qMsg� �D��
�D 
btns� o  ���C�C 0 btnopt btnOpt� �B��
�B 
dflt� m  ���� ���  L a u n c h� �A��
�A 
appr� o  ���@�@ 0 titlemsg  � �?��>
�? 
givu� o  ���=�= 0 	countdown  �>  �H  �G  � o      �<�< 0 yesorno yesOrNo� ��;� Z  �����:�9� = ����� o  ���8�8 0 yesorno yesOrNo� m  ���� ���  S t o p� L  ���7�7  �:  �9  �;  � R      �6�5�4
�6 .ascrerr ****      � ****�5  �4  � L  ���3�3  �M  �`  x  start the program   y ��� " s t a r t   t h e   p r o g r a mj ��� l ���2�1�0�2  �1  �0  � ��� l ���/���/  � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  �
��� n  ���� 1  �.
�. 
psxp� l ���-�,� m  ��� ���  / A p p l i c a t i o n s /�-  �,  � o      �+�+ 0 apppath appPath� ��� l �*���*  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  $��� I  �)�(�
�) .sysooffslong    ��� null�(  � �'��
�' 
psof� o  �&�& 0 program  � �%��$
�% 
psin� o  �#�# 0 apppath appPath�$  � o      �"�" 0 
nameoffset 
nameOffset� ��� l %%�!���!  � 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   � �	 	  ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )� 			 r  %<			 n  %8			 7 (8� 		
�  
ctxt	 m  .0�� 	 l 17		��		 \  17	
		
 o  25�� 0 
nameoffset 
nameOffset	 m  56�� �  �  	 o  %(�� 0 apppath appPath	 o      �� 0 
folderpath 
folderPath	 			 l ==�		�  	 6 0msg("info:", "Msg", "folderpath: " & folderPath)   	 �		 ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )	 			 Q  =�				 l @o				 k  @o		 			 I @U�	�
� .sysoexecTEXT���     TEXT	 b  @Q			 b  @M		 	 b  @I	!	"	! o  @C�� 0 
folderpath 
folderPath	" o  CH�� 0 program  	  m  IL	#	# �	$	$  . a p p	 m  MP	%	% �	&	& N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�  	 	'	(	' I V[�	)�
� .sysodelanull��� ��� nmbr	) m  VW�� �  	( 	*�	* O \o	+	,	+ I in���
� .miscactvnull��� ��� null�  �  	, 4  \f�	-
� 
capp	- o  `e�� 0 program  �  	 ( "start program up in the background   	 �	.	. D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d	 R      �
�	�
�
 .ascrerr ****      � ****�	  �  	 I  w��	/�� 0 msg  	/ 	0	1	0 m  x{	2	2 �	3	3   S S H - C h e c k :   E r r o r	1 	4	5	4 m  {~	6	6 �	7	7 
 E r r o r	5 	8�	8 b  ~�	9	:	9 m  ~�	;	; �	<	< N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  	: o  ���� 0 program  �  �  	 	=�	= l ����� �  �  �   �  � 	>	?	> l     ��������  ��  ��  	? 	@��	@ l     ��������  ��  ��  ��       "��	A   ! ' 1 7	B J������	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W��  	A  ������������������������������������������������������������������ 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 servicebackup serviceBackup�� 0 	countdown  �� 0 dnclocation DNCLocation�� 0 xmlsettings XMLSettings�� 0 dnca DNCA�� *0 displaynoticecenter DisplayNoticeCenter�� 0 servicelevel ServiceLevel�� 
0 osx OSX
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 setosxnumber setOSXNumber�� 0 
setdisplay 
setDisplay�� 0 
fileexists 
FileExists�� 0 folderexists FolderExists�� 0 	updatexml 	updateXML�� 0 setupservice setupService�� "0 setservicelevel setServiceLevel�� 0 setupprogram setupProgram�� 0 vcmp  �� 0 copyiconfig copyiConfig�� $0 sshchecksettings sshCheckSettings�� 
0 notify  �� 0 msg  �� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 servicealive serviceAlive�� 00 copyservicetoclipboard copyServiceToClipboard�� 0 hms  
�� .aevtoappnull  �   � ****	B �	X	X � / U s e r s / t w i l i g h t / G i t H u b / S S H - C h e c k / s r c / S S H - C h e c k . s c p t d / C o n t e n t s / S u p p o r t / i c o n f i g S S H C . p y
�� boovfals
�� boovfals�� 	C �� f����	Y	Z��
�� .aevtodocnull  �    alis�� 0 these_items  ��  	Y ������ 0 these_items  �� 0 prog  	Z  t�� ����� ������� � � �������
�� 
TEXT
�� 
txdl
�� 
citm�� $0 sshchecksettings sshCheckSettings�� 0 	updatexml 	updateXML�� 0 
setdisplay 
setDisplay�� 0 msg  
�� .sysodelanull��� ��� nmbr
�� .aevtoappnull  �   � ****�� e�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O*j+ O*�k+ O�EQc  O*j+ O*��b  %�b  %m+ Ob  j O*j 	D �� �����	[	\���� 0 resetprogram resetProgram��  ��  	[  	\  �� fEc  	E �� �����	]	^���� 0 setosxnumber setOSXNumber��  ��  	]  	^  �����������
�� 
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� �*�,FO*j �,�l/�&EQc  
OP	F �� �����	_	`���� 0 
setdisplay 
setDisplay��  ��  	_  	` ������������ 0 setosxnumber setOSXNumber�� 	�� �� 0 
fileexists 
FileExists
�� 
bool�� P*j+  Ob  
�
 -b  
� 	 *b  k+ e �&	 *b  k+ e �&�& eEc  Y 	fEc  	G ������	a	b���� 0 
fileexists 
FileExists�� ��	c�� 	c  ���� 0 thefile theFile��  	a ���� 0 thefile theFile	b &����
�� 
file
�� .coredoexnull���     ****�� � *�/j  eY hUOf	H ��.����	d	e���� 0 folderexists FolderExists�� ��	f�� 	f  ���� 0 	thefolder 	theFolder��  	d ���� 0 	thefolder 	theFolder	e ;����
�� 
cfol
�� .coredoexnull���     ****�� � *�/j  eY hUOf	I ��C����	g	h���� 0 	updatexml 	updateXML�� ��	i�� 	i  ���� 0 programname programName��  	g �������� 0 programname programName�� 
0 update  �� 0 update2  	h ����j����t������������ 0 
fileexists 
FileExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� �*b  k+  e  s fb  �%�%�%��,%j E�O��  eY Bb  �%�%�%��,%j E�Ob  �%�%�%��,%j E�O�� 	 �� �& eY hW 	X  fY hOf	J �������	j	k���� 0 setupservice setupService��  ��  	j ���� 0 ser  	k 
������������������ 0 
fileexists 
FileExists
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
bool��  ��  �� n*b  k+  e  A 4b  �%�%j E�O��	 ���& �EQc   OeY hW 	X  fY hOb   �  b  EQc   Y hOf	K �������	l	m��� "0 setservicelevel setServiceLevel��  ��  	l �~�~ 
0 slevel  	m �}�|�{�z�y5�} 0 
fileexists 
FileExists
�| 
spac
�{ .sysoexecTEXT���     TEXT�z  �y  � l*b  k+  e  @ 3b  �%�%j E�O��  eEc  	Y 	fEc  	Ob  	W 	X  fY hOb  	�  fEc  	Y hOb  		L �x@�w�v	n	o�u�x 0 setupprogram setupProgram�w  �v  	n �t�t 0 prog  	o 
�s�rW�qaf�p�o�nv�s 0 
fileexists 
FileExists
�r 
spac
�q .sysoexecTEXT���     TEXT
�p 
bool�o  �n  �u n*b  k+  e  A 4b  �%�%j E�O��	 ���& �EQc  OeY hW 	X  fY hOb  �  b  EQc  Y hOf	M �m��l�k	p	q�j�m 0 vcmp  �l  �k  	p �i�h�g�i 0 
supportloc 
supportLoc�h 0 cmd  �g 0 iver  	q �f�e�d�c����b�a�`�_�
�f 
rtyp
�e 
TEXT
�d .earsffdralis        afdr
�c 
psxp
�b .sysoexecTEXT���     TEXT
�a 
nmbr�`  �_  �j 0)��l �,�%E�O �%�%E�O�j �&E�O�W 	X 	 
�	N �^��]�\	r	s�[�^ 0 copyiconfig copyiConfig�]  �\  	r �Z�Y�X�Z 0 iconfig  �Y 
0 mypath  �X 0 
supportloc 
supportLoc	s ��W�V�U���T��S�R�Q�P��O�N�M�L"�K�W 0 
fileexists 
FileExists�V 0 vcmp  
�U 
bool
�T 
spac
�S 
rtyp
�R 
TEXT
�Q .earsffdralis        afdr
�P 
psxp
�O .sysoexecTEXT���     TEXT�N  �M  �L 0 msg  
�K .sysodelanull��� ��� nmbr�[ z�E�O*�k+ f 
 *j+ k �& ]��%�%�%�%E�O)��l 
�,�%E�O "��%�%�%j O�a %�%b  %j W X  *a a a m+ Oa j Y hOP	O �J)�I�H	t	u�G�J $0 sshchecksettings sshCheckSettings�I  �H  	t �F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�F 0 configfolder configFolder�E 0 
configpath 
configPath�D 0 iconfig  �C 
0 mypath  �B 0 
supportloc 
supportLoc�A 0 cmdmakepath cmdMakePath�@ 0 qmsg qMsg�? 0 btnopt btnOpt�> 0 yesorno yesOrNo�= 0 alertaction alertAction�< *0 cmdunzipalertaction cmdUnzipAlertAction�; .0 cmdcleanupalertaction cmdCleanUpAlertAction�: 0 
dnworkflow 
DNWorkflow�9 (0 cmdunzipdnworkflow cmdUnzipDNWorkflow�8 ,0 cmdcleanupdnworkflow cmdCleanUpDNWorkflow	u @2:@N�7P�6�5�4�3_�2�1�0�/��.��-�,����+�*��)��(�'�&�%�$�# 4CR`d�"imp�!��������� ����
�7 
spac
�6 
rtyp
�5 
TEXT
�4 .earsffdralis        afdr
�3 
psxp�2 0 folderexists FolderExists�1 0 
fileexists 
FileExists
�0 
bool�/ 
�. .sysoexecTEXT���     TEXT
�- .sysodelanull��� ��� nmbr�, 0 copyiconfig copyiConfig
�+ 
btns
�* 
dflt
�) 
appr
�( 
givu�' <
�& .sysodlogaskr        TEXT
�% 
bhit�$  �#  
�" 
strq�! 0 msg  �  0 setupservice setupService� 0 setupprogram setupProgram� 0 
setdisplay 
setDisplay� 0 vcmp  � "0 setservicelevel setServiceLevel�G��E�O�%E�O�E�O�%�%�%�%E�O)��l �,�%E�O*�k+ f 
 *�k+ f �&
 -b  
� 	 !*b  k+ f 
 *b  k+ f �&�&�&7�*�k+ f  ��%�%E�O�j Oa j Y hO*j+ Ob  
� �*b  k+ f �a E�Oa a lvE�O ,�a �a a a a a b  a  � a ,E�W X   !hO�a "  �a #E�O �a $%�%�%�%a %%j W X   !hOa j O*�a &%�%k+ e  4 (�a '%�%�%E�O�j O�a (%�%�%E�O�j W X   !hY hO �a )%a *a +,%j W X   !*a ,a -a .m+ /Oa j Y hO*�k+ e 	 *b  k+ f �& wa 0E�O�a 1%�%�%E�O�a 2%�%�%E�O �a 3%�%�%�%a 4%j W X   !hOa j O*�a 5%�%k+ e   �j O�j W X   !hY hY hY hY hW "X   !*a 6a 7�m+ /O*j+ 8O*j+ 9OfOb  m!j O*j+ :Ob  e  *a ;�a <%a =m+ /Okj Y hY "*�k+ e 	 *j+ >k �& 
*j+ Y hO*j+ ?O*j+ 8e 	 *j+ 9e �& eY hOf	P �;��	v	w�� 
0 notify  � �	x� 	x  ���� 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 message  �  	v ���� 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 message  	w ������ag�
v|����	���������� 	
� 
appr
� 
subt� 
� .sysonotfnull��� ��� TEXT
� 
ctxt
�
 
strq
�	 
spac
� .sysoexecTEXT���     TEXT�  �  � 0 msg  � �b  
� ���� Y ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W %X  a Ec  O*a a a b  %m+ 	Q ����	y	z�� 0 msg  � � 	{�  	{  �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  �  	y �������� 0 msgtitle msgTitle�� 0 msgsub msgSub�� 0 message  	z ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  � )b   *���m+  Y  ��l W 	X  h	R �������	|	}���� 0 isapprunning isAppRunning��  ��  	|  	} ��������
�� 
capp
�� 
prun��  ��  �� * *�b  / *�,e  eY hUW X  hOf	S ������	~	����  0 killrunningapp killRunningApp��  ��  	~  	 ������������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j 	T ��#����	�	����� 0 servicealive serviceAlive��  ��  	� �������� 
0 sshcon  �� 0 cmdssh cmdSSH�� 
0 tunnel  	� 
1MO������ik����
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� g \�E�Ob  	f  �b   %�%E�O�j �-�l/E�Y �b   %�%E�O�j �-�k/E�O�EQ�O�b    �Y hW X  	hOj	U �������	�	����� 00 copyservicetoclipboard copyServiceToClipboard��  ��  	�  	� ���������
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  ��  b  �%�%j W X  h	V �������	�	����� 0 hms  �� ��	��� 	�  ���� 0 sec  ��  	� ������ 0 sec  �� 0 secinhms secInHMS	� 	�������������
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� ?�E�O &b  �%�%�%�%j E�O��  jE�Y hW X  �%�%j E�O�	W �������	�	���
�� .aevtoappnull  �   � ****��  ��  	�  	� j�����������������
����������9DFHg{��������������������������d���������������������������������%/;CEH����VZ]�������������������������������������	#	%����	2	6	;�� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
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
*j+ Y<_ #a % 0a &E` 'Oh_ 'a (  �a )b  %a *%a +ja �a ,a -a   !E` .Oa /_ 0a 1,a 2&%a 3%E` 4O_ .a 5  	a 6Y hO_ 4j 7E` 8O_ 8j Y hO*_ 8k+ 9E` :Oa ;a <lvE` =Oa >_ :%a ?%a _ =a a @a �a   !a ",E` 'O_ 'a A 	 	_ 8j�& )*a Bb  %a C_ :%a D%a Em+ O_ 8j Y hW X F G*a Ha Ia Jm+ Oa 6[OY��O*j+ OhY hY �a Kb  %_ L%E` Ob  e  +*a M�_ L%a N%_ a O%m+ Ob  a P!j Y la Qa RlvE` O U_ a S%b  %a T%E` O_ a _ a a Ua �a ,b  a V !a ",E` WO_ Wa X  hY hW 	X F GhOa Ya Z,E` [O*a \b  a ]_ [a ^ _E` `O_ [[a a\[Zk\Z_ `k2E` bO 4_ bb  %a c%a d%j 7Okj O*a eb  / *j fUW X F G*a ga ha ib  %m+ OPascr  ��ޭ