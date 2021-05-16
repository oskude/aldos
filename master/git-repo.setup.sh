if [[ -e "$SYSdir/aldos" ]]; then
	ShowRun git push "$SYSdir/aldos" master
else
	ShowRun git clone -c receive.denyCurrentBranch=updateInstead "$ARGtemplate/.." "$SYSdir/aldos"
fi
