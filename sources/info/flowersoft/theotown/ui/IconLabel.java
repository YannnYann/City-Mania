package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;

/* JADX INFO: loaded from: classes4.dex */
public class IconLabel extends Gadget {
    public Icon icon;
    public Label label;

    public IconLabel(int i, String str, int i2, int i3, Gadget gadget) {
        super(i2, i3, 0, 26, gadget);
        int iRound = Math.round(Resources.IMAGE_WORLD.getWidth(i));
        int iRound2 = Math.round(Resources.IMAGE_WORLD.getHeight(i));
        this.icon = new Icon(i, i2, i3, iRound, iRound2, this);
        Label label = new Label(str, i2 + iRound2, i3, 0, iRound2, this);
        this.label = label;
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        this.label.setFont(this.skin.fontBig);
    }

    public Icon getIcon() {
        return this.icon;
    }

    public Label getLabel() {
        return this.label;
    }
}
