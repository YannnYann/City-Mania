package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.tutorial.TutorialButtonFilter;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class RankIndicator extends Button {
    public final City city;
    public final DraftLocalizer draftLocalizer;
    public RankDraft localizedRank;
    public String localizedRankTitle;
    public final DefaultRequirement requirement;

    public RankIndicator(int i, int i2, Gadget gadget, City city) {
        super(i, i2, !city.getGameMode().hasInfinityMoney() ? 60 : 0, 40, gadget);
        this.city = city;
        this.requirement = (DefaultRequirement) city.getComponent(11);
        this.draftLocalizer = new DraftLocalizer(city);
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        int i3 = i + this.x;
        int i4 = i2 + this.y;
        Engine engine = this.skin.engine;
        int currentXp = this.city.getCurrentXp();
        RankDraft rank = this.city.getRank();
        RankDraft rankDraft = Drafts.RANKS.get(Math.min(this.city.getRank().ordinal + 1, Drafts.RANKS.size() - 1));
        int i5 = rank.xp.get();
        int i6 = rankDraft.xp.get();
        boolean z = rank != rankDraft;
        if (rank != this.localizedRank) {
            this.localizedRankTitle = this.draftLocalizer.getTitle(rank);
            this.localizedRank = rank;
        }
        Font font = Resources.skin.fontSmall;
        engine.setTransparency(50);
        Color color = Colors.BLACK;
        engine.setColor(color);
        Drawing.getInstance().drawCircle((this.width / 2) + i3, (this.height / 2) + i4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 14.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 6.2831855f, 1.0f, 1.0f, engine);
        Engine engine2 = engine;
        engine2.setTransparency(150);
        if (z) {
            float fMin = Math.min(Math.max((currentXp - i5) / (i6 - i5), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
            float f = this.height * 0.5f;
            float f2 = f - 4.0f;
            float f3 = i3;
            float f4 = i4;
            Drawing.getInstance().drawCircle((this.width * 0.5f) + f3, (this.height * 0.5f) + f4, f2, f, 2.620354f, 6.804425f, 1.0f, 1.0f, engine2);
            engine2.setTransparency(50);
            engine2.setColor(Colors.WHITE);
            float f5 = f2 + 1.0f;
            float f6 = f - 1.0f;
            Drawing.getInstance().drawCircle(f3 + (this.width * 0.5f), f4 + (this.height * 0.5f), f5, f6, 2.670354f, 6.7544246f, 1.0f, 1.0f, engine2);
            engine2.setTransparency(200);
            engine2.setColor(this.skin.cIndicatorRank);
            Drawing.getInstance().drawCircle(f3 + (this.width * 0.5f), f4 + (this.height * 0.5f), f5, f6, 2.670354f, 2.670354f + (fMin * 4.0840707f), 1.0f, 1.0f, engine2);
            engine2 = engine2;
        }
        engine2.setColor(Colors.WHITE);
        engine2.setTransparency(255);
        Engine engine3 = engine2;
        drawText(font, this.localizedRankTitle, i3, i4, this.width, this.height, 0.5f, 1.0f, engine3);
        Drawing.getInstance().drawOutlinedText(String.valueOf(rank.ordinal), i3 + (this.width * 0.5f), i4 + (this.height * 0.5f), this.skin.fontBig, color, engine3, 0.5f, 0.5f);
        if (this.requirement.hasNewRank() && !this.city.isReadonly()) {
            TutorialButtonFilter.drawMarked(engine3, i3, i4, getWidth(), getHeight());
        }
        if (Tutorial.isMarked(Tutorial.FLAG_RANK)) {
            Drawing.getInstance().drawArrow(i, i2, this, 2);
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return super.isVisible() && Tutorial.isVisible(Tutorial.FLAG_RANK);
    }

    public static void drawText(Font font, String str, int i, int i2, int i3, int i4, float f, float f2, Engine engine) {
        float width = font.getWidth(str);
        float f3 = i3;
        if (width > f3) {
            float f4 = f3 / width;
            engine.setScale(f4, f4);
        }
        engine.setColor(Colors.BLACK);
        engine.setTransparency(150);
        float f5 = i2;
        float f6 = i4;
        engine.drawText(font, str, i + 1, f5, f3, f6, f, f2);
        float f7 = i;
        engine.drawText(font, str, f7, i2 + 1, f3, f6, f, f2);
        engine.drawText(font, str, i - 1, f5, f3, f6, f, f2);
        engine.drawText(font, str, f7, i2 - 1, f3, f6, f, f2);
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        engine.drawText(font, str, f7, f5, f3, f6, f, f2);
        engine.setScale(1.0f, 1.0f);
    }
}
