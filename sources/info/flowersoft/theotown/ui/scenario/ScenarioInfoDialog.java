package info.flowersoft.theotown.ui.scenario;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Master;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: ScenarioInfoDialog.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioInfoDialog extends Dialog {
    public static final Companion Companion = new Companion(null);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScenarioInfoDialog(Translator translator, String title, String text, String author, final String str, Master master, final Runnable onOk) {
        super(Resources.ICON_SCENARIO, title, text, master);
        Intrinsics.checkNotNullParameter(translator, "translator");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(master, "master");
        Intrinsics.checkNotNullParameter(onOk, "onOk");
        if (!StringsKt__StringsKt.isBlank(author)) {
            new Label(StringFormatter.format(translator.translate(372), author), 0, 0, this.contentPane.getClientWidth(), 0, this.contentPane).setAlignment(0.5f, 0.5f);
            ScrollableTextFrame textFrame = getTextFrame();
            textFrame.setY(textFrame.getY() + 10);
            getTextFrame().setHeight(r9.getHeight() - 10);
        }
        if (str != null && !StringsKt__StringsKt.isBlank(str)) {
            addButton(Resources.LOGO_DISCORD, "Discord", false, false, true, new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ScenarioInfoDialog._init_$lambda$0(str);
                }
            }).getIconGadget().setColor(new Color(Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk.SDKError.Reason.TPAT_RETRY_FAILED_VALUE, Sdk.SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE));
        }
        GoldButton goldButtonAddButton = addButton(Resources.ICON_OK, translator.translate(1899), new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                onOk.run();
            }
        });
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setWidth(120);
        goldButtonAddButton.getParent().layout();
    }

    public static final void _init_$lambda$0(String str) {
        TheoTown.runtimeFeatures.openURLInApp(str);
    }

    /* JADX INFO: compiled from: ScenarioInfoDialog.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final ScenarioInfoDialog forInfo(Stapel2DGameContext context, ScenarioInfo info2, Master master, Runnable onOk) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(info2, "info");
            Intrinsics.checkNotNullParameter(master, "master");
            Intrinsics.checkNotNullParameter(onOk, "onOk");
            ScenarioDraft scenarioDraft = (ScenarioDraft) Drafts.get(info2.getId(), ScenarioDraft.class);
            if (scenarioDraft != null) {
                return forDraft(context, scenarioDraft, master, onOk);
            }
            TranslationManager translator = context.getTranslator();
            Intrinsics.checkNotNullExpressionValue(translator, "getTranslator(...)");
            return new ScenarioInfoDialog(translator, info2.getTitle(), info2.getText(), info2.getAuthor(), null, master, onOk);
        }

        public final ScenarioInfoDialog forDraft(Stapel2DGameContext context, ScenarioDraft draft, Master master, Runnable onOk) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(draft, "draft");
            Intrinsics.checkNotNullParameter(master, "master");
            Intrinsics.checkNotNullParameter(onOk, "onOk");
            DraftLocalizer draftLocalizer = new DraftLocalizer(context, "");
            TranslationManager translator = context.getTranslator();
            Intrinsics.checkNotNullExpressionValue(translator, "getTranslator(...)");
            String title = draftLocalizer.getTitle(draft);
            Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
            String text = draftLocalizer.getText(draft);
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            String author = draft.author;
            Intrinsics.checkNotNullExpressionValue(author, "author");
            return new ScenarioInfoDialog(translator, title, text, author, draft.getDiscordUrl(), master, onOk);
        }
    }
}
