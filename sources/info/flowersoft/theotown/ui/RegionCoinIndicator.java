package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class RegionCoinIndicator extends Indicator {
    public final Translator translator;

    public RegionCoinIndicator(int i, int i2, Gadget gadget, Translator translator) {
        super(i, i2, Math.round(Resources.skin.fontSmall.getWidth("+" + Localizer.localizeRegionCoins(GameHandler.getInstance().getRegionCoins()))) + 25, gadget.getClientHeight(), gadget);
        this.translator = translator;
        this.font = this.skin.fontDefault;
    }

    @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        this.engine.drawImage(Resources.IMAGE_WORLD, this.px, this.py, getClientHeight(), getClientHeight(), 0.5f, 0.5f, Resources.ICON_ONLINE_REGION_COIN);
        this.engine.setColor(this.skin.cIndicatorText);
        String str = "+" + Localizer.localizeRegionCoins(GameHandler.getInstance().getRegionCoins());
        this.engine.drawText(this.font, str, this.px + getClientHeight(), this.py, (this.width - getClientHeight()) - 5, this.height, 1.0f, 0.5f);
        this.engine.reset();
        int iRound = Math.round(this.font.getWidth(str)) + getClientHeight() + 5;
        int i3 = this.width;
        if (iRound <= i3 - 5 || iRound > i3) {
            this.width = iRound;
            this.parent.layout();
            SuccessOverlay.getInstance().setPlacement(3, getAbsoluteX(), getAbsoluteY());
        }
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return super.isVisible() && TheoTown.PREMIUM && Backend.getInstance().getUser().isValid();
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        new RegionCoinDialog(this.translator, (Master) getAbsoluteParent()).setVisible(true);
    }
}
