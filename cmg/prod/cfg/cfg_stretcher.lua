CMGPsSDtim�zrFm�abI��OKec�o���X��aw��s����~���ui{�z�K}qJJ2xSKRsmW\|tzort�~�{]ezzf`�|`^��~t�m�e�rrk�{pm���g������3��S�}�[_4n\NG}lCMstVc�koH{~Hk|~fT��ec���\��X^�{w\��u�m��y���~�}j|�M�~�LLEme^;umfAvvfctclUu�\�ute�g�_�lle�ujg��c���a�]|}d������E}�NC�MMFnVKI:UV=vbSC�`[�~f[X}ee^�nc`�mmg\vlW�x�n����y}}v��{x��F~gODA�jtGA[L<8[f�[_TQv^^Wg\Y~ff_��hv�r����i`vv^e�td�x�w��|y��GhmSpgOOHpu]�SQ}Px`USG__G�h`g��lq������s}��mk���d��z�����I}z��HAiQFDiizt~bRvssXQKaV\yytb[�cd��kY��zS���a���pY�g~������o��cm�zb]GvcYEkafWwZu�UYYRzbWTyaa[�����t�g��wd[qqs���y�y��~�wt���z�K}�[t\~d]UjYbLCUvMrZZS{cXUzbb[�ke��qzc�v�e�l�k�{pm�zzs��xu��H��S�}�OK7~WGtkSSLt\QNs[[T|dYWJcdK�o�rMni��tif�ssl�|qn�{{u���{��Xp�M�m�R]E{YHulTTMu]ROt\aDaeZW|diL�g���lle���g�w�n{���������ij��o��fw��MMFnVKHmUYS�vg@SuqcGf\G}e�k���u��]{��mh�xs��~sp�}}v��}��ZnO_X1�NO6oWwZmpE�|piRuwbO��_Q�Vt��di�h�g�wli�vvo��c���m�h�}h��{�hPEBgOOHpXMJoWWQE`VAwc_�dh]Zgg`�peb�ooh��}jawxp����{x�I}z��HAiQFChlvICYOO~\h�]aVSx``Y�i^[�hha��jx��t����kbxyuf�vf�z�y�J~{�IIBjoUriQQJrw_�USRzbWUI[�Z�j_\�iib��{X���{��_|���r���d�����e���Y9j5l\JxaBX<veN�t�T�sl�qQ���O�������lz��tl���z�z���xu��C{�L�~�duoy_sKxdcLF\QWukpa�d�_cc\�la^�kke������|���ocu�t��yv��D|�M�~�LQkm\ZG|W{M�WxOt\\U}eZW|dd]�mg��s|e�x�s�n�m�}ro�||u��zw��J��US�PtZzPqHmUUNv^SPu]]V~f_�uyo�����t}f�|lh�ys��~sp�}}v���g��F~gOI0�HrvAQpxqg�q�yDb�osh�`n�qzW��x��noV�����vvo��cr_�����|i��L�mkIOo`dQpg]JAW\a�{if[|m�dxLs�j�e���w��\��Z��{����ri���I}z��Kti\HHUTdJnYO:ps]ZCrf�\``Y�ia��sjfvu�d�pqX��stZ���}�vs�����b���c�GjaWD;QV[�uc`}SRzbWUtqe���th�ylQ�yweR���}m��yyr��fu���j�P�}�JK2knMN4cb�Wx^{Vt�hD~m^�bfh�|�YXalocal cfg = {}

cfg.positions = {
    { -- Sitting right hand side
        animDict = "amb@prop_human_seat_chair_food@male@base",
        animName = "base",
        offset = {
            x = 0.0,
            y = -0.2,
            z =0.55,
            heading = -90.0
        }
    },

    { -- Sitting left hand side
        animDict = "amb@prop_human_seat_chair_food@male@base",
        animName = "base",
        offset = {
            x = 0.0,
            y = -0.2,
            z =0.55,
            heading = 90.0
        }
    },

    { -- Laying on back
        animDict = "savecouch@",
        animName = "t_sleep_loop_couch",
        offset = {
            x = 0,
            y = 0.2,
            z = 1.1,
            heading = 180.0
        }
    },

    {
        animDict = "amb@world_human_stupor@male_looking_left@base",
        animName = "base",
        offset = {
            x = 0.0,
            y = 0.3,
            z = 1.5,
            heading = 180.0
        }
    },

}

cfg.stretcherModels = {
    [`trump-stretcher`] = true
}

cfg.ambulanceModels = {
    [`LAS1`] = true,
    [`LAS2`] = true,
    [`hems1`] = true,
    [`hems2`] = true,
    [`hems6`] = true,
}

return cfg