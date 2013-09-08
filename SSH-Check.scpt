FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Name: SSH-Check
	Version: 0.3.2
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a bitTorrent app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com and
	To reprogram what program you want to launch by default, 
	drop a program onto SSH-Check
	
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
     � 	 	� 
 	 N a m e :   S S H - C h e c k 
 	 V e r s i o n :   0 . 3 . 2 
 	 A u t h o r :   J a s o n   C a m p i s i 
 	 D a t e :   9 . 7 . 2 0 1 3 
 	 L i c e n s e :   G P L 
 	 P u r p o s e :   O n l y   s t a r t   a   b i t T o r r e n t   a p p   i f   t h e   s y s t e m   i s   s i g n e d   i n t o   a   S S H   s e r v i c e . 
 	 
 	 D e f a u l t   p r o g r a m   i s   F i r e f o x   a n d   s s h   s e r v i c e   t u n n e l r . c o m   a n d 
 	 T o   r e p r o g r a m   w h a t   p r o g r a m   y o u   w a n t   t o   l a u n c h   b y   d e f a u l t ,   
 	 d r o p   a   p r o g r a m   o n t o   S S H - C h e c k 
 	 
 	 N O T E :   
 	 F o r   e v e n   m o r e   s e c u r i t y   t h i s   p r o g r a m   i s   b e s t   c o m b i n e d   w i t h   a   c r o n   j o b   t o   
 	 c h e c k   i f   S S H   c o n n e c t i o n   i s   s t i l l   a l i v e ,   o t h e r w i s e   k i l l   y o u r     A p p . 
 	 
   
  
 l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    �� �� 0 programbackup programBackup  m       �    F i r e f o x  ' !don't remove to overt droplet bug     �   B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g       l     ��������  ��  ��      ! " ! i   	  # $ # I     �� %��
