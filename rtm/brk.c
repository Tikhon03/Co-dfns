﻿NM(brk,"brk",0,0,MT,MT,DFD,MT,MT)
brk_f brk_c;
DF(brk_f){const std::vector<A>&rv=r.nv;I rl=(I)rv.size();
 if(!rl){if(l.r!=1)err(4);z=l;R;}
 if(rl!=l.r)err(4);z.r=0;DO(rl,z.r+=abs(rv[i].r))if(z.r>4)err(16);
 I s=z.r;DO(4,z.s[i]=1)
 DO(rl,I j=i;I k=abs(rv[j].r);s-=k;
  DO(k,z.s[s+i]=(k==rv[j].r)?rv[j].s[i]:l.s[rl-(j+1)]))
 af::index x[4];DO(rl,if(rv[i].r>=0)x[rl-(i+1)]=rv[i].v.as(s32))
 z.v=l.v(x[0],x[1],x[2],x[3]);}

OD(brk,"brk",scm(l),scd(l),MFD,DFD,MT ,MT )
MF(brk_o){if(ww.r>1)err(4);ll(z,r,e,ww);}
DF(brk_o){if(ww.r>1)err(4);ll(z,l,r,e,ww);}

 