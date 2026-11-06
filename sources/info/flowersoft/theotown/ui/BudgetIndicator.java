package info.flowersoft.theotown.ui;

import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.util.Localizer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class BudgetIndicator extends Indicator {
    public final DefaultBudget budget;
    public final City city;
    public double lastEstate;

    public BudgetIndicator(int i, int i2, int i3, Gadget gadget, City city) {
        super(i, i2, i3, 20, gadget);
        SuccessOverlay.getInstance().setPlacement(1, getAbsoluteX(), getAbsoluteY());
        this.city = city;
        DefaultBudget defaultBudget = (DefaultBudget) city.getComponent(0);
        this.budget = defaultBudget;
        this.lastEstate = defaultBudget.getEstate();
    }

    @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        int iRound;
        super.draw(i, i2);
        this.engine.setScale(0.5f, 0.5f);
        this.engine.drawImage(Resources.IMAGE_WORLD, this.px, this.py, 20.0f, 20.0f, 0.5f, 0.5f, Resources.ICON_MONEY);
        this.engine.setScale(1.0f, 1.0f);
        if (!this.city.getGameMode().hasInfinityMoney()) {
            double estate = this.budget.getEstate();
            long jRound = Math.round(this.budget.getMonthlyIncome());
            if (estate > this.lastEstate) {
                double dExp = 1.0d - Math.exp(Gdx.graphics.getDeltaTime() * (-2.0f));
                double d = this.lastEstate;
                this.lastEstate = ((estate - d) * dExp) + d;
            } else {
                this.lastEstate = estate;
            }
            long jRound2 = Math.round(this.lastEstate);
            String strLocalizeMoney = Localizer.localizeMoney(jRound2, false);
            String str = " " + Localizer.localizeMoney(jRound, true);
            float width = this.font.getWidth(strLocalizeMoney);
            float width2 = this.font.getWidth(str);
            int i3 = this.width - 5;
            if (jRound2 < 0) {
                this.engine.setColor(this.skin.cIndicatorTextRed);
            } else {
                this.engine.setColor(this.skin.cIndicatorText);
            }
            this.engine.drawText(this.font, strLocalizeMoney, ((this.px + i3) - width) - width2, this.py, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            this.engine.setColor(jRound >= 0 ? this.skin.cIndicatorTextGreen : this.skin.cIndicatorTextRed);
            this.engine.drawText(this.font, str, (this.px + i3) - width2, this.py, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            this.engine.setColor(Colors.WHITE);
            iRound = Math.round(width + width2 + 20.0f + 5.0f);
        } else {
            int i4 = Resources.ICON_INFINITY;
            int i5 = this.height;
            this.engine.setScale(0.3f, 0.3f);
            if (this.city.getGameMode() == GameMode.SANDBOX) {
                this.engine.setColor(this.skin.cIndicatorTextYellow);
            }
            if (this.city.getGameMode() == GameMode.DEVELOPER) {
                this.engine.setColor(Colors.BLACK);
            }
            if (this.city.isUber()) {
                this.engine.setColor(this.skin.cIndicatorTextUber);
            }
            float f = i5;
            this.engine.drawImage(Resources.IMAGE_WORLD, this.px + 20, this.py, f, f, 0.5f, 0.5f, i4);
            iRound = i5 + 25;
            this.engine.setScale(1.0f, 1.0f);
            this.engine.setColor(Colors.WHITE);
        }
        int i6 = this.width;
        if (iRound <= i6 - 5 || iRound > i6) {
            this.width = iRound;
            this.parent.layout();
        }
        if (Tutorial.isMarked(Tutorial.FLAG_MONEY)) {
            Drawing.getInstance().drawArrow(i, i2, this, 0);
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return super.isVisible() && Tutorial.isVisible(Tutorial.FLAG_MONEY) && !Settings.hideUI;
    }
}
