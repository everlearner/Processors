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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003296513596_2123150820_init();
    work_m_00000000003754775969_1537416552_init();
    work_m_00000000001926461453_0065856647_init();
    work_m_00000000001615794956_3203097962_init();
    work_m_00000000000614952605_1556297678_init();
    work_m_00000000002323112664_1355410016_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002323112664_1355410016");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
