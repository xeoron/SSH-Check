FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.4.2
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
 	 V e r s i o n :   0 . 4 . 2 
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
�� .aevtodocnull  �    alis 3 o      ���� 0 these_items  ��   2 k     2 4 4  5 6 5 l      �� 7 8��   7�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     8 � 9 9   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
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
rslt � o    ���� 0 program   � L    ! � � m      � � � � �  Y e s��   � L   $ & � � m   $ % � � � � �  N o��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 killrunningapp killRunningApp �  ��� � o      ���� 0 cmd  ��  ��   � Q      � � � � I   �� ���
�� .sysoexecTEXT���     TEXT � o    ���� 0 cmd  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 msg   �  � � � o      ���� 
0 notice   �  ��� � o      ���� 	0 title  ��  ��   � Q      � � � � L     � � I   
�� � �
�� .sysodlogaskr        TEXT � o    ���� 
0 notice   � �� ���
�� 
appr � o    ���� 	0 title  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     # � � � I      �� ����� 0 servicealive serviceAlive �  ��� � o      ����  0 openconnection openConnection��  ��   � Z      � ��� � � E      � � � o     ����  0 openconnection openConnection � o    ���� 0 service   � L   
  � � m   
 ���� ��   � L     � � m    ����   �  � � � l     ��������  ��  ��   �  ��� � i   $ ' � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k    � � �  � � � I     ��~�}� 0 resetprogram resetProgram�~  �}   �  � � � l   �|�{�z�|  �{  �z   �  � � � r    
 � � � J    �y�y   � 1      �x
