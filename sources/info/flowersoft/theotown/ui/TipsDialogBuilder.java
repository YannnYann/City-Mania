package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.TopicDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TopicManager;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: compiled from: TipsDialogBuilder.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TipsDialogBuilder {
    public static final TipsDialogBuilder INSTANCE = new TipsDialogBuilder();

    public static final void buildTips$lambda$2() {
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [info.flowersoft.theotown.ui.TipsDialogBuilder$buildTips$cmdOpen$1, io.blueflower.stapel2d.gui.Gadget] */
    public final void buildTips(Master gui, Stapel2DGameContext gc) {
        Intrinsics.checkNotNullParameter(gui, "gui");
        Intrinsics.checkNotNullParameter(gc, "gc");
        final TopicManager topicManager = TopicManager.getInstance();
        Intrinsics.checkNotNull(topicManager);
        final DraftLocalizer draftLocalizer = new DraftLocalizer(gc, "");
        TranslationManager translator = gc.getTranslator();
        Dialog dialog = new Dialog(Resources.ICON_EDUCATION, translator.translate(1931), "", 320, 260, gui);
        Panel contentPane = dialog.getContentPane();
        contentPane.removeAllChildren();
        final ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame("", 0, 0, contentPane.getClientWidth(), 50, contentPane);
        scrollableTextFrame.setShowBorder(false);
        scrollableTextFrame.setAlignment(0.5f, 0.5f);
        final ScrollableTextFrame scrollableTextFrame2 = new ScrollableTextFrame("", 0, 50, contentPane.getClientWidth(), contentPane.getClientHeight() - 50, contentPane);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = "";
        final int i = Resources.ICON_REGION;
        final String strTranslate = translator.translate(3033);
        final int clientHeight = dialog.getControlLine().getFirstPart().getClientHeight();
        final LineLayout firstPart = dialog.getControlLine().getFirstPart();
        final ?? r7 = new IconButton(i, strTranslate, clientHeight, firstPart) { // from class: info.flowersoft.theotown.ui.TipsDialogBuilder$buildTips$cmdOpen$1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                TheoTown.runtimeFeatures.openURLInApp(ref$ObjectRef.element);
            }
        };
        r7.addSensitiveKey(43);
        final Function0 function0 = new Function0() { // from class: info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TipsDialogBuilder.buildTips$lambda$0(topicManager, scrollableTextFrame, draftLocalizer, scrollableTextFrame2, ref$ObjectRef, r7);
            }
        };
        function0.invoke();
        dialog.addHiddenCancelButton();
        dialog.addButton(Resources.ICON_RANDOM, translator.translate(3068), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                function0.invoke();
            }
        }).addSensitiveKey(62);
        dialog.addButton(Resources.ICON_OK, translator.translate(2447), true, true, true, new Runnable() { // from class: info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                TipsDialogBuilder.buildTips$lambda$2();
            }
        }).setGolden(true).addSensitiveKey(66);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.String] */
    public static final Unit buildTips$lambda$0(TopicManager topicManager, ScrollableTextFrame scrollableTextFrame, DraftLocalizer draftLocalizer, ScrollableTextFrame scrollableTextFrame2, Ref$ObjectRef ref$ObjectRef, TipsDialogBuilder$buildTips$cmdOpen$1 tipsDialogBuilder$buildTips$cmdOpen$1) {
        topicManager.pickHelpfulTopic();
        TopicDraft topicDraft = topicManager.getTopicDraft();
        scrollableTextFrame.setText(draftLocalizer.getTitle(topicDraft));
        scrollableTextFrame2.setText(draftLocalizer.getText(topicDraft));
        ?? r1 = topicDraft.url;
        ref$ObjectRef.element = r1;
        CharSequence charSequence = (CharSequence) r1;
        tipsDialogBuilder$buildTips$cmdOpen$1.setVisible(!(charSequence == null || charSequence.length() == 0));
        return Unit.INSTANCE;
    }
}
