FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.4.3
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
 	 V e r s i o n :   0 . 4 . 3 
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
 ���� 0 programbackup programBackup � o      ���� 0 program  ��  ��  ��   s  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 isapprunning isAppRunning��  ��   � k     . � �  � � � Q      � � � � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b    
 � � � m     � � � � �  p s   x   |   g r e p   � o    	���� 0 program   � m   
  � � � � � & . a p p   |   g r e p   - v   g r e p��   � 1      ��
�� 
rslt � R      ������
�� .ascrerr ****      � ****��  ��   � l    � � � � L     � � m     � � � � �  N o � C = if there was no grep match then the program is currently off    � � � � z   i f   t h e r e   w a s   n o   g r e p   m a t c h   t h e n   t h e   p r o g r a m   i s   c u r r e n t l y   o f f �  ��� � Z    . � ��� � � E    $ � � � 1    ��
�� 
rslt � o    #���� 0 program   � L   ' ) � � m   ' ( � � � � �  Y e s��   � L   , . � � m   , - � � � � �  N o��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      ��������  0 killrunningapp killRunningApp��  ��   � Q      � � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b    
 � � � m     � � � � �  p s   x   |   g r e p   � o    	���� 0 program   � m   
  � � � � � l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 msg   �  � � � o      ���� 
