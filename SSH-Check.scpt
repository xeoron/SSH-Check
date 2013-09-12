FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.4.0
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
	
     �  � 
 	 N a m e :   S S H - C h e c k 
 	 V e r s i o n :   0 . 4 . 0 
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
      l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    ��  �� 0 programbackup programBackup   m     ! ! � " "  F i r e f o x  ' !don't remove to overt droplet bug     � # # B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g   $ % $ l      & ' ( & j   	 �� )�� 0 	countdown   ) m   	 
 * * � + +  6 '  time out in X seconds    ( � , , * t i m e   o u t   i n   X   s e c o n d s %  - . - l     ��������  ��  ��   .  / 0 / i     1 2 1 I     �� 3��
�� .aevtodocnull  �    alis 3 o      ���� 0 these_items  ��   2 k     2 4 4  5 6 5 l      �� 7 8��   7�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     8 � 9 9   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : "  	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   6  : ; : l     ��������  ��  ��   ;  < = < r      > ? > m      @ @ � A A   ? o      ���� 0 prog   =  B C B r    	 D E D c     F G F o    ���� 0 these_items   G m    ��
�� 
TEXT E o      ���� 0 prog   C  H I H l  
 
��������  ��  ��   I  J K J l  
 
�� L M��   L d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    M � N N � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e K  O P O r   
  Q R Q m   
  S S � T T  : R 1    ��
�� 
txdl P  U V U r     W X W n     Y Z Y 4    �� [
�� 
citm [ m    ����  Z o    ���� 0 prog   X o      ���� 0 prog   V  \ ] \ r     ^ _ ^ m     ` ` � a a  . _ 1    ��
�� 
txdl ]  b c b r    # d e d n    ! f g f 4    !�� h
�� 
citm h m     ����  g o    ���� 0 prog   e o      ���� 0 prog   c  i j i s   $ , k l k o   $ %���� 0 prog   l o      ���� 0 program   j  m n m l  - -��������  ��  ��   n  o�� o I  - 2������
�� .aevtoappnull  �   � ****��  ��  ��   0  p q p l     ��������  ��  ��   q  r s r i     t u t I      �������� 0 resetprogram resetProgram��  ��   u k      v v  w x w l     �� y z��   y * $fix empty list and stops droplet bug    z � { { H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g x  |�� | Z      } ~���� } =      �  o     ���� 0 program   � m     � � � � �   ~ s   
  � � � o   
 ���� 0 programbackup programBackup � o      ���� 0 program  ��  ��  ��   s  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 isapprunning isAppRunning �  ��� � o      ���� 0 cmd  ��  ��   � k     & � �  � � � Q      � � � � r    
 � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � 1      ��
�� 
rslt � R      ������
�� .ascrerr ****      � ****��  ��   � l    � � � � L     � � m     � � � � �  N o � C = if there was no grep match then the program is currently off    � � � � z   i f   t h e r e   w a s   n o   g r e p   m a t c h   t h e n   t h e   p r o g r a m   i s   c u r r e n t l y   o f f �  ��� � Z    & � ��� � � E     � � � 1    ��
�� 
rslt � o    ���� 0 program   � k    ! � �  � � � l   �� � ���   � H Bmsg("Found: " & result with title program & " is aleady running!")    � � � � � m s g ( " F o u n d :   "   &   r e s u l t   w i t h   t i t l e   p r o g r a m   &   "   i s   a l e a d y   r u n n i n g ! " ) �  ��� � L    ! � � m      � � � � �  Y e s��  ��   � k   $ & � �  � � � l  $ $�� � ���   �  
msg("no!")    � � � �  m s g ( " n o ! " ) �  ��� � L   $ & � � m   $ % � � � � �  N o��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 killrunningapp killRunningApp �  ��� � o      ���� 0 cmd  ��  ��   � Q      � � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 msg   �  ��� � o      ���� 0 s  ��  ��   � l     � � � � Q      � � � � I   
�� � �
�� .sysodlogaskr        TEXT � o    ���� 0 s   � �� ���
�� 
appr � m     � � � � � " S S H - C h e c k   M e s s a g e��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  for debugging    � � � �  f o r   d e b u g g i n g �  � � � l     ��������  ��  ��   �  ��� � i     # � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k    � � �  � � � l     ��������  ��  ��   �  � � � I     �������� 0 resetprogram resetProgram��  ��   �  � � � l   ��������  ��  ��   �  � � � r    
 � � � J    ����   � 1      �
