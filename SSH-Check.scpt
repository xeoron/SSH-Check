FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Name: SSH-Check
	Version: 0.3.3
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a bitTorrent app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com and
	To reprogram what program you want to launch by default, 
	drop a program onto SSH-Check.
	
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
     � 	 	� 
 	 N a m e :   S S H - C h e c k 
 	 V e r s i o n :   0 . 3 . 3 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 
 	 L i c e n s e :   G P L 
 	 P u r p o s e :   O n l y   s t a r t   a   b i t T o r r e n t   a p p   i f   t h e   s y s t e m   i s   s i g n e d   i n t o   a   S S H   s e r v i c e . 
 	 
 	 D e f a u l t   p r o g r a m   i s   F i r e f o x   a n d   s s h   s e r v i c e   t u n n e l r . c o m   a n d 
 	 T o   r e p r o g r a m   w h a t   p r o g r a m   y o u   w a n t   t o   l a u n c h   b y   d e f a u l t ,   
 	 d r o p   a   p r o g r a m   o n t o   S S H - C h e c k . 
 	 
 	 N O T E :   
 	 F o r   e v e n   m o r e   s e c u r i t y   t h i s   p r o g r a m   i s   b e s t   c o m b i n e d   w i t h   a   c r o n   j o b   t o   
 	 c h e c k   i f   S S H   c o n n e c t i o n   i s   s t i l l   a l i v e ,   o t h e r w i s e   k i l l   y o u r     A p p . 
 	 
   
  
 l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    �� �� 0 programbackup programBackup  m       �    F i r e f o x  ' !don't remove to overt droplet bug     �   B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g       l     ��������  ��  ��      ! " ! i   	  # $ # I     �� %��
�� .aevtodocnull  �    alis % o      ���� 0 these_items  ��   $ k     2 & &  ' ( ' l     �� ) *��   ) c ]## these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"    * � + + � # #   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " (  , - , l     ��������  ��  ��   -  . / . r      0 1 0 m      2 2 � 3 3   1 o      ���� 0 prog   /  4 5 4 r    	 6 7 6 c     8 9 8 o    ���� 0 these_items   9 m    ��
�� 
TEXT 7 o      ���� 0 prog   5  : ; : l  
 
��������  ��  ��   ;  < = < l  
 
�� > ?��   > d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    ? � @ @ � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e =  A B A r   
  C D C m   
  E E � F F  : D 1    ��
�� 
txdl B  G H G r     I J I n     K L K 4    �� M
�� 
citm M m    ����  L o    ���� 0 prog   J o      ���� 0 prog   H  N O N r     P Q P m     R R � S S  . Q 1    ��
�� 
txdl O  T U T r    # V W V n    ! X Y X 4    !�� Z
�� 
citm Z m     ����  Y o    ���� 0 prog   W o      ���� 0 prog   U  [ \ [ s   $ , ] ^ ] o   $ %���� 0 prog   ^ o      ���� 0 program   \  _ ` _ l  - -��������  ��  ��   `  a�� a I  - 2������
�� .aevtoappnull  �   � ****��  ��  ��   "  b c b l     ��������  ��  ��   c  d e d i     f g f I      �������� 0 resetprogram resetProgram��  ��   g k      h h  i j i l     �� k l��   k * $fix empty list and stops droplet bug    l � m m H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g j  n�� n Z      o p���� o =     q r q o     ���� 0 program   r m     s s � t t   p s   
  u v u o   
 ���� 0 programbackup programBackup v o      ���� 0 program  ��  ��  ��   e  w x w l     ��������  ��  ��   x  y z y i     { | { I      �� }���� 0 isapprunning isAppRunning }  ~�� ~ o      ���� 0 cmd  ��  ��   | k     &    � � � Q      � � � � r    
 � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � 1      ��
