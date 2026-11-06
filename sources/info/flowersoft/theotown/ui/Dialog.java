package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.api.Api;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.BlurScreen;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderConfig;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.touch.TouchUpdate;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class Dialog {
    public static final int[] KEY_FILTER = {111};
    public Background background;
    public boolean canCloseViaBackground;
    public Button cancelButton;
    public Panel contentPane;
    public boolean drawBackground;
    public Icon icon;
    public ScrollableTextFrame lblText;
    public Label lblTitle;
    public ElementLine lineControl;
    public boolean needsBackground;
    public Runnable onClose;
    public long showTime;
    public Panel window;
    public int windowNP;

    /* JADX INFO: renamed from: $r8$lambda$o7PClk1-CaM7kehFY0BxRS9Qzac, reason: not valid java name */
    public static /* synthetic */ void m2369$r8$lambda$o7PClk1CaM7kehFY0BxRS9Qzac() {
    }

    public int getButtonWidth(boolean z) {
        return 60;
    }

    public void onCleanup() {
    }

    public void onUpdate() {
    }

    public Dialog(int i, String str, String str2, Master master) {
        this(i, str, str2, 300, AdSize.WIDE_SKYSCRAPER_WIDTH, master);
    }

    public Dialog(int i, String str, String str2, int i2, int i3, Master master) {
        this.canCloseViaBackground = true;
        Background background = new Background(-master.getPaddingLeft(), -master.getPaddingTop(), master.getWidth(), master.getHeight(), master);
        this.background = background;
        background.setVisible(false);
        int iMin = Math.min(i2, master.getClientWidth());
        int iMin2 = Math.min(i3, master.getClientHeight());
        Panel panel = new Panel(((master.getClientWidth() - iMin) / 2) + master.getPaddingLeft(), ((master.getClientHeight() - iMin2) / 2) + master.getPaddingTop(), iMin, iMin2, this.background) { // from class: info.flowersoft.theotown.ui.Dialog.1
            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                Dialog.this.onUpdate();
            }

            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                long jCurrentTimeMillis = System.currentTimeMillis() - Dialog.this.showTime;
                Engine engine = this.skin.engine;
                if (jCurrentTimeMillis >= 0 && jCurrentTimeMillis < 100 && Settings.uiAnimations) {
                    i5 = (int) (((long) i5) + Math.round(400.0d - (Math.sin(((jCurrentTimeMillis / 100.0d) * 3.141592653589793d) * 0.5d) * 400.0d)));
                    engine.setTransparency((((int) jCurrentTimeMillis) * 255) / 100);
                }
                drawNinePatch(i4 - 9, i5 - 9, getWidth() + 20, getHeight() + 20, this.skin.npRectShadow);
                drawNinePatch(i4, i5, Dialog.this.windowNP);
                drawChildren(i4, i5);
            }
        };
        this.window = panel;
        panel.setPadding(2);
        this.windowNP = this.window.getSkin().npWindow;
        this.icon = new Icon(i, 0, 0, 24, 30, this.window) { // from class: info.flowersoft.theotown.ui.Dialog.2
            @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                Engine engine = this.skin.engine;
                int i6 = i4 + this.x;
                int i7 = i5 + this.y;
                if (Resources.IMAGE_WORLD.getWidth(this.frame) > 26.0f) {
                    engine.setScale(0.5f, 0.5f);
                }
                engine.drawImage(Resources.IMAGE_WORLD, i6, i7, this.width, this.height, 0.5f, 0.5f, this.frame);
                engine.setScale(1.0f, 1.0f);
            }
        };
        Label label = new Label(str, i == 0 ? 0 : 24, 0, (this.window.getClientWidth() - r12) - 30, 30, this.window);
        this.lblTitle = label;
        label.setFont(Resources.skin.fontBig);
        this.lblTitle.setScaleToFitWidth(true);
        this.lblTitle.setAlignment(0.5f, 0.5f);
        this.lblTitle.setColor(Resources.skin.cWindowTitle);
        new Button(this.window.getClientWidth() - 30, 0, 30, 30, this.window) { // from class: info.flowersoft.theotown.ui.Dialog.3
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
                Skin skin = this.skin;
                skin.engine.drawImage(Resources.IMAGE_WORLD, this.x + i4, this.y + i5, this.width, this.height, 0.5f, 0.5f, skin.fCloseButton);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                Button button = Dialog.this.cancelButton;
                if (button != null) {
                    button.click();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return Dialog.this.isCloseButtonVisible();
            }
        };
        Panel panel2 = new Panel(0, 30, this.window.getClientWidth(), this.window.getClientHeight() - 64, this.window) { // from class: info.flowersoft.theotown.ui.Dialog.4
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                drawChildren(i4, i5);
            }
        };
        this.contentPane = panel2;
        panel2.setPadding(1);
        ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame(str2, 0, 0, this.contentPane.getClientWidth(), this.contentPane.getClientHeight(), this.contentPane);
        this.lblText = scrollableTextFrame;
        scrollableTextFrame.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.lblText.setShowBorder(false);
        ElementLine elementLine = new ElementLine(0, 1, 0, this.window.getClientHeight() - 34, this.window.getClientWidth(), 34, this.window) { // from class: info.flowersoft.theotown.ui.Dialog.5
            @Override // io.blueflower.stapel2d.gui.ElementLine, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                drawChildren(i4, i5);
            }
        };
        this.lineControl = elementLine;
        elementLine.setPadding(1);
    }

    public boolean isCloseButtonVisible() {
        return this.cancelButton != null;
    }

    public boolean isCanCloseViaBackground() {
        return this.canCloseViaBackground;
    }

    public void setCanCloseViaBackground(boolean z) {
        this.canCloseViaBackground = z;
    }

    public void free() {
        Background background = this.background;
        if (background == null || background.getParent() == null) {
            return;
        }
        this.background.getParent().removeChild(this.background);
        this.background.free();
    }

    public int getWidth() {
        return this.window.getWidth();
    }

    public int getHeight() {
        return this.window.getHeight();
    }

    public void setSize(int i, int i2) {
        Master master = (Master) this.window.getAbsoluteParent();
        int iMin = Math.min(i, master.getClientWidth());
        int iMin2 = Math.min(i2, master.getClientHeight());
        this.window.setShape((master.getWidth() - iMin) / 2, (master.getHeight() - iMin2) / 2, iMin, iMin2);
        Panel panel = this.contentPane;
        if (this.lineControl.getParent() != null) {
            this.lineControl.setShape(0, this.window.getClientHeight() - 34, this.window.getClientWidth(), 34);
            panel.setSize(this.window.getClientWidth(), this.window.getClientHeight() - 64);
        } else {
            panel.setSize(panel.getParent().getClientWidth() - panel.getX(), panel.getParent().getClientHeight() - panel.getY());
        }
        this.lblText.setSize(panel.getClientWidth(), panel.getClientHeight());
    }

    public void removeControlLine() {
        if (this.lineControl.getParent() == null) {
            return;
        }
        this.lineControl.getParent().removeChild(this.lineControl);
        Panel panel = this.contentPane;
        panel.setSize(panel.getParent().getClientWidth() - panel.getX(), panel.getParent().getClientHeight() - panel.getY());
    }

    public Panel getContentPane() {
        return this.contentPane;
    }

    public int getIcon() {
        return this.icon.getFrame();
    }

    public void setIcon(int i) {
        this.icon.setFrame(i);
    }

    public String getTitle() {
        return this.lblTitle.getText();
    }

    public void setTitle(String str) {
        this.lblTitle.setText(str);
    }

    public String getText() {
        return this.lblText.getText();
    }

    public void setText(String str) {
        this.lblText.setText(str);
    }

    public Button getCancelButton() {
        return this.cancelButton;
    }

    public void setCancelButton(Button button) {
        this.cancelButton = button;
    }

    public void cancel() {
        Button button = this.cancelButton;
        if (button != null) {
            button.click();
        }
    }

    public ElementLine getControlLine() {
        return this.lineControl;
    }

    public Button addHiddenCancelButton() {
        return addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.ui.Dialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Dialog.m2369$r8$lambda$o7PClk1CaM7kehFY0BxRS9Qzac();
            }
        });
    }

    public Button addHiddenCancelButton(final Runnable runnable) {
        Button button = new Button(0, 0, 0, 0, this.window) { // from class: info.flowersoft.theotown.ui.Dialog.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Dialog.this.setVisible(false);
                runnable.run();
            }
        };
        this.cancelButton = button;
        return button;
    }

    public GoldButton addCancelButton(int i, String str) {
        GoldButton goldButton = new GoldButton(i, str, 0, 0, getButtonWidth(false), this.lineControl.getClientHeight(), this.lineControl.getThirdPart()) { // from class: info.flowersoft.theotown.ui.Dialog.7
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Dialog.this.setVisible(false);
            }
        };
        this.cancelButton = goldButton;
        goldButton.setGolden(false).setGreen(false);
        return (GoldButton) this.cancelButton;
    }

    public GoldButton addButton(int i, String str, Runnable runnable) {
        return addButton(i, str, false, runnable);
    }

    public GoldButton addButton(int i, String str, boolean z, Runnable runnable) {
        return addButton(i, str, z, true, true, runnable);
    }

    public void distributeButtons() {
        LineLayout[] lineLayoutArr = {this.lineControl.getFirstPart(), this.lineControl.getSecondPart(), this.lineControl.getThirdPart()};
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            LineLayout lineLayout = lineLayoutArr[i];
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < lineLayout.countChildren(); i2++) {
                Gadget child = lineLayout.getChild(i2);
                if (child.isVisible()) {
                    if (child instanceof IconButton) {
                        ((IconButton) child).setMaxWidth(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                        child.setWidth(child.getWidth());
                    }
                    arrayList.add(child);
                }
            }
            if (!arrayList.isEmpty()) {
                int iMax = Math.max(0, Math.max(0, lineLayout.getClientWidth()) - ((arrayList.size() - 1) * lineLayout.getSpace()));
                int size = iMax / arrayList.size();
                int size2 = iMax % arrayList.size();
                int i3 = 0;
                while (i3 < arrayList.size()) {
                    Gadget gadget = (Gadget) arrayList.get(i3);
                    int i4 = (i3 < size2 ? 1 : 0) + size;
                    if (gadget instanceof IconButton) {
                        ((IconButton) gadget).setMaxWidth(i4);
                    }
                    gadget.setWidth(i4);
                    i3++;
                }
                z = true;
            }
        }
        if (z) {
            this.lineControl.layout();
        }
    }

    public GoldButton addButton(int i, String str, boolean z, final boolean z2, boolean z3, final Runnable runnable) {
        ElementLine elementLine = this.lineControl;
        LineLayout thirdPart = z3 ? elementLine.getThirdPart() : elementLine.getFirstPart();
        GoldButton goldButton = new GoldButton(i, str, 0, 0, 0, thirdPart.getClientHeight(), thirdPart) { // from class: info.flowersoft.theotown.ui.Dialog.8
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (z2) {
                    Dialog.this.setVisible(false);
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        goldButton.setGolden(false);
        goldButton.setGreen(false);
        if (z) {
            this.cancelButton = goldButton;
        }
        return goldButton;
    }

    public void clearButtons() {
        this.cancelButton = null;
        this.lineControl.getFirstPart().removeAllChildren();
        this.lineControl.getSecondPart().removeAllChildren();
        this.lineControl.getThirdPart().removeAllChildren();
    }

    public void abuseFor(Gadget gadget) {
        setVisible(false);
        this.window.removeAllChildren();
        this.window.addChild(gadget);
        this.window.setSize(gadget.getWidth() + this.window.getPaddingLeft() + this.window.getPaddingRight(), gadget.getHeight() + this.window.getPaddingTop() + this.window.getPaddingBottom());
        this.window.setPosition((this.background.getClientWidth() - this.window.getWidth()) / 2, (this.background.getClientHeight() - this.window.getHeight()) / 2);
        this.windowNP = this.window.getSkin().npPanel;
        setVisible(true);
    }

    public Panel getWindow() {
        return this.window;
    }

    public boolean isVisible() {
        Background background = this.background;
        return background != null && background.isVisible();
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public boolean isDrawBackground() {
        return this.drawBackground;
    }

    public void setVisible(boolean z) {
        setVisible(z, true);
    }

    public void setVisible(boolean z, boolean z2) {
        if (z) {
            this.background.push();
        } else {
            Gadget parent = this.background.getParent();
            if (parent != null && parent.countChildren() > 1) {
                parent.getChild(parent.countChildren() - 2).push();
            }
        }
        if (this.background.isVisible() != z && z && z2) {
            this.showTime = System.currentTimeMillis();
        }
        this.background.setVisible(z);
    }

    public boolean needsBackground() {
        return this.needsBackground || this.drawBackground;
    }

    public Label getTitleLabel() {
        return this.lblTitle;
    }

    public ScrollableTextFrame getTextFrame() {
        return this.lblText;
    }

    public void redrawBackground() {
        BlurScreen blurScreen = this.background.blurScreen;
        if (blurScreen != null) {
            blurScreen.release();
            this.background.blurScreen = null;
        }
        this.needsBackground = true;
    }

    public class Background extends Panel {
        public BlurScreen blurScreen;

        public Background(int i, int i2, int i3, int i4, Gadget gadget) {
            super(i, i2, i3, i4, gadget);
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void updateKeyInput(KeyMapper keyMapper) {
            if (Dialog.this.isVisible()) {
                super.updateKeyInput(keyMapper);
                keyMapper.filteredFlush(Dialog.KEY_FILTER);
            }
        }

        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            if (this.parent.getChild(0) == this && this.parent.countChildren() > 1) {
                Gadget gadget = this.parent;
                if (!(gadget.getChild(gadget.countChildren() - 1) instanceof Background)) {
                    push();
                    return;
                }
            }
            Engine engine = this.skin.engine;
            BlurScreen blurScreen = this.blurScreen;
            if (blurScreen != null) {
                if (blurScreen.isValid()) {
                    this.blurScreen.endFilling();
                    this.blurScreen.iterate();
                    engine.flush();
                    ShaderConfig.UNCHANGED.apply(engine.getShader());
                    engine.setColor(Colors.GRAY);
                    engine.drawImage(this.blurScreen.getImage(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
                    engine.setColor(Colors.WHITE);
                    engine.flush();
                    Settings.shaderConfig.apply(engine.getShader());
                    Dialog.this.needsBackground = false;
                } else {
                    this.blurScreen.release();
                    this.blurScreen = null;
                    Dialog.this.needsBackground = true;
                }
            }
            if (this.blurScreen == null) {
                Color color = Colors.BLACK;
                engine.setColor(color);
                engine.setTransparency(50);
                engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, engine.getVirtualWidth(), engine.getVirtualHeight(), Resources.FRAME_RECT);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
                drawChildren(i, i2);
                if (Dialog.this.drawBackground) {
                    return;
                }
                Dialog.this.needsBackground = true;
                BlurScreen blurScreen2 = new BlurScreen(engine);
                this.blurScreen = blurScreen2;
                blurScreen2.prepare();
                this.blurScreen.beginFilling();
                try {
                    engine.clear(color);
                    return;
                } catch (RuntimeException e) {
                    e.printStackTrace();
                    TheoTown.analytics.logException("Clear", e);
                    BlurScreen blurScreen3 = this.blurScreen;
                    if (blurScreen3 != null) {
                        blurScreen3.endFilling();
                        return;
                    }
                    return;
                }
            }
            drawChildren(i, i2);
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            Button button;
            super.onClick();
            if (!Dialog.this.canCloseViaBackground || (button = Dialog.this.cancelButton) == null) {
                return;
            }
            button.click();
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void setVisible(boolean z) {
            if (z != this.visible) {
                super.setVisible(z);
                if (z) {
                    Dialog.this.needsBackground = true;
                    return;
                }
                BlurScreen blurScreen = this.blurScreen;
                if (blurScreen != null) {
                    blurScreen.endFilling();
                    this.blurScreen.release();
                    this.blurScreen = null;
                }
                if (Dialog.this.onClose != null) {
                    Dialog.this.onClose.run();
                }
            }
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void free() {
            Dialog.this.onCleanup();
            setVisible(false);
            super.free();
        }

        @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
        public CursorType updateTouchInput(TouchUpdate touchUpdate) {
            CursorType cursorTypeUpdateTouchInput = super.updateTouchInput(touchUpdate);
            touchUpdate.clearScrollChange();
            return cursorTypeUpdateTouchInput;
        }

        public Dialog getDialog() {
            return Dialog.this;
        }
    }

    public void setOnClose(Runnable runnable) {
        this.onClose = runnable;
    }
}