� 
rslt �  � � � r     � � � m     � � � � �  p s   x � o      �~�~ 0 ps   �  � � � r     � � � b     � � � b     � � � m     � � � � �  g r e p   ' � o    �}�} 0 program   � m     � � � � � 
 . a p p ' � o      �|�| 0 grepprog grepProg �  � � � r     � � � m     � � � � �  g r e p   - v   g r e p � o      �{�{ 0 grepdrop grepDrop �  �  � r    " m      �  g r e p   - i   s s h o      �z�z 0 grepssh grepSSH   r   # . b   # ,	
	 b   # * m   # $ �  g r e p   ' . * @ . * o   $ )�y�y 0 service  
 m   * + �  ' o      �x�x 0 grepconnect grepConnect  r   / 2 m   / 0 �   a w k   ' { p r i n t   $ 8 } ' o      �w�w 0 awkone awkOne  r   3 : m   3 6 �   a w k   ' { p r i n t   $ 1 } ' o      �v�v 0 awktwo awkTwo  r   ; B  m   ; >!! �""  x a r g s   k i l l   - 9  o      �u�u 	0 xkill   #$# l  C C�t�s�r�t  �s  �r  $ %&% r   C Z'(' b   C V)*) b   C T+,+ b   C P-.- b   C N/0/ b   C J121 b   C H343 o   C D�q�q 0 ps  4 m   D G55 �66    |  2 o   H I�p�p 0 grepssh grepSSH0 m   J M77 �88    |  . o   N O�o�o 0 grepconnect grepConnect, m   P S99 �::    |  * o   T U�n�n 0 awkone awkOne( o      �m�m 0 cmdssh cmdSSH& ;<; l  [ [�l=>�l  = &  msg("cmdSSH is this: " & cmdSSH)   > �?? @ m s g ( " c m d S S H   i s   t h i s :   "   &   c m d S S H )< @A@ r   [ lBCB b   [ hDED b   [ fFGF b   [ bHIH b   [ `JKJ o   [ \�k�k 0 ps  K m   \ _LL �MM    |  I o   ` a�j�j 0 grepprog grepProgG m   b eNN �OO    |  E o   f g�i�i 0 grepdrop grepDropC o      �h�h 0 	cmdapprun 	cmdAppRunA PQP l  m m�gRS�g  R , &msg("cmdAppRun is this: " & cmdAppRun)   S �TT L m s g ( " c m d A p p R u n   i s   t h i s :   "   &   c m d A p p R u n )Q UVU r   m �WXW b   m �YZY b   m �[\[ b   m �]^] b   m ~_`_ b   m zaba b   m xcdc b   m tefe b   m rghg o   m n�f�f 0 ps  h m   n qii �jj    |  f o   r s�e�e 0 grepprog grepProgd m   t wkk �ll    |  b o   x y�d�d 0 grepdrop grepDrop` m   z }mm �nn    |  ^ o   ~ ��c�c 0 awktwo awkTwo\ m   � �oo �pp    |  Z o   � ��b�b 	0 xkill  X o      �a�a 0 
cmdappkill 
cmdAppKillV qrq l  � ��`st�`  s . (msg("cmdAppKill is this: " & cmdAppKill)   t �uu P m s g ( " c m d A p p K i l l   i s   t h i s :   "   &   c m d A p p K i l l )r vwv l  � ��_�^�]�_  �^  �]  w xyx Q   �z{|z l  � �}~} r   � ���� n   � ���� 4   � ��\�
�\ 
cobj� m   � ��[�[ � n   � ���� 2  � ��Z
�Z 
cpar� l  � ���Y�X� I  � ��W��V
�W .sysoexecTEXT���     TEXT� o   � ��U�U 0 cmdssh cmdSSH�V  �Y  �X  � 1      �T
�T 
rslt~ 0 *check for ssh connected to defined service    ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e{ R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  | l  ����� k   ��� ��� Z   � ����P�� =  � ���� I   � ��O��N�O 0 isapprunning isAppRunning� ��M� o   � ��L�L 0 	cmdapprun 	cmdAppRun�M  �N  � m   � ��� ���  Y e s� k   � ��� ��� I  � ��K��
�K .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   � ��J�J 0 program  � m   � ��� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� �I��H
�I 
appr� m   � ��� ��� ( S S H   S e r v i c e   i s   d o w n !�H  � ��G� I   � ��F��E�F  0 killrunningapp killRunningApp� ��D� o   � ��C�C 0 
cmdappkill 
cmdAppKill�D  �E  �G  �P  � I  � ��B��
�B .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  D o n ' t   r u n  � o   � ��A�A 0 program  � m   � ��� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   � ��@�@ 0 service  � m   � ��� ���  .� �?��>
�? 
appr� m   � ��� ��� ( S S H   S e r v i c e   i s   d o w n !�>  � ��=� L   �<�<  �=  �  throws error if it fails   � ��� 0 t h r o w s   e r r o r   i f   i t   f a i l sy ��� l �;�:�9�;  �:  �9  � ��� l �8���8  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r  ��� b  ��� m  �� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � 1  �7
�7 
rslt� o      �6�6 0 titlemsg  � ��� Z  ���5�� = ��� I  �4��3�4 0 isapprunning isAppRunning� ��2� o  �1�1 0 	cmdapprun 	cmdAppRun�2  �3  � m  �� ���  Y e s� l ����� k  ��� ��� r  +��� J  '�� ��� m  �� ���  R e s t a r t� ��� m  "�� ���  E x i t   S S H - C h e c k� ��0� m  "%�� ���  T u r n   O f f�0  � o      �/�/ 0 btnopt btnOpt� ��� r  ,9��� b  ,5��� o  ,1�.�. 0 program  � m  14�� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      �-�- 0 qmsg qMsg� ��� r  :]��� n  :Y��� 1  UY�,
�, 
bhit� l :U��+�*� I :U�)��
�) .sysodlogaskr        TEXT� o  :=�(�( 0 qmsg qMsg� �' 
�' 
btns  o  @C�&�& 0 btnopt btnOpt �%
�% 
dflt m  FI �  E x i t   S S H - C h e c k �$�#
�$ 
appr o  LO�"�" 0 titlemsg  �#  �+  �*  � o      �!�! 
0 choice  � �  Z  ^�	
 = ^e o  ^a�� 
0 choice   m  ad �  R e s t a r t	 I  hp���  0 killrunningapp killRunningApp � o  il�� 0 
cmdappkill 
cmdAppKill�  �  
  = sz o  sv�� 
0 choice   m  vy �  T u r n   O f f � k  }�  I  }����  0 killrunningapp killRunningApp � o  ~��� 0 
cmdappkill 
cmdAppKill�  �   � L  ����  �  �   l �� ! L  ����     choice equals Cancel   ! �"" ( c h o i c e   e q u a l s   C a n c e l�   � 0 * should we kill & restart the running app?   � �## T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�5  � k  �$$ %&% r  ��'(' J  ��)) *+* m  ��,, �--  L a u n c h+ .�. m  ��// �00  S t o p�  ( o      �� 0 btnopt btnOpt& 121 r  ��343 b  ��565 b  ��787 b  ��9:9 b  ��;<; m  ��== �>>  S t a r t i n g  < o  ���� 0 program  : m  ��?? �@@    i n  8 o  ���� 0 	countdown  6 m  ��AA �BB    s e c o n d s !4 o      �� 0 qmsg qMsg2 C�C Q  �DEFD k  ��GG HIH r  ��JKJ n  ��LML 1  ���
� 
bhitM l ��N�
�	N I ���OP
� .sysodlogaskr        TEXTO o  ���� 0 qmsg qMsgP �QR
� 
btnsQ o  ���� 0 btnopt btnOptR �ST
� 
dfltS m  ��UU �VV  L a u n c hT �WX
� 
apprW o  ���� 0 titlemsg  X �Y� 
� 
givuY o  ������ 0 	countdown  �   �
  �	  K o      ���� 0 yesorno yesOrNoI Z��Z Z  ��[\����[ = ��]^] o  ������ 0 yesorno yesOrNo^ m  ��__ �``  S t o p\ L  ������  ��  ��  ��  E R      ������
�� .ascrerr ****      � ****��  ��  F L   ����  �  � aba l ��������  ��  ��  b cdc l ��ef��  e ! Prepare to launch a program   f �gg 6 P r e p a r e   t o   l a u n c h   a   p r o g r a md hih r  jkj n  
lml 1  
��
�� 
psxpm l n����n m  oo �pp  / A p p l i c a t i o n s /��  ��  k o      ���� 0 apppath appPathi qrq l ��st��  s  msg("apppath: " &appPath)   t �uu 2 m s g ( " a p p p a t h :   "   & a p p P a t h )r vwv r  (xyx I $����z
�� .sysooffslong    ��� null��  z ��{|
�� 
psof{ o  ���� 0 program  | ��}��
�� 
psin} o  ���� 0 apppath appPath��  y o      ���� 0 
nameoffset 
nameOffsetw ~~ l ))������  � &  msg("nameoffset" " & nameOffset)   � ��� @ m s g ( " n a m e o f f s e t "   "   &   n a m e O f f s e t ) ��� r  )@��� n  )<��� 7 ,<����
�� 
ctxt� m  24���� � l 5;������ \  5;��� o  69���� 0 
nameoffset 
nameOffset� m  9:���� ��  ��  � o  ),���� 0 apppath appPath� o      ���� 0 
folderpath 
folderPath� ��� l AA������  � &  msg("folderpath: " & folderPath)   � ��� @ m s g ( " f o l d e r p a t h :   "   &   f o l d e r P a t h )� ��� Q  A����� l Ds���� k  Ds�� ��� I DY�����
�� .sysoexecTEXT���     TEXT� b  DU��� b  DQ��� b  DM��� o  DG���� 0 
folderpath 
folderPath� o  GL���� 0 program  � m  MP�� ���  . a p p� m  QT�� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  � ��� I Z_�����
�� .sysodelanull��� ��� nmbr� m  Z[���� ��  � ���� O `s��� I mr������
�� .miscactvnull��� ��� null��  ��  � 4  `j���
�� 
capp� o  di���� 0 program  ��  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      ������
�� .ascrerr ****      � ****��  ��  � I {�����
�� .sysodlogaskr        TEXT� b  {���� m  {~�� ���   E r r o r   l a u n c h i n g  � o  ~����� 0 program  � �����
�� 
appr� m  ���� ���  E r r o r   0��  � ���� l ����������  ��  ��  ��  ��       ���   ! *��������  � 
���������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 	countdown  
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  
�� .aevtoappnull  �   � ****� �� 2��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ������ 0 these_items  �� 0 prog  �  @�� S���� `��
�� 
TEXT
�� 
txdl
�� 
citm
�� .aevtoappnull  �   � ****�� 3�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j � �� u���������� 0 resetprogram resetProgram��  ��  �  �  ��� b  �  b  EQc  Y h� �� ����������� 0 isapprunning isAppRunning�� ����� �  ���� 0 cmd  ��  � ���� 0 cmd  � �������� � � �
�� .sysoexecTEXT���     TEXT
�� 
rslt��  ��  �� ' �j  E�W 	X  �O�b   �Y �� �� �����������  0 killrunningapp killRunningApp�� ����� �  ���� 0 cmd  ��  � ���� 0 cmd  � ������
�� .sysoexecTEXT���     TEXT��  ��  ��  
�j  W 	X  h� �� ����������� 0 msg  �� ����� �  ���� 0 s  ��  � ���� 0 s  � �� �������
�� 
appr
�� .sysodlogaskr        TEXT��  ��  ��  ���l W 	X  h� �� ���������
�� .aevtoappnull  �   � ****��  ��  �  � ]���� ��� � ��� �����~�}�|!�{579�zLN�yikmo�x�w�v�u�t�s�r����q��p�o������n�����m��l�k�j�i�h�g,/=?AU�f�e�d_o�c�b�a�`�_�^�]�\�[���Z�Y�X���� 0 resetprogram resetProgram
�� 
rslt�� 0 ps  �� 0 grepprog grepProg�� 0 grepdrop grepDrop� 0 grepssh grepSSH�~ 0 grepconnect grepConnect�} 0 awkone awkOne�| 0 awktwo awkTwo�{ 	0 xkill  �z 0 cmdssh cmdSSH�y 0 	cmdapprun 	cmdAppRun�x 0 
cmdappkill 
cmdAppKill
�w .sysoexecTEXT���     TEXT
�v 
cpar
�u 
cobj�t  �s  �r 0 isapprunning isAppRunning
�q 
appr
�p .sysodlogaskr        TEXT�o  0 killrunningapp killRunningApp�n 0 titlemsg  �m 0 btnopt btnOpt�l 0 qmsg qMsg
�k 
btns
�j 
dflt�i 
�h 
bhit�g 
0 choice  
�f 
givu�e �d 0 yesorno yesOrNo
�c 
psxp�b 0 apppath appPath
�a 
psof
�` 
psin�_ 
�^ .sysooffslong    ��� null�] 0 
nameoffset 
nameOffset
�\ 
ctxt�[ 0 
folderpath 
folderPath
�Z .sysodelanull��� ��� nmbr
�Y 
capp
�X .miscactvnull��� ��� null���*j+  OjvE�O�E�O�b  %�%E�O�E�O�E�O�b   %�%E�O�E�Oa E` Oa E` O�a %�%a %�%a %�%E` O�a %�%a %�%E` O�a %�%a %�%a %_ %a %_ %E` O _ j  a !-a "l/E�W ]X # $*_ k+ %a &  %a 'b  %a (%a )a *l +O*_ k+ ,Y #a -b  %a .%b   %a /%a )a 0l +OhOa 1�%E` 2O*_ k+ %a 3  va 4a 5a 6mvE` 7Ob  a 8%E` 9O_ 9a :_ 7a ;a <a )_ 2a = +a >,E` ?O_ ?a @  *_ k+ ,Y _ ?a A  *_ k+ ,OhY hY ta Ba ClvE` 7Oa Db  %a E%b  %a F%E` 9O A_ 9a :_ 7a ;a Ga )_ 2a Hb  a I +a >,E` JO_ Ja K  hY hW 	X # $hOa La M,E` NO*a Ob  a P_ Na Q RE` SO_ N[a T\[Zk\Z_ Sk2E` UO 4_ Ub  %a V%a W%j  Okj XO*a Yb  / *j ZUW X # $a [b  %a )a \l +OPascr  ��ޭ