�� 
rslt � R      ������
�� .ascrerr ****      � ****��  ��   � l    � � � � L     � � m     � � � � �  N o � C = if there was no grep match then the program is currently off    � � � � z   i f   t h e r e   w a s   n o   g r e p   m a t c h   t h e n   t h e   p r o g r a m   i s   c u r r e n t l y   o f f �  ��� � Z    & � ��� � � E     � � � 1    ��
�� 
rslt � o    ���� 0 program   � k    ! � �  � � � l   �� � ���   � H Bmsg("Found: " & result with title program & " is aleady running!")    � � � � � m s g ( " F o u n d :   "   &   r e s u l t   w i t h   t i t l e   p r o g r a m   &   "   i s   a l e a d y   r u n n i n g ! " ) �  ��� � L    ! � � m      � � � � �  Y e s��  ��   � k   $ & � �  � � � l  $ $�� � ���   �  
msg("no!")    � � � �  m s g ( " n o ! " ) �  ��� � L   $ & � � m   $ % � � � � �  N o��  ��   z  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 killrunningapp killRunningApp �  ��� � o      ���� 0 cmd  ��  ��   � Q      � � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 msg   �  ��� � o      ���� 0 s  ��  ��   � l     � � � � Q      � � � � I   
�� � �
�� .sysodlogaskr        TEXT � o    ���� 0 s   � �� ���
�� 
appr � m     � � � � � " S S H - C h e c k   M e s s a g e��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  for debugging    � � � �  f o r   d e b u g g i n g �  � � � l     ��������  ��  ��   �  ��� � i      � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k    i � �  � � � l     ��������  ��  ��   �  � � � I     �������� 0 resetprogram resetProgram��  ��   �  � � � l   ��������  ��  ��   �  � � � r    
 � � � J    ����   � 1      ��
