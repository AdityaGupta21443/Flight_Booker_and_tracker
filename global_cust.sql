PGDMP      +            
    |            global_cust    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16633    global_cust    DATABASE     ~   CREATE DATABASE global_cust WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE global_cust;
                     postgres    false            �            1259    16649    all_customers    TABLE     ?  CREATE TABLE public.all_customers (
    "Name" text,
    "Date of Birth" text,
    "City" text,
    "email-air india" text,
    "email-indigo" double precision,
    "email-vistara" text,
    "points-air india" bigint,
    "points-indigo" bigint,
    "points-vistara" bigint,
    address text,
    "Phone no." bigint
);
 !   DROP TABLE public.all_customers;
       public         heap r       postgres    false            �            1259    16644    global_customers    TABLE     P  CREATE TABLE public.global_customers (
    "Name" text,
    "Date of Birth" text,
    "City" text,
    "email-air india" text,
    "email-indigo" text,
    "email-vistara" text,
    "points-air india" bigint,
    "points-indigo" bigint,
    "points-vistara" bigint,
    address text,
    "Phone no." bigint,
    "SerialIndex" bigint
);
 $   DROP TABLE public.global_customers;
       public         heap r       postgres    false            �          0    16649    all_customers 
   TABLE DATA           �   COPY public.all_customers ("Name", "Date of Birth", "City", "email-air india", "email-indigo", "email-vistara", "points-air india", "points-indigo", "points-vistara", address, "Phone no.") FROM stdin;
    public               postgres    false    218   %
       �          0    16644    global_customers 
   TABLE DATA           �   COPY public.global_customers ("Name", "Date of Birth", "City", "email-air india", "email-indigo", "email-vistara", "points-air india", "points-indigo", "points-vistara", address, "Phone no.", "SerialIndex") FROM stdin;
    public               postgres    false    217   v)       �      x��|]v���3�
