FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ! /usr/bin/osascript     � 	 	 ( !   / u s r / b i n / o s a s c r i p t   
  
 l      ��  ��   ��
	Name: SSH-Check
	Version: 0.5.5
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
 	 V e r s i o n :   0 . 5 . 5 
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
      l     ��������  ��  ��        j     �� �� 0 service    m        �    t u n n e l r . c o m      j    �� �� 0 program    m       �    F i r e f o x      l          j    ��  �� 0 programbackup programBackup   m     ! ! � " "  F i r e f o x  ' !don't remove to overt droplet bug     � # # B d o n ' t   r e m o v e   t o   o v e r t   d r o p l e t   b u g   $ % $ l     ��������  ��  ��   %  & ' & l      ( ) * ( j   	 �� +�� 0 	countdown   + m   	 
 , , � - -  6 )  time out in seconds    * � . . & t i m e   o u t   i n   s e c o n d s '  / 0 / j    �� 1�� 0 dnclocation DNCLocation 1 m     2 2 � 3 3 T ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 0  4 5 4 j    �� 6�� 0 dnca DNCA 6 m     7 7 � 8 8 x ~ / L i b r a r y / A u t o m a t o r / D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t . a c t i o n 5  9 : 9 l      ; < = ; j    �� >�� *0 displaynoticecenter DisplayNoticeCenter > m    ��
�� boovfals < a [script switchings to true when running on OS X.8 or higher & if "DNCLocation & DNCA" exists    = � ? ? � s c r i p t   s w i t c h i n g s   t o   t r u e   w h e n   r u n n i n g   o n   O S   X . 8   o r   h i g h e r   &   i f   " D N C L o c a t i o n   &   D N C A "   e x i s t s :  @ A @ l     ��������  ��  ��   A  B C B i     D E D I     �� F��
�� .aevtodocnull  �    alis F o      ���� 0 these_items  ��   E k     W G G  H I H l      �� J K��   J�� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code     K � L L   t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e   I  M N M l     ��������  ��  ��   N  O P O r      Q R Q m      S S � T T   R o      ���� 0 prog   P  U V U r    	 W X W c     Y Z Y o    ���� 0 these_items   Z m    ��
�� 
TEXT X o      ���� 0 prog   V  [ \ [ l  
 
��������  ��  ��   \  ] ^ ] l  
 
�� _ `��   _ d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    ` � a a � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e ^  b c b r   
  d e d m   
  f f � g g  : e 1    ��
�� 
txdl c  h i h r     j k j n     l m l 4    �� n
�� 
citm n m    ����  m o    ���� 0 prog   k o      ���� 0 prog   i  o p o r     q r q m     s s � t t  . r 1    ��
�� 
txdl p  u v u r    # w x w n    ! y z y 4    !�� {
�� 
citm { m     ����  z o    ���� 0 prog   x o      ���� 0 prog   v  | } | s   $ , ~  ~ o   $ %���� 0 prog    o      ���� 0 program   }  � � � l  - -��������  ��  ��   �  � � � I   - 2�������� 0 
setdisplay 
setDisplay��  ��   �  � � � I   3 G�� ����� 0 msg   �  � � � m   4 5 � � � � �  S S H - C h e c K �  � � � b   5 < � � � m   5 6 � � � � �  S e t t i n g   � o   6 ;���� 0 program   �  ��� � b   < C � � � m   < = � � � � � & N o w   s e t   t o   s t a r t u p   � o   = B���� 0 program  ��  ��   �  � � � I  H Q�� ���
�� .sysodelanull��� ��� nmbr � o   H M���� 0 	countdown  ��   �  ��� � I  R W������
�� .aevtoappnull  �   � ****��  ��  ��   C  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 resetprogram resetProgram��  ��   � k     $ � �  � � � l     �� � ���   � * $fix empty list and stops droplet bug    � � � � H f i x   e m p t y   l i s t   a n d   s t o p s   d r o p l e t   b u g �  � � � l     ��������  ��  ��   �  � � � Z      � ����� � =     � � � o     ���� 0 program   � m     � � � � �   � s   
  � � � o   
 ���� 0 programbackup programBackup � o      ���� 0 program  ��  ��   �  � � � r    " � � � m    ��
�� boovfals � o      ���� *0 displaynoticecenter DisplayNoticeCenter �  ��� � l  # #��������  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �������� 0 getosxnumber getOSXNumber��  ��   � k      � �  � � � r      � � � m      � � � � �  . � 1    ��
�� 
txdl �  ��� � L     � � l    ����� � c     � � � l    ����� � n     � � � 4    �� �
�� 
citm � m    ����  � l    ����� � n     � � � 1    ��
�� 
sisv � l    ����� � I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   � m    ��
�� 
nmbr��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i   ! $ � � � I      �������� 0 
setdisplay 
setDisplay��  ��   � Z     = � ��� � � F     ) � � � F      � � � @      � � � I     �������� 0 getosxnumber getOSXNumber��  ��   � m    ����  � =  
  � � � I   
 �� ����� 0 