�� 
rslt �  � � � r     � � � m     � � � � �  p s   x � o      ���� 0 ps   �  � � � r     � � � b     � � � b     � � � m     � � � � �  g r e p   ' � o    �� 0 program   � m     � � � � � 
 . a p p ' � o      �~�~ 0 grepprog grepProg �  � � � r     � � � m     � � � � �  g r e p   - v   g r e p � o      �}�} 0 grepdrop grepDrop �  � � � r    " � � � m      � � � � �  g r e p   - i   s s h � o      �|�| 0 grepssh grepSSH �  � � � r   # . � � � b   # , � � � b   # * � � � m   # $ � � �    g r e p   ' . * @ . * � o   $ )�{�{ 0 service   � m   * + �  ' � o      �z�z 0 grepconnect grepConnect �  r   / 2 m   / 0 �   a w k   ' { p r i n t   $ 8 } ' o      �y�y 0 awkone awkOne 	
	 r   3 : m   3 6 �   a w k   ' { p r i n t   $ 1 } ' o      �x�x 0 awktwo awkTwo
  r   ; B m   ; > �  x a r g s   k i l l   - 9 o      �w�w 	0 xkill    l  C C�v�u�t�v  �u  �t    r   C Z b   C V b   C T b   C P  b   C N!"! b   C J#$# b   C H%&% o   C D�s�s 0 ps  & m   D G'' �((    |  $ o   H I�r�r 0 grepssh grepSSH" m   J M)) �**    |    o   N O�q�q 0 grepconnect grepConnect m   P S++ �,,    |   o   T U�p�p 0 awkone awkOne o      �o�o 0 cmdssh cmdSSH -.- l  [ [�n/0�n  / &  msg("cmdSSH is this: " & cmdSSH)   0 �11 @ m s g ( " c m d S S H   i s   t h i s :   "   &   c m d S S H ). 232 r   [ l454 b   [ h676 b   [ f898 b   [ b:;: b   [ `<=< o   [ \�m�m 0 ps  = m   \ _>> �??    |  ; o   ` a�l�l 0 grepprog grepProg9 m   b e@@ �AA    |  7 o   f g�k�k 0 grepdrop grepDrop5 o      �j�j 0 	cmdapprun 	cmdAppRun3 BCB l  m m�iDE�i  D , &msg("cmdAppRun is this: " & cmdAppRun)   E �FF L m s g ( " c m d A p p R u n   i s   t h i s :   "   &   c m d A p p R u n )C GHG r   m �IJI b   m �KLK b   m �MNM b   m �OPO b   m ~QRQ b   m zSTS b   m xUVU b   m tWXW b   m rYZY o   m n�h�h 0 ps  Z m   n q[[ �\\    |  X o   r s�g�g 0 grepprog grepProgV m   t w]] �^^    |  T o   x y�f�f 0 grepdrop grepDropR m   z }__ �``    |  P o   ~ ��e�e 0 awktwo awkTwoN m   � �aa �bb    |  L o   � ��d�d 	0 xkill  J o      �c�c 0 
cmdappkill 
cmdAppKillH cdc l  � ��bef�b  e . (msg("cmdAppKill is this: " & cmdAppKill)   f �gg P m s g ( " c m d A p p K i l l   i s   t h i s :   "   &   c m d A p p K i l l )d hih l  � ��a�`�_�a  �`  �_  i jkj Q   �lmnl l  � �opqo r   � �rsr n   � �tut 4   � ��^v
�^ 
cobjv m   � ��]�] u n   � �wxw 2  � ��\
�\ 
cparx l  � �y�[�Zy I  � ��Yz�X
�Y .sysoexecTEXT���     TEXTz o   � ��W�W 0 cmdssh cmdSSH�X  �[  �Z  s 1      �V
�V 
rsltp 0 *check for ssh connected to defined service   q �{{ T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c em R      �U�T�S
�U .ascrerr ****      � ****�T  �S  n l  �|}~| k   � ��� Z   � ����R�� =  � ���� I   � ��Q��P�Q 0 isapprunning isAppRunning� ��O� o   � ��N�N 0 	cmdapprun 	cmdAppRun�O  �P  � m   � ��� ���  Y e s� k   � ��� ��� I  � ��M��
�M .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   � ��L�L 0 program  � m   � ��� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� �K��J
�K 
appr� m   � ��� ��� ( S S H   S e r v i c e   i s   d o w n !�J  � ��I� I   � ��H��G�H  0 killrunningapp killRunningApp� ��F� o   � ��E�E 0 
cmdappkill 
cmdAppKill�F  �G  �I  �R  � I  � ��D��
�D .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  D o n ' t   r u n  � o   � ��C�C 0 program  � m   � ��� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   � ��B�B 0 service  � m   � ��� ���  .� �A��@
�A 
appr� m   � ��� ��� ( S S H   S e r v i c e   i s   d o w n !�@  � ��?� L   �>�>  �?  }  throws error if it fails   ~ ��� 0 t h r o w s   e r r o r   i f   i t   f a i l sk ��� l �=�<�;�=  �<  �;  � ��� l �:���:  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r  ��� b  ��� m  �� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � 1  �9
�9 
rslt� o      �8�8 0 titlemsg  � ��� Z  ����7�� = ��� I  �6��5�6 0 isapprunning isAppRunning� ��4� o  �3�3 0 	cmdapprun 	cmdAppRun�4  �5  � m  �� ���  Y e s� l ����� k  ��� ��� r  +��� J  '�� ��� m  �� ���  R e s t a r t� ��� m  "�� ���  E x i t   S S H - C h e c k� ��2� m  "%�� ���  T u r n   O f f�2  � o      �1�1 0 btnopt btnOpt� ��� r  ,9��� b  ,5��� o  ,1�0�0 0 program  � m  14�� ��� �   i s   r u n n i n g !   Y o u   c a n   n o w   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      �/�/ 0 qmsg qMsg� ��� r  :]��� n  :Y��� 1  UY�.
�. 
bhit� l :U��-�,� I :U�+��
�+ .sysodlogaskr        TEXT� o  :=�*�* 0 qmsg qMsg� �)��
�) 
btns� o  @C�(�( 0 btnopt btnOpt� �'��
�' 
dflt� m  FI�� ���  E x i t   S S H - C h e c k� �&��%
�& 
appr� o  LO�$�$ 0 titlemsg  �%  �-  �,  � o      �#�# 
0 choice  � ��"� Z  ^������ = ^e��� o  ^a�!�! 
0 choice  � m  ad   �  R e s t a r t� I  hp� ��   0 killrunningapp killRunningApp � o  il�� 0 
cmdappkill 
cmdAppKill�  �  �  = sz o  sv�� 
0 choice   m  vy �		  T u r n   O f f 
�
 k  }�  I  }����  0 killrunningapp killRunningApp � o  ~��� 0 
cmdappkill 
cmdAppKill�  �   � L  ����  �  �  � l �� L  ����    choice equals Cancel    � ( c h o i c e   e q u a l s   C a n c e l�"  � 0 * should we kill & restart the running app?   � � T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�7  � k  ��  r  �� J  ��  m  �� �  Y e s  �  m  ��!! �""  N o�   o      �� 0 btnopt btnOpt #$# r  ��%&% n  ��'(' 1  ���
� 
bhit( l ��)��) I ���*+
� .sysodlogaskr        TEXT* b  ��,-, b  ��./. m  ��00 �11 0 D o   s t i l l   w a n t   t o   l a u n c h  / o  ���� 0 program  - m  ��22 �33  ?+ �45
� 
btns4 o  ���� 0 btnopt btnOpt5 �
67
�
 
dflt6 m  ��88 �99  Y e s7 �	:�
�	 
appr: o  ���� 0 titlemsg  �  �  �  & o      �� 0 yesorno yesOrNo$ ;�; Z  ��<=��< = ��>?> o  ���� 0 yesorno yesOrNo? m  ��@@ �AA  N o= L  ����  �  �  �  � BCB l ��� �����   ��  ��  C DED l ����FG��  F ! Prepare to launch a program   G �HH 6 P r e p a r e   t o   l a u n c h   a   p r o g r a mE IJI r  ��KLK n  ��MNM 1  ����
�� 
psxpN l ��O����O m  ��PP �QQ  / A p p l i c a t i o n s /��  ��  L o      ���� 0 apppath appPathJ RSR l ����TU��  T  msg("apppath: " &appPath)   U �VV 2 m s g ( " a p p p a t h :   "   & a p p P a t h )S WXW r  �YZY I ������[
�� .sysooffslong    ��� null��  [ ��\]
�� 
psof\ o  ������ 0 program  ] ��^��
�� 
psin^ o  ������ 0 apppath appPath��  Z o      ���� 0 
nameoffset 
nameOffsetX _`_ l ��ab��  a &  msg("nameoffset" " & nameOffset)   b �cc @ m s g ( " n a m e o f f s e t "   "   &   n a m e O f f s e t )` ded r  fgf n  hih 7 ��jk
�� 
ctxtj m  ���� k l l����l \  mnm o  ���� 0 
nameoffset 
nameOffsetn m  ���� ��  ��  i o  ���� 0 apppath appPathg o      ���� 0 
folderpath 
folderPathe opo l ��qr��  q &  msg("folderpath: " & folderPath)   r �ss @ m s g ( " f o l d e r p a t h :   "   &   f o l d e r P a t h )p tut Q  gvwxv l Lyz{y k  L|| }~} I 2����
�� .sysoexecTEXT���     TEXT b  .��� b  *��� b  &��� o   ���� 0 
folderpath 
folderPath� o   %���� 0 program  � m  &)�� ���  . a p p� m  *-�� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  ~ ��� I 38�����
�� .sysodelanull��� ��� nmbr� m  34���� ��  � ���� O 9L��� I FK������
�� .miscactvnull��� ��� null��  ��  � 4  9C���
�� 
capp� o  =B���� 0 program  ��  z ( "start program up in the background   { ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dw R      ������
�� .ascrerr ****      � ****��  ��  x I Tg����
�� .sysodlogaskr        TEXT� b  T]��� m  TW�� ���   E r r o r   l a u n c h i n g  � o  W\���� 0 program  � �����
�� 
appr� m  `c�� ���  E r r o r   0��  u ���� l hh��������  ��  ��  ��  ��       ���   ��������  � 	�������������������� 0 service  �� 0 program  �� 0 programbackup programBackup
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  
�� .aevtoappnull  �   � ****� �� $��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ������ 0 these_items  �� 0 prog  �  2�� E���� R��
�� 
TEXT
�� 
txdl
�� 
citm
�� .aevtoappnull  �   � ****�� 3�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j � �� g���������� 0 resetprogram resetProgram��  ��  �  �  s�� b  �  b  EQc  Y h� �� |���������� 0 isapprunning isAppRunning�� ����� �  ���� 0 cmd  ��  � ���� 0 cmd  � �������� � � �
�� .sysoexecTEXT���     TEXT
�� 
rslt��  ��  �� ' �j  E�W 	X  �O�b   �Y �� �� �����������  0 killrunningapp killRunningApp�� ����� �  ���� 0 cmd  ��  � ���� 0 cmd  � ������
�� .sysoexecTEXT���     TEXT��  ��  ��  
�j  W 	X  h� �� ����������� 0 msg  �� ����� �  ���� 0 s  ��  � ���� 0 s  � �� �������
�� 
appr
�� .sysodlogaskr        TEXT��  ��  ��  ���l W 	X  h� �� ���������
�� .aevtoappnull  �   � ****��  ��  �  � Z���� ��� � ��� ��� ��� ���������')+��>@��[]_a�����������������~��}�|������{�����z��y�x�w��v�u�t !028�s@P�r�q�p�o�n�m�l�k�j���i�h�g���� 0 resetprogram resetProgram
�� 
rslt�� 0 ps  �� 0 grepprog grepProg�� 0 grepdrop grepDrop�� 0 grepssh grepSSH�� 0 grepconnect grepConnect�� 0 awkone awkOne�� 0 awktwo awkTwo�� 	0 xkill  �� 0 cmdssh cmdSSH�� 0 	cmdapprun 	cmdAppRun�� 0 
cmdappkill 
cmdAppKill
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  � 0 isapprunning isAppRunning
�~ 
appr
�} .sysodlogaskr        TEXT�|  0 killrunningapp killRunningApp�{ 0 titlemsg  �z 0 btnopt btnOpt�y 0 qmsg qMsg
�x 
btns
�w 
dflt�v 
�u 
bhit�t 
0 choice  �s 0 yesorno yesOrNo
�r 
psxp�q 0 apppath appPath
�p 
psof
�o 
psin�n 
�m .sysooffslong    ��� null�l 0 
nameoffset 
nameOffset
�k 
ctxt�j 0 
folderpath 
folderPath
�i .sysodelanull��� ��� nmbr
�h 
capp
�g .miscactvnull��� ��� null��j*j+  OjvE�O�E�O�b  %�%E�O�E�O�E�O�b   %�%E�O�E�Oa E` Oa E` O�a %�%a %�%a %�%E` O�a %�%a %�%E` O�a %�%a %�%a %_ %a %_ %E` O _ j  a !-a "l/E�W ]X # $*_ k+ %a &  %a 'b  %a (%a )a *l +O*_ k+ ,Y #a -b  %a .%b   %a /%a )a 0l +OhOa 1�%E` 2O*_ k+ %a 3  va 4a 5a 6mvE` 7Ob  a 8%E` 9O_ 9a :_ 7a ;a <a )_ 2a = +a >,E` ?O_ ?a @  *_ k+ ,Y _ ?a A  *_ k+ ,OhY hY Ma Ba ClvE` 7Oa Db  %a E%a :_ 7a ;a Fa )_ 2a = +a >,E` GO_ Ga H  hY hOa Ia J,E` KO*a Lb  a M_ Ka N OE` PO_ K[a Q\[Zk\Z_ Pk2E` RO 4_ Rb  %a S%a T%j  Okj UO*a Vb  / *j WUW X # $a Xb  %a )a Yl +OPascr  ��ޭ