,@2���mĖ���O��걏_�D5PP� i�ӷ��ެdnDf V���|X�23�ƽ��9m�i�����E=QBط¿�a�k:4iҤCj�Cj�S��������[S&��B��^���b�of����=��Uo�$Jc��*i��S�_�>�v��DF�
�V�b�.폋�=��00��3��Y��n�̛�Ǫjg���$a���b��<)ߊ�V�ny��>�eզ���w�nq6��=�������+ޭ�@�\�N�ұ��i�)mh5-P�b�ޯ`d�[��+�	�V��K�f�cj�ه�<L��*#�������>Գ���
����y+��{Z�8%����6-Sۛڵ�bJ���ԏ�������f�>a��?��`��x;���S�ݦ�M`�C|K�Φ��~����V�)5��!�ț��N'5�TE��B[5�I��8��a���Fa�d��Wf��hߥY���̈́���~X�ا�쇺��TcTPR��_SsW�X��N�	��賑��I'��>bHy�wJkr���ߪI����+S���󸜽[b���������pHu���:E6��:���)����wMڒ�ݤ5��v˼��!�������&�Y�&��R#j��q�7Q&��Sحj�R�hڤ��_������Y�ͱ=NZ8dZ�#k�s����KC���bb��㏼�g�k�,7U�1i"�(j=�n���*�D�.^h�L�r��?c�^�_<u�v���n�7���&�p�"N?Wk�=@.�kr8�:v��*�Y��������[�E�˝���Z9CGMR�i>�����k��JJ��זP�Ok
�_��~��z<�����^U�CU�t�W�h"Y����+Y�MG,�[ ��v��~���ٗz���'���3@�x�<��������ϔ�����\{I��awJ���3F� I?�Mu7�Y�CM��T�D��@�k�����a�\8C�?�����F%��n�O�d}�f���և����?ܵi�/O��G*8�s���"�jvM�]�VP������@꧊�g�-��X_V<���d��́&-�s���Ix�T�7��!�j��CK{���⭖�ou{�>֓���luZ�O���i�p-M-Biv{h+
��*
s��C<,�<�lw�C��&��x�CFe^�ȁ��Z��m��{��EUm9� �:Ƴ�f���U��H0H��
�=�b�D8� ������n[7���C1a	��$����.Փ�brG�>�!p��P��!CP� ]ҏu�z��/����V���3\ūx^�6ci�Xƣn�B�7t�t@���� F��@I���� �'L�4��N�j������rjL)��h4�#*�_j���w�rg)��k++f�f,�E�/�6�+p<����M�p���}B]X������	:S8�g�5܏8ēVV�|O@�4�i�T)�O���y (��*ȁ�J��~��k��3##�H4Ym�H���+��E[=������?��tr�<T�����v	}����FoA!�6�}n�á����Q��o�7�O�z���MKԌĿ�8a��]T�A/�``n���6���{�T}t*9y_m@�����a����?�"���8��ޔ��c�����e��V��"�H�67��e��8�Q(!�O���@���舴T"�`�w���iv����@�"��(M~8b��ד��XQ�-v�k��S	9Et�?����Puk����[ 4�-�wu�`RL�Dj��K�z剴�����s�rS���{��D�9�M�=<8"�z�P����e�=�N2E��-���D��G��,l���TC*�J�t�T��s�|���='`��=qap��0�xR��!����w����B���@���SV�����[�?b;���ن�s�뿦cϳ����bY5�h��?� #��c� Uj����ρ=����h�a���`��Ղ��)Pb[oX�S�8vui{��6/�d��1 �G�Lr���v�k
����86S<�U�<>��R��Nޭ�`TD��� F�?����Oi�>�:1�H�9}���6�v�'��dL�c�L"�sڡ����
����>��k
����v���3�>�3&/�/���H45A�.�����������L?᫠"���T�/P����_��^{�A�\�#��9`���̛퐃hu�{�����%��xB�5������W���@�Hs/�mX�����<��P)<bب'KH��Ҍȥ&%ސ�m�U[2&p�zl&Uў���O�����t߽�CH[� �X"��,��ܾ�]94c�P R���o�}R�vlo'��atJ]�a��W�f�5	�������:g`B1��8���*8r���^yb+x������>�KA*>�#,2������^<�Q����i�ȅ��״$�<"��	�V�ũ�
.��/������^y�XjПy?���p�=Xt��F������D��ٿ�=j��xG;�.�pZ���P#��b� 6g��G|?�V�#k5��;�K=u&fCdr�S�ص��B�P_9�E�U�\�jN�H��9G���Ԉ;�J�cS
?���Zab��f^N��g2�g�������	o�K���E��îڔx������{�ȴhǪ���W�V_�C�;�*��c�8K�8B�:%I�f�HU����7#ƴ��q����CR��A����V��	���֗��k��ѣ�OI�S��R�p��`��(D����?�T�e+�#��l��~�K�Ն�1��/�=d;ɑtC���Ω�G�o��U����%s� $2�o�f�;��zP&����x�pՏ �x�LáR%a���-��wH�H��J�Y��:g�e���H�$�`�8=|���fL_(�ca'��rJ����t��d�!	q��:mK��%�p+@�=��n������p��p��$�ʘ;J䙋C�*�H�}U^�(��p�#w����P��S���Ǵ���<bԖn|��H�ϊ�􃔒>+��'�Y�l%�οe�s�FBl�2~ �~�����8��ȑ��pH]�)yW�w�f�83�6Y(=��(�V:���C�e�B.�[=�=���:2��O?�Uˎ�[��\���R{�Z���<��B�)�ԁ�(�58���U��Ȭ.�V��Ƹ�Uy��I��!w�B�G������QD})P�˥V��'����\�tV�Y1W
9�-zk�2v�wv׮rsa�{D�S�b��Bi�:1�.w�V���t���XSXA��<S���&1}��qX�)�A�k��1#}��r!=�6��PvZv��lr���1� �1\t��V�1�qI랽���Hff
�zD�"���
�����`|t/�e����s4}�2��?�.b�yq`߀��,�j��u_�'�!GqQ_��l�Ev����@GA���1e��XD!���M��n9��K̩��T�!6Q:	֠��Lt�JXEjJ!?���]:�`0tv$������挼P�ٌWNx�����6.��͚��%Ӂ���xb�ݦ��{+3F��[�p���B�z煘~��j���!m:9�d��b�N�z([P�]��2�h^ WT�����(����z�˶x�'O|�UP��N��q/����x.���ˇx���fW��
�� )5V� �Qx�&ս�L��B�}�j����l黔SGpϜ�!�g*�+j�J��ҟ���.�\�؏�҆+���:�.�UD����G�c�ʪV�<��i����>�3 �qT�1���C�渖�\o,X�d\����Y���Jz�@�ƪN�����@ݵ��K��{	���n3��~L��*�ǅ��=��"&���X�@�
]�
�(���mT���V9r\j��l�e@!����	9�I��v�h͕'�(����b��J��<	�%�wY���f���d��#�\���]�4����,LMQ��Mj�u�|X�~���zXR��	�N�}3�Fݡү��j��s-��8K|( <  -�j�m&wp~�P:����W$��gn��GTzϔ2"�;�	�_�kH3�_9�����݆�$�D�:Oj���]�h(	E�<�2��1�(��m@�lO��(��)L$���*a)X��$����ܥ��X����4��(��G��4�W�����t�ޗf�}�#`�}���4��t?��s[m�K�]Ԑ�؜��<��zuNz��g��y=쓳芪������Q��b�ѓG¹^35�s��L	�_i?z�1�]F(3��Ɏ��s+4%�r?Be�mp8*=�pl�Kj�-��n3 �䯮�R�Pȩ�ܼ�Ђ�P��2�odb������+^��ـ��\ٻM���t�q֖�2~Xs�$7�.,�̦Vy5�s���<��+�E,!�@iB?�7{O����f��	@����ڱY��T�\�|:5a$��ӑ��g���C���a��c�'㳁%���@Ĕ��"���L��!	�&Q��2���]Bñ �o~�o�N<������
�D�i9� Q/���_4��SV�I�cM~N5�
�g#P���u��U�@L��x�,	r����p������\��F��m���`���R'���ct�����{�e�ρ˾��JɬC���7�=q̎�,R�qZ��ǚ��=ۮc�	i ����T�kΗ�No��R9�k�H�[3��zm������}�T�?#2p)7�Ad:J=�s��d����\�e?�D�q�[D��s��*�ć���pԙ�eDq���F�r�
B)3r�I��M�*Ï�	���xG��g8"����bf���� �s@��ύ�5ͥ���<�ٙ�m�p�;^�
��0�	�j��w�	��pl �BN�NK���K3��4���))�P���P�:�*@"JC*�<����%���i�_U�g���]���_<���ϡ]�t4��Z���d\���W���7�ċwy�N��U��������PsB9�Dz�7��R�=P_�{�O@�G���B�>T����8�r���=��l"�L�4�* ��zz�T���}����ym�a��ٸ�XBW%����9�3��B��RH��b�+b�p.�3�WHL<�ʵ�G�z��ǖ$J�)X�?@U��k�#1l���n�P�)�I}���D�c_OV��r�ݶ�>���aJ�iP��ӿ��Z	�#�Pc�(�'�i��F�ґ�U=�䚰�,Q�\(�q�2~��7$���9�tc��pl�ɟK"5/2�S�C��S<P�
���@�*Gd��&�%Lʿ����f�<��M ��a O^y��8v|8��\���R87z����+媏�?W�z��:�J?vtY����E�C�H��D	D���}�T+�Rsi�/�������h�'1o 8KH��*E��m�]�\��濲���ի��������L_��RF�t���[y ��`�hpfK�#\hO3���:���M�~�R�`hpR _J�C��3�S��"9���m���T�Kѡ���?��:ڪ��I*j� �v�쵙�#ӓ+���Z��SF���T���V�(~Y�fѝ�����`�h����2* c���S&��W���!實&����[��nsJ�j�r<��./V�;mq�֬Z>�"�eJaF���7X��A���20B�����Yk�����*��]�X�rWo*KZ�/8?[�A���H�o��	��!�΃ݾ�ʠ.sB��U�V<˗{g��m�* �M���,���[�L���Y�S����oҟ��h~f5��hq7T���%P��Jĳ�~½��5e�+C�ʮR��"��8W����S�?��t'�)#Fe�O��(��B*<�K��8�yn�h{?".Ԉ��5x�����=p�[�c�<^0�*�b|7�ᩉ�-՛�iJ�j�s����4�}�� �m=\���)��}�c����vp��㺢.?��r<N���E�l���,���jB_��0�Qwl�˲4J`a ��!��苖Z��G�w���%�+��\��݁YZHI멬6�i�U1�D���{����J�����Ek����P����[��Q��!Εr|����9E�a^��e;-������3�_�;�&�M��ڀT��+Sa�X�Ue.�ñ9�`Lq~JF`S������*BnNy����T����Bsi�+���2��� �A���J����K�aP&`b�j��f��&��/x."!ku����:�SI��C�H�类����|@��/4;���e�S�������|��O2|v��h��L�Ӵ �IWZ�0lɇ�RUw*��I��p������XAGi#*���g$��>��q���V��C�r�<��8x����zӡ�� �����x"�i�rm�+�W߾���Bl��O3`YZ����֍i�)h���]���o�rO��<C[Vy:d�._j��C����P4n볌����ZPI�
��{����}���@�wO��l@$޴�8�	;}wG��6�/�A�]}{uJ1v��ҕ�"͕8%����'��o��2^����\�(3pqx-�'$]��}}��Gu�� a�=�9f�eb�$e�D�&C7�40��4Wf�
�T��T�q�n����sw��0#K�V�q��G��K�tc��<��rNtL�@�>_e &�%�Wv7�/ڗ}�C�p1�C���O�7C����<�+�pW"�wCc��;��+o�Ө��`�*9Z@�Qژ}��U�p�� _��8._4'x%�xPS�I���]W�Dݘ��FQ���ƥ��%Z7�@�a����|ם������>�.��u�u1E�E�g��s�mb�FϛtQ�Ё�}�(�k+h�O���T�n���p5���-���O���T|��{���9q�7W����x;ā�L�|ق�Hd~��c�u:�5!4ri�I�wUxi�*Acn �xq?��ȑ��@S)�6�qr������f+B<���+�i�&h�=ݴ�yU��P��1R�ѰeK�v����9����!�M��d�ɉ�̛�nk_W43'ib���� PTW�"V����~�g"��( �ν�b�� Z�`q�ϧt	�7�z��u��Ǔ��L5Ug��}��x;�!�>V<s�����^����/��.�0Z���3��.�/�/	 = 5��=7M�`��snڳ��=�B����$�zf/��9����P���N��``�f�z��Q�[:4w��6(s#���e��8���1!����;��S�w�vٚ����yĺ�X "!�������m�#�C].Hv"�'s,�G/^����$B�����_�f�KEl�:��򼒸(v�h5�#%4�xs��)ʿ�8��>NopL0D-��j�����0�w�;�jP���	4ȹ"�t�MA�:Z������?i�#����ߜ�-QUplG؂� U9��5�!a���ّ��ŌG,]��a�F#�C ��ۀ>W嗻*�*�x�}| x�,=ޗ+F�uh����ڝ��R�)���iɎM=KՍ��i�P,5\��XU9=s�G�H�,�+)�0����� t�L�ng��=%uSkS+��J�yv�n����T@y0(N��J�=�L�}���R�g�cb�b��1�+k�e+/�T�`C�� ]?�K9�Ʒ ةO����yx�8~��~�JOA4�a����\)Q�!�c��/_-w�a�6D�����~���3��T&tZNo���c�}*}�5��`R��v��v�_���h�m��x ���8��}�+�xh}�q�,ʸ4��
wm ���fx ���7���"�D ������ۜ�-�Ǘ]�s���<U͚���#r&�$��ڪ�m���i>���N���L      �      x��|]v���3jX�d���ۈ-[ݭ�>M�z��$Q�@���mc�7+��Y�U�9�@BTfFܸ7"?��!Ϳu�C�lfJ�V��2�~I�6��tL]�Kmzh�W�ߴ���k����_�ګ0�O����ss8vO�5�4�ҘhE�J���ާX�뙌>����M:��i�����ȫ��(-�ve��?�u7�W�g�#d0F�T�}^��oE|+T��f�Ӫ������]�@��^x������5�XY�P.X'�3]}H��٤�����ԴHa��氆��~�n&�('$�~!�����k�R{73"�h�pzf����r�5�f�q\��1o��}O�����G��K����ݪ�2:6��߾��6�1���Oأ/�f!)B4��l�9�Oi~��.����-m�:;����~�Y���N��"o�ZX:��.S1�:m��UWi����9�?v�.l��6���������^��ܛ���	{�4���n����.���~M�M�aY��~"�lF��<4mz�������;��&׸N��۔���:��`��yZ�߭��G��D��6�ss8��KNMl��"�����k�V��Y�޵iGnw�6�1�3�·���8-����&M�0�g��q��N;���218��J���z�R� ۦ�\A������]���;�:xg��k�sj�ۧ�����H��/ys=�]m�t�D�T�~\qT���z�X"{�ϴBP�v���M/C�/>u�����n�W�t�g0p�"Τ�>���>�os|��_���&ݤ%��	G��SP(�܏��T+g���E����S�#�����Zc��R�C�~�����!P�.����g��n�ݝ6뺻�����'Z�H��%2���g�f�k�Ч���T?֏��iVi�}p�^�>�O��}�n�Bx�/���ϔ����B{I��a����CHg�����~H��f~�Nǆ�#:z��!���q;���>RX'�	�=�'~����F%��JW�0�ܦ���ͱ$����xӥ�`y<���>R�Q��KT�u�o����,��W��3n��5eٌi��]//�AY��=����O8Z��#$<��
��3Xr��ޥ�C���h�=v\��r���N��f���`�I���i*�i��F�_R���_��`��ٵ��/�`b���ł�g�ݞ\��7�|ȸ�������^ؔ���%|�;��O�z�	�/Б�-�����^o'�Av�X[��_�O��
�J��@����mn��KH�%��v7��u�{Z�S#��9�����K��N[���3�J�`�w5�i�f��3<��۩�h,�U�P!���U:"��o��X�)��4�咏'p�W����Ҳ~�ի��1n�P�d�-E��.QɈV}i�����)&���(�Z�`�U0Sy1Z}��	���~4�p�l�{ø��%	�"���i��+Mq��3�3�q���!نC�ieX�r���O�`]e������C����$6P��n���~fd$��)�5`�]݃�^z�����ˮ~�������!�����|�? l�
(�r��� =�� �o���Ǣ.TtRX�j�GJL����I��c��ێN���{qښ�~��ԃ�X/@���R��f��F��'�!j�?��-�؊Sۈs���Z�S)�������O	x�16x�iZ0�ׯ�ݮ&�a)�O6�������M�my�J-<��5TK�ǥ�c=h��D-������Ģ-ҍH��v�v3۬�AQ�a?^z�_|*!Јp�K��>�~��{a����_c��'�0���@�Yb�t�W>��<���~a���p�� ���#�9�y�#��i�0�n0P�%�.��#�$�+zAL���?Q>��"�Ai����/�]O�r�8���������%N��G'@b1��ų!��~���1� x����[����S����|aILiy�R2��rA�_�i�iД�i�����e8{�����8w?�sj[�Vm_Z�|ȤY��^4N߁o9'hm��ϱ����-�(z���4�sOۗ�3�v���R�4���'���ㆢ*"�{��g�4kW��c�g*H�ٻ���D������M�i���6o8�VA�t�3}�l��E�n�( 7�dO�{�L=ȑ��H��O A	�(��I������<0���fb~��M*^�_=๑�F��7\�C��f��K=RP)�Aڪ>�� Q�TJ=�!��� �G �Z�}��=��%��9�v��ͻz�5����S��t���a�7Tݚ"��?c��� �D���Yo��H	qft�%mN[J�\��3�VL3�[�SDJ�\�R�i�vSw%�{�Ǯb[`�Yί�h%�8P��:��k�M�p�ˊ��״/hL
`��!s����X�7ٔL�M:N�D�g��u��u��B�C�i�tθ��N�B��M0G4g���AO.z�\�+����~�����!wq��#{?�_,3e�"��m��<�I��j�ІX:4�0�"|ĊƄ� �k�\>B�E��������c�+�8�/�g�X'9�\a'�}�#�18�.4<�8W3�{K�u�h��~�1�6�����oj�Z"�\g��������ZM�o�Bl`�Ċ���~j����=P��g�pQ�2WلZPA�ϑ��v!_�s3+q|�Ҳ-'K1]l`Ű�o��/���g2�q~����a�+|�K�B�*�s*���m�C8���y M�n�KKxV���t�$��\)<6sf5�hE�O��c��$	ޕ�m�S;��=m�e�{+(A��ǚl�T��0��.���z��4���4�>��=��K��EzA>N>��A�PB\@�Z[��DQ�_0:N˙	�����9RY��b;�R+@��ϜH��q!���k���U	����K%p��{��8�	a����1w\6�j�_|z�S��J��ȤBXL(��=܁�}���Kd��#<��6�buNI������H��
K�f����~(�ca6篇&K����u�&|)yC��K�Mڕ�'�ND᠁,׀�����8�;���?�o�{PAS*��.P�\�Y��0RR-�	� �
I: �?�ԚL2�VឰkK;�iu��`EZWJI��8Y�DpL�=�5��L��I��Ə$���
j�˩x�Op3�\�-�؇������}=�W0�s�`�5����"�s��>�A<+$.�hϝ�~Odƞ��^ُO˺c?�o�o_�k��Ԟu�(�������J�u�G
r�Ċ�Yf� �.,���D�HƳB��!3��d���3g���gm-ꣁs\.�F`<@�D=������0̱�f��	��[������pt�b�k̅nim���J?׉�w���>m����Š�xn��>P8l�Rm�$���ЉX�Sң>����+�^�u�4�E8@��h��b��m����b�c;\ �\_>��2)곓P��+��ry�\(��l�d��^����Z���R�ۼ�����>�𼨾A�[��2�KJ�<@�r;�eK���hϤ{2Tx�D=���>eO�DE����K��~5լ�̩ڋ�X����'vS:	��f^qO���ъ�Ԕo~�7��t$���D�!sfC!.����M��^D�g��w�Q��%N��_[��dq���ѻ����bA2y�V�d�sz�P��yAi��%��W�c����I��z�p�������eҼL����%�D���n�̿�oz���X�v�Y�,��Ы���!~q�@��\j�KaZ�|"��-\��`��K�j�h�c@&5���踒�����AP6G�M�)d%
8���μ���R5�5u�%go���^.w�m��Ყ�'�$Ee��pl��a�\�9B���U���Z�Ծ�3M���8j�!A@Y琗�eo,0�ZEJ��>��Y-��Pz�AצJ#N�>�[�@��ݾO��{	��8� �1��LO]]z;�[Mw�%RFtH��1������Uz    )���~T��V9�_��� �p2B�'d(3i^���@k.}�K���fKh�E�� ��$@��r�|�gel
��{P�i���t��F�'$����R���:uQh��mj7Mi�X��a�K��f\Ę�@GX�EE�f���Y����.�̂�E�k��\��"\QWp;�AD ����0���e��E�5�tÉLM#��������ҏ	\N���f�q����,�t҃�u��.DtY��PQ��,�2�����(0��@mm���(m�*,&o��T6p�?�ϰڬ�R�����n��i*�t�@��>.��iP��QB�Di��i����4���1N��K���J��.�޻����K��|Z���<A���g��m ��no��uQ�f8���M2��\ �4gsOX8h�����S/f�\���O�z��Y�Y���(��k)`��㉣�si@���T�gN�iE]�U��lG“ؕ�
�9���+ZP�X��w\��L����	��;zQ� �dv�r��:mJ�H�,g��E���x��jM��]���m�F�m�}����<�����-����"F�g�練ѫ �0;��f�@Yv�S���_�O�!(��u:�����L�y��;���-��|�����ʘ2OYD���4E!!.|Ԥ��+5��T�/!�X�җ�󬓷SJ���~X�$T��������a�j!�j��S�3S������%�v�C��4P�s1@t.פ��9�bGz��6N�z4��z9�'�Z�E�~ޫ�J��$��>�˷���?G~��'VJ&-r���͔S�ng�P��`R��cCC�6t������H�|i��5&��Ы7ś���%C$�&H-b�t���ɹ�S&+V�}�|j+����"��-5��y�o�rH�R��{���eB�J/""�1�t��]�c�9���s�8��NP9���'IC'��W���
��W���~��?wxڋ!���.�TSq|<����4�Gi��y|"7 ��~~|f��S��&�g3>��M����v�8[���<8�2�3���7i<!1~�i.�P4���ַuU��s�H����z!��I�s�������6uc�)����s:���/�Ce����A�><R.���kҜz�ۂ����< k�O��Y��s���=���B��P}�F0��n�3����9$ �=͠� �����]F:&9M��^��6�*�|�H0�pz���nk����!�����}n�n�����)N�J���S�g恅�K����	�#�����w<�˥�{�\{hn!���&J-X��p��:��G"�0[��GӶs�h[��ZI��ϡ���Z���m)�(jv�1�d���AA�À��^�}%�N�!���}�Ax�K'Jv�hX���6�Oa�ur9�.@�����<݇���/N�<Nm=�sE$��&�5���_�Y8�b ׀��pP)0ihh��0�F��JI���v��g4�
�=ݍ��+�`A�݅��D�~<�!�p����z��W�h����~Y��:��4"DqK���[����(c�;4��K�2|iu�/��~�|>��;��h�����x5�Qt��V���>��M��,������9n��s1��@����a�0L�婨�񢅛�Np��y��[�r`[�ν��rP4n*�s%M�E�W̙�妑�x+s���]Z-���/I�aZ�'܆뉱
������o ����W"����=S�g~�A'A���f\��<}�F��#_)>Yg�@�����#��4�BIfV�4e�G �7p1��W�'��-�͛fS�n�~���t����D<�_,�w���(]�vܰT���<U��0E\��ha*9t�����P�f��������4G��X�y_+K[5/4[�A��H�o�h���A!aĞ'%�=4|uD]���뺫y�1���x�	
%Uf.g�4蝧�M�$W}%F1��<ҝ�~>���f�sC=��gzq"��~���J͠K��KPDS�T��_W	JASVyf�DYZʱZ$qʓ�C���jC����n��e�åLF��j�tDh�:��N�C�y*�d�0�/D���!�"q�n[�o}d��,�y��,]/��~~�S��[j�{�v�J�:vu��Z�yTܾ4r�5�Ũ��D���=#���S�d��>�65;�}:ǃ���K�Jۀ���U���4�H#�CU��*��&;���'f�h�b(�j12�^�� �_t�xߌ~s��j�j!j��: l��eVe<֑9� tn�g#OTI�E5/.�EԻHI<��[��noLT���[�`N��"7n/�����3�w��p3,�|�]�om@сL�2M�IXU��>��� �O��l�0��[�\��=8O�E��@k�]?M�U�2S�h����t��b�w4�X�t�D"�U�'-9��zh@��O�n��2_OƊ7l�҉$k{�����N��c��J����fUF3<���B�ؾ����i���w�=�B�m��*u����%!O_���mɿ��ZJ�5�M��	�3xb��徂��Ff�J@��~FB;�e*���/��>�/G�s�@NX	�4��l{tsB#�XHd����ڶ.�G������t{�m^� � gi=���a?��l EAI���"ȿ��~�w�yСpIC�W�z4��fj��cn��AQ����:�Z�kPV�I�[���C@Ա����Q5 �؀h��1p(�(t��T�nH���%<��g�Д���=�.��bh �)A� c����	v|������g�՚�ǁ��{|9�t��-��j���]�HM�m
,�&9;�(�"f�	$����a
����2VH�B$y���0ΰſ�����ZX�%?,�Ğ�SY�%jr�R��L�˹�>%���`yS�y ���V�م�&��Eܮ��������ť�yƺ2W��HK��� k*~u�,r��w���OR�IS]͊��`���.��5�+��/O�m^�54��f��6�0�AW� y���A�LSS!x\�Y���3��� �Ͽk@������*��a��r&[{�}�����n�@�-
�X���6]�^t��zD¬��u54ϧzr�@���XL놲�d�=�M��f�	�h]�zOWk>'�]�����u�N��ؑ�[G�_y���	���Q�@���O�����f����#U��\
��*���#u(�@vĲueR�\��$>��K� ���s7�'{9������3W��B��H!H�諏T�ޯ�مd���f;!��3������hQҜ�m��j�9.
`(�}L��+j�D�~����;tY��%.r�&��Va2V��hO�$y3��m_7���x�~�ɢ�j��r(;Z}�irK:ȏ�4X!:���C���9'��-]�G46���b攛����b�NV��;����s�H�&@zǧ�{v�y�_hP<�BS{�\���� t�٩�"#E�����c�e8К�KRX�U4���BkA� $�F�fG}�PlJ����+�n�Ł��cf����\Y�����aŸ3����~�/�]���� ���# &�5���^7$��_ G�� C����z��s�2����f_��j\K 0Q�S��śR��� 4q��±�u�Ӻm�l�����m�ګq�i�/P#�<���)�;iA?��O�=)��(L�I$T�?���Qu�p�&؇&��a�k<	C���8!����k=�TJ�4�>v
���5�1��i]~(PYX�H�_��#���+�#k����x=�n�k�ݾ�
�b*���QqC?�;=�~,Ua�3��[@-5p�k���4�2m��,����8�&��pu��&����k��vV����Jm���~���۞p�>�P� ������V*�����x/�K%�9f&���?.�}öܝ�P]�ͷo�%N�9Ԕ������`�����'$1Z���<��X��BkG�7A��Lx��<�b�X���q�7 �   D4�Z���pD�����Q����ɿ>TR�[�/q��vP!ջ�6�q~����r+���~a��}���5��Z0��o�e��~��=7����x3>���	s��GRI�~A������ߞ�62ɗ}3p�#�"=��G&w�f�,��s]]=��!��u|�������;��     