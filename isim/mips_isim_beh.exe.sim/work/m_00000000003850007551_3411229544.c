/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Windows/System32/P7/multi.v";
static int ng1[] = {5, 0};
static int ng2[] = {2, 0};
static int ng3[] = {4, 0};
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};
static int ng6[] = {32, 0};
static unsigned int ng7[] = {0U, 0U};



static void Cont_38_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2300);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4152);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 4068);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_39_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2392);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4188);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4076);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_40_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4224);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4084);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_44_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;

LAB0:    t1 = (t0 + 3440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 968U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t34 = *((unsigned int *)t4);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t38, 8);

LAB20:    t39 = (t0 + 4260);
    t40 = (t39 + 32U);
    t41 = *((char **)t40);
    t42 = (t41 + 40U);
    t43 = *((char **)t42);
    memset(t43, 0, 8);
    t44 = 63U;
    t45 = t44;
    t46 = (t3 + 4);
    t47 = *((unsigned int *)t3);
    t44 = (t44 & t47);
    t48 = *((unsigned int *)t46);
    t45 = (t45 & t48);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t50 | t44);
    t51 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t51 | t45);
    xsi_driver_vfirst_trans(t39, 0, 5);
    t52 = (t0 + 4092);
    *((int *)t52) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = ((char*)((ng2)));
    goto LAB13;

LAB14:    t38 = ((char*)((ng2)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t38, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

}

static void Cont_47_4(char *t0)
{
    char t3[16];
    char t4[8];
    char t6[8];
    char t22[8];
    char t36[8];
    char t52[8];
    char t60[8];
    char t103[16];
    char t104[8];
    char t108[8];
    char t109[8];
    char t112[8];
    char t117[16];
    char t118[8];
    char t120[8];
    char t148[16];
    char t151[8];
    char t154[8];
    char t163[16];
    char t166[8];
    char t169[8];
    char t177[16];
    char t182[16];
    char t183[8];
    char t186[8];
    char t213[16];
    char t216[16];
    char t219[16];
    char t224[16];
    char t225[8];
    char t228[8];
    char t255[16];
    char t256[8];
    char t262[8];
    char t263[8];
    char t268[8];
    char t273[16];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t105;
    char *t106;
    char *t107;
    char *t110;
    char *t111;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t119;
    char *t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t149;
    char *t150;
    char *t152;
    char *t153;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t164;
    char *t165;
    char *t167;
    char *t168;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t184;
    char *t185;
    char *t187;
    char *t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    char *t201;
    char *t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    char *t208;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t214;
    char *t215;
    char *t217;
    char *t218;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    char *t226;
    char *t227;
    char *t229;
    char *t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    char *t243;
    char *t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    char *t250;
    char *t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t258;
    char *t259;
    char *t261;
    char *t265;
    char *t267;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    char *t274;
    char *t275;
    char *t276;
    char *t277;
    char *t278;
    char *t279;
    char *t280;
    char *t281;
    char *t282;
    char *t283;
    char *t284;
    char *t285;

LAB0:    t1 = (t0 + 3584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 968U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t60, t22, 8);

LAB14:    memset(t4, 0, 8);
    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 & 1U);
    if (t97 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t92) != 0)
        goto LAB28;

LAB29:    t99 = (t4 + 4);
    t100 = *((unsigned int *)t4);
    t101 = *((unsigned int *)t99);
    t102 = (t100 || t101);
    if (t102 > 0)
        goto LAB30;

LAB31:    t113 = *((unsigned int *)t4);
    t114 = (~(t113));
    t115 = *((unsigned int *)t99);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t99) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t4) > 0)
        goto LAB36;

LAB37:    memcpy(t3, t117, 16);

LAB38:    t258 = (t0 + 4332);
    t276 = (t258 + 32U);
    t277 = *((char **)t276);
    t278 = (t277 + 40U);
    t279 = *((char **)t278);
    xsi_vlog_bit_copy(t279, 0, t3, 0, 32);
    xsi_driver_vfirst_trans(t258, 0, 31);
    t280 = (t0 + 4296);
    t281 = (t280 + 32U);
    t282 = *((char **)t281);
    t283 = (t282 + 40U);
    t284 = *((char **)t283);
    xsi_vlog_bit_copy(t284, 0, t3, 32, 32);
    xsi_driver_vfirst_trans(t280, 0, 31);
    t285 = (t0 + 4100);
    *((int *)t285) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 692U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng4)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    t38 = (t34 + 4);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t34);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB16;

LAB15:    if (t48 != 0)
        goto LAB17;

LAB18:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t53) != 0)
        goto LAB21;

LAB22:    t61 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t22 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB16:    *((unsigned int *)t36) = 1;
    goto LAB18;