fileexists 
FileExists �  ��� � o    ���� 0 dnclocation DNCLocation��  ��   � m    ��
�� boovtrue � =   ' � � � I    %�� ����� 0 
fileexists 
FileExists �  ��� � o    !�� 0 dnca DNCA��  ��   � m   % &�~
�~ boovtrue � r   , 3 � � � m   , -�}
�} boovtrue � o      �|�| *0 displaynoticecenter DisplayNoticeCenter��   � r   6 = � � � m   6 7�{
�{ boovfals � o      �z�z *0 displaynoticecenter DisplayNoticeCenter �  � � � l     �y�x�w�y  �x  �w   �  � � � i   % ( � � � I      �v ��u�v 0 
fileexists 
FileExists �  ��t � o      �s�s 0 thefile theFile�t  �u   � k      � �  � � � O      � � � Z     � ��r�q � I   �p ��o
�p .coredoexbool       obj  � 4    �n �
�n 
file � o    �m�m 0 thefile theFile�o   � L     � � m    �l
�l boovtrue�r  �q   � m      � ��                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �  ��k � L       m    �j
�j boovfals�k   �  l     �i�h�g�i  �h  �g    i   ) , I      �f�e�f 0 folderexists FolderExists �d o      �c�c 0 	thefolder 	theFolder�d  �e   k     		 

 O      Z    �b�a I   �`�_
�` .coredoexbool       obj  4    �^
�^ 
cfol o    �]�] 0 	thefolder 	theFolder�_   L     m    �\
�\ boovtrue�b  �a   m     �                                                                                  sevs  alis    �  Thneed                     �lpH+     NSystem Events.app                                               0��Ɖ        ����  	                CoreServices    �l�U      ���       N   H   G  7Thneed:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    T h n e e d  -System/Library/CoreServices/System Events.app   / ��   �[ L     m    �Z
�Z boovfals�[    l     �Y�X�W�Y  �X  �W    i   - 0 I      �V�U�T�V $0 sshchecksettings sshCheckSettings�U  �T   l   ^ k    ^  !  l     �S"#�S  " \ VCheck to see if ~/.ssh-check and DNCLocation exists, and if not, then it installs them   # �$$ � C h e c k   t o   s e e   i f   ~ / . s s h - c h e c k   a n d   D N C L o c a t i o n   e x i s t s ,   a n d   i f   n o t ,   t h e n   i t   i n s t a l l s   t h e m! %&% l     �R'(�R  ' s mNote: installing DNCA automaticly just does not seem to work, yet, so the user has to download and install it   ( �)) � N o t e :   i n s t a l l i n g   D N C A   a u t o m a t i c l y   j u s t   d o e s   n o t   s e e m   t o   w o r k ,   y e t ,   s o   t h e   u s e r   h a s   t o   d o w n l o a d   a n d   i n s t a l l   i t& *+* Z     =,-.�Q, l    /�P�O/ A     010 I     �N�M�L�N 0 getosxnumber getOSXNumber�M  �L  1 m    �K�K �P  �O  - l  
 2342 L   
 55 o   
 �J�J 	0 fslse  3   OSX.7 Lion: or lower   4 �66 *   O S X . 7   L i o n :   o r   l o w e r. 787 F    '9:9 =   ;<; I    �I=�H�I 0 
fileexists 
FileExists= >�G> o    �F�F 0 dnca DNCA�G  �H  < m    �E
�E boovfals: @    %?@? I    #�D�C�B�D 0 getosxnumber getOSXNumber�C  �B  @ m   # $�A�A 8 A�@A k   * 9BB CDC I   * 6�?E�>�? 0 msg  E FGF o   + 0�=�= 0 dnca DNCAG HIH m   0 1JJ �KK  I L�<L m   1 2MM �NN@ a u t o m a t o r   n o t i f i c a t i o n   i s   n o t   i n s t a l l e d .   G e t   a   c o p y   h e r e :   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 /�<  �>  D O�;O L   7 9PP m   7 8�:
�: boovfals�;  �@  �Q  + QRQ l  > >�9�8�7�9  �8  �7  R STS r   > AUVU m   > ?WW �XX  . s s h - c h e c kV o      �6�6 0 configfolder configFolderT YZY r   B G[\[ b   B E]^] m   B C__ �``  ~ /^ o   C D�5�5 0 configfolder configFolder\ o      �4�4 0 
configpath 
configPathZ aba l  H H�3�2�1�3  �2  �1  b cdc Z   H[ef�0�/e G   H aghg =  H Piji I   H N�.k�-�. 0 folderexists FolderExistsk l�,l o   I J�+�+ 0 
configpath 
configPath�,  �-  j m   N O�*
�* boovfalsh =  S _mnm I   S ]�)o�(�) 0 
fileexists 
FileExistso p�'p o   T Y�&�& 0 dnclocation DNCLocation�'  �(  n m   ] ^�%
�% boovfalsf k   dWqq rsr l  d d�$tu�$  t � {# Note: curling for now, but might start stuffing the workflow folder inside SSH-Check binary to remove a point of failure    u �vv � #   N o t e :   c u r l i n g   f o r   n o w ,   b u t   m i g h t   s t a r t   s t u f f i n g   t h e   w o r k f l o w   f o l d e r   i n s i d e   S S H - C h e c k   b i n a r y   t o   r e m o v e   a   p o i n t   o f   f a i l u r e  s wxw r   d kyzy b   d i{|{ b   d g}~} m   d e ���  m k d i r   - p~ 1   e f�#
�# 
spac| o   g h�"�" 0 
configpath 
configPathz o      �!�! 0 cmdmakepath cmdMakePathx ��� r   l s��� b   l q��� b   l o��� m   l m�� ���  c d  � o   m n� �  0 
configpath 
configPath� m   o p�� ���    & &  � o      �� 
0 mypath  � ��� r   t w��� m   t u�� ���  d n . w o r k f l o w . z i p� o      �� 0 
dnworkflow 
DNWorkflow� ��� r   x ���� b   x ���� b   x ��� b   x }��� b   x {��� o   x y�� 
0 mypath  � m   y z�� ���  c u r l   - L   - o  � o   { |�� 0 
dnworkflow 
DNWorkflow� 1   } ~�
� 
spac� n    ���� 1   � ��
� 
strq� m    ��� ��� � h t t p s : / / g i t h u b . c o m / x e o r o n / S S H - C h e c k / b l o b / m a s t e r / i n s t a l l / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w . z i p ? r a w = t r u e� o      �� 0 cmdcurl cmdCurl� ��� r   � ���� b   � ���� o   � ��� 
0 mypath  � m   � ��� ��� 0 u n z i p   - u   d n . w o r k f l o w . z i p� o      �� 0 cmdunzip cmdUnzip� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��� 
0 mypath  � m   � ��� ���   r m   - r f   _ _ M A C O S X /� 1   � ��
� 
spac� o   � ��� 0 
dnworkflow 
DNWorkflow� o      �� 0 
cmdcleanup 
cmdCleanUp� ��� l  � �����  � * $msg("cmdmakepath:", "", cmdMakePath)   � ��� H m s g ( " c m d m a k e p a t h : " ,   " " ,   c m d M a k e P a t h )� ��� l  � �����  � " msg("cmdCurl:", "", cmdCurl)   � ��� 8 m s g ( " c m d C u r l : " ,   " " ,   c m d C u r l )� ��� l  � �����  � # msg("cmdUnzip", "", cmdUnzip)   � ��� : m s g ( " c m d U n z i p " ,   " " ,   c m d U n z i p )� ��� l  � �����  � ( "msg("cmdCleanup", "", cmdCleanUp)	   � ��� D m s g ( " c m d C l e a n u p " ,   " " ,   c m d C l e a n U p ) 	� ��� l  � �����  �  �  � ��� Q   ����� k   � ��� ��� Z   � �����
� =  � ���� I   � ��	���	 0 folderexists FolderExists� ��� o   � ��� 0 
configpath 
configPath�  �  � m   � ��
� boovfals� I  � ����
� .sysoexecTEXT���     TEXT� o   � ��� 0 cmdmakepath cmdMakePath�  �  �
  � ��� l  � ��� ���  �   ��  � ���� Z   � �������� F   � ���� =  � ���� I   � �������� 0 folderexists FolderExists� ���� o   � ����� 0 
configpath 
configPath��  ��  � m   � ���
�� boovtrue� =  � ���� I   � �������� 0 
fileexists 
FileExists� ���� o   � ����� 0 dnclocation DNCLocation��  ��  � m   � ���
�� boovfals� k   � ��� ��� I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 cmdcurl cmdCurl��  � ���� Z   � �������� =  � ���� I   � �������� 0 
fileexists 
FileExists� ���� b   � ���� b   � ���� o   � ����� 0 
configpath 
configPath� m   � ��� ���  /� o   � ����� 0 
dnworkflow 
DNWorkflow��  ��  � m   � ���
�� boovtrue� k   � ��� � � I  � �����
�� .sysoexecTEXT���     TEXT o   � ����� 0 cmdunzip cmdUnzip��    �� I  � �����
�� .sysoexecTEXT���     TEXT o   � ����� 0 
cmdcleanup 
cmdCleanUp��  ��  ��  ��  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k    I  ������ 0 msg   	 m  

 � " F a i l e d   s e t t i n g   u p	  m   �   �� o  ���� 0 
configpath 
configPath��  ��   �� L   m  ��
�� boovfals��  �  Z  T���� =   I  ������ 0 
fileexists 
FileExists �� o  ���� 0 dnclocation DNCLocation��  ��   m  ��
�� boovtrue k  #P  I  #(�������� 0 
setdisplay 
setDisplay��  ��    Z  )M !����  = )0"#" o  ).���� *0 displaynoticecenter DisplayNoticeCenter# m  ./��
�� boovtrue! k  3I$$ %&% I  3?��'���� 0 msg  ' ()( m  47** �++   S S H - C h e c k :   S e t u p) ,-, o  78���� 0 
configpath 
configPath- .��. m  8;// �00  D N C   i s   a c t i v e !��  ��  & 1��1 I @I��2��
�� .sysodelanull��� ��� nmbr2 o  @E���� 0 	countdown  ��  ��  ��  ��   3��3 L  NP44 m  NO��
�� boovtrue��  ��  ��   5��5 L  UW66 m  UV��
�� boovfals��  �0  �/  d 7��7 L  \^88 m  \]��
�� boovtrue��    return bool    �99  r e t u r n   b o o l :;: l     ��������  ��  ��  ; <=< i   1 4>?> I      ��@���� 
0 notify  @ ABA o      ���� 	0 title  B CDC o      ���� 0 subtitle  D E��E o      ���� 0 message  ��  ��  ? k     �FF GHG l      ��IJ��  I 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
    J �KK   	 O S   X   8 +   m a k e   u s e   o f   S y s t e m   N o t i f a c a t i o n   C e n t e r 
   R e q u i r e s :   S E T U P   
   	 1 )   a u t o m a t i o n   w o r k f l o w   t o   b e   i n s t a l l e d   f r o m   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m / 2 0 1 2 / 0 8 / 2 6 / d i s p l a y - n o t i f i c a t i o n - c e n t e r - a l e r t - a u t o m a t o r - a c t i o n - 1 - 0 - 0 / 
 	 2 )   C r e a t e   a   n e w   w o r k f l o w   i n   A u t o m a t o r   c o n t a i n i n g   o n l y   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 3 )   I n   t h e   v a r i a b l e s   s e c t i o n   a t   t h e   b o t t o m   o f   t h e   w o r k f l o w   c o n s t r u c t i o n   a r e a   i n   A u t o m a t o r ' s   w i n d o w ,   c r e a t e   t h r e e   v a r i a b l e s   n a m e d   t i t l e ,   s u b t i t l e ,   a n d   m e s s a g e . 
 	 4 )   G i v e   m e s s a g e   a   d e f a u l t   v a l u e   l i k e   " N o t i f i c a t i o n   s e n t . "   Y o u   c a n   l e a v e   t h e   d e f a u l t   v a l u e s   o t h e r   t w o   b l a n k . 
 	 5 )   D r a g   e a c h   v a r i a b l e   t o   i t s   c o r r e s p o n d i n g   f i e l d   i n   t h e   D i s p l a y   N o t i f i c a t i o n   C e n t e r   A l e r t   a c t i o n . 
 	 6 )   S a v e   t h e   w o r k f l o w   a s   D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w .   A   g o o d   p l a c e   t o   s a v e   i t   i s   i n   ~ / . s s h - c h e c k   ( c r e a t e   t h e   f o l d e r   i f   n e c e s s a r y ) . 
 
 	 N o w   y o u   c a n   d i s p l a y   a   n o t i f i c a t i o n   f r o m   t h e   c o m m a n d   l i n e   u s i n g   t h e   f o l l o w i n g   c o m m a n d : 
 	 	 a u t o m a t o r   - D   t i t l e = ' T i t l e   t e x t '   - D   s u b t i t l e = ' S u b t i t l e   t e x t '   - D   m e s s a g e = ' M e s s a g e   t e x t '   ~ / . s s h - c h e c k / D i s p l a y _ N o t i f i c a t i o n . w o r k f l o w 
  H LML l     ��������  ��  ��  M NON Z    PQ����P >    RSR c     TUT o     ���� 	0 title  U m    ��
�� 
ctxtS m    VV �WW  Q r    XYX b    Z[Z m    	\\ �]]    - D   t i t l e =[ n   	 ^_^ 1    ��
�� 
strq_ l  	 `����` c   	 aba o   	 
���� 	0 title  b m   
 ��
�� 
ctxt��  ��  Y o      ���� 	0 title  ��  ��  O cdc Z   +ef����e >   ghg c    iji o    ���� 0 subtitle  j m    ��
�� 
ctxth m    kk �ll  f r    'mnm b    %opo m    qq �rr    - D   s u b t i t l e =p n    $sts 1   " $��
�� 
strqt l   "u����u c    "vwv o     ���� 0 subtitle  w m     !��
�� 
ctxt��  ��  n o      ���� 0 subtitle  ��  ��  d xyx Z  , Az{����z >  , 1|}| c   , /~~ o   , -���� 0 message   m   - .��
�� 
ctxt} m   / 0�� ���  { r   4 =��� b   4 ;��� m   4 5�� ���    - D   m e s s a g e =� n   5 :��� 1   8 :��
�� 
strq� l  5 8������ c   5 8��� o   5 6���� 0 message  � m   6 7��
�� 
ctxt��  ��  � o      ���� 0 message  ��  ��  y ���� Q   B ����� I  E b�����
�� .sysoexecTEXT���     TEXT� b   E ^��� b   E \��� b   E Z��� b   E T��� b   E R��� b   E P��� b   E N��� b   E L��� b   E J��� b   E H��� m   E F�� ���  a u t o m a t o r� 1   F G��
�� 
spac� o   H I���� 	0 title  � 1   J K��
�� 
spac� o   L M���� 0 subtitle  � 1   N O��
�� 
spac� o   P Q���� 0 message  � 1   R S��
�� 
spac� o   T Y���� 0 dnclocation DNCLocation� 1   Z [��
�� 
spac� m   \ ]�� ���  2 > / d e v / n u l l��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   j ��� ��� r   j q��� m   j k�� ��� 
 f a l s e� o      �� *0 displaynoticecenter DisplayNoticeCenter� ��~� I   r ��}��|�} 0 msg  � ��� m   s t�� ���   S S H - C h e c k :   E r r o r� ��� m   t w�� ���  � ��{� b   w ���� m   w z�� ��� � U n a b l e   t o   c o m m i n u c a t e   w i t h   t h e   N o t i f a c a t i o n   C e n t e r   a u t o m a t o r   w o r k f l o w   a c t i o n :  � o   z �z�z 0 dnclocation DNCLocation�{  �|  �~  ��  = ��� l     �y�x�w�y  �x  �w  � ��� i   5 8��� I      �v��u�v 0 msg  � ��� o      �t�t 	0 title  � ��� o      �s�s 0 subtitle  � ��r� o      �q�q 0 message  �r  �u  � Z     *���p�� =    ��� o     �o�o *0 displaynoticecenter DisplayNoticeCenter� m    �n
�n boovtrue� l  
 ���� I   
 �m��l�m 
0 notify  � ��� o    �k�k 	0 title  � ��� o    �j�j 0 subtitle  � ��i� o    �h�h 0 message  �i  �l  � $  use OS X Noticafaction Center   � ��� <   u s e   O S   X   N o t i c a f a c t i o n   C e n t e r�p  � Q    *���� L     �� I   �g��
�g .sysodlogaskr        TEXT� o    �f�f 0 message  � �e��d
�e 
appr� o    �c�c 	0 title  �d  � R      �b�a�`
�b .ascrerr ****      � ****�a  �`  � L   ( *�_�_  � ��� l     �^�]�\�^  �]  �\  � ��� i   9 <��� I      �[�Z�Y�[ 0 isapprunning isAppRunning�Z  �Y  � k     *�� ��� Q     '���� O    ��� Z    ���X�W� =   ��� n    ��� 1    �V
�V 
prun�  g    � m    �U
�U boovtrue� L    �� m    �T
�T boovtrue�X  �W  � 4    �S�
�S 
capp� o    
�R�R 0 program  � R      �Q�P�O
�Q .ascrerr ****      � ****�P  �O  � L   % '�� m   % &�N
�N boovfals� ��M� L   ( *�� m   ( )�L
�L boovfals�M  � ��� l     �K�J�I�K  �J  �I  � ��� i   = @� � I      �H�G�F�H  0 killrunningapp killRunningApp�G  �F    Q     5 O      l    Z    	
�E�D	 =    n     1    �C
�C 
prun  g     m    �B
�B boovtrue
 I   �A�@�?
�A .aevtquitnull��� ��� null�@  �?  �E  �D   ' ! doesn't automatically launch app    � B   d o e s n ' t   a u t o m a t i c a l l y   l a u n c h   a p p 4    �>
�> 
capp o    
�=�= 0 program   R      �<�;�:
�< .ascrerr ****      � ****�;  �:   I  ( 5�9�8
�9 .sysoexecTEXT���     TEXT b   ( 1 b   ( / m   ( ) �  p s   x   |   g r e p   o   ) .�7�7 0 program   m   / 0 � l . a p p   |   g r e p   - v   g r e p   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   k i l l   - 9�8  �  l     �6�5�4�6  �5  �4    i   A D I      �3�2�1�3 0 servicealive serviceAlive�2  �1   Q     < !"  l   2#$%# k    2&& '(' r    )*) b    +,+ b    
-.- m    // �00 @ p s   x   |   g r e p   - i   s s h   |   g r e p   ' . * @ . *. o    	�0�0 0 service  , m   
 11 �22 ( '   |   a w k   ' { p r i n t   $ 8 } '* o      �/�/ 0 cmdssh cmdSSH( 343 r    565 n    787 4    �.9
�. 
cobj9 m    �-�- 8 n    :;: 2   �,
�, 
cpar; l   <�+�*< I   �)=�(
�) .sysoexecTEXT���     TEXT= o    �'�' 0 cmdssh cmdSSH�(  �+  �*  6 o      �&�& 
0 sshcon  4 >?> s     @A@ o    �%�% 
0 sshcon  A o      �$�$ 
0 tunnel  ? B�#B Z   ! 2CD�"EC E   ! (FGF o   ! "�!�! 
0 tunnel  G o   " '� �  0 service  D L   + -HH o   + ,�� 
0 tunnel  �"  E L   0 2II m   0 1��  �#  $ 0 *check for ssh connected to defined service   % �JJ T c h e c k   f o r   s s h   c o n n e c t e d   t o   d e f i n e d   s e r v i c e! R      ���
� .ascrerr ****      � ****�  �  " L   : <KK m   : ;��   LML l     ����  �  �  M N�N i   E HOPO I     ���
� .aevtoappnull  �   � ****�  �  P k    HQQ RSR I     ���� 0 resetprogram resetProgram�  �  S TUT I    ���� $0 sshchecksettings sshCheckSettings�  �  U VWV I    ���
� 0 
setdisplay 
setDisplay�  �
  W XYX l   �	���	  �  �  Y Z[Z r    \]\ m    ^^ �__ ( S S H   S e r v i c e   i s   D o w n !] o      �� 0 titlemsg  [ `a` Z    �bcd�b F    )efe =   ghg I    ���� 0 isapprunning isAppRunning�  �  h m    �
� boovtruef =    'iji I     %� �����  0 servicealive serviceAlive��  ��  j m   % &����  c k   , Okk lml r   , 7non b   , 5pqp b   , 3rsr m   , -tt �uu , I t   i s   n o t   s a f e   t o   r u n  s o   - 2���� 0 program  q m   3 4vv �ww H .   F o r c e   i t   t o   q u i t   b y   p r e s s i n g   " O K " !o o      ���� 0 message  m xyx I   8 F��z���� 0 msg  z {|{ o   9 :���� 0 titlemsg  | }~} b   : A� m   : ;�� ���  W a r n i n g  � o   ; @���� 0 service  ~ ���� o   A B���� 0 message  ��  ��  y ��� I   G L��������  0 killrunningapp killRunningApp��  ��  � ���� l  M O���� L   M O����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  d ��� =  R Y��� I   R W�������� 0 servicealive serviceAlive��  ��  � m   W X����  � ���� k   \ ��� ��� I   \ ~������� 0 msg  � ��� o   ] ^���� 0 titlemsg  � ��� b   ^ e��� m   ^ _�� ���  W a r n i n g   a b o u t  � o   _ d���� 0 service  � ���� b   e z��� b   e v��� b   e p��� b   e l��� m   e f�� ���  D o n ' t   r u n  � o   f k���� 0 program  � m   l o�� ��� F ,   b e c a u s e   t h e r e ' s   n o   c o n n e c t i o n   t o  � o   p u���� 0 service  � m   v y�� ���  .��  ��  � ���� l   ����� L    �����  �  exit SSH-Check   � ���  e x i t   S S H - C h e c k��  ��  �  a ��� l  � ���������  ��  ��  � ��� l  � �������  � C =Ask if you want to run your program, kill it, or quietly stop   � ��� z A s k   i f   y o u   w a n t   t o   r u n   y o u r   p r o g r a m ,   k i l l   i t ,   o r   q u i e t l y   s t o p� ��� r   � ���� b   � ���� m   � ��� ��� 4 A c t i v e   S S H   C o n n e c t i o n   t o :  � I   � ��������� 0 servicealive serviceAlive��  ��  � o      ���� 0 titlemsg  � ��� Z   �������� =  � ���� I   � ��������� 0 isapprunning isAppRunning��  ��  � m   � ���
�� boovtrue� l  ����� k   ��� ��� r   � ���� J   � ��� ��� m   � ��� ���  R e s t a r t� ��� m   � ��� ���  E x i t   S S H - C h e c k� ���� m   � ��� ���  T u r n   O f f��  � o      ���� 0 btnopt btnOpt� ��� r   � ���� b   � ���� o   � ����� 0 program  � m   � ��� ��� �   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� o      ���� 0 qmsg qMsg� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 qmsg qMsg� ����
�� 
btns� o   � ����� 0 btnopt btnOpt� ����
�� 
dflt� m   � ��� ���  E x i t   S S H - C h e c k� �����
�� 
appr� o   � ����� 0 titlemsg  ��  ��  ��  � o      ���� 
0 choice  � ���� Z   ������ =  � ���� o   � ����� 
0 choice  � m   � ��� ���  R e s t a r t� I   � ���������  0 killrunningapp killRunningApp��  ��  � ��� =  � ���� o   � ����� 
0 choice  � m   � ��� �    T u r n   O f f� �� k   �   I   � ���������  0 killrunningapp killRunningApp��  ��   �� l  �  L   � ����    exit SSH-Check    �		  e x i t   S S H - C h e c k��  ��  � l 

 l  L  ����    exit SSH-Check    �  e x i t   S S H - C h e c k  choice equals Cancel    � ( c h o i c e   e q u a l s   C a n c e l��  � 0 * should we kill & restart the running app?   � � T   s h o u l d   w e   k i l l   &   r e s t a r t   t h e   r u n n i n g   a p p ?��  � k  �  r   b   m   �  S t a r t i n g   o  ���� 0 program   o      ���� 0 qmsg qMsg �� Z  ��� =  !  o  ���� *0 displaynoticecenter DisplayNoticeCenter! m  ��
�� boovtrue k   L"" #$# I   @��%���� 0 msg  % &'& m  !$(( �))  S S H - C h e c k' *+* I  $)�������� 0 servicealive serviceAlive��  ��  + ,��, b  )<-.- b  )8/0/ b  )0121 o  ),���� 0 qmsg qMsg2 m  ,/33 �44    i n  0 l 075����5 ^  07676 o  05���� 0 	countdown  7 m  56���� ��  ��  . m  8;88 �99    s e c o n d s !��  ��  $ :��: I AL��;��
�� .sysodelanull��� ��� nmbr; l AH<����< ^  AH=>= o  AF���� 0 	countdown  > m  FG���� ��  ��  ��  ��  ��   k  O�?? @A@ r  O[BCB J  OWDD EFE m  ORGG �HH  L a u n c hF I��I m  RUJJ �KK  S t o p��  C o      ���� 0 btnopt btnOptA L��L Q  \�MNOM k  _�PP QRQ r  _tSTS b  _pUVU b  _lWXW b  _fYZY o  _b���� 0 qmsg qMsgZ m  be[[ �\\    i n  X o  fk���� 0 	countdown  V m  lo]] �^^    s e c o n d s !T o      ���� 0 qmsg qMsgR _`_ r  u�aba n  u�cdc 1  ����
�� 
bhitd l u�e����e I u���fg
�� .sysodlogaskr        TEXTf o  ux���� 0 qmsg qMsgg ��hi
�� 
btnsh o  {~���� 0 btnopt btnOpti ��jk
�� 
dfltj m  ��ll �mm  L a u n c hk ��no
�� 
apprn o  ������ 0 titlemsg  o ��p��
�� 
givup o  ������ 0 	countdown  ��  ��  ��  b o      ���� 0 yesorno yesOrNo` q��q Z  ��rs����r = ��tut o  ������ 0 yesorno yesOrNou m  ��vv �ww  S t o ps L  ������  ��  ��  ��  N R      ������
�� .ascrerr ****      � ****��  ��  O L  ������  ��  ��  � xyx l ����������  ��  ��  y z{z l ���|}�  | ! Prepare to launch a program   } �~~ 6 P r e p a r e   t o   l a u n c h   a   p r o g r a m{ � r  ����� n  ����� 1  ���~
�~ 
psxp� l ����}�|� m  ���� ���  / A p p l i c a t i o n s /�}  �|  � o      �{�{ 0 apppath appPath� ��� l ���z���z  � 0 *msg("info:", "Msg", "apppath: " & appPath)   � ��� T m s g ( " i n f o : " ,   " M s g " ,   " a p p p a t h :   "   &   a p p P a t h )� ��� r  ����� I ���y�x�
�y .sysooffslong    ��� null�x  � �w��
�w 
psof� o  ���v�v 0 program  � �u��t
�u 
psin� o  ���s�s 0 apppath appPath�t  � o      �r�r 0 
nameoffset 
nameOffset� ��� l ���q���q  � 6 0msg("info:", "Msg", "nameoffset" " & nameOffset)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " n a m e o f f s e t "   "   &   n a m e O f f s e t )� ��� r  ����� n  ����� 7 ���p��
�p 
ctxt� m  ���o�o � l ����n�m� \  ����� o  ���l�l 0 
nameoffset 
nameOffset� m  ���k�k �n  �m  � o  ���j�j 0 apppath appPath� o      �i�i 0 
folderpath 
folderPath� ��� l ���h���h  � 6 0msg("info:", "Msg", "folderpath: " & folderPath)   � ��� ` m s g ( " i n f o : " ,   " M s g " ,   " f o l d e r p a t h :   "   &   f o l d e r P a t h )� ��� Q  �F���� l �*���� k  �*�� ��� I ��g��f
�g .sysoexecTEXT���     TEXT� b  ���� b  ���� b  ���� o  ���e�e 0 
folderpath 
folderPath� o  ��d�d 0 program  � m  �� ���  . a p p� m  �� ��� N / C o n t e n t s / M a c O S / p r o g r a m     &   > / d e v / n u l l   &�f  � ��� I �c��b
�c .sysodelanull��� ��� nmbr� m  �a�a �b  � ��`� O *��� I $)�_�^�]
�_ .miscactvnull��� ��� null�^  �]  � 4  !�\�
�\ 
capp� o   �[�[ 0 program  �`  � ( "start program up in the background   � ��� D s t a r t   p r o g r a m   u p   i n   t h e   b a c k g r o u n d� R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  � I  2F�W��V�W 0 msg  � ��� m  36�� ���   S S H - C h e c k :   E r r o r� ��� m  69�� ��� 
 E r r o r� ��U� b  9B��� m  9<�� ��� N A n   E r r o r   o c c u r e d   w h e n   t r y i n g   t o   l a u n c h  � o  <A�T�T 0 program  �U  �V  � ��S� l GG�R�Q�P�R  �Q  �P  �S  �       *�O�   ! , 2 7�N������������������M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�O  � (�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� �����������= 0 service  �< 0 program  �; 0 programbackup programBackup�: 0 	countdown  �9 0 dnclocation DNCLocation�8 0 dnca DNCA�7 *0 displaynoticecenter DisplayNoticeCenter
�6 .aevtodocnull  �    alis�5 0 resetprogram resetProgram�4 0 getosxnumber getOSXNumber�3 0 
setdisplay 
setDisplay�2 0 
fileexists 
FileExists�1 0 folderexists FolderExists�0 $0 sshchecksettings sshCheckSettings�/ 
0 notify  �. 0 msg  �- 0 isapprunning isAppRunning�,  0 killrunningapp killRunningApp�+ 0 servicealive serviceAlive
�* .aevtoappnull  �   � ****�) 0 titlemsg  �( 0 btnopt btnOpt�' 0 qmsg qMsg�& 
0 choice  �%  �$  �#  �"  �!  �   �  �  �  �  �  �  �  �  �  �  
�N boovtrue� � E�����
� .aevtodocnull  �    alis� 0 these_items  �  � ��� 0 these_items  � 0 prog  �  S� f�� s� � � ���
�	
� 
TEXT
� 
txdl
� 
citm� 0 
setdisplay 
setDisplay� 0 msg  
�
 .sysodelanull��� ��� nmbr
�	 .aevtoappnull  �   � ****� X�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�EQc  O*j+ O*��b  %�b  %m+ 
Ob  j O*j � � ������� 0 resetprogram resetProgram�  �  �  �  �� %b  �  b  EQc  Y hOfEc  OP� � ������� 0 getosxnumber getOSXNumber�  �  �  �  �� ��������
�  
txdl
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr� �*�,FO*j �,�l/�&� �� ����������� 0 
setdisplay 
setDisplay��  ��  �  � ���������� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� >*j+  �	 *b  k+ e �&	 *b  k+ e �& eEc  Y 	fEc  � �� ����������� 0 
fileexists 
FileExists�� ����� �  ���� 0 thefile theFile��  � ���� 0 thefile theFile�  �����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY hUOf� ������������ 0 folderexists FolderExists�� ����� �  ���� 0 	thefolder 	theFolder��  � ���� 0 	thefolder 	theFolder� ����
�� 
cfol
�� .coredoexbool       obj �� � *�/j  eY hUOf� ������������ $0 sshchecksettings sshCheckSettings��  ��  � 	�������������������� 	0 fslse  �� 0 configfolder configFolder�� 0 
configpath 
configPath�� 0 cmdmakepath cmdMakePath�� 
0 mypath  �� 0 
dnworkflow 
DNWorkflow�� 0 cmdcurl cmdCurl�� 0 cmdunzip cmdUnzip�� 0 
cmdcleanup 
cmdCleanUp� ��������JM��W_��������������������
��*/���� 0 getosxnumber getOSXNumber�� �� 0 
fileexists 
FileExists
�� 
bool�� 0 msg  �� 0 folderexists FolderExists
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  �� 0 
setdisplay 
setDisplay
�� .sysodelanull��� ��� nmbr��_*j+  � �Y 0*b  k+ f 	 *j+  ��& *b  ��m+ OfY hO�E�O�%E�O*�k+ 	f 
 *b  k+ f �& ���%�%E�O�%�%E�O�E�O��%�%�%a a ,%E�O�a %E�O�a %�%�%E�O `*�k+ 	f  
�j Y hO*�k+ 	e 	 *b  k+ f �& +�j O*�a %�%k+ e  �j O�j Y hY hW X  *a a �m+ OfO*b  k+ e  2*j+ Ob  e  *a �a m+ Ob  j Y hOeY hOfY hOe� ��?���������� 
0 notify  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ��V\��kq������������������
�� 
ctxt
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  �� 0 msg  �� ���&� ��&�,%E�Y hO��&� ��&�,%E�Y hO��&� ��&�,%E�Y hO "��%�%�%�%�%�%�%b  %�%�%j W !X  �Ec  O*�a a b  %m+ � ������������� 0 msg  �� ����� �  �������� 	0 title  �� 0 subtitle  �� 0 message  ��  � �������� 	0 title  �� 0 subtitle  �� 0 message  � ������������ 
0 notify  
�� 
appr
�� .sysodlogaskr        TEXT��  ��  �� +b  e  *���m+  Y  ��l W 	X  h� �������� ���� 0 isapprunning isAppRunning��  ��  �    ��������
�� 
capp
�� 
prun��  ��  �� + *�b  / *�,e  eY hUW 	X  fOf� �� ��������  0 killrunningapp killRunningApp��  ��     ������������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  
�� .sysoexecTEXT���     TEXT�� 6 "*�b  / *�,e  
*j Y hUW X  �b  %�%j � ���������� 0 servicealive serviceAlive��  ��   �������� 0 cmdssh cmdSSH�� 
0 sshcon  �� 
0 tunnel   /1����������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj��  ��  �� = 4�b   %�%E�O�j �-�l/E�O�EQ�O�b    �Y jW 	X  j� ��P������
�� .aevtoappnull  �   � ****��  ��     E������^����~�}tv�|��{�z���������y��x�w�v��u�t�s�r�q��(38�pGJ[]l�o�n�mv�l�k��j�i�h�g�f�e�d�c�b���a�`�_����� 0 resetprogram resetProgram�� $0 sshchecksettings sshCheckSettings�� 0 
setdisplay 
setDisplay�� 0 titlemsg  � 0 isapprunning isAppRunning�~ 0 servicealive serviceAlive
�} 
bool�| 0 message  �{ 0 msg  �z  0 killrunningapp killRunningApp�y 0 btnopt btnOpt�x 0 qmsg qMsg
�w 
btns
�v 
dflt
�u 
appr�t 
�s .sysodlogaskr        TEXT
�r 
bhit�q 
0 choice  
�p .sysodelanull��� ��� nmbr
�o 
givu�n �m 0 yesorno yesOrNo�l  �k  
�j 
psxp�i 0 apppath appPath
�h 
psof
�g 
psin�f 
�e .sysooffslong    ��� null�d 0 
nameoffset 
nameOffset
�c 
ctxt�b 0 
folderpath 
folderPath
�a .sysoexecTEXT���     TEXT
�` 
capp
�_ .miscactvnull��� ��� null��I*j+  O*j+ O*j+ O�E�O*j+ e 	 *j+ j �& (�b  %�%E�O*��b   %�m+ O*j+ OhY 5*j+ j  **��b   %�b  %a %b   %a %m+ OhY hOa *j+ %E�O*j+ e  na a a mvE` Ob  a %E` O_ a _ a a a �a  a ,E`  O_  a !  
*j+ Y _  a "  *j+ OhY hY �a #b  %E` Ob  e  1*a $*j+ _ a %%b  l!%a &%m+ Ob  l!j 'Y la (a )lvE` O U_ a *%b  %a +%E` O_ a _ a a ,a �a -b  a . a ,E` /O_ /a 0  hY hW 	X 1 2hOa 3a 4,E` 5O*a 6b  a 7_ 5a 8 9E` :O_ 5[a ;\[Zk\Z_ :k2E` <O 4_ <b  %a =%a >%j ?Okj 'O*a @b  / *j AUW X 1 2*a Ba Ca Db  %m+ OP� � f A c t i v e   S S H   C o n n e c t i o n   t o :   x e o r o n @ d a l l a s . t u n n e l r . c o m� �^�^   ���� �		 � F i r e f o x   i s   r u n n i n g !   D o   y o u   w a n t   t o :   R e s t a r t   I t ,   T u r n   i t   O f f ,   o r   E x i t   S S H - C h e c k� �

  T u r n   O f f�M  �L  �K  �J  �I  �H  �G  �F  �E  �D  �C  �B  �A  �@  �?  �>  ascr  ��ޭ