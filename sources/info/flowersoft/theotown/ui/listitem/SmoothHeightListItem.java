package info.flowersoft.theotown.ui.listitem;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.utils.TimeUtils;
import io.blueflower.stapel2d.gui.ListItem;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SmoothHeightListItem extends ListItem {
    public long lastChange;
    public int lastHeight;
    public int targetHeight;

    public abstract int getTargetHeight(boolean z);

    public SmoothHeightListItem(String str) {
        super(str);
        this.lastHeight = -1;
        this.targetHeight = -1;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        int iRound;
        int targetHeight = getTargetHeight(z);
        if (this.lastHeight == -1) {
            this.lastHeight = targetHeight;
            this.targetHeight = targetHeight;
        }
        long jMillis = TimeUtils.millis();
        int i = (int) (jMillis - this.lastChange);
        if (i >= 300) {
            iRound = this.targetHeight;
        } else {
            float fApply = Interpolation.smooth.apply(i / 300.0f);
            iRound = Math.round((this.targetHeight - r3) * fApply) + this.lastHeight;
        }
        if (targetHeight != this.targetHeight) {
            this.lastHeight = iRound;
            this.targetHeight = targetHeight;
            this.lastChange = jMillis;
        }
        return iRound;
    }
}
