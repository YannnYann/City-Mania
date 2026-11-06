package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.util.Property;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ReportDialog {

    public interface Reporter {
        void report(String str, Runnable runnable, Setter<String> setter);
    }

    public static /* synthetic */ void $r8$lambda$t27XrMNOSJ8I3XRmjwxhCcihJ_s() {
    }

    public static int getIcon() {
        return ((AnimationDraft) Drafts.get("$anim_store_report00", AnimationDraft.class)).frames[0];
    }

    public static Dialog showLoginNeeded(Stapel2DGameContext stapel2DGameContext, Master master) {
        TranslationManager translator = stapel2DGameContext.getTranslator();
        Dialog dialog = new Dialog(getIcon(), translator.translate(2725), translator.translate(3545), 300, AdSize.WIDE_SKYSCRAPER_WIDTH, master);
        dialog.addButton(Resources.ICON_OK, translator.translate(1899), new Runnable() { // from class: info.flowersoft.theotown.ui.ReportDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ReportDialog.$r8$lambda$t27XrMNOSJ8I3XRmjwxhCcihJ_s();
            }
        }).setGolden(true).addSensitiveKey(66);
        dialog.setVisible(true);
        return dialog;
    }

    public static Dialog show(Stapel2DGameContext stapel2DGameContext, Master master, String str, Reporter reporter) {
        User user = Backend.getInstance().getUser();
        if (user == null || !user.isValid()) {
            return showLoginNeeded(stapel2DGameContext, master);
        }
        TranslationManager translator = stapel2DGameContext.getTranslator();
        final Dialog dialog = new Dialog(getIcon(), StringFormatter.format(translator.translate(518), str), StringFormatter.format(translator.translate(1065), str), 300, 240, master);
        ScrollableTextFrame scrollableTextFrame = (ScrollableTextFrame) dialog.getContentPane().getChild(0);
        ListBox listBox = scrollableTextFrame.getListBox();
        scrollableTextFrame.getTextFrame().dontFillParent();
        scrollableTextFrame.getTextFrame().setSize(listBox.getClientWidth() - 5, scrollableTextFrame.getTextHeight());
        ArrayList<Tuple> arrayList = new ArrayList();
        arrayList.add(new Tuple("sexual", 2906));
        arrayList.add(new Tuple("violent or repulsive", 3166));
        arrayList.add(new Tuple("hateful or abusive", 1876));
        arrayList.add(new Tuple("dangerous", 583));
        arrayList.add(new Tuple("promotes terrorism", 2815));
        arrayList.add(new Tuple("spam or misleading", 2634));
        arrayList.add(new Tuple("infringes my rights", 362));
        arrayList.add(new Tuple("bad behavior", 689));
        arrayList.add(new Tuple("violates store rules", 2359));
        final String[] strArr = {(String) ((Tuple) arrayList.get(0)).getFirst()};
        for (Tuple tuple : arrayList) {
            final String str2 = (String) tuple.getFirst();
            listBox.addItem(new ReportOption(((Integer) tuple.getSecond()).intValue() != 0 ? translator.translate(((Integer) tuple.getSecond()).intValue()) : str2, new Property<Boolean>() { // from class: info.flowersoft.theotown.ui.ReportDialog.1
                @Override // io.blueflower.stapel2d.util.Getter
                public Boolean get() {
                    return Boolean.valueOf(strArr[0].equals(str2));
                }

                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Boolean bool) {
                    strArr[0] = str2;
                }
            }, listBox.getClientWidth()));
        }
        final TextFrame textFrame = new TextFrame(translator.translate(1188), 0, 0, listBox.getClientWidth() - 5, 0, listBox);
        textFrame.setHeight(textFrame.calculateTextHeight());
        textFrame.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        listBox.addItem(new ListItem(null) { // from class: info.flowersoft.theotown.ui.ReportDialog.2
            @Override // io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
                textFrame.draw(i2, i3);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                return textFrame.getHeight();
            }
        });
        final Runnable[] runnableArr = {null};
        new Gadget(0, 0, 0, 0, master) { // from class: info.flowersoft.theotown.ui.ReportDialog.3
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                Runnable runnable = runnableArr[0];
                if (runnable != null) {
                    runnable.run();
                    runnableArr[0] = null;
                    this.parent.removeChild(this);
                }
            }
        };
        dialog.addButton(Resources.ICON_CANCEL, translator.translate(1477), true, new Runnable() { // from class: info.flowersoft.theotown.ui.ReportDialog.4
            @Override // java.lang.Runnable
            public void run() {
                dialog.setVisible(false);
            }
        });
        dialog.addButton(getIcon(), translator.translate(2139), false, new AnonymousClass5(dialog, reporter, strArr, runnableArr, translator, str, master)).addSensitiveKey(66);
        dialog.distributeButtons();
        dialog.setVisible(true);
        return dialog;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.ReportDialog$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {
        public final /* synthetic */ Dialog val$dialog;
        public final /* synthetic */ Master val$gui;
        public final /* synthetic */ Reporter val$reporter;
        public final /* synthetic */ String[] val$selectedReason;
        public final /* synthetic */ String val$subject;
        public final /* synthetic */ Runnable[] val$task;
        public final /* synthetic */ Translator val$translator;

        public AnonymousClass5(Dialog dialog, Reporter reporter, String[] strArr, Runnable[] runnableArr, Translator translator, String str, Master master) {
            this.val$dialog = dialog;
            this.val$reporter = reporter;
            this.val$selectedReason = strArr;
            this.val$task = runnableArr;
            this.val$translator = translator;
            this.val$subject = str;
            this.val$gui = master;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$dialog.setVisible(false);
            this.val$reporter.report(this.val$selectedReason[0], new Runnable() { // from class: info.flowersoft.theotown.ui.ReportDialog.5.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass5.this.val$task[0] = new Runnable() { // from class: info.flowersoft.theotown.ui.ReportDialog.5.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Dialog dialog = new Dialog(Resources.ICON_OK, StringFormatter.format(AnonymousClass5.this.val$translator.translate(1158), AnonymousClass5.this.val$subject), StringFormatter.format(AnonymousClass5.this.val$translator.translate(71), AnonymousClass5.this.val$subject), 257, AdSize.WIDE_SKYSCRAPER_WIDTH, AnonymousClass5.this.val$gui);
                            dialog.addCancelButton(Resources.ICON_OK, AnonymousClass5.this.val$translator.translate(2447)).addSensitiveKey(66);
                            dialog.setVisible(true);
                        }
                    };
                }
            }, new Setter<String>() { // from class: info.flowersoft.theotown.ui.ReportDialog.5.2
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(final String str) {
                    AnonymousClass5.this.val$task[0] = new Runnable() { // from class: info.flowersoft.theotown.ui.ReportDialog.5.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TheoTown.runtimeFeatures.showToast(str);
                        }
                    };
                }
            });
        }
    }

    public static class ReportOption extends ListItem {
        public Font font;
        public List<String> lines;
        public Property<Boolean> selection;

        public ReportOption(String str, Property<Boolean> property, int i) {
            super(str);
            Font font = Resources.skin.fontSmall;
            this.font = font;
            this.selection = property;
            this.lines = TextFrame.calculateLines(str, i - 30, font);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            int width = i2 + ((int) Resources.IMAGE_WORLD.getWidth(Resources.skin.fRadioOn)) + 6;
            int iRound = i3 + 5;
            engine.setColor(skin.cText);
            for (int i6 = 0; i6 < this.lines.size(); i6++) {
                engine.drawText(this.font, this.lines.get(i6), width, iRound);
                iRound += Math.round(this.font.getHeight());
            }
            engine.setColor(Colors.WHITE);
            int i7 = this.selection.get().booleanValue() ? Resources.skin.fRadioOn : Resources.skin.fRadioOff;
            Image image = Resources.IMAGE_WORLD;
            engine.drawImage(image, i2 + 3, i3 + ((i5 - image.getHeight(i7)) / 2.0f), i7);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return Math.max((this.lines.size() * Math.round(this.font.getHeight())) + 10, 20);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            this.selection.set(Boolean.TRUE);
        }
    }
}
