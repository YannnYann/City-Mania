package info.flowersoft.theotown.ui;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.AccountStage;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class MigrateAccountDialog {
    public static boolean wasShown = false;

    public boolean shouldShow() {
        User user;
        return (wasShown || (user = Backend.getInstance().getUser()) == null || !user.isFBConnected() || user.isForumConnected()) ? false : true;
    }

    public void show(Master master, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        TranslationManager translator = stapel2DGameContext.getTranslator();
        Dialog dialog = new Dialog(Resources.ICON_ALERT, translator.translate(823), translator.translate(3357), master);
        dialog.addButton(Resources.ICON_ACCOUNT, translator.translate(Sdk.SDKError.Reason.ASSET_FAILED_TO_DELETE_VALUE), new Runnable() { // from class: info.flowersoft.theotown.ui.MigrateAccountDialog.1
            @Override // java.lang.Runnable
            public void run() {
                boolean unused = MigrateAccountDialog.wasShown = true;
                gameStack.push(new AccountStage(stapel2DGameContext));
            }
        });
        dialog.setVisible(true);
    }
}
