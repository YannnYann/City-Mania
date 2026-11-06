package info.flowersoft.theotown.ui;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class LimitedAccessOfflineModeDialog {
    public static boolean isOffline() {
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            return (TheoTown.gamesService.isOfflineMode() || Backend.getInstance().getCake().isEmpty()) && TheoTown.gamesService.enforceCake();
        }
        return false;
    }

    public static boolean showIfNeeded(Stapel2DGameContext stapel2DGameContext, Master master) {
        if (!isOffline()) {
            return false;
        }
        show(stapel2DGameContext, master);
        return true;
    }

    public static Dialog show(Stapel2DGameContext stapel2DGameContext, Master master) {
        TranslationManager translator = stapel2DGameContext.getTranslator();
        Dialog dialog = new Dialog(Resources.ICON_LOCKED, translator.translate(2980), translator.translate(2206), 200, 106, master);
        dialog.addButton(Resources.ICON_OK, translator.translate(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE), false, null).setGolden(true).addSensitiveKey(66);
        dialog.setVisible(true);
        return dialog;
    }
}