LAB17:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t52) = 1;
    goto LAB22;

LAB21:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB22;

LAB23:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t22 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t22);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB25;

LAB26:    *((unsigned int *)t4) = 1;
    goto LAB29;

LAB28:    t98 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB29;

LAB30:    t105 = (t0 + 600U);
    t106 = *((char **)t105);
    t105 = (t0 + 692U);
    t107 = *((char **)t105);
    memset(t108, 0, 8);
    xsi_vlog_unsigned_divide(t108, 32, t106, 32, t107, 32);
    xsi_vlogtype_concat(t104, 32, 32, 1U, t108, 32);
    t105 = (t0 + 600U);
    t110 = *((char **)t105);
    t105 = (t0 + 692U);
    t111 = *((char **)t105);
    memset(t112, 0, 8);
    xsi_vlog_unsigned_mod(t112, 32, t110, 32, t111, 32);
    xsi_vlogtype_concat(t109, 32, 32, 1U, t112, 32);
    xsi_vlogtype_concat(t103, 64, 64, 2U, t109, 32, t104, 32);
    goto LAB31;

LAB32:    t105 = (t0 + 968U);
    t119 = *((char **)t105);
    t105 = ((char*)((ng5)));
    memset(t120, 0, 8);
    t121 = (t119 + 4);
    t122 = (t105 + 4);
    t123 = *((unsigned int *)t119);
    t124 = *((unsigned int *)t105);
    t125 = (t123 ^ t124);
    t126 = *((unsigned int *)t121);
    t127 = *((unsigned int *)t122);
    t128 = (t126 ^ t127);
    t129 = (t125 | t128);
    t130 = *((unsigned int *)t121);
    t131 = *((unsigned int *)t122);
    t132 = (t130 | t131);
    t133 = (~(t132));
    t134 = (t129 & t133);
    if (t134 != 0)
        goto LAB42;

LAB39:    if (t132 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t120) = 1;

LAB42:    memset(t118, 0, 8);
    t136 = (t120 + 4);
    t137 = *((unsigned int *)t136);
    t138 = (~(t137));
    t139 = *((unsigned int *)t120);
    t140 = (t139 & t138);
    t141 = (t140 & 1U);
    if (t141 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t136) != 0)
        goto LAB45;

LAB46:    t143 = (t118 + 4);
    t144 = *((unsigned int *)t118);
    t145 = *((unsigned int *)t143);
    t146 = (t144 || t145);
    if (t146 > 0)
        goto LAB47;

LAB48:    t178 = *((unsigned int *)t118);
    t179 = (~(t178));
    t180 = *((unsigned int *)t143);
    t181 = (t179 || t180);
    if (t181 > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t143) > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t118) > 0)
        goto LAB53;

LAB54:    memcpy(t117, t182, 16);

LAB55:    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t3, 64, t103, 64, t117, 64);
    goto LAB38;

LAB36:    memcpy(t3, t103, 16);
    goto LAB38;

LAB41:    t135 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB42;

LAB43:    *((unsigned int *)t118) = 1;
    goto LAB46;

LAB45:    t142 = (t118 + 4);
    *((unsigned int *)t118) = 1;
    *((unsigned int *)t142) = 1;
    goto LAB46;

LAB47:    t149 = (t0 + 600U);
    t150 = *((char **)t149);
    t149 = ((char*)((ng6)));
    t152 = (t0 + 600U);
    t153 = *((char **)t152);
    memset(t154, 0, 8);
    t152 = (t154 + 4);
    t155 = (t153 + 4);
    t156 = *((unsigned int *)t153);
    t157 = (t156 >> 31);
    t158 = (t157 & 1);
    *((unsigned int *)t154) = t158;
    t159 = *((unsigned int *)t155);
    t160 = (t159 >> 31);
    t161 = (t160 & 1);
    *((unsigned int *)t152) = t161;
    xsi_vlog_mul_concat(t151, 32, 1, t149, 1U, t154, 1);
    xsi_vlogtype_concat(t148, 64, 64, 2U, t151, 32, t150, 32);
    t164 = (t0 + 692U);
    t165 = *((char **)t164);
    t164 = ((char*)((ng6)));
    t167 = (t0 + 692U);
    t168 = *((char **)t167);
    memset(t169, 0, 8);
    t167 = (t169 + 4);
    t170 = (t168 + 4);
    t171 = *((unsigned int *)t168);
    t172 = (t171 >> 31);
    t173 = (t172 & 1);
    *((unsigned int *)t169) = t173;
    t174 = *((unsigned int *)t170);
    t175 = (t174 >> 31);
    t176 = (t175 & 1);
    *((unsigned int *)t167) = t176;
    xsi_vlog_mul_concat(t166, 32, 1, t164, 1U, t169, 1);
    xsi_vlogtype_concat(t163, 64, 64, 2U, t166, 32, t165, 32);
    xsi_vlog_unsigned_multiply(t177, 64, t148, 64, t163, 64);
    goto LAB48;

