package info.flowersoft.theotown.ui;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.online.Multiplayer;
import info.flowersoft.theotown.online.RegionTagMap;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.OnlineRegionProviderStage;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class RegionRulesDialog extends Dialog {
    public static /* synthetic */ void $r8$lambda$QJnwC0kK70nlvxn_wIDbxm4y4zs() {
    }

    public RegionRulesDialog(int i, String str, String str2, String str3, boolean z, boolean z2, final long j, final long j2, final String str4, Color color, IntList intList, RegionTagMap regionTagMap, Stapel2DGameContext stapel2DGameContext, final Setter<Stage> setter, Master master) {
        final Stapel2DGameContext stapel2DGameContext2;
        super(i, str, "", master);
        TranslationManager translator = stapel2DGameContext.getTranslator();
        final Color colorTransformColor = ThemeManager.INSTANCE.transformColor(color);
        Label label = new Label(str4, this.lblTitle.getX(), (this.lblTitle.getY() + this.lblTitle.getHeight()) - 5, 0, 0, this.lblTitle.getParent()) { // from class: info.flowersoft.theotown.ui.RegionRulesDialog.1
            @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                int i4 = i2 + this.x;
                int i5 = i3 + this.y;
                Skin skin = this.skin;
                Engine engine = skin.engine;
                this.font = skin.fontSmall;
                engine.setColor(skin.cText);
                float f = i5;
                engine.drawText(this.font, "by ", i4, f);
                int width = i4 + ((int) this.font.getWidth("by "));
                String str5 = str4;
                engine.setColor(colorTransformColor);
                engine.drawText(this.font, str5, width, f);
                int width2 = width + ((int) this.font.getWidth(str5));
                long j3 = j;
                if (j3 > 0 && j3 < 10000000) {
                    String str6 = " updated " + TimeSpan.localize(j) + " ago";
                    engine.setColor(Colors.BLACK);
                    engine.drawText(this.font, str6, width2, f);
                    this.font.getWidth(str6);
                }
                engine.setColor(Colors.WHITE);
            }
        };
        label.setFont(Resources.skin.fontSmall);
        if (setter != null) {
            stapel2DGameContext2 = stapel2DGameContext;
            new Button(label.getX(), label.getY() - 2, ((int) label.getTextWidth()) + 16, 18, this.lblTitle.getParent()) { // from class: info.flowersoft.theotown.ui.RegionRulesDialog.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    setter.set(new OnlineRegionProviderStage(stapel2DGameContext2, j2, str4));
                }
            };
        } else {
            stapel2DGameContext2 = stapel2DGameContext;
        }
        String strLocalizePacked = new DraftLocalizer(stapel2DGameContext2, "").localizePacked(str3.replace("\\n", "\n"));
        String strLocalizePacked2 = new DraftLocalizer(stapel2DGameContext2, "").localizePacked(str2.replace("\\n", "\n"));
        StringBuilder sb = new StringBuilder();
        if (!strLocalizePacked2.isEmpty()) {
            sb.append(strLocalizePacked2);
            sb.append("\n\n");
        } else {
            sb.append(translator.translate(2475));
            sb.append("\n\n");
        }
        if (!z) {
            sb.append(translator.translate(3247));
            sb.append("\n");
        } else {
            sb.append(translator.translate(3482));
            sb.append("\n");
        }
        if (!z2) {
            sb.append(translator.translate(1287));
            sb.append("\n");
        } else {
            sb.append(translator.translate(265));
            sb.append("\n");
        }
        this.lblText.getListBox().removeAllItems();
        if (!strLocalizePacked.isEmpty()) {
            markHeader(this.lblText.addStaticTextFrame(translator.translate(2307), this.lblText.getSkin().fontDefault));
            ScrollableTextFrame scrollableTextFrame = this.lblText;
            scrollableTextFrame.addStaticTextFrame(strLocalizePacked, scrollableTextFrame.getSkin().fontSmall);
            ScrollableTextFrame scrollableTextFrame2 = this.lblText;
            scrollableTextFrame2.addStaticTextFrame("", scrollableTextFrame2.getSkin().fontDefault);
        }
        markHeader(this.lblText.addStaticTextFrame(translator.translate(3303), this.lblText.getSkin().fontDefault));
        this.lblText.addStaticTextFrame(sb.toString(), this.lblText.getSkin().fontSmall);
        markHeader(this.lblText.addStaticTextFrame(translator.translate(IronSourceError.ERROR_NT_INSTANCE_LOAD_EMPTY_SERVER_DATA), this.lblText.getSkin().fontDefault));
        if (intList.isEmpty()) {
            this.lblText.addStaticTextFrame(translator.translate(2473), this.lblText.getSkin().fontSmall);
        } else {
            for (int i2 = 0; i2 < intList.size(); i2++) {
                int i3 = intList.get(i2);
                if (regionTagMap.containsIds(i3)) {
                    String nameById = regionTagMap.getNameById(i3);
                    ScrollableTextFrame scrollableTextFrame3 = this.lblText;
                    scrollableTextFrame3.addStaticTextFrame(nameById, scrollableTextFrame3.getSkin().fontSmall).setColor(regionTagMap.getThemedColorById(i3));
                }
            }
        }
        setSize(getWidth(), ((this.lblText.getTextHeight() + this.window.getHeight()) - this.lblText.getHeight()) + 15);
        ScrollableTextFrame scrollableTextFrame4 = this.lblText;
        scrollableTextFrame4.setY(scrollableTextFrame4.getY() + 10);
        this.lblText.setHeight(r0.getHeight() - 10);
        addButton(Resources.ICON_ONLINE_REGIONS, translator.translate(1651), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionRulesDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.runtimeFeatures.openURLInApp(Multiplayer.getRulesUrl());
            }
        });
        GoldButton goldButtonAddButton = addButton(Resources.ICON_OK, translator.translate(1899), true, true, true, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionRulesDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RegionRulesDialog.$r8$lambda$QJnwC0kK70nlvxn_wIDbxm4y4zs();
            }
        });
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        distributeButtons();
    }

    public final void markHeader(TextFrame textFrame) {
        textFrame.setBold(true);
        textFrame.setColor(Colors.GRAY);
    }
}
