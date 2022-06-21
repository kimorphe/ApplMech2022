import numpy as np
import matplotlib.pyplot as plt


class Crv:
    def __init__(self,fname,yshift=0):
        fp=open(fname,"r")
        xx=[]
        yy=[]
        for row in fp:
            dat=row.strip().split(",")
            xx.append(float(dat[0]))
            yy.append(float(dat[1]))
        
        xx.append(xx[0])
        yy.append(yy[0])

        self.xx=np.array(xx)
        self.yy=np.array(yy)-yshift
        fp.close()
    def draw(self,ax,clr="k",lw=1):
        ax.plot(self.xx,self.yy,"-"+clr,linewidth=lw)
        x1=np.min(self.xx)
        x2=np.max(self.xx)
        y1=np.min(self.yy)
        y2=np.max(self.yy)
        ax.set_xlim([x1,x2])
        ax.set_ylim([y1,y2])
        #ax.grid(True)
        fsz=14
        ax.tick_params(labelsize=fsz)

if __name__=="__main__":
    crv=Crv("bnd_crack.out",yshift=12)
    fig=plt.figure()
    ax=fig.add_subplot(111)
    crv.draw(ax)
    ax.set_aspect(1.0)
    ax.grid(True)
    fig.savefig("bnd_crack.png",bbox_inches="tight")

    crv=Crv("bnd.out",yshift=12)
    fig2=plt.figure()
    bx=fig2.add_subplot(111)
    crv.draw(bx)
    bx.set_aspect(1.0)
    bx.grid(True)
    fig2.savefig("bnd.png",bbox_inches="tight")

    plt.show()