LAB49:    t184 = (t0 + 968U);
    t185 = *((char **)t184);
    t184 = ((char*)((ng2)));
    memset(t186, 0, 8);
    t187 = (t185 + 4);
    t188 = (t184 + 4);
    t189 = *((unsigned int *)t185);
    t190 = *((unsigned int *)t184);
    t191 = (t189 ^ t190);
    t192 = *((unsigned int *)t187);
    t193 = *((unsigned int *)t188);
    t194 = (t192 ^ t193);
    t195 = (t191 | t194);
    t196 = *((unsigned int *)t187);
    t197 = *((unsigned int *)t188);
    t198 = (t196 | t197);
    t199 = (~(t198));
    t200 = (t195 & t199);
    if (t200 != 0)
        goto LAB59;

LAB56:    if (t198 != 0)
        goto LAB58;

LAB57:    *((unsigned int *)t186) = 1;

LAB59:    memset(t183, 0, 8);
    t202 = (t186 + 4);
    t203 = *((unsigned int *)t202);
    t204 = (~(t203));
    t205 = *((unsigned int *)t186);
    t206 = (t205 & t204);
    t207 = (t206 & 1U);
    if (t207 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t202) != 0)
        goto LAB62;

LAB63:    t209 = (t183 + 4);
    t210 = *((unsigned int *)t183);
    t211 = *((unsigned int *)t209);
    t212 = (t210 || t211);
    if (t212 > 0)
        goto LAB64;

LAB65:    t220 = *((unsigned int *)t183);
    t221 = (~(t220));
    t222 = *((unsigned int *)t209);
    t223 = (t221 || t222);
    if (t223 > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t209) > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t183) > 0)
        goto LAB70;

LAB71:    memcpy(t182, t224, 16);

LAB72:    goto LAB50;

LAB51:    xsi_vlog_unsigned_bit_combine(t117, 64, t177, 64, t182, 64);
    goto LAB55;

LAB53:    memcpy(t117, t177, 16);
    goto LAB55;

LAB58:    t201 = (t186 + 4);
    *((unsigned int *)t186) = 1;
    *((unsigned int *)t201) = 1;
    goto LAB59;

LAB60:    *((unsigned int *)t183) = 1;
    goto LAB63;

LAB62:    t208 = (t183 + 4);
    *((unsigned int *)t183) = 1;
    *((unsigned int *)t208) = 1;
    goto LAB63;

LAB64:    t214 = (t0 + 600U);
    t215 = *((char **)t214);
    t214 = ((char*)((ng7)));
    xsi_vlogtype_concat(t213, 64, 64, 2U, t214, 32, t215, 32);
    t217 = (t0 + 692U);
    t218 = *((char **)t217);
    t217 = ((char*)((ng7)));
    xsi_vlogtype_concat(t216, 64, 64, 2U, t217, 32, t218, 32);
    xsi_vlog_unsigned_multiply(t219, 64, t213, 64, t216, 64);
    goto LAB65;

LAB66:    t226 = (t0 + 692U);
    t227 = *((char **)t226);
    t226 = ((char*)((ng4)));
    memset(t228, 0, 8);
    t229 = (t227 + 4);
    t230 = (t226 + 4);
    t231 = *((unsigned int *)t227);
    t232 = *((unsigned int *)t226);
    t233 = (t231 ^ t232);
    t234 = *((unsigned int *)t229);
    t235 = *((unsigned int *)t230);
    t236 = (t234 ^ t235);
    t237 = (t233 | t236);
    t238 = *((unsigned int *)t229);
    t239 = *((unsigned int *)t230);
    t240 = (t238 | t239);
    t241 = (~(t240));
    t242 = (t237 & t241);
    if (t242 != 0)
        goto LAB74;

LAB73:    if (t240 != 0)
        goto LAB75;

LAB76:    memset(t225, 0, 8);
    t244 = (t228 + 4);
    t245 = *((unsigned int *)t244);
    t246 = (~(t245));
    t247 = *((unsigned int *)t228);
    t248 = (t247 & t246);
    t249 = (t248 & 1U);
    if (t249 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t244) != 0)
        goto LAB79;

LAB80:    t251 = (t225 + 4);
    t252 = *((unsigned int *)t225);
    t253 = *((unsigned int *)t251);
    t254 = (t252 || t253);
    if (t254 > 0)
        goto LAB81;

