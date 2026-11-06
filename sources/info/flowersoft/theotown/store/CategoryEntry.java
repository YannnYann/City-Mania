package info.flowersoft.theotown.store;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.ui.GoldButton;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;

/* JADX INFO: loaded from: classes4.dex */
public class CategoryEntry extends Panel {
    public final int actionIcon;
    public int childIndex;
    public boolean clickOnWholeThing;
    public final int icon;
    public Label lblCount;
    public Label lblTitle;
    public final Runnable onClick;
    public final String subtitle;
    public final String title;

    public CategoryEntry(Gadget gadget, String str, String str2, int i, int i2, Stapel2DGameContext stapel2DGameContext, Runnable runnable) {
        super(0, 0, gadget.getClientWidth() - 4, 40, gadget);
        this.clickOnWholeThing = true;
        this.childIndex = 0;
        this.childIndex = gadget.countChildren();
        this.title = str;
        this.subtitle = str2;
        this.icon = i;
        this.actionIcon = i2;
        this.onClick = runnable;
        build();
    }

    public CategoryEntry setClickOnWholeThing(boolean z) {
        this.clickOnWholeThing = z;
        return this;
    }

    private void build() {
        new Button(0, 0, 0, 0, this) { // from class: info.flowersoft.theotown.store.CategoryEntry.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (CategoryEntry.this.clickOnWholeThing) {
                    super.onClick();
                    CategoryEntry.this.onClick.run();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        }.setFillParent(true);
        ElementLine elementLine = new ElementLine(0, 2, 0, 0, getClientWidth(), getClientHeight(), this);
        elementLine.setPadding(10, 2, 2, 2);
        int i = this.icon;
        if (i != 0) {
            new Icon(i, 0, 0, elementLine.getClientHeight(), elementLine.getClientHeight(), elementLine.getFirstPart());
        }
        Label label = new Label(this.title, 0, 0, elementLine.getClientWidth(), elementLine.getClientHeight(), elementLine.getFirstPart());
        this.lblTitle = label;
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f);
        Label label2 = new Label(this.subtitle, 0, 0, elementLine.getClientWidth(), elementLine.getClientHeight(), this.lblTitle);
        this.lblCount = label2;
        label2.setFont(this.skin.fontSmall);
        this.lblCount.setColor(Colors.GRAY);
        this.lblCount.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.7f);
        new GoldButton(this.actionIcon, "", 0, 0, elementLine.getClientHeight(), elementLine.getClientHeight(), elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.store.CategoryEntry.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                CategoryEntry.this.onClick.run();
            }
        }.setGolden(false);
        layout();
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }
}
