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
static const char *ng0 = "C:/Windows/System32/P7/instr.v";
static unsigned int ng1[] = {12288U, 0U};
static int ng2[] = {8, 0};
static int ng3[] = {4, 0};



static void Cont_35_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2180U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1428U);
    t3 = *((char **)t2);
    t2 = (t0 + 3020);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 2952);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Initial_37_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(37, ng0);

LAB2:    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1656);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

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

LAB0:    t1 = (t0 + 2468U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3056);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 2960);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_42_3(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2612U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3092);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 8);
    xsi_driver_vfirst_trans(t7, 0, 31);
    t12 = (t0 + 2968);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Always_43_4(char *t0)
{
    char t13[8];
    char t28[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;

LAB0:    t1 = (t0 + 2756U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2976);
    *((int *)t2) = 1;
    t3 = (t0 + 2784);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);

LAB9:    xsi_set_current_line(47, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1656);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);
    goto LAB8;

LAB10:    xsi_set_current_line(51, ng0);

LAB13:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t5 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t4) == 0)
        goto LAB14;

LAB16:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB17:    t12 = (t13 + 4);
    t19 = *((unsigned int *)t12);
    t20 = (~(t19));
    t21 = *((unsigned int *)t13);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(59, ng0);

LAB22:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);

LAB20:    goto LAB12;

LAB14:    *((unsigned int *)t13) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(54, ng0);

LAB21:    xsi_set_current_line(55, ng0);
    t24 = (t0 + 1656);
    t25 = (t24 + 36U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng3)));
    memset(t28, 0, 8);
    xsi_vlog_unsigned_add(t28, 32, t26, 32, t27, 32);
    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB20;

}


extern void work_m_00000000000140276039_0617898135_init()
{
	static char *pe[] = {(void *)Cont_35_0,(void *)Initial_37_1,(void *)Cont_40_2,(void *)Cont_42_3,(void *)Always_43_4};
	xsi_register_didat("work_m_00000000000140276039_0617898135", "isim/test_datapath_isim_beh.exe.sim/work/m_00000000000140276039_0617898135.didat");
	xsi_register_executes(pe);
}