LAB82:    t269 = *((unsigned int *)t225);
    t270 = (~(t269));
    t271 = *((unsigned int *)t251);
    t272 = (t270 || t271);
    if (t272 > 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t251) > 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t225) > 0)
        goto LAB87;

LAB88:    memcpy(t224, t273, 16);

LAB89:    goto LAB67;

LAB68:    xsi_vlog_unsigned_bit_combine(t182, 64, t219, 64, t224, 64);
    goto LAB72;

LAB70:    memcpy(t182, t219, 16);
    goto LAB72;

LAB74:    *((unsigned int *)t228) = 1;
    goto LAB76;

LAB75:    t243 = (t228 + 4);
    *((unsigned int *)t228) = 1;
    *((unsigned int *)t243) = 1;
    goto LAB76;

LAB77:    *((unsigned int *)t225) = 1;
    goto LAB80;

LAB79:    t250 = (t225 + 4);
    *((unsigned int *)t225) = 1;
    *((unsigned int *)t250) = 1;
    goto LAB80;

LAB81:    t258 = (t0 + 600U);
    t259 = *((char **)t258);
    t258 = (t0 + 692U);
    t261 = *((char **)t258);
    memset(t262, 0, 8);
    xsi_vlog_signed_divide(t262, 32, t259, 32, t261, 32);
    xsi_vlogtype_concat(t256, 32, 32, 1U, t262, 32);
    t258 = (t0 + 600U);
    t265 = *((char **)t258);
    t258 = (t0 + 692U);
    t267 = *((char **)t258);
    memset(t268, 0, 8);
    xsi_vlog_signed_mod(t268, 32, t265, 32, t267, 32);
    xsi_vlogtype_concat(t263, 32, 32, 1U, t268, 32);
    xsi_vlogtype_concat(t255, 64, 64, 2U, t263, 32, t256, 32);
    goto LAB82;

LAB83:    t258 = (t0 + 876U);
    t274 = *((char **)t258);
    t258 = (t0 + 784U);
    t275 = *((char **)t258);
    xsi_vlogtype_concat(t273, 64, 64, 2U, t275, 32, t274, 32);
    goto LAB84;

LAB85:    xsi_vlog_unsigned_bit_combine(t224, 64, t255, 64, t273, 64);
    goto LAB89;

LAB87:    memcpy(t224, t255, 16);
    goto LAB89;

}

static void Always_53_5(char *t0)
{
    char t13[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4108);
    *((int *)t2) = 1;
    t3 = (t0 + 3756);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1428U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1244U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB22;

LAB23:
LAB24:
LAB20:
LAB16:
LAB12:
LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2208);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1980U);
    t11 = *((char **)t5);
    t5 = ((char*)((ng5)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t11, 6, t5, 32);
    memset(t15, 0, 8);
    t12 = (t4 + 4);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t13);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t14);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t14);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB29;

LAB26:    if (t20 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t15) = 1;

LAB29:    t24 = (t15 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t15);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB30;

LAB31:
LAB32:    goto LAB2;

LAB6:    xsi_set_current_line(55, ng0);

LAB9:    xsi_set_current_line(56, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 2208);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 6, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);

LAB13:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(64, ng0);

LAB17:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB16;

LAB18:    xsi_set_current_line(67, ng0);

LAB21:    xsi_set_current_line(68, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1612U);
    t3 = *((char **)t2);
    t2 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1704U);
    t3 = *((char **)t2);
    t2 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB20;

LAB22:    xsi_set_current_line(72, ng0);

LAB25:    xsi_set_current_line(73, ng0);
    t4 = (t0 + 2208);
    t5 = (t4 + 36U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng5)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t11, 6, t12, 32);
    t14 = (t0 + 2208);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 6, 0LL);
    goto LAB24;

LAB28:    t23 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(76, ng0);

LAB33:    xsi_set_current_line(77, ng0);
    t30 = ((char*)((ng4)));
    t31 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB32;

}

static void Initial_85_6(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(85, ng0);

LAB2:    xsi_set_current_line(86, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2208);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 6);
    xsi_set_current_line(87, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2300);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2392);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(89, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2484);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}


extern void work_m_00000000003850007551_3411229544_init()
{
	static char *pe[] = {(void *)Cont_38_0,(void *)Cont_39_1,(void *)Cont_40_2,(void *)Cont_44_3,(void *)Cont_47_4,(void *)Always_53_5,(void *)Initial_85_6};
	xsi_register_didat("work_m_00000000003850007551_3411229544", "isim/mips_isim_beh.exe.sim/work/m_00000000003850007551_3411229544.didat");
	xsi_register_executes(pe);
}
