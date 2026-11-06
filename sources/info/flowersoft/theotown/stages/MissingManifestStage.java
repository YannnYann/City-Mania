package info.flowersoft.theotown.stages;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MissingManifestStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MissingManifestStage extends BaseStage {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingManifestStage(Stapel2DGameContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        if (PluginHelper.hasPluginsWithoutManifest()) {
            return;
        }
        getGameStack().pop();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        TranslationManager translator = this.context.getTranslator();
        int i = Resources.ICON_ALERT;
        String strTranslate = translator.translate(2984);
        StringBuilder sb = new StringBuilder();
        sb.append(translator.translate(IronSourceError.ERROR_RV_LOAD_SUCCESS_WRONG_AUCTION_ID));
        sb.append('\n');
        List<String> pluginsWithoutManifest = PluginHelper.getPluginsWithoutManifest();
        Intrinsics.checkNotNullExpressionValue(pluginsWithoutManifest, "getPluginsWithoutManifest(...)");
        sb.append(CollectionsKt___CollectionsKt.joinToString$default(pluginsWithoutManifest, "\n", "    ", null, 0, null, new Function1() { // from class: info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MissingManifestStage.enter$lambda$0((String) obj);
            }
        }, 28, null));
        Dialog dialog = new Dialog(i, strTranslate, sb.toString(), 300, 200, this.gui);
        dialog.setCanCloseViaBackground(false);
        dialog.addButton(Resources.ICON_ABOUT, translator.translate(36), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MissingManifestStage.enter$lambda$1$0();
            }
        });
        dialog.addButton(Resources.ICON_OK, translator.translate(2447), new Runnable() { // from class: info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MissingManifestStage.enter$lambda$1$1(this.f$0);
            }
        });
        dialog.setVisible(true, false);
    }

    public static final CharSequence enter$lambda$0(String str) {
        Intrinsics.checkNotNull(str);
        return str;
    }

    public static final void enter$lambda$1$0() {
        TheoTown.runtimeFeatures.openURLInApp("https://forum.theotown.com/viewtopic.php?t=10950");
    }

    public static final void enter$lambda$1$1(MissingManifestStage missingManifestStage) {
        missingManifestStage.getGameStack().pop();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "MissingManifestStage";
    }
}
