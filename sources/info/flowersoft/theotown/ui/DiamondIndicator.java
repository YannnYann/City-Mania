package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.Localizer;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class DiamondIndicator extends Indicator {
    public DiamondIndicator(int i, int i2, int i3, Gadget gadget) {
        super(i, i2, i3, 20, gadget);
    }

    @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        this.engine.setScale(0.5f, 0.5f);
        this.engine.drawImage(Resources.IMAGE_WORLD, this.px, this.py, 20.0f, 20.0f, 0.5f, 0.5f, Resources.ICON_DIAMOND);
        this.engine.setScale(1.0f, 1.0f);
        this.engine.setColor(this.skin.cIndicatorText);
        String str = "+" + Localizer.localizeDiamonds(getDiamonds());
        this.engine.drawText(this.font, str, this.px + 20, this.py, this.width - 25, this.height, 1.0f, 0.5f);
        this.engine.reset();
        int iRound = Math.round(this.font.getWidth(str)) + 25;
        int i3 = this.width;
        if (iRound <= i3 - 5 || iRound > i3) {
            this.width = iRound;
            this.parent.layout();
            SuccessOverlay.getInstance().setPlacement(0, getAbsoluteX(), getAbsoluteY());
        }
        if (Tutorial.isMarked(Tutorial.FLAG_DIAMONDS)) {
            Drawing.getInstance().drawArrow(i, i2, this, 0);
        }
    }

    public final int getDiamonds() {
        int diamonds = GameHandler.getInstance().getDiamonds();
        SuccessOverlay.Event eventOfType = SuccessOverlay.getInstance().getEventOfType(0);
        if (eventOfType == null) {
            return diamonds;
        }
        return (int) (((long) diamonds) - Math.round(eventOfType.amount * ((double) (1.0f - (eventOfType.effectiveDisplayedTimeMS / eventOfType.targetDisplayTimeMS)))));
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        if (!super.isVisible() || TheoTown.PREMIUM || !Tutorial.isVisible(Tutorial.FLAG_DIAMONDS) || Settings.hideUI) {
            return false;
        }
        return ((long) (Resources.getSpecificConfig("beginner").optInt("hide shop minutes") * 60)) <= Settings.playTimeSeconds || GameHandler.getInstance().getDiamonds() >= 100;
    }
}
