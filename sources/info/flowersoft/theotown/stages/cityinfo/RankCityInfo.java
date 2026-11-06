package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.RankStage;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StaticGetter;

/* JADX INFO: loaded from: classes4.dex */
public class RankCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 1599;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_RANK;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(2968);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, final Gadget gadget, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        Color color;
        int i;
        int i2;
        final City city2 = city;
        super.build(city, gadget, stapel2DGameContext, gameStack);
        final TranslationManager translator = stapel2DGameContext.getTranslator();
        DraftLocalizer draftLocalizer = new DraftLocalizer(city2);
        Skin skin = Resources.skin;
        boolean z = true;
        int i3 = 0;
        while (i3 < Drafts.RANKS.size()) {
            final RankDraft rankDraft = Drafts.RANKS.get(i3);
            final boolean z2 = (TheoTown.PREMIUM || !Features.getInstance().canUnlockRank(city2, rankDraft) || Settings.hideRankFeature || city2.isReadonly()) ? false : true;
            String str = StringFormatter.format(translator.translate(2379), Integer.valueOf(rankDraft.xp.get()));
            if (z2) {
                str = str + "     " + translator.translate(1700);
            }
            boolean z3 = z && rankDraft != ((DefaultRequirement) city2.getComponent(11)).getNewRank();
            StaticGetter staticGetter = new StaticGetter(draftLocalizer.getTitle(rankDraft) + " (" + rankDraft.ordinal + ")");
            StaticGetter staticGetter2 = new StaticGetter(str);
            if (z) {
                color = z3 ? skin.cText : skin.cTextAccent;
            } else {
                color = skin.cTextSecondary;
            }
            Color color2 = color;
            if (z) {
                i2 = Resources.ICON_OK;
            } else if (z2) {
                i2 = Resources.ICON_DIAMOND;
            } else {
                i = 0;
                addClickableItem(staticGetter, staticGetter2, color2, i, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RankCityInfo.$r8$lambda$EHG4ei5Bi65KckfHOzWaxbXT6rs(rankDraft, z2, city2, translator, gadget, gameStack, stapel2DGameContext);
                    }
                });
                i3++;
                city2 = city;
                translator = translator;
                z = z3;
            }
            i = i2;
            addClickableItem(staticGetter, staticGetter2, color2, i, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RankCityInfo.$r8$lambda$EHG4ei5Bi65KckfHOzWaxbXT6rs(rankDraft, z2, city2, translator, gadget, gameStack, stapel2DGameContext);
                }
            });
            i3++;
            city2 = city;
            translator = translator;
            z = z3;
        }
        this.listBox.selectItemIndex(Math.min(city.getRank().ordinal + 2, this.listBox.countItems() - 1));
    }

    public static /* synthetic */ void $r8$lambda$EHG4ei5Bi65KckfHOzWaxbXT6rs(final RankDraft rankDraft, boolean z, final City city, Translator translator, Gadget gadget, final GameStack gameStack, Stapel2DGameContext stapel2DGameContext) {
        int i = rankDraft.ordinal;
        if (i > 0) {
            if (z) {
                FeatureDraft unlockRankFeature = Features.getInstance().getUnlockRankFeature(city, rankDraft);
                if (unlockRankFeature != null) {
                    new BuyOrVideoDialog(Resources.ICON_RANK, translator.translate(1700), translator.translate(1274), (Master) gadget.getAbsoluteParent(), unlockRankFeature.diamondPrice.get(), (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda1
                        @Override // io.blueflower.stapel2d.util.Getter
                        public final Object get() {
                            return RankCityInfo.m2314$r8$lambda$Jugy1Bbzw8nrgWAS9tyhsWuYU(city, rankDraft, gameStack);
                        }
                    }, (Setter<Stage>) new Setter() { // from class: info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda2
                        @Override // io.blueflower.stapel2d.util.Setter
                        public final void set(Object obj) {
                            gameStack.push((Stage) obj);
                        }
                    }, stapel2DGameContext, unlockRankFeature.id, "Get_Rank", false).setVisible(true);
                    return;
                }
                return;
            }
            if (i > city.getRank().ordinal || city.isReadonly()) {
                return;
            }
            gameStack.push(new RankStage(stapel2DGameContext, city, rankDraft));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Jug-y1Bb-zw8nrgWAS9tyhsWuYU, reason: not valid java name */
    public static /* synthetic */ Boolean m2314$r8$lambda$Jugy1Bbzw8nrgWAS9tyhsWuYU(City city, RankDraft rankDraft, GameStack gameStack) {
        ((DefaultRequirement) city.getComponent(11)).setNewRank(rankDraft);
        gameStack.pop();
        return Boolean.TRUE;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "RankCityInfo";
    }

    public String toString() {
        return "Rank";
    }
}