0 notice   �  ��� � o      ���� 	0 title  ��  ��   � Q      � � � � L     � � I   
�� � �
�� .sysodlogaskr        TEXT � o    ���� 
0 notice   � �� ���
�� 
appr � o    ���� 	0 title  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L    ����   �  � � � l     ��������  ��  ��   �  � � � i     # � � � I      �� ����� 0 servicealive serviceAlive �  ��� � o      ����  0 openconnection openConnection��  ��   � Z      � ��� � � E      � � � o     ����  0 openconnection openConnection � o    ���� 0 service   � L   
  � � m   
 ���� ��   � L     � � m    ����   �  � � � l     ��������  ��  ��   �  ��� � i   $ ' � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k    J � �  � � � I     ������� 0 resetprogram resetProgram��  �   �  � � � l   �~�}�|�~  �}  �|   �  � � � r    
 � � � J    �{�{   � 1      �z
�z 
rslt �  � � � r     � � � m     � � � � �   � o      �y�y 
0 tunnel   �  � � � r     � � � m     � � � � � ( S S H   S e r v i c e   i s   D o w n ! � o      �x�x 0 titlemsg   �  � � � Q    � � � � � l   ]   k    ]  r    ! b    	 b    

 m     � @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . * o    �w�w 0 service  	 m     � ( '   |   a w k   ' { p r i n t   $ 8 } ' o      �v�v 0 cmdssh cmdSSH  r   " . n   " , 4   ) ,�u
�u 
cobj m   * +�t�t  n   " ) 2  ' )�s
�s 
cpar l  " '�r�q I  " '�p�o
�p .sysoexecTEXT���     TEXT o   " #�n�n 0 cmdssh cmdSSH�o  �r  �q   1      �m
�m 
rslt  s   / 3 1   / 0�l
�l 
rslt o      �k�k 
0 tunnel   �j Z   4 ] !�i�h  =  4 <"#" I   4 :�g$�f�g 0 servicealive serviceAlive$ %�e% o   5 6�d�d 
0 tunnel  �e  �f  # m   : ;�c�c  ! k   ? Y&& '(' I   ? V�b)�a�b 0 msg  ) *+* b   @ Q,-, b   @ O./. b   @ I010 b   @ G232 m   @ A44 �55  D o n ' t   r u n  3 o   A F�`�` 0 program  1 m   G H66 �77 F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  / o   I N�_�_ 0 service  - m   O P88 �99  .+ :�^: o   Q R�]�] 0 titlemsg  �^  �a  ( ;�\; L   W Y�[�[  �\  �i  �h  �j   0 *check for ssh connected to defined service    �<< T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e � R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X   � l  e �=>?= k   e �@@ ABA Z   e �CDE�WC F   e }FGF =  e nHIH I   e j�V�U�T�V 0 isapprunning isAppRunning�U  �T  I m   j mJJ �KK  Y e sG =  q yLML I   q w�SN�R�S 0 servicealive serviceAliveN O�QO o   r s�P�P 
0 tunnel  �Q  �R  M m   w x�O�O  D k   � �PP QRQ I   � ��NS�M�N 0 msg  S TUT b   � �VWV b   � �XYX m   � �ZZ �[[ , I t   i s   n o t   s a f e   t o   r u n  Y o   � ��L�L 0 program  W m   � �\\ �]] H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !U ^�K^ o   � ��J�J 0 titlemsg  �K  �M  R _�I_ I   � ��H�G�F�H  0 killrunningapp killRunningApp�G  �F  �I  E `a` =  � �bcb I   � ��Ed�D�E 0 servicealive serviceAlived e�Ce o   � ��B�B 
0 tunnel  �C  �D  c m   � ��A�A  a f�@f I   � ��?g�>�? 0 msg  g hih b   � �jkj b   � �lml b   � �non b   � �pqp m   � �rr �ss  D o n ' t   r u n  q o   � ��=�= 0 program  o m   � �tt �uu F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  m o   � ��<�< 0 service  k m   � �vv �ww  .i x�;x o   � ��:�: 0 titlemsg  �;  �>  �@  �W  B y�9y L   � ��8�8  �9  >  throws error if it fails   ? �zz 0 t h r o w s   e r r o r   i f   i t   f a i l s � {|{ l  � ��7�6�5�7  �6  �5  | }~} l  � ��4��4   C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p~ ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � o   � ��3�3 
0 tunnel  � o      �2�2 0 titlemsg  � ��� Z   �����1�� =  � ���� I   � ��0�/�.�0 0 isapprunning isAppRunning�/  �.  � m   � ��� ���  Y e s� l  �I���� k   �I�� ��� r   � ���� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ��-� m   � ��� ���  T u r n   O f f�-  � o      �,�, 0 btnopt btnOpt� ��� r   � ���� b   � ���� o   � ��+�+ 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      �*�* 0 qmsg qMsg� ��� r   ���� n   ���� 1  �)
�) 
bhit� l  ���(�'� I  ��&��
�& .sysodlogaskr        TEXT� o   ��%�% 0 qmsg qMsg� �$��
�$ 
btns� o  �#�# 0 btnopt btnOpt� �"��
�" 
dflt� m  
�� ���  E x i t   S S H - C h e c k� �!�� 
�! 
appr� o  �� 0 titlemsg  �   �(  �'  � o      �� 
0 choice  � ��� Z   I����� =  '��� o   #�� 
0 choice  � m  #&�� ���  R e s t a r t� I  */����  0 killrunningapp killRunningApp�  �  � ��� = 29��� o  25�� 
0 choice  � m  58�� ���  T u r n   O f f� ��� k  <D�� ��� I  <A����  0 killrunningapp killRunningApp�  �  � ��� L  BD��  �  �  � l GI���� L  GI��  �  choice equals Cancel   � ��� ( c h o i c e   e q u a l s   C a n c e l�  � 0 * should we kill & restart the running app?   � ��� T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?�1  � k  L��� ��� r  LX��� J  LT�� ��� m  LO�� ���  L a u n c h� ��� m  OR�� ���  S t o p�  � o      �� 0 btnopt btnOpt� ��� r  Yt��� b  Yp��� b  Yl��� b  Yf��� b  Yb��� m  Y\�� ���  S t a r t i n g  � o  \a�� 0 program  � m  be�� ���    i n  � o  fk�� 0 	countdown  � m  lo�� ���    s e c o n d s !� o      �� 0 qmsg qMsg� ��� Q  u����� k  x��� ��� r  x���� n  x�   1  ���

�
 
bhit l x��	� I x��
� .sysodlogaskr        TEXT o  x{�� 0 qmsg qMsg �
� 
btns o  ~��� 0 btnopt btnOpt �
� 
dflt m  ��		 �

  L a u n c h �
� 
appr o  ���� 0 titlemsg   � ��
�  
givu o  ������ 0 	countdown  ��  �	  �  � o      ���� 0 yesorno yesOrNo� �� Z  ������ = �� o  ������ 0 yesorno yesOrNo m  �� �  S t o p L  ������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L  ������  �  �  l ����������  ��  ��    l ������   ! Prepare to launch a program    � 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m  r  �� n  �� !  1  ����
�� 
psxp! l ��"����" m  ��## �$$  / A p p l i c a t i o n s /��  ��   o      ���� 0 apppath appPath %&% l ����'(��  ' &  msg("apppath: " &appPath, "Msg")   ( �)) @ m s g ( " a p p p a t h :   "   & a p p P a t h ,   " M s g " )& *+* r  ��,-, I ������.
�� .sysooffslong    ��� null��  . ��/0
�� 
psof/ o  ������ 0 program  0 ��1��
�� 
psin1 o  ������ 0 apppath appPath��  - o      ���� 0 
nameoffset 
nameOffset+ 232 l ����45��  4 - 'msg("nameoffset" " & nameOffset, "Msg")   5 �66 N m s g ( " n a m e o f f s e t "   "   &   n a m e O f f s e t ,   " M s g " )3 787 r  ��9:9 n  ��;<; 7 ����=>
�� 
ctxt= m  ������ > l ��?����? \  ��@A@ o  ������ 0 
nameoffset 
nameOffsetA m  ������ ��  ��  < o  ������ 0 apppath appPath: o      ���� 0 
folderpath 
folderPath8 BCB l ����DE��  D - 'msg("folderpath: " & folderPath, "Msg")   E �FF N m s g ( " f o l d e r p a t h :   "   &   f o l d e r P a t h ,   " M s g " )C GHG Q  �HIJKI l �-LMNL k  �-OO PQP I ���R��
�� .sysoexecTEXT���     TEXTR b  �STS b  �UVU b  �WXW o  ����� 0 
folderpath 
folderPathX o  ���� 0 program  V m  
YY �ZZ  . a p pT m  [[ �\\ N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &��  Q ]^] I ��_��
�� .sysodelanull��� ��� nmbr_ m  ���� ��  ^ `��` O -aba I ',������
�� .miscactvnull��� ��� null��  ��  b 4  $��c
�� 
cappc o  #���� 0 program  ��  M ( "start program up in the background   N �dd D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n dJ R      ������
�� .ascrerr ****      � ****��  ��  K I 5H��ef
�� .sysodlogaskr        TEXTe b  5>ghg m  58ii �jj   E r r o r   l a u n c h i n g  h o  8=���� 0 program  f ��k��
�� 
apprk m  ADll �mm  E r r o r   0��  H n��n l II��������  ��  ��  ��  ��       ��o   ! *pqrstuv��  o ������������������������ 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 	countdown  
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  �� 0 servicealive serviceAlive
�� .aevtoappnull  �   � ****p �� 2����wx��
�� .aevtodocnull  �    alis�� 0 these_items  ��  w ������ 0 these_items  �� 0 prog  x  @�� S���� `��
�� 
TEXT
�� 
txdl
�� 
citm
�� .aevtoappnull  �   � ****�� 3�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j q �� u����yz���� 0 resetprogram resetProgram��  ��  y  z  ��� b  �  b  EQc  Y hr �� �����{|���� 0 isapprunning isAppRunning��  ��  {  | 	 � ��������� � � �
�� .sysoexecTEXT���     TEXT
�� 
rslt��  ��  �� / �b  %�%j E�W 	X  �O�b   �Y �s �� �����}~����  0 killrunningapp killRunningApp��  ��  }  ~  � �������
�� .sysoexecTEXT���     TEXT��  ��  ��  �b  %�%j W 	X  ht �� ���������� 0 msg  �� ����� �  ������ 
0 notice  �� 	0 title  ��   ������ 
0 notice  �� 	0 title  � ��������
�� 
appr
�� .sysodlogaskr        TEXT��  ��  ��  ��l W 	X  hu �� ����������� 0 servicealive serviceAlive�� ����� �  ����  0 openconnection openConnection��  � ����  0 openconnection openConnection�  �� �b    kY jv �� ���������
�� .aevtoappnull  �   � ****��  ��  �  � I��~ ��} ��|�{�z�y�x�w468�v�u�t�sJ�rZ\�qrtv������p��o�n�m��l�k�j�i�h�������	�g�f�e#�d�c�b�a�`�_�^�]�\Y[�[�Z�Yil� 0 resetprogram resetProgram
�~ 
rslt�} 
0 tunnel  �| 0 titlemsg  �{ 0 cmdssh cmdSSH
�z .sysoexecTEXT���     TEXT
�y 
cpar
�x 
cobj�w 0 servicealive serviceAlive�v 0 msg  �u  �t  �s 0 isapprunning isAppRunning
�r 
bool�q  0 killrunningapp killRunningApp�p 0 btnopt btnOpt�o 0 qmsg qMsg
�n 
btns
�m 
dflt
�l 
appr�k 
�j .sysodlogaskr        TEXT
�i 
bhit�h 
0 choice  
�g 
givu�f �e 0 yesorno yesOrNo
�d 
psxp�c 0 apppath appPath
�b 
psof
�a 
psin�` 
�_ .sysooffslong    ��� null�^ 0 
nameoffset 
nameOffset
�] 
ctxt�\ 0 
folderpath 
folderPath
�[ .sysodelanull��� ��� nmbr
�Z 
capp
�Y .miscactvnull��� ��� null��K*j+  OjvE�O�E�O�E�O L�b   %�%E�O�j 	�-�l/E�O�EQ�O*�k+ j  *�b  %�%b   %�%�l+ OhY hW mX  *j+ a  	 *�k+ j a & *a b  %a %�l+ O*j+ Y .*�k+ j  "*a b  %a %b   %a %�l+ Y hOhOa �%E�O*j+ a   na a a  mvE` !Ob  a "%E` #O_ #a $_ !a %a &a '�a ( )a *,E` +O_ +a ,  
*j+ Y _ +a -  *j+ OhY hY ra .a /lvE` !Oa 0b  %a 1%b  %a 2%E` #O ?_ #a $_ !a %a 3a '�a 4b  a 5 )a *,E` 6O_ 6a 7  hY hW 	X  hOa 8a 9,E` :O*a ;b  a <_ :a = >E` ?O_ :[a @\[Zk\Z_ ?k2E` AO 4_ Ab  %a B%a C%j 	Okj DO*a Eb  / *j FUW X  a Gb  %a 'a Hl )OPascr  ��ޭ