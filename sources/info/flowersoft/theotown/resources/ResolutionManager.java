package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.crossplatform.TheoTown;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class ResolutionManager {
    public final IntList factors = new IntList();
    public final int height;
    public int perfect;
    public final int width;
    public float xdpi;

    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ResolutionManager(int r4, int r5) {
        /*
            r3 = this;
            r3.<init>()
            io.blueflower.stapel2d.util.IntList r0 = new io.blueflower.stapel2d.util.IntList
            r0.<init>()
            r3.factors = r0
            r3.width = r4
            r3.height = r5
            com.badlogic.gdx.Graphics r0 = com.badlogic.gdx.Gdx.graphics
            float r0 = r0.getPpiX()
            r3.xdpi = r0
            com.badlogic.gdx.Graphics r1 = com.badlogic.gdx.Gdx.graphics
            int r1 = r1.getBackBufferWidth()
            float r1 = (float) r1
            info.flowersoft.theotown.crossplatform.RuntimeFeatures r2 = info.flowersoft.theotown.crossplatform.TheoTown.runtimeFeatures
            int r2 = r2.getLogicalWidth()
            float r2 = (float) r2
            float r1 = r1 / r2
            float r0 = r0 * r1
            r3.xdpi = r0
            com.badlogic.gdx.Application r0 = com.badlogic.gdx.Gdx.app
            com.badlogic.gdx.Application$ApplicationType r0 = r0.getType()
            com.badlogic.gdx.Application$ApplicationType r1 = com.badlogic.gdx.Application.ApplicationType.Desktop
            if (r0 != r1) goto L4e
            info.flowersoft.theotown.crossplatform.RuntimeFeatures r0 = info.flowersoft.theotown.crossplatform.TheoTown.runtimeFeatures
            boolean r0 = r0.supportsFullscreen()
            if (r0 == 0) goto L4e
            boolean r0 = com.badlogic.gdx.scenes.scene2d.utils.UIUtils.isMac
            if (r0 == 0) goto L46
            float r0 = r3.xdpi
            r1 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 * r1
            r3.xdpi = r0
            goto L4e
        L46:
            float r0 = r3.xdpi
            r1 = 1072064102(0x3fe66666, float:1.8)
            float r0 = r0 * r1
            r3.xdpi = r0
        L4e:
            com.badlogic.gdx.Application r0 = com.badlogic.gdx.Gdx.app
            com.badlogic.gdx.Application$ApplicationType r0 = r0.getType()
            com.badlogic.gdx.Application$ApplicationType r1 = com.badlogic.gdx.Application.ApplicationType.iOS
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r0 != r1) goto L5f
            float r0 = r3.xdpi
            float r0 = r0 * r2
            r3.xdpi = r0
        L5f:
            com.badlogic.gdx.Application r0 = com.badlogic.gdx.Gdx.app
            com.badlogic.gdx.Application$ApplicationType r0 = r0.getType()
            com.badlogic.gdx.Application$ApplicationType r1 = com.badlogic.gdx.Application.ApplicationType.Android
            if (r0 != r1) goto L71
            float r0 = r3.xdpi
            r1 = 1066192077(0x3f8ccccd, float:1.1)
            float r0 = r0 * r1
            r3.xdpi = r0
        L71:
            float r0 = r3.xdpi
            boolean r0 = java.lang.Float.isNaN(r0)
            if (r0 != 0) goto L8e
            float r0 = r3.xdpi
            boolean r0 = java.lang.Float.isInfinite(r0)
            if (r0 != 0) goto L8e
            float r0 = r3.xdpi
            int r1 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r1 <= 0) goto L8e
            r1 = 1176256512(0x461c4000, float:10000.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L92
        L8e:
            r0 = 1126170624(0x43200000, float:160.0)
            r3.xdpi = r0
        L92:
            int r4 = java.lang.Math.min(r4, r5)
            float r4 = (float) r4
            float r5 = r3.xdpi
            float r4 = r4 / r5
            r0 = 1082130432(0x40800000, float:4.0)
            float r4 = r4 - r0
            r0 = 0
            r1 = 1098907648(0x41800000, float:16.0)
            float r4 = com.badlogic.gdx.math.MathUtils.clamp(r4, r0, r1)
            r0 = 1036831949(0x3dcccccd, float:0.1)
            float r4 = r4 * r0
            float r4 = r4 + r2
            float r5 = r5 * r4
            r3.xdpi = r5
            r3.evaluateResolutions()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.ResolutionManager.<init>(int, int):void");
    }

    public final void evaluateResolutions() {
        int i = (int) ((this.width * 100.0f) / this.xdpi);
        TheoTown.analytics.writeToLog("ResolutionMgr perfect width " + i + " for res " + this.width + "x" + this.height + " with xdpi " + this.xdpi + " derived from " + Gdx.graphics.getPpiX());
        int i2 = 1;
        while (true) {
            int i3 = this.width;
            if (i2 >= i3) {
                break;
            }
            int i4 = i3 / i2;
            int i5 = this.height / i2;
            if (i4 < 240 || i5 < 160) {
                break;
            }
            if ((i2 * 100) / this.xdpi >= 0.5d) {
                this.factors.add(i2);
            }
            i2++;
        }
        if (this.factors.isEmpty()) {
            this.factors.add(1);
        }
        this.factors.reverse();
        for (int i6 = 0; i6 < this.factors.size(); i6++) {
            if (this.width / (this.factors.get(i6) + 0.5f) <= i) {
                this.perfect = i6;
            }
        }
        TheoTown.analytics.writeToLog("ResolutionMgr perfect index " + this.perfect + " (" + this.factors.get(this.perfect) + ") with " + this.factors.size() + " factors available");
    }

    public int getPerfectResolution() {
        return this.perfect;
    }

    public int countResolutions() {
        return this.factors.size();
    }

    public int getFactor(int i) {
        return this.factors.get(Math.max(Math.min(i + this.perfect, this.factors.size() - 1), 0));
    }

    public int getWidth(int i) {
        return this.width / getFactor(i);
    }

    public int getHeight(int i) {
        return this.height / getFactor(i);
    }
}
