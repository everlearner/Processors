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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Keshav Kabra/Desktop/study/3-2/CompArch/assign/Pipelined/Instruction_Fetch.v";
static int ng1[] = {2, 0};
static int ng2[] = {7, 0};
static int ng3[] = {1, 0};
static int ng4[] = {0, 0};



static void Cont_18_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char t17[8];
    char t27[8];
    char t31[8];
    char t43[8];
    char t44[8];
    char t54[8];
    char t58[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t39 = *((unsigned int *)t4);
    t40 = (~(t39));
    t41 = *((unsigned int *)t12);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t43, 8);

LAB16:    t66 = (t0 + 3832);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    memset(t70, 0, 8);
    t71 = 255U;
    t72 = t71;
    t73 = (t3 + 4);
    t74 = *((unsigned int *)t3);
    t71 = (t71 & t74);
    t75 = *((unsigned int *)t73);
    t72 = (t72 & t75);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t77 | t71);
    t78 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t78 | t72);
    xsi_driver_vfirst_trans(t66, 0, 7);
    t79 = (t0 + 3736);
    *((int *)t79) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1688U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 0);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 63U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 63U);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1688U);
    t30 = *((char **)t29);
    memset(t31, 0, 8);
    t29 = (t31 + 4);
    t32 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 5);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 >> 5);
    t38 = (t37 & 1);
    *((unsigned int *)t29) = t38;
    xsi_vlog_mul_concat(t27, 2, 1, t28, 1U, t31, 1);
    xsi_vlogtype_concat(t16, 10, 8, 2U, t27, 2, t17, 6);
    goto LAB9;

LAB10:    t45 = (t0 + 1688U);
    t46 = *((char **)t45);
    memset(t44, 0, 8);
    t45 = (t44 + 4);
    t47 = (t46 + 4);
    t48 = *((unsigned int *)t46);
    t49 = (t48 >> 0);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t47);
    t51 = (t50 >> 0);
    *((unsigned int *)t45) = t51;
    t52 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t52 & 7U);
    t53 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t53 & 7U);
    t55 = ((char*)((ng2)));
    t56 = (t0 + 1688U);
    t57 = *((char **)t56);
    memset(t58, 0, 8);
    t56 = (t58 + 4);
    t59 = (t57 + 4);
    t60 = *((unsigned int *)t57);
    t61 = (t60 >> 2);
    t62 = (t61 & 1);
    *((unsigned int *)t58) = t62;
    t63 = *((unsigned int *)t59);
    t64 = (t63 >> 2);
    t65 = (t64 & 1);
    *((unsigned int *)t56) = t65;
    xsi_vlog_mul_concat(t54, 7, 1, t55, 1U, t58, 1);
    xsi_vlogtype_concat(t43, 10, 10, 2U, t54, 7, t44, 3);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 10, t16, 10, t43, 10);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

}

static void Always_22_1(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t31;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 3752);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(23, ng0);

LAB5:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(30, ng0);

LAB14:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t6) = 1;

LAB18:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(38, ng0);

LAB23:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 8, t5, 32);
    t7 = (t0 + 1848U);
    t8 = *((char **)t7);
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t6, 32, t8, 8);
    t7 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t7, t30, 0, 0, 8, 0LL);

LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(25, ng0);

LAB13:    xsi_set_current_line(26, ng0);
    t28 = ((char*)((ng4)));
    t29 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 8, 0LL);
    goto LAB12;

LAB17:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(33, ng0);

LAB22:    xsi_set_current_line(34, ng0);
    t21 = (t0 + 2248);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t28, 8, t29, 32);
    t31 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 8, 0LL);
    goto LAB21;

}


extern void work_m_00000000002165020702_1537416552_init()
{
	static char *pe[] = {(void *)Cont_18_0,(void *)Always_22_1};
	xsi_register_didat("work_m_00000000002165020702_1537416552", "isim/Test_Main_isim_beh.exe.sim/work/m_00000000002165020702_1537416552.didat");
	xsi_register_executes(pe);
}
