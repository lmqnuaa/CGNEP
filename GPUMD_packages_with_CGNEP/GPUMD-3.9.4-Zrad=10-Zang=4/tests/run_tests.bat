cd gpumd\graphene_dos
..\..\..\src\gpumd
fc thermo.out thermo1.out
fc mvac.out mvac1.out
fc dos.out dos1.out
fc velocity.out velocity1.out
del thermo.out dos.out mvac.out velocity.out
cd ..\..

cd gpumd\graphene_kappa_emd
..\..\..\src\gpumd
fc thermo.out thermo1.out
fc hac.out hac1.out
del thermo.out hac.out
cd ..\..

cd gpumd\graphene_kappa_nemd
..\..\..\src\gpumd
fc thermo.out thermo1.out
fc compute.out compute1.out
fc shc.out shc1.out
del thermo.out compute.out shc.out
cd ..\..

cd gpumd\graphene_kappa_hnemd
..\..\..\src\gpumd
fc thermo.out thermo1.out
fc kappa.out kappa1.out
fc shc.out shc1.out
del thermo.out kappa.out shc.out
cd ..\..

cd gpumd\silicon_dispersion
..\..\..\src\gpumd
fc omega2.out omega21.out
del D.out omega2.out
cd ..\..

cd gpumd\carbon
..\..\..\src\gpumd
fc thermo.out thermo1.out
fc neighbor.out neighbor1.out
del thermo.out neighbor.out
cd ..\..