�� .aevtodocnull  �    alis % o      ���� 0 these_items  ��   $ k     2 & &  ' ( ' l      �� ) *��   ) k e these_items holds a alias list that looks like this:
   	   "hostname:Applications:ProgName.app:"
 	    * � + + �   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s : 
       	       " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
   	 (  , - , l     ��������  ��  ��   -  . / . r      0 1 0 m      2 2 � 3 3   1 o      ���� 0 prog   /  4 5 4 r    	 6 7 6 c     8 9 8 o    ���� 0 these_items   9 m    ��
�� 
TEXT 7 o      ���� 0 prog   5  : ; : l  
 
��������  ��  ��   ;  < = < l  
 
�� > ?��   > d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    ? � @ @ � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e =  A B A r   
  C D C m   
  E E � F F  : D 1    ��
�� 
txdl B  G H G l    I J K I r     L M L n     N O N 4    �� P
�� 
citm P m    ����  O o    ���� 0 prog   M o      ���� 0 prog   J  3    K � Q Q  3 H  R S R r     T U T m     V V � W W  . U 1    ��
�� 
txdl S  X Y X r    # Z [ Z n    ! \ ] \ 4    !�� ^
�� 
citm ^ m     ����  ] o    ���� 0 prog   [ o      ���� 0 prog   Y  _ ` _ s   $ , a b a o   $ %���� 0 prog   b o      ���� 0 program   `  c d c l  - -��������  ��  ��   d  e�� e I  - 2������
�� .aevtoappnull  �   � ****��  ��  ��   "  f g f l     ��������  ��  ��   g  h i h i     j k j I      �������� 0 resetprogram resetProgram��  ��   k k      l l  m n m l     �� o p��   o * $fix empty list and stops droplet bug    p � q q H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g n  r�� r Z      s t���� s =     u v u o     ���� 0 program   v m     w w � x x   t s   
  y z y o   
 ���� 0 programbackup programBackup z o      ���� 0 program  ��  ��  ��   i  { | { l     ��������  ��  ��   |  } ~ } i      �  I      �� ����� 0 isapprunning isAppRunning �  ��� � o      ���� 0 cmd  ��  ��   � k     ( � �  � � � Q      � � � � r    
 � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � 1      ��
�� 
rslt � R      ������
�� .ascrerr ****      � ****��  ��   � l    � � � � L     � � m     � � � � �  N o � C = if there was no grep match then the program is currently off    � � � � z   i f   t h e r e   w a s   n o   g r e p   m a t c h   t h e n   t h e   p r o g r a m   i s   c u r r e n t l y   o f f �  ��� � Z    ( � ��� � � E     � � � 1    ��
�� 
rslt � o    ���� 0 program   � k    ! � �  � � � l   �� � ���   � H Bmsg("Found: " & result with title program & " is aleady running!")    � � � � � m s g ( " F o u n d :   "   &   r e s u l t   w i t h   t i t l e   p r o g r a m   &   "   i s   a l e a d y   r u n n i n g ! " ) �  ��� � L    ! � � m      � � � � �  Y e s��  ��   � k   $ ( � �  � � � l  $ $�� � ���   �  
msg("no!")    � � � �  m s g ( " n o ! " ) �  � � � L   $ & � � m   $ % � � � � �  N o �  ��� � l  ' '��������  ��  ��  ��  ��   ~  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 killrunningapp killRunningApp �  ��� � o      ���� 0 cmd  ��  ��   � Q      � � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 msg   �  ��� � o      ���� 0 s  ��  ��   � l     � � � � Q      � � � � I   
�� � �
�� .sysodlogaskr        TEXT � o    ���� 0 s   � �� ���
�� 
appr � m     � � � � � " S S H - C h e c k   M e s s a g e��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  for debugging    � � � �  f o r   d e b u g g i n g �  � � � l     ��������  ��  ��   �  ��� � i      � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k    i � �  � � � l     ��������  ��  ��   �  � � � I     �������� 0 resetprogram resetProgram��  ��   �  � � � l   ��������  ��  ��   �  � � � r    
 � � � J    ��   � 1      �~
�~ 
rslt �  � � � r     � � � m     � � � � �  p s   x � o      �}�} 0 ps   �  � � � r     � � � b     � � � b     � � � m     � � � � �  g r e p   ' � o    �|�| 0 program   � m     � � � � � 
 . a p p ' � o      �{�{ 0 grepprog grepProg �  � � � r     � � � m     � � � � �  g r e p   - v   g r e p � o      �z�z 0 grepdrop grepDrop �  � � � r    " � � � m      � � � � �  g r e p   - i   s s h � o      �y�y 0 grepssh grepSSH �  � � � r   # . �  � b   # , b   # * m   # $ �  g r e p   ' . * @ . * o   $ )�x�x 0 service   m   * + �  '  o      �w�w 0 grepconnect grepConnect � 	
	 r   / 2 m   / 0 �   a w k   ' { p r i n t   $ 8 } ' o      �v�v 0 awkone awkOne
  r   3 : m   3 6 �   a w k   ' { p r i n t   $ 1 } ' o      �u�u 0 awktwo awkTwo  r   ; B m   ; > �  x a r g s   k i l l   - 9 o      �t�t 	0 xkill    l  C C�s�r�q�s  �r  �q    r   C Z  b   C V!"! b   C T#$# b   C P%&% b   C N'(' b   C J)*) b   C H+,+ o   C D�p�p 0 ps  , m   D G-- �..    |  * o   H I�o�o 0 grepssh grepSSH( m   J M// �00    |  & o   N O�n�n 0 grepconnect grepConnect$ m   P S11 �22    |  " o   T U�m�m 0 awkone awkOne  o      �l�l 0 cmdssh cmdSSH 343 l  [ [�k56�k  5 &  msg("cmdSSH is this: " & cmdSSH)   6 �77 @ m s g ( " c m d S S H   i s   t h i s :   "   &   c m d S S H )4 898 r   [ l:;: b   [ h<=< b   [ f>?> b   [ b@A@ b   [ `BCB o   [ \�j�j 0 ps  C m   \ _DD �EE    |  A o   ` a�i�i 0 grepprog grepProg? m   b eFF �GG    |  = o   f g�h�h 0 grepdrop grepDrop; o      �g�g 0 	cmdapprun 	cmdAppRun9 HIH l  m m�fJK�f  J , &msg("cmdAppRun is this: " & cmdAppRun)   K �LL L m s g ( " c m d A p p R u n   i s   t h i s :   "   &   c m d A p p R u n )I MNM r   m �OPO b   m �QRQ b   m �STS b   m �UVU b   m ~WXW b   m zYZY b   m x[\[ b   m t]^] b   m r_`_ o   m n�e�e 0 ps  ` m   n qaa �bb    |  ^ o   r s�d�d 0 grepprog grepProg\ m   t wcc �dd    |  Z o   x y�c�c 0 grepdrop grepDropX m   z }ee �ff    |  V o   ~ ��b�b 0 awktwo awkTwoT m   � �gg �hh    |  R o   � ��a�a 	0 xkill  P o      �`�` 0 
cmdappkill 
cmdAppKillN iji l  � ��_kl�_  k . (msg("cmdAppKill is this: " & cmdAppKill)   l �mm P m s g ( " c m d A p p K i l l   i s   t h i s :   "   &   c m d A p p K i l l )j non l  � ��^�]�\�^  �]  �\  o pqp Q   �rstr l  � �uvwu r   � �xyx n   � �z{z 4   � ��[|
�[ 
cobj| m   � ��Z�Z { n   � �}~} 2  � ��Y
�Y 
cpar~ l  � ��X�W I  � ��V��U
�V .sysoexecTEXT���     TEXT� o   � ��T�T 0 cmdssh cmdSSH�U  �X  �W  y 1      �S
�S 
rsltv * $check for ssh connected to service X   w ��� H c h e c k   f o r   s s h   c o n n e c t e d   t o   s e r v i c e   Xs R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  t l  ����� k   ��� ��� Z   � ����O�� =  � ���� I   � ��N��M�N 0 isapprunning isAppRunning� ��L� o   � ��K�K 0 	cmdapprun 	cmdAppRun�L  �M  � m   � ��� ���  Y e s� k   � ��� ��� I  � ��J��
�J .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   � ��I�I 0 program  � m   � ��� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� �H��G
�H 
appr� m   � ��� ��� ( S S H   S e r v i c e   i s   d o w n !�G  � ��F� I   � ��E��D�E  0 killrunningapp killRunningApp� ��C� o   � ��B�B 0 
cmdappkill 
cmdAppKill�C  �D  �F  �O  � I  � ��A��
�A .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  D o n ' t   r u n  � o   � ��@�@ 0 program  � m   � ��� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   � ��?�? 0 service  � m   � ��� ���  .� �>��=
�> 
appr� m   � ��� ��� ( S S H   S e r v i c e   i s   d o w n !�=  � ��<� L   �;�;  �<  �  throws error if it fails   � ��� 0 t h r o w s   e r r o r   i f   i t   f a i l sq ��� l �:�9�8�:  �9  �8  � ��� l �7���7  � ( "As if you want to run your program   � ��� D A s   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m� ��� r  ��� b  ��� m  �� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � 1  �6
�6 
rslt� o      �5�5 0 titlemsg  � ��� l �4�3�2�4  �3  �2  � ��� Z  ����1�� = ��� I  �0��/�0 0 isapprunning isAppRunning� ��.� o  �-�- 0 	cmdapprun 	cmdAppRun�.  �/  � m  �� ���  Y e s� l ����� k  ��� ��� r  +��� J  '�� ��� m  �� ���  R e s t a r t� ��� m  "�� ���  E x i t   S S H - C h e c k� ��,� m  "%�� ���  T u r n   O f f�,  � o      �+�+ 0 btnopt btnOpt� ��� r  ,9��� b  ,5��� o  ,1�*�* 0 program  � m  14�� ��� �   i s   r u n n i n g !   Y o u   c a n   n o w   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      �)�) 0 qmsg qMsg� ��� r  :]��� n  :Y��� 1  UY�(
�( 
bhit� l :U��'�&� I :U�%��
�% .sysodlogaskr        TEXT� o  :=�$�$ 0 qmsg qMsg� �#��
�# 
btns� o  @C�"�" 0 btnopt btnOpt� �!��
�! 
dflt� m  FI�� ���  E x i t   S S H - C h e c k� �  �
�  
appr  o  LO�� 0 titlemsg  �  �'  �&  � o      �� 
0 choice  � � Z  ^� = ^e o  ^a�� 
0 choice   m  ad �		  R e s t a r t I  hp�
��  0 killrunningapp killRunningApp
 � o  il�� 0 
cmdappkill 
cmdAppKill�  �    = sz o  sv�� 
0 choice   m  vy �  T u r n   O f f � k  }�  I  }����  0 killrunningapp killRunningApp � o  ~��� 0 
cmdappkill 
cmdAppKill�  �   � L  ����  �  �   l �� L  ����    choice equals Cancel    � ( c h o i c e   e q u a l s   C a n c e l�  � 0 * should we kill & restart the running app?   � � T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�1  � k  ��   r  ��!"! J  ��## $%$ m  ��&& �''  Y e s% (�( m  ��)) �**  N o�  " o      �� 0 btnopt btnOpt  +,+ r  ��-.- n  ��/0/ 1  ���
� 
bhit0 l ��1�
�	1 I ���23
� .sysodlogaskr        TEXT2 b  ��454 b  ��676 m  ��88 �99 0 D o   s t i l l   w a n t   t o   l a u n c h  7 o  ���� 0 program  5 m  ��:: �;;  ?3 �<=
� 
btns< o  ���� 0 btnopt btnOpt= �>?
� 
dflt> m  ��@@ �AA  Y e s? �B�
� 
apprB o  ���� 0 titlemsg  �  �
  �	  . o      � �  0 yesorno yesOrNo, C��C Z  ��DE����D = ��FGF o  ������ 0 yesorno yesOrNoG m  ��HH �II  N oE L  ������  ��  ��  ��  � JKJ l ����������  ��  ��  K LML r  ��NON n  ��PQP 1  ����
�� 
psxpQ l ��R����R m  ��SS �TT  / A p p l i c a t i o n s /��  ��  O o      ���� 0 apppath appPathM UVU l ����WX��  W  msg("apppath: " &appPath)   X �YY 2 m s g ( " a p p p a t h :   "   & a p p P a t h )V Z[Z r  �\]\ I ������^
�� .sysooffslong    ��� null��  ^ ��_`
�� 
psof_ o  ������ 0 program  ` ��a��
�� 
psina o  ������ 0 apppath appPath��  ] o      ���� 0 
nameoffset 
nameOffset[ bcb l ��de��  d &  msg("nameoffset" " & nameOffset)   e �ff @ m s g ( " n a m e o f f s e t "   "   &   n a m e O f f s e t )c ghg r  iji n  klk 7 ��mn
�� 
ctxtm m  ���� n l o����o \  pqp o  ���� 0 
nameoffset 
nameOffsetq m  ���� ��  ��  l o  ���� 0 apppath appPathj o      ���� 0 
folderpath 
folderPathh rsr l ��tu��  t &  msg("folderpath: " & folderPath)   u �vv @ m s g ( " f o l d e r p a t h :   "   &   f o l d e r P a t h )s wxw Q  gyz{y l L|}~| k  L ��� I 2�����
�� .sysoexecTEXT���     TEXT� b  .��� b  *��� b  &��� o   ���� 0 
folderpath 
folderPath� o   %���� 0 program  � m  &)�� ���  . a p p� m  *-�� ��� N / C o n t e n t s / M a c O S / p r o g r a m     & >   / d e v / n u l l   &��  � ��� I 38�����
�� .sysodelanull��� ��� nmbr� m  34���� ��  � ���� O 9L��� I FK������
�� .miscactvnull��� ��� null��  ��  � 4  9C���
�� 
capp� o  =B���� 0 program  ��  } ( "start program up in the background   ~ ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dz R      ������
�� .ascrerr ****      � ****��  ��  { I Tg����
�� .sysodlogaskr        TEXT� b  T]��� m  TW�� ���   E r r o r   l a u n c h i n g  � o  W\���� 0 program  � �����
�� 
appr� m  `c�� ���  E r r o r   0��  x ���� l hh��������  ��  ��  ��  ��       ���   ��������  � 	�������������������� 0 service  �� 0 program  �� 0 programbackup programBackup
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  
�� .aevtoappnull  �   � ****� �� $��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ������ 0 these_items  �� 0 prog  �  2�� E���� V��
�� 
TEXT
�� 
txdl
�� 
citm
�� .aevtoappnull  �   � ****�� 3�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j � �� k���������� 0 resetprogram resetProgram��  ��  �  �  w�� b  �  b  EQc  Y h� �� ����������� 0 isapprunning isAppRunning�� ����� �  ���� 0 cmd  ��  � ���� 0 cmd  � �������� � � �
�� .sysoexecTEXT���     TEXT
�� 
rslt��  ��  �� ) �j  E�W 	X  �O�b   �Y �OP� �� �����������  0 killrunningapp killRunningApp�� ����� �  ���� 0 cmd  ��  � ���� 0 cmd  � ������
�� .sysoexecTEXT���     TEXT��  ��  ��  
�j  W 	X  h� �� ����������� 0 msg  �� ����� �  ���� 0 s  ��  � ���� 0 s  � �� �������
�� 
appr
�� .sysodlogaskr        TEXT��  ��  ��  ���l W 	X  h� �� ���������
�� .aevtoappnull  �   � ****��  ��  �  � Z���� ��� � ��� ��� �����������-/1��DF��aceg����~�}�|�{�z����y��x�w������v�����u��t�s�r��q�p�o&)8:@�nHS�m�l�k�j�i�h�g�f�e���d�c�b���� 0 resetprogram resetProgram
�� 
rslt�� 0 ps  �� 0 grepprog grepProg�� 0 grepdrop grepDrop�� 0 grepssh grepSSH�� 0 grepconnect grepConnect�� 0 awkone awkOne�� 0 awktwo awkTwo�� 	0 xkill  �� 0 cmdssh cmdSSH�� 0 	cmdapprun 	cmdAppRun�� 0 
cmdappkill 
cmdAppKill
� .sysoexecTEXT���     TEXT
�~ 
cpar
�} 
cobj�|  �{  �z 0 isapprunning isAppRunning
�y 
appr
�x .sysodlogaskr        TEXT�w  0 killrunningapp killRunningApp�v 0 titlemsg  �u 0 btnopt btnOpt�t 0 qmsg qMsg
�s 
btns
�r 
dflt�q 
�p 
bhit�o 
0 choice  �n 0 yesorno yesOrNo
�m 
psxp�l 0 apppath appPath
�k 
psof
�j 
psin�i 
�h .sysooffslong    ��� null�g 0 
nameoffset 
nameOffset
�f 
ctxt�e 0 
folderpath 
folderPath
�d .sysodelanull��� ��� nmbr
�c 
capp
�b .miscactvnull��� ��� null��j*j+  OjvE�O�E�O�b  %�%E�O�E�O�E�O�b   %�%E�O�E�Oa E` Oa E` O�a %�%a %�%a %�%E` O�a %�%a %�%E` O�a %�%a %�%a %_ %a %_ %E` O _ j  a !-a "l/E�W ]X # $*_ k+ %a &  %a 'b  %a (%a )a *l +O*_ k+ ,Y #a -b  %a .%b   %a /%a )a 0l +OhOa 1�%E` 2O*_ k+ %a 3  va 4a 5a 6mvE` 7Ob  a 8%E` 9O_ 9a :_ 7a ;a <a )_ 2a = +a >,E` ?O_ ?a @  *_ k+ ,Y _ ?a A  *_ k+ ,OhY hY Ma Ba ClvE` 7Oa Db  %a E%a :_ 7a ;a Fa )_ 2a = +a >,E` GO_ Ga H  hY hOa Ia J,E` KO*a Lb  a M_ Ka N OE` PO_ K[a Q\[Zk\Z_ Pk2E` RO 4_ Rb  %a S%a T%j  Okj UO*a Vb  / *j WUW X # $a Xb  %a )a Yl +OPascr  ��ޭ