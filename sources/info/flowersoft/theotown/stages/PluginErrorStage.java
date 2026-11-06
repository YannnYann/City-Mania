package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.PluginErrorStage;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class PluginErrorStage extends BaseStage {
    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
    }

    public PluginErrorStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        if (PluginHelper.errorOccured()) {
            return;
        }
        getGameStack().pop();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        Panel panel = new Panel(0, 0, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui);
        panel.setPadding(2);
        new Label("Plugin Error (T_T) in " + TheoTown.VERSION_NAME, 0, 0, 0, 20, panel).setFont(Resources.skin.fontBig);
        String errorMessage = PluginHelper.getErrorMessage();
        TheoTown.analytics.logEvent("Plugin Error", "Report", errorMessage);
        String errorSource = PluginHelper.getErrorSource();
        String str = "Unfortunately an error occurred while loading your plugins. Update or remove the plugin mentioned below in order to start TheoTown again. If you're a plugin creator you may have a deep look into your code (@.@).\n";
        if (PluginHelper.MANIFEST == null) {
            str = "Unfortunately an error occurred while loading your plugins. Update or remove the plugin mentioned below in order to start TheoTown again. If you're a plugin creator you may have a deep look into your code (@.@).\nA side note: You should add a plugin.manifest file to your plugin so that it can be identified when used by others.\n";
        }
        new ScrollableTextFrame(str + "\n" + errorMessage, 0, 20, panel.getClientWidth(), panel.getClientHeight() - 52, panel).setFont(Resources.skin.fontSmall);
        ElementLine elementLine = new ElementLine(0, 1, 0, panel.getClientHeight() + (-30), panel.getClientWidth(), 30, panel);
        AbstractFile errorParentFile = PluginHelper.getErrorParentFile();
        File realFile = errorParentFile instanceof RealFile ? ((RealFile) errorParentFile).getRealFile() : null;
        new IconButton(Resources.ICON_CANCEL, this.translator.translate(1477), 0, 0, 0, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.PluginErrorStage.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                TheoTown.runtimeFeatures.closeApp();
            }
        };
        new AnonymousClass2(Resources.ICON_HAMBURGER, "", 0, 0, 0, 30, elementLine.getThirdPart(), errorSource, realFile);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.PluginErrorStage$2, reason: invalid class name */
    public class AnonymousClass2 extends IconButton {
        public final /* synthetic */ File val$parentFile;
        public final /* synthetic */ String val$sourceCode;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, String str2, File file) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$sourceCode = str2;
            this.val$parentFile = file;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            PopupBuilder popupBuilder = new PopupBuilder(this);
            if (this.val$sourceCode != null) {
                popupBuilder.addItem(Resources.PEOPLE_OFFICER, PluginErrorStage.this.translator.translate(20), new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginErrorStage.AnonymousClass2.$r8$lambda$geZULnA4aVb9gzuQFKLZCw1Q7mU(this.f$0);
                    }
                });
            }
            popupBuilder.addItem(Resources.ICON_POLICE, PluginErrorStage.this.translator.translate(1849), new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PluginErrorStage.AnonymousClass2 anonymousClass2 = this.f$0;
                    PluginErrorStage.this.getGameStack().push(new ScriptPolicyStage(PluginErrorStage.this.context, false, true));
                }
            });
            popupBuilder.addItem(Resources.PEOPLE_MEDIC, PluginErrorStage.this.translator.translate(3217), new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    PluginErrorStage.AnonymousClass2.$r8$lambda$_y0ZOVizxs7Z2kEtDdFgxybbSzk(this.f$0);
                }
            });
            popupBuilder.addItem(Resources.ICON_ACCOUNT, PluginErrorStage.this.translator.translate(2603), new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    PluginErrorStage.AnonymousClass2 anonymousClass2 = this.f$0;
                    PluginErrorStage.this.getGameStack().push(new AccountStage(PluginErrorStage.this.context));
                }
            });
            if (this.val$parentFile != null) {
                int i = Resources.ICON_FOLDER;
                String strTranslate = PluginErrorStage.this.translator.translate(2825);
                final File file = this.val$parentFile;
                popupBuilder.addItem(i, strTranslate, new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginErrorStage.AnonymousClass2.m2263$r8$lambda$3yIjLjAJjGCPJHNoyLGhKVhvlM(this.f$0, file);
                    }
                });
            }
            if (this.val$parentFile != null) {
                int i2 = Resources.ICON_MINUS;
                String strTranslate2 = PluginErrorStage.this.translator.translate(1077);
                final File file2 = this.val$parentFile;
                popupBuilder.addItem(i2, strTranslate2, new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginErrorStage.AnonymousClass2.m2264$r8$lambda$VGnBIB_r9y3GqjiDf1j3xNxZAQ(this.f$0, file2);
                    }
                });
            }
            AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_store_restart00", AnimationDraft.class);
            Objects.requireNonNull(animationDraft);
            popupBuilder.addItem(animationDraft.frames[0], PluginErrorStage.this.translator.translate(2057), new Runnable() { // from class: info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    PluginErrorStage.this.context.requestRestart();
                }
            });
            popupBuilder.build();
        }

        public static /* synthetic */ void $r8$lambda$geZULnA4aVb9gzuQFKLZCw1Q7mU(AnonymousClass2 anonymousClass2) {
            PluginErrorStage.this.getGameStack().popAll();
            try {
                PluginErrorStage.this.openUrl("https://jsonlint.com/?json=" + URLEncoder.encode(PluginHelper.getErrorSource(), "UTF-8").replace("+", "%20"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        public static /* synthetic */ void $r8$lambda$_y0ZOVizxs7Z2kEtDdFgxybbSzk(AnonymousClass2 anonymousClass2) {
            PluginErrorStage.this.getGameStack().popAll();
            String str = "[Asked][" + TheoTown.VERSION_NAME + "] Plugin crash (" + PluginHelper.getErrorSourceId() + ")";
            String str2 = ((("Hi, I got the following error with a plugin (" + PluginHelper.getErrorSourceId() + "):\n[code]" + PluginHelper.getErrorMessage() + "[/code]\n\n") + "Device: " + TheoTown.DEVICE_MODEL + " (" + TheoTown.DEVICE_MANUFACTURER + ")\n") + "OS version: " + Gdx.app.getVersion() + "\n\n") + "Thank you in advance.";
            try {
                String strReplace = URLEncoder.encode(str, "UTF-8").replace("+", "%20");
                String strReplace2 = URLEncoder.encode(str2, "UTF-8").replace("+", "%20");
                PluginErrorStage.this.openUrl("https://theotown.com/forum/posting.php?mode=post&f=49&subject=" + strReplace + "&message=" + strReplace2);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$3yIjLjAJjGCPJHNoyLGhKVhvl-M, reason: not valid java name */
        public static /* synthetic */ void m2263$r8$lambda$3yIjLjAJjGCPJHNoyLGhKVhvlM(AnonymousClass2 anonymousClass2, File file) {
            PluginErrorStage.this.getGameStack().popAll();
            PluginErrorStage.this.getGameStack().push(new FilesStage(PluginErrorStage.this.context, file, null));
        }

        /* JADX INFO: renamed from: $r8$lambda$VGnBIB_r9y3Gqji-Df1j3xNxZAQ, reason: not valid java name */
        public static /* synthetic */ void m2264$r8$lambda$VGnBIB_r9y3GqjiDf1j3xNxZAQ(AnonymousClass2 anonymousClass2, File file) {
            anonymousClass2.getClass();
            file.renameTo(new File(file.getParentFile(), "_" + file.getName()));
            PluginErrorStage.this.context.requestRestart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUrl(String str) {
        TheoTown.runtimeFeatures.openURLInApp(str);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        getGameStack().popAll();
    }

    public String toString() {
        return "PluginErrorStage";
    }
}
