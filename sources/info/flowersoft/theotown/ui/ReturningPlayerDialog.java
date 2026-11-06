package info.flowersoft.theotown.ui;

import com.badlogic.gdx.math.MathUtils;
import com.ironsource.C3844t;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReturningPlayerDialog.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ReturningPlayerDialog extends Dialog {
    public static final Companion Companion = new Companion(null);
    public boolean claimed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReturningPlayerDialog(Master gui, Translator translator, int i) {
        super(Resources.PEOPLE_GIRL, translator.translate(470), String.format(translator.getLocale(), translator.translate(2950), Integer.valueOf(i)), gui);
        Intrinsics.checkNotNullParameter(gui, "gui");
        Intrinsics.checkNotNullParameter(translator, "translator");
        final SpecialInt specialInt = new SpecialInt(MathUtils.clamp(Companion.getConfig().optInt(C3844t.l, 1), 0, 300));
        new IconLabel(Resources.ICON_DIAMOND, '+' + Localizer.localizeDiamonds(specialInt.get()), 0, 0, getControlLine().getFirstPart());
        setDrawBackground(true);
        setCanCloseViaBackground(false);
        new GoldButton(Resources.ICON_OK, translator.translate(3353), getControlLine().getClientHeight(), getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.ReturningPlayerDialog.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (ReturningPlayerDialog.this.claimed) {
                    return;
                }
                ReturningPlayerDialog.this.claimed = true;
                GameHandler.getInstance().earnDiamonds(specialInt.get(), true, "returning player launch present");
                GameHandler.getInstance().setLastSaveTime(InternetTime.getInstance().getTime());
                ReturningPlayerDialog.this.setVisible(false);
            }
        }.setGolden(true);
    }

    /* JADX INFO: compiled from: ReturningPlayerDialog.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final JSONObject getConfig() {
            JSONObject specificConfig = Resources.getSpecificConfig("returning reward");
            Intrinsics.checkNotNullExpressionValue(specificConfig, "getSpecificConfig(...)");
            return specificConfig;
        }
    }
}
