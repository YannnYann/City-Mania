package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.TimedEffectManager;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class FastForwardDialog extends BuyOrVideoDialog {
    public FastForwardDialog(Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter, Master master, final City city, final int i) {
        super(Resources.ICON_WIZARD, stapel2DGameContext.getTranslator().translate(1292), StringFormatter.format(stapel2DGameContext.getTranslator().translate(1295), TimeSpan.localize(getTimeFeature().time)), master, getTimeFeature().diamondPrice.get(), (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.ui.FastForwardDialog$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return FastForwardDialog.$r8$lambda$yjjCDbKZbZfxFB36AoU3vQMwnSM(city, i);
            }
        }, setter, stapel2DGameContext, "fast forward2", "Fast_Speed", !getFreeTimeFeature().isUnlocked() && getFreeTimeFeature().buyable);
    }

    public static /* synthetic */ Boolean $r8$lambda$yjjCDbKZbZfxFB36AoU3vQMwnSM(City city, int i) {
        TimedEffectManager timedEffectManager = GameHandler.getInstance().getTimedEffectManager();
        timedEffectManager.setFastForwardDays(timedEffectManager.getFastForwardDays() + (getTimeFeature().time / 500));
        ((DefaultDate) city.getComponent(1)).setSpeed(i);
        return Boolean.TRUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FeatureDraft getTimeFeature() {
        return (FeatureDraft) Features.getInstance().FEATURE_TIME00.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FeatureDraft getFreeTimeFeature() {
        return (FeatureDraft) Features.getInstance().FEATURE_FREEFASTSPEED00.get();
    }
}
