package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class CityNameIndicator extends Indicator {
    public City city;

    public CityNameIndicator(int i, int i2, int i3, Gadget gadget, City city) {
        super(i, i2, 100, 20, gadget);
        this.city = city;
    }

    @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        DefaultPeople defaultPeople = (DefaultPeople) this.city.getComponent(9);
        this.engine.setColor(this.skin.cIndicatorText);
        this.engine.drawText(this.font, this.city.getName(), this.px + 5, this.py, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        int width = (int) (5 + this.font.getWidth(this.city.getName()) + 5.0f);
        this.engine.setScale(0.75f, 0.75f);
        this.engine.reset();
        this.engine.drawImage(Resources.IMAGE_WORLD, this.px + width, this.py, 20.0f, 20.0f, 0.5f, 0.5f, Resources.ICON_INHABITANTS);
        this.engine.setScale(1.0f, 1.0f);
        this.engine.setColor(this.skin.cIndicatorText);
        String str = StringFormatter.format("%1$,d", Integer.valueOf(defaultPeople.getPeople()));
        this.engine.drawText(this.font, str, this.px + r1, this.py, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        int width2 = (int) (width + 20 + this.font.getWidth(str) + 4.0f);
        this.engine.reset();
        int i3 = this.width;
        if (width2 > i3 || width2 < i3 - 2) {
            this.width = width2;
            this.parent.layout();
        }
        if (Tutorial.isMarked(Tutorial.FLAG_NAME)) {
            Drawing.getInstance().drawArrow(i, i2, this, 2);
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return Tutorial.isVisible(Tutorial.FLAG_NAME);
    }
}
