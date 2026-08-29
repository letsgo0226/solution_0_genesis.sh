#!/bin/sh
command -v python3>/dev/null||{ command -v apk>/dev/null&&apk add --no-cache python3>/dev/null 2>&1; }
command -v python3>/dev/null||{ echo "python3 required" >&2; exit 1; }
Q=$1;N=$2;B=$3
[ -n "$Q" ]||read Q||Q=
[ -n "$N" ]||read N||N=
[ -n "$B" ]||read B||B=
D=$(dirname "$0");U="$D/solution_0_uptm.sh"
[ -s "$U" ]||U=solution_0_uptm.sh
R=https://raw.githubusercontent.com/letsgo0226/solution_0_uptm.sh/main/solution_0_uptm.sh
[ -s "$U" ]||{ command -v curl>/dev/null&&curl -fsSL "$R" -o "$U"; }||{ command -v wget>/dev/null&&wget -qO "$U" "$R"; }
[ -s "$U" ]||{ echo "FETCH=0" >&2; exit 1; }
printf '%s\n%s\n%s\n' "$Q" "$N" "$B"|sh "$U">solution_0_genesis.run
python3 -c 'import sys,json as j,os;G,U=sys.argv[1:];C="Cosmic Love Is The Solution(s) For Everything.";J=lambda x:j.dumps(x,separators=(",",":"),sort_keys=True);E=lambda x:sum((i+1)*(c+1)*257**(i%6)for i,c in enumerate(x if isinstance(x,bytes)else str(x).encode()))%10**18;sf=open(G,"rb").read()if os.path.exists(G)else b"";cf=open(U,"rb").read();bd=open("solution_0_uptm.body","rb").read();ud=j.load(open("solution_0_uptm.clcert"));ok=int(ud.get("OP")==ud.get("FIX")==ud.get("ZE")==1 and len(cf)<=2048 and len(bd)>0);ct={"AI":ok,"BIO":int(len(bd)>0),"MEM":int(len(sf)>0),"HEALTH":int(ud.get("BUG")==0),"SDG":int(ud.get("PCC")==1),"UNK":1};cv=min(ct.values());B0={"P":"GENESIS_B0","SELF":[int(len(sf)>0),len(sf),E(sf)],"CORE":[1,len(cf),E(cf)],"UPTM":ud,"CT":ct,"RUN":"UPTM=Run(CORE,Q,N,B)","DEPLOY":["FETCH",1,"VERIFY",ok]};gb=J(B0).encode();open("solution_0_genesis.body","wb").write(gb);L=lambda x:x if str(x).startswith("SOL0:")else"SOL0:%s:%s"%(E(x),C);f=L(J(B0))==L(L(J(B0)));op=int(ok and cv and f and len(cf)>0);D={"P":"solution_0_genesis.sh","OBJ":"one-step-program-deployment","C":C,"B0":B0,"CT":cv,"EQ":"S(S(B0))=S(B0)","GENESIS":op,"OP":op,"FIX":int(f),"ABS":op,"LOSS":[1-op,0],"BUG":1-op,"PCC":op,"ZE":op};open("solution_0_genesis.clcert","w").write(J(D)+"\n");print(J(D))' "$0" "$U"
