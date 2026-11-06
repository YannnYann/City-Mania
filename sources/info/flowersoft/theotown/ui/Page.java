package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;

/* JADX INFO: loaded from: classes4.dex */
public class Page {
    public Master gui;
    public ShadowedIcon icon;
    public ElementLine lineControl;
    public Runnable onBackgroundClick;
    public Panel panelBackground;
    public Panel panelContent;
    public Panel panelTitle;

    public Page(Stapel2DGameContext stapel2DGameContext, String str, int i, Master master) {
        this.gui = master;
        int iMin = Math.min(master.getClientWidth(), 600);
        int iMin2 = Math.min(master.getClientHeight(), 500);
        this.panelBackground = new Panel(-master.getPaddingLeft(), -master.getPaddingTop(), master.getWidth(), master.getHeight(), master) { // from class: info.flowersoft.theotown.ui.Page.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                drawChildren(i2, i3);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (Page.this.onBackgroundClick != null) {
                    Page.this.onBackgroundClick.run();
                }
            }
        };
        Gadget gadget = new Gadget(master.getPaddingLeft() + ((master.getClientWidth() - iMin) / 2), master.getPaddingTop() + ((master.getClientHeight() - iMin2) / 2), iMin, iMin2, this.panelBackground) { // from class: info.flowersoft.theotown.ui.Page.2
        };
        int i2 = 0;
        int i3 = 34;
        this.panelTitle = new Panel(0, i2, iMin, i3, gadget) { // from class: info.flowersoft.theotown.ui.Page.3
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                drawChildren(i4, i5);
            }
        };
        new Button(gadget.getClientWidth() - 30, i2, 30, i3, gadget) { // from class: info.flowersoft.theotown.ui.Page.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_RED);
                }
                if (isPressed()) {
                    engine.setColor(Colors.RED);
                }
                engine.drawImage(Resources.IMAGE_WORLD, i4 + this.x, i5 + this.y, this.width, this.height, 0.5f, 0.5f, this.skin.fCloseButton);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (Page.this.onBackgroundClick != null) {
                    Page.this.onBackgroundClick.run();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && Page.this.onBackgroundClick != null;
            }
        };
        Panel panel = new Panel(0, 34, iMin, iMin2 - 34, gadget);
        int i4 = iMin2 - 68;
        int i5 = 0;
        this.panelContent = new Panel(i5, 0, iMin, i4, panel) { // from class: info.flowersoft.theotown.ui.Page.5
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                drawChildren(i6, i7);
            }
        };
        this.lineControl = new ElementLine(i5, 1, 0, i4, iMin, 34, panel) { // from class: info.flowersoft.theotown.ui.Page.6
            @Override // io.blueflower.stapel2d.gui.ElementLine, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                drawChildren(i6, i7);
            }
        };
        this.panelTitle.setPadding(2);
        this.panelContent.setPadding(2);
        this.lineControl.setPadding(2, 0, 2, 2);
        this.icon = new ShadowedIcon(i, 0, 0, this.panelTitle.getClientHeight(), this.panelTitle.getClientHeight(), this.panelTitle);
        ShadowedLabel shadowedLabel = new ShadowedLabel(str, 34, 0, this.panelTitle.getClientWidth() - this.panelTitle.getClientHeight(), this.panelTitle.getClientHeight(), this.panelTitle);
        shadowedLabel.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        shadowedLabel.setFont(Resources.skin.fontBig);
        shadowedLabel.setColor(Colors.WHITE);
        shadowedLabel.setId("pageTitle");
        this.panelContent.setId("pageContent");
        this.lineControl.setId("pageControl");
    }

    public void free() {
        this.panelBackground.free();
    }

    public ShadowedIcon getIcon() {
        return this.icon;
    }

    public Panel getTitlePanel() {
        return this.panelTitle;
    }

    public Panel getContentPanel() {
        return this.panelContent;
    }

    public ElementLine getControlLine() {
        return this.lineControl;
    }

    public int getButtonWidth(boolean z) {
        int iRound = Math.round((float) Math.sqrt(this.gui.getWidth()));
        return z ? iRound * 5 : iRound * 3;
    }

    public void setOnBackgroundClick(Runnable runnable) {
        this.onBackgroundClick = runnable;
    }

    public GoldButton addButton(int i, String str, boolean z, boolean z2, final Runnable runnable) {
        GoldButton goldButton = new GoldButton(i, str, 0, 0, str.isEmpty() ? 0 : getButtonWidth(z2), this.lineControl.getClientHeight(), z ? this.lineControl.getFirstPart() : this.lineControl.getThirdPart()) { // from class: info.flowersoft.theotown.ui.Page.7
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                runnable.run();
            }
        };
        goldButton.setGolden(false);
        goldButton.setGreen(false);
        return goldButton;
    }
}
