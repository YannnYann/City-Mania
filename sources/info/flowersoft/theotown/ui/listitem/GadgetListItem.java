package info.flowersoft.theotown.ui.listitem;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;

/* JADX INFO: loaded from: classes4.dex */
public class GadgetListItem extends ListItem {
    public boolean canBeSelected;
    public boolean drawBackground;
    public final Gadget gadget;
    public int offsetY;

    public GadgetListItem(Gadget gadget) {
        super("");
        this.canBeSelected = true;
        this.gadget = gadget;
        gadget.setPosition(-1000, 0);
    }

    public Gadget getGadget() {
        return this.gadget;
    }

    public boolean isDrawBackground() {
        return this.drawBackground;
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public void setCanBeSelected(boolean z) {
        this.canBeSelected = z;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        GadgetListItem gadgetListItem;
        int i6;
        int i7;
        this.offsetY = i3;
        if (this.drawBackground) {
            gadgetListItem = this;
            i6 = i2;
            i7 = i3;
            super.drawBackground(z && this.canBeSelected, i, i6, i7, i4, i5, skin);
        } else {
            gadgetListItem = this;
            i6 = i2;
            i7 = i3;
        }
        if (gadgetListItem.gadget.isVisible()) {
            Gadget gadget = gadgetListItem.gadget;
            gadget.draw(i6 - gadget.getX(), i7 - gadgetListItem.gadget.getY());
            gadgetListItem.gadget.update();
        }
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        if (this.gadget.isVisible()) {
            return this.gadget.getHeight();
        }
        return 0;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public boolean isVisible() {
        return super.isVisible() && this.gadget.isVisible();
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        Gadget gadget = this.gadget;
        gadget.setPosition(0, this.offsetY - gadget.getAbsoluteY());
        TouchPoint touchPoint = new TouchPoint(i, i2) { // from class: info.flowersoft.theotown.ui.listitem.GadgetListItem.1
            public final /* synthetic */ int val$px;
            public final /* synthetic */ int val$py;

            {
                this.val$px = i;
                this.val$py = i2;
                Master master = (Master) GadgetListItem.this.gadget.getAbsoluteParent();
                this.x = (i + GadgetListItem.this.gadget.getAbsoluteX()) / master.getWidthRatio();
                float absoluteY = (i2 + GadgetListItem.this.gadget.getAbsoluteY()) / master.getHeightRatio();
                this.y = absoluteY;
                this.firstX = this.x;
                this.firstY = absoluteY;
                this.primary = true;
            }
        };
        this.gadget.updateTouchInput(new TouchUpdate(touchPoint, null, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, null));
        this.gadget.updateTouchInput(new TouchUpdate(null, touchPoint, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, null));
        this.gadget.setPosition(-1000, 0);
    }
}