�x 
rslt �  � � � r     � � � m     � � � � �  p s   x � o      �w�w 0 ps   �  � � � r     � � � b     � � � b     � � � m     � � � � �  g r e p   ' � o    �v�v 0 program   � m     � � � � � 
 . a p p ' � o      �u�u 0 grepprog grepProg �  � � � r     � � � m     � � � � �  g r e p   - v   g r e p � o      �t�t 0 grepdrop grepDrop �  � � � r    " � � � m      � � �    g r e p   - i   s s h � o      �s�s 0 grepssh grepSSH �  r   # . b   # , b   # * m   # $		 �

  g r e p   ' . * @ . * o   $ )�r�r 0 service   m   * + �  ' o      �q�q 0 grepconnect grepConnect  r   / 2 m   / 0 �   a w k   ' { p r i n t   $ 8 } ' o      �p�p 0 awkone awkOne  r   3 : m   3 6 �   a w k   ' { p r i n t   $ 1 } ' o      �o�o 0 awktwo awkTwo  r   ; B m   ; > �  x a r g s   k i l l   - 9 o      �n�n 	0 xkill     l  C C�m�l�k�m  �l  �k    !"! r   C Z#$# b   C V%&% b   C T'(' b   C P)*) b   C N+,+ b   C J-.- b   C H/0/ o   C D�j�j 0 ps  0 m   D G11 �22    |  . o   H I�i�i 0 grepssh grepSSH, m   J M33 �44    |  * o   N O�h�h 0 grepconnect grepConnect( m   P S55 �66    |  & o   T U�g�g 0 awkone awkOne$ o      �f�f 0 cmdssh cmdSSH" 787 r   [ l9:9 b   [ h;<; b   [ f=>= b   [ b?@? b   [ `ABA o   [ \�e�e 0 ps  B m   \ _CC �DD    |  @ o   ` a�d�d 0 grepprog grepProg> m   b eEE �FF    |  < o   f g�c�c 0 grepdrop grepDrop: o      �b�b 0 	cmdapprun 	cmdAppRun8 GHG r   m �IJI b   m �KLK b   m �MNM b   m �OPO b   m ~QRQ b   m zSTS b   m xUVU b   m tWXW b   m rYZY o   m n�a�a 0 ps  Z m   n q[[ �\\    |  X o   r s�`�` 0 grepprog grepProgV m   t w]] �^^    |  T o   x y�_�_ 0 grepdrop grepDropR m   z }__ �``    |  P o   ~ ��^�^ 0 awktwo awkTwoN m   � �aa �bb    |  L o   � ��]�] 	0 xkill  J o      �\�\ 0 
cmdappkill 
cmdAppKillH cdc l  � ��[�Z�Y�[  �Z  �Y  d efe r   � �ghg m   � �ii �jj  h o      �X�X 
0 tunnel  f klk r   � �mnm m   � �oo �pp ( S S H   S e r v i c e   i s   D o w n !n o      �W�W 0 titlemsg  l qrq Q   �kstus l  � �vwxv k   � �yy z{z r   � �|}| n   � �~~ 4   � ��V�
�V 
cobj� m   � ��U�U  n   � ���� 2  � ��T
�T 
cpar� l  � ���S�R� I  � ��Q��P
�Q .sysoexecTEXT���     TEXT� o   � ��O�O 0 cmdssh cmdSSH�P  �S  �R  } 1      �N
�N 
rslt{ ��� s   � ���� 1   � ��M
�M 
rslt� o      �L�L 
0 tunnel  � ��K� Z   � ����J�I� =  � ���� I   � ��H��G�H 0 servicealive serviceAlive� ��F� o   � ��E�E 
0 tunnel  �F  �G  � m   � ��D�D  � k   � ��� ��� I   � ��C��B�C 0 msg  � ��� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  D o n ' t   r u n  � o   � ��A�A 0 program  � m   � ��� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   � ��@�@ 0 service  � m   � ��� ���  .� ��?� o   � ��>�> 0 titlemsg  �?  �B  � ��=� L   � ��<�<  �=  �J  �I  �K  w 0 *check for ssh connected to defined service   x ��� T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c et R      �;�:�9
�; .ascrerr ****      � ****�:  �9  u l  �k���� k   �k�� ��� Z   �h����8� F   ���� =  ���� I   � ��7��6�7 0 isapprunning isAppRunning� ��5� o   � ��4�4 0 	cmdapprun 	cmdAppRun�5  �6  � m   ��� ���  Y e s� = ��� I  �3��2�3 0 servicealive serviceAlive� ��1� o  
�0�0 
0 tunnel  �1  �2  � m  �/�/  � k  5�� ��� I  ,�.��-�. 0 msg  � ��� b  %��� b  !��� m  �� ��� , I t   i s   n o t   s a f e   t o   r u n  � o   �,�, 0 program  � m  !$�� ��� H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !� ��+� o  %(�*�* 0 titlemsg  �+  �-  � ��)� I  -5�(��'�(  0 killrunningapp killRunningApp� ��&� o  .1�%�% 0 
cmdappkill 
cmdAppKill�&  �'  �)  � ��� = 8B��� I  8@�$��#�$ 0 servicealive serviceAlive� ��"� o  9<�!�! 
0 tunnel  �"  �#  � m  @A� �   � ��� I  Ed���� 0 msg  � ��� b  F]��� b  FY��� b  FS��� b  FO��� m  FI�� ���  D o n ' t   r u n  � o  IN�� 0 program  � m  OR�� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o  SX�� 0 service  � m  Y\�� ���  .� ��� o  ]`�� 0 titlemsg  �  �  �  �8  � ��� L  ik��  �  �  throws error if it fails   � ��� 0 t h r o w s   e r r o r   i f   i t   f a i l sr ��� l ll����  �  �  � ��� l ll����  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r  lw��� b  ls��� m  lo�� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o  or�� 
0 tunnel  � o      �� 0 titlemsg  � ��� Z  xm����� = x���� I  x����� 0 isapprunning isAppRunning�  �  o  y|�� 0 	cmdapprun 	cmdAppRun�  �  � m  �� �  Y e s� l �� k  ��  r  ��	
	 J  ��  m  �� �  R e s t a r t  m  �� �  E x i t   S S H - C h e c k � m  �� �  T u r n   O f f�  
 o      �
�
 0 btnopt btnOpt  r  �� b  �� o  ���	�	 0 program   m  �� � �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k o      �� 0 qmsg qMsg   r  ��!"! n  ��#$# 1  ���
� 
bhit$ l ��%��% I ���&'
� .sysodlogaskr        TEXT& o  ���� 0 qmsg qMsg' �()
� 
btns( o  ���� 0 btnopt btnOpt) � *+
�  
dflt* m  ��,, �--  E x i t   S S H - C h e c k+ ��.��
�� 
appr. o  ������ 0 titlemsg  ��  �  �  " o      ���� 
0 choice    /��/ Z  ��01230 = ��454 o  ������ 
0 choice  5 m  ��66 �77  R e s t a r t1 I  ����8����  0 killrunningapp killRunningApp8 9��9 o  ������ 0 
cmdappkill 
cmdAppKill��  ��  2 :;: = ��<=< o  ������ 
0 choice  = m  ��>> �??  T u r n   O f f; @��@ k  ��AA BCB I  ����D����  0 killrunningapp killRunningAppD E��E o  ������ 0 
cmdappkill 
cmdAppKill��  ��  C F��F L  ������  ��  ��  3 l ��GHIG L  ������  H  choice equals Cancel   I �JJ ( c h o i c e   e q u a l s   C a n c e l��   0 * should we kill & restart the running app?    �KK T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�  � k  �mLL MNM r  �OPO J  �QQ RSR m  ��TT �UU  L a u n c hS V��V m  �WW �XX  S t o p��  P o      ���� 0 btnopt btnOptN YZY r  #[\[ b  ]^] b  _`_ b  aba b  cdc m  ee �ff  S t a r t i n g  d o  ���� 0 program  b m  gg �hh    i n  ` o  ���� 0 	countdown  ^ m  ii �jj    s e c o n d s !\ o      ���� 0 qmsg qMsgZ k��k Q  $mlmnl k  'coo pqp r  'Rrsr n  'Ntut 1  JN��
�� 
bhitu l 'Jv����v I 'J��wx
�� .sysodlogaskr        TEXTw o  '*���� 0 qmsg qMsgx ��yz
�� 
btnsy o  -0���� 0 btnopt btnOptz ��{|
�� 
dflt{ m  36}} �~~  L a u n c h| ���
�� 
appr o  9<���� 0 titlemsg  � �����
�� 
givu� o  ?D���� 0 	countdown  ��  ��  ��  s o      ���� 0 yesorno yesOrNoq ���� Z  Sc������� = SZ��� o  SV���� 0 yesorno yesOrNo� m  VY�� ���  S t o p� L  ]_����  ��  ��  ��  m R      ������
�� .ascrerr ****      � ****��  ��  n L  km����  ��  � ��� l nn��������  ��  ��  � ��� l nn������  � ! Prepare to launch a program   � ��� 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m� ��� r  ny��� n  nu��� 1  qu��
�� 
psxp� l nq������ m  nq�� ���  / A p p l i c a t i o n s /��  ��  � o      ���� 0 apppath appPath� ��� l zz������  � &  msg("apppath: " &appPath, "Msg")   � ��� @ m s g ( " a p p p a t h :   "   & a p p P a t h ,   " M s g " )� ��� r  z���� I z������
�� .sysooffslong    ��� null��  � ����
�� 
psof� o  ~����� 0 program  � �����
�� 
psin� o  ������ 0 apppath appPath��  � o      ���� 0 
nameoffset 
nameOffset� ��� l ��������  � - 'msg("nameoffset" " & nameOffset, "Msg")   � ��� N m s g ( " n a m e o f f s e t "   "   &   n a m e O f f s e t ,   " M s g " )� ��� r  ����� n  ����� 7 ������
�� 
ctxt� m  ������ � l �������� \  ����� o  ������ 0 
nameoffset 
nameOffset� m  ������ ��  ��  � o  ������ 0 apppath appPath� o      ���� 0 
folderpath 
folderPath� ��� l ��������  � - 'msg("folderpath: " & folderPath, "Msg")   � ��� N m s g ( " f o l d e r p a t h :   "   &   f o l d e r P a t h ,   " M s g " )� ��� Q  ������ l ������ k  ���� ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� o  ������ 0 
folderpath 
folderPath� o  ������ 0 program  � m  ���� ���  . a p p� m  ���� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ������ ��  � ���� O ����� I ��������
�� .miscactvnull��� ��� null��  ��  � 4  �����
�� 
capp� o  ������ 0 program  ��  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      ������
�� .ascrerr ****      � ****��  ��  � I ������
�� .sysodlogaskr        TEXT� b  ����� m  ���� ���   E r r o r   l a u n c h i n g  � o  ������ 0 program  � �����
�� 
appr� m  ���� ���  E r r o r   0��  � ���� l ����������  ��  ��  ��  ��       ���   ! *���������  � ������������������������ 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 	countdown  
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  �� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****� �� 2��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ������ 0 these_items  �� 0 prog  �  @�� S���� `��
�� 
TEXT
�� 
txdl
�� 
citm
�� .aevtoappnull  �   � ****�� 3�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j � �� u���������� 0 resetprogram resetProgram��  ��  �  �  ��� b  �  b  EQc  Y h� �� ���������� 0 isapprunning isAppRunning�� �~��~ �  �}�} 0 cmd  ��  � �|�| 0 cmd  � �{�z�y�x � � �
�{ .sysoexecTEXT���     TEXT
�z 
rslt�y  �x  � ' �j  E�W 	X  �O�b   �Y �� �w ��v�u���t�w  0 killrunningapp killRunningApp�v �s��s �  �r�r 0 cmd  �u  � �q�q 0 cmd  � �p�o�n
�p .sysoexecTEXT���     TEXT�o  �n  �t  
�j  W 	X  h� �m ��l�k���j�m 0 msg  �l �i��i �  �h�g�h 
0 notice  �g 	0 title  �k  � �f�e�f 
0 notice  �e 	0 title  � �d�c�b�a
�d 
appr
�c .sysodlogaskr        TEXT�b  �a  �j  ��l W 	X  h� �` ��_�^���]�` 0 servicealive serviceAlive�_ �\��\ �  �[�[  0 openconnection openConnection�^  � �Z�Z  0 openconnection openConnection�  �] �b    kY j� �Y ��X�W���V
�Y .aevtoappnull  �   � ****�X  �W  �  � d�U�T ��S � ��R ��Q ��P	�O�N�M�L135�KCE�J[]_a�Ii�Ho�G�F�E�D�C����B�A�@�?��>���=�����<�;�:�9,�8�7�6�5�46>TWegi}�3�2�1���0�/�.�-�,�+�*�)�(���'�&�%���U 0 resetprogram resetProgram
�T 
rslt�S 0 ps  �R 0 grepprog grepProg�Q 0 grepdrop grepDrop�P 0 grepssh grepSSH�O 0 grepconnect grepConnect�N 0 awkone awkOne�M 0 awktwo awkTwo�L 	0 xkill  �K 0 cmdssh cmdSSH�J 0 	cmdapprun 	cmdAppRun�I 0 
cmdappkill 
cmdAppKill�H 
0 tunnel  �G 0 titlemsg  
�F .sysoexecTEXT���     TEXT
�E 
cpar
�D 
cobj�C 0 servicealive serviceAlive�B 0 msg  �A  �@  �? 0 isapprunning isAppRunning
�> 
bool�=  0 killrunningapp killRunningApp�< 0 btnopt btnOpt�; 0 qmsg qMsg
�: 
btns
�9 
dflt
�8 
appr�7 
�6 .sysodlogaskr        TEXT
�5 
bhit�4 
0 choice  
�3 
givu�2 �1 0 yesorno yesOrNo
�0 
psxp�/ 0 apppath appPath
�. 
psof
�- 
psin�, 
�+ .sysooffslong    ��� null�* 0 
nameoffset 
nameOffset
�) 
ctxt�( 0 
folderpath 
folderPath
�' .sysodelanull��� ��� nmbr
�& 
capp
�% .miscactvnull��� ��� null�V�*j+  OjvE�O�E�O�b  %�%E�O�E�O�E�O�b   %�%E�O�E�Oa E` Oa E` O�a %�%a %�%a %�%E` O�a %�%a %�%E` O�a %�%a %�%a %_ %a %_ %E` Oa  E` !Oa "E` #O R_ j $a %-a &l/E�O�EQ` !O*_ !k+ 'j  '*a (b  %a )%b   %a *%_ #l+ +OhY hW {X , -*_ k+ .a / 	 *_ !k+ 'j a 0& #*a 1b  %a 2%_ #l+ +O*_ k+ 3Y 2*_ !k+ 'j  $*a 4b  %a 5%b   %a 6%_ #l+ +Y hOhOa 7_ !%E` #O*_ k+ .a 8  va 9a :a ;mvE` <Ob  a =%E` >O_ >a ?_ <a @a Aa B_ #a C Da E,E` FO_ Fa G  *_ k+ 3Y _ Fa H  *_ k+ 3OhY hY ta Ia JlvE` <Oa Kb  %a L%b  %a M%E` >O A_ >a ?_ <a @a Na B_ #a Ob  a P Da E,E` QO_ Qa R  hY hW 	X , -hOa Sa T,E` UO*a Vb  a W_ Ua X YE` ZO_ U[a [\[Zk\Z_ Zk2E` \O 4_ \b  %a ]%a ^%j $Okj _O*a `b  / *j aUW X , -a bb  %a Ba cl DOP ascr  ��ޭ