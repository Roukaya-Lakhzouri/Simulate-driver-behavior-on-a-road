MoyTmax=(1/M)*sum(TmaxVect)
MoyC=(1/M)*sum(CVect)
VarTmax=((1/M)*sum(TmaxVect.^2))-MoyTmax^2
VarC=((1/M)*sum(CVect.^2))-MoyC^2
ITmaxMinf=MoyTmax- 1.96*sqrt(VarTmax/M)
ITmaxMsup=MoyTmax+ 1.96*sqrt(VarTmax/M)
ICMinf=MoyC- 1.96*sqrt(VarC/M)
ICMsup=MoyC+ 1.96*sqrt(VarC/M)
hist(TmaxVect)
xlim([0.1 0.2])

