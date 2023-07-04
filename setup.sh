#!/usr/bin/env bash
#source rooutil/bin/thisrooutil.sh
#source rooutil/bin/setuproot.sh
#export condorPath="/home/users/kdownham/Triboson/VVVNanoLooper/condor"
export skimDir="/ceph/cms/store/user/kdownham/skimOutput/3LepTau_4Lep"
#export looperOutput="/ceph/cms/store/user/kdownham/VVVAnalysis/051723"
export condorPath="/home/users/kmohrman/wwz/kmohrman_fork/VVVNanoLooper/condor"
#export looperOutput="/ceph/cms/store/user/kmohrman/wwz/test"
export looperOutput="/ceph/cms/store/user/kmohrman/VVVAnalysis/t00"
#export skimDir="/ceph/cms/store/user/kdownham/skimOutput/WWZ_4L"
#export looperOutput="/ceph/cms/store/user/kdownham/VVVAnalysis/OldLepID"
xgboost_cfg=${CMSSW_BASE}/config/toolbox/${SCRAM_ARCH}/tools/selected/py3-xgboost.xml
xgboost_version="$(grep -e 'tool name' ${xgboost_cfg} | grep 'py3-xgboost')"
xgboost_version="${xgboost_version##*=\"}"
xgboost_version="${xgboost_version%%\"*}"
xgboost_path="/cvmfs/cms.cern.ch/${SCRAM_ARCH}/external/py3-xgboost/${xgboost_version}/lib/python3.8/site-packages/xgboost"
export LD_LIBRARY_PATH=${xgboost_path}/lib:$LD_LIBRARY_PATH
export XGBOOST_PATH=${xgboost_path}
pwd
ls
cd ProjectMetis
#source setup.sh
cd ..

