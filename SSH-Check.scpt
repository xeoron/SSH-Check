FasdUAS 1.101.10   ����  ��  ��       ��       	 
   ��    
���������������������� 0 service  �� 0 program  �� 0 programbackup programBackup�� 0 	countdown  
�� .aevtodocnull  �    alis�� 0 resetprogram resetProgram�� 0 isapprunning isAppRunning��  0 killrunningapp killRunningApp�� 0 msg  
�� .aevtoappnull  �   � ****  �    t u n n e l r . c o m  �    F i r e f o x  �    F i r e f o x  �    6  ��������  ��
�� .aevtodocnull  �    alis��  �� 0 these_items  ��    ������ 0 these_items  �� 0 prog     �� ���� ��  �    
�� 
TEXT  �    :
�� 
txdl
�� 
citm  �    .
�� .aevtoappnull  �   � ****�� 3�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j  	 ��������  ���� 0 resetprogram resetProgram��  ��  ��          �    �� b  �  b  EQc  Y h 
 ��������  ���� 0 isapprunning isAppRunning��  �� ��  ��     ���� 0 cmd  ��    ���� 0 cmd    �������� ! " #
�� .sysoexecTEXT���     TEXT
�� 
rslt��  ��   ! � $ $  N o " � % %  Y e s # � & &  N o�� ' �j  E�W 	X  �O�b   �Y �  �������� ' (����  0 killrunningapp killRunningApp��  �� �� )��  )  ���� 0 cmd  ��   ' ���� 0 cmd   ( ������
�� .sysoexecTEXT���     TEXT��  ��  ��  
�j  W 	X  h  �������� * +���� 0 msg  ��  �� �� ,��  ,  ���� 0 s  ��   * ���� 0 s   + �� -������
�� 
appr - � . . " S S H - C h e c k   M e s s a g e
�� .sysodlogaskr        TEXT��  ��  ��  ���l W 	X  h  �������� / 0��
�� .aevtoappnull  �   � ****��  ��  ��   /   0 d���� 1�� 2 3�� 4�� 5�� 6 7�� 8�� 9�� :�� ; < =�� > ?�� @ A B C�������� D E�� F G H�� I�������� J K L M�� N O P Q R�� S T U V�� W������ X������ Y Z [ \ ] ^ _ `������ a b������������������ c d������ e f�� 0 resetprogram resetProgram
�� 
rslt 1 � g g  p s   x�� 0 ps   2 � h h  g r e p   ' 3 � i i 
 . a p p '�� 0 grepprog grepProg 4 � j j  g r e p   - v   g r e p�� 0 grepdrop grepDrop 5 � k k  g r e p   - i   s s h�� 0 grepssh grepSSH 6 � l l  g r e p   ' . * @ . * 7 � m m  '�� 0 grepconnect grepConnect 8 � n n   a w k   ' { p r i n t   $ 8 } '�� 0 awkone awkOne 9 � o o   a w k   ' { p r i n t   $ 1 } '�� 0 awktwo awkTwo : � p p  x a r g s   k i l l   - 9�� 	0 xkill   ; � q q    |   < � r r    |   = � s s    |  �� 0 cmdssh cmdSSH > � t t    |   ? � u u    |  �� 0 	cmdapprun 	cmdAppRun @ � v v    |   A � w w    |   B � x x    |   C � y y    |  �� 0 
cmdappkill 
cmdAppKill
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj D � z z  x E � { {  
�� 
bool F � | |  D o n ' t   r u n   G � } } F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o   H � ~ ~  .
�� 
appr I �   ( S S H   S e r v i c e   i s   d o w n !
�� .sysodlogaskr        TEXT��  ��  �� 0 isapprunning isAppRunning J � � �  Y e s K � � � , I t   i s   n o t   s a f e   t o   r u n   L � � � H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " ! M � � � ( S S H   S e r v i c e   i s   d o w n !��  0 killrunningapp killRunningApp N � � �  D o n ' t   r u n   O � � � F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o   P � � �  . Q � � � ( S S H   S e r v i c e   i s   d o w n ! R � � � 4 A c t i v e   S S H   C o n n e c t i o n   t o :  �� 0 titlemsg   S � � �  Y e s T � � �  R e s t a r t U � � �  E x i t   S S H - C h e c k V � � �  T u r n   O f f�� 0 btnopt btnOpt W � � � �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k�� 0 qmsg qMsg
�� 
btns
�� 
dflt X � � �  E x i t   S S H - C h e c k�� 
�� 
bhit�� 
0 choice   Y � � �  R e s t a r t Z � � �  T u r n   O f f [ � � �  L a u n c h \ � � �  S t o p ] � � �  S t a r t i n g   ^ � � �    i n   _ � � �    s e c o n d s ! ` � � �  L a u n c h
�� 
givu�� �� 0 yesorno yesOrNo a � � �  S t o p b � � �  / A p p l i c a t i o n s /
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
folderPath c � � �  . a p p d � � � N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &
�� .sysodelanull��� ��� nmbr
�� 
capp
�� .miscactvnull��� ��� null e � � �   E r r o r   l a u n c h i n g   f � � �  E r r o r   0���*j+  OjvE�O�E�O�b  %�%E�O�E�O�E�O�b   %�%E�O�E�Oa E` Oa E` O�a %�%a %�%a %�%E` O�a %�%a %�%E` O�a %�%a %�%a %_ %a %_ %E` O T_ j  a !-a "l/E�O�a # 
 �a $ a %& )a &b  %a '%b   %a (%a )a *l +OhY hW ]X , -*_ k+ .a /  %a 0b  %a 1%a )a 2l +O*_ k+ 3Y #a 4b  %a 5%b   %a 6%a )a 7l +OhOa 8�%E` 9O*_ k+ .a :  va ;a <a =mvE` >Ob  a ?%E` @O_ @a A_ >a Ba Ca )_ 9a D +a E,E` FO_ Fa G  *_ k+ 3Y _ Fa H  *_ k+ 3OhY hY ta Ia JlvE` >Oa Kb  %a L%b  %a M%E` @O A_ @a A_ >a Ba Na )_ 9a Ob  a P +a E,E` QO_ Qa R  hY hW 	X , -hOa Sa T,E` UO*a Vb  a W_ Ua X YE` ZO_ U[a [\[Zk\Z_ Zk2E` \O 4_ \b  %a ]%a ^%j  Okj _O*a `b  / *j aUW X , -a bb  %a )a cl +OPascr  ��ޭ