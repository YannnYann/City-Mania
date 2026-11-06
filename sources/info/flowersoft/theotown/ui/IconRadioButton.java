package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.ToggleButton;

/* JADX INFO: loaded from: classes4.dex */
public class IconRadioButton extends ToggleButton {
    public IconRadioButton(int i, String str, Gadget gadget) {
        super(0, 0, 0, 0, gadget);
        this.icon.setFrame(i);
        this.icon.setFillParent(false);
        this.text.setText(str);
        this.text.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        this.text.setFillParent(false);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        Icon icon;
        super.layout();
        if (this.text == null || (icon = this.icon) == null) {
            return;
        }
        icon.setShape(0, 0, getClientHeight(), getClientHeight());
        this.text.setShape(getClientHeight(), 0, getClientWidth() - getClientHeight(), getClientHeight());
    }

    @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        getParent().reset();
        super.onClick();
    }
}
