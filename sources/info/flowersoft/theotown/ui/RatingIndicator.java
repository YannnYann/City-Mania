package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.cityinfo.RatingCityInfo;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class RatingIndicator extends Indicator {
    public final City city;
    public final AnimationDraft happinessAnimation;
    public final DefaultManagement management;

    public RatingIndicator(int i, int i2, int i3, Gadget gadget, City city) {
        super(i, i2, i3, 20, gadget);
        this.happinessAnimation = (AnimationDraft) Drafts.get("$anim_ui_happiness00", AnimationDraft.class);
        this.city = city;
        this.management = (DefaultManagement) city.getComponent(3);
    }

    @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        float ratingValue = this.management.getBuildingSurvey().getRatingValue();
        float ratingDelta = this.management.getBuildingSurvey().getRatingDelta();
        this.engine.drawImage(Resources.IMAGE_WORLD, this.px, this.py, 20.0f, 20.0f, 0.5f, 0.5f, this.happinessAnimation.frames[Math.min((int) (r2.length * ratingValue), r2.length - 1)]);
        String str = StringFormatter.format(this.city.getTranslator().translate(1871), Integer.valueOf(Math.round(100.0f * ratingValue))) + "%" + RatingCityInfo.getDeltaSign(ratingDelta);
        if (ratingValue <= 0.5f) {
            Engine engine = this.engine;
            Skin skin = this.skin;
            engine.setColor(Colors.interpolate(ratingValue * 2.0f, skin.cIndicatorTextRed, skin.cIndicatorTextYellow));
        } else {
            Engine engine2 = this.engine;
            Skin skin2 = this.skin;
            engine2.setColor(Colors.interpolate((ratingValue * 2.0f) - 1.0f, skin2.cIndicatorTextYellow, skin2.cIndicatorTextGreen));
        }
        this.engine.drawText(this.font, str, this.px + 20, this.py, this.width - 25, this.height, 1.0f, 0.5f);
        this.engine.setColor(Colors.WHITE);
        if (Tutorial.isMarked(Tutorial.FLAG_RATING)) {
            Drawing.getInstance().drawArrow(i, i2, this, 2);
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return Tutorial.isVisible(Tutorial.FLAG_RATING);
    }
}
