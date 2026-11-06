package info.flowersoft.theotown.ui;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MissingPluginsDialogBuilder {
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public final Master gui;
    public final Translator translator;

    public MissingPluginsDialogBuilder(Master master, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        this.gui = master;
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        this.gameStack = gameStack;
    }

    public void showMissingPluginsDialog(final List<LightManagedPluginInfo> list, List<LocalPluginManifest> list2, final Runnable runnable) {
        StringBuilder sb = new StringBuilder();
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.context, "");
        sb.append(this.translator.translate(899));
        sb.append("\n");
        for (int i = 0; i < list.size(); i++) {
            LightManagedPluginInfo lightManagedPluginInfo = list.get(i);
            if (i > 0) {
                sb.append('\n');
            }
            sb.append(StringFormatter.format(this.translator.translate(532), draftLocalizer.localizePacked(lightManagedPluginInfo.getTitle()), lightManagedPluginInfo.getAuthor()));
        }
        for (int i2 = 0; i2 < list2.size(); i2++) {
            LocalPluginManifest localPluginManifest = list2.get(i2);
            if (i2 > 0) {
                sb.append('\n');
            }
            sb.append(StringFormatter.format(this.translator.translate(3008), draftLocalizer.localizePacked(localPluginManifest.getTitle()), localPluginManifest.getAuthor()));
        }
        final Dialog dialog = new Dialog(Resources.ICON_PLUGIN, this.translator.translate(1337), sb.toString(), this.gui);
        if (!list.isEmpty()) {
            new GoldButton(Resources.ICON_DOWNLOAD, this.translator.translate(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.MissingPluginsDialogBuilder.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    dialog.setVisible(false);
                    MissingPluginsDialogBuilder.this.showPluginsWindow(list, true);
                }
            }.addSensitiveKey(66);
        }
        if (runnable != null) {
            new IconButton(Resources.ICON_PLAY, this.translator.translate(438), 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.MissingPluginsDialogBuilder.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    dialog.setVisible(false);
                    runnable.run();
                }
            };
        }
        dialog.addHiddenCancelButton();
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public void showPluginsWindow(List<LightManagedPluginInfo> list, boolean z) {
        String strTranslate;
        StoreStage storeStage = new StoreStage(this.context, null);
        if (z) {
            strTranslate = this.translator.translate(1337);
        } else {
            strTranslate = this.translator.translate(2318);
        }
        storeStage.planToShowMissingPlugins(list, strTranslate);
        this.gameStack.push(storeStage);
    }
}
