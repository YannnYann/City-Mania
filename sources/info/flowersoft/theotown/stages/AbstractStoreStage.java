package info.flowersoft.theotown.stages;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.ShadowedLabel;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.StaticGetter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractStoreStage extends BaseStage {
    public final int HEADER_HEIGHT;
    public List<Tab> allTabs;
    public Panel header;
    public float lastShiftY;
    public ElementLine line;
    public ListBox listBox;
    public List<Tab> tabs;

    public abstract void buildHeaderButtons(LineLayout lineLayout);

    public abstract void close();

    public abstract int getFallbackIcon();

    public abstract String getFallbackTitle();

    public abstract void help();

    public abstract boolean isLoading();

    public abstract void search();

    public AbstractStoreStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.HEADER_HEIGHT = 32;
        this.tabs = new ArrayList();
        this.allTabs = new ArrayList();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public synchronized void enter() {
        super.enter();
        int clientWidth = (this.gui.getClientWidth() - Math.min(600, this.gui.getClientWidth())) / 2;
        ListBox listBox = new ListBox(0, 32, this.gui.getClientWidth(), this.gui.getClientHeight() - 32, this.gui) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void updateKeyInput(KeyMapper keyMapper) {
                float deltaTime = keyMapper.keyDown(20) ? AbstractStoreStage.this.context.getDeltaTime() * (-200.0f) : 0.0f;
                if (keyMapper.keyDown(19)) {
                    deltaTime = AbstractStoreStage.this.context.getDeltaTime() * 200.0f;
                }
                if (keyMapper.keyRepeatedHit(93)) {
                    deltaTime = -100.0f;
                }
                if (keyMapper.keyRepeatedHit(92)) {
                    deltaTime = 100.0f;
                }
                if (deltaTime != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    setShiftY(getShiftY() + deltaTime);
                }
            }
        };
        this.listBox = listBox;
        listBox.setShowBorder(false);
        this.listBox.setPadding(clientWidth, 0, clientWidth, 0);
        this.listBox.setVisibilityOffsets(Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 100);
        new Gadget(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.2
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(0, 0, 0);
                engine.drawImage(this.skin.img, getX() + i, getY() + i2 + AbstractStoreStage.this.gui.getPaddingTop() + 32, getWidth(), (-AbstractStoreStage.this.gui.getPaddingTop()) - 32, Resources.FRAME_GRADIENT_Y);
                if (AbstractStoreStage.this.gui.getPaddingBottom() > 0) {
                    engine.drawImage(this.skin.img, i + getX(), ((i2 + getY()) + getHeight()) - AbstractStoreStage.this.gui.getPaddingBottom(), getWidth(), AbstractStoreStage.this.gui.getPaddingBottom(), Resources.FRAME_GRADIENT_Y);
                }
            }
        };
        Panel panel = new Panel(0, 0, this.gui.getClientWidth(), 32, this.gui) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.3
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setTransparency(200);
                engine.setColor(this.skin.cTextAccent);
                drawNinePatch(i, i2, this.skin.npPanel);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
                drawChildren(i, i2);
            }
        };
        this.header = panel;
        panel.setPadding(2, 2, 2, 2);
        ElementLine elementLine = new ElementLine(0, 2, 0, 0, this.header.getClientWidth(), this.header.getClientHeight(), this.header);
        this.line = elementLine;
        buildHeaderButtons(elementLine.getThirdPart());
        addActionButton(Resources.ICON_EYE, 1.0f, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.search();
            }
        }, null);
        addActionButton(Resources.ICON_INFO, 1.0f, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.help();
            }
        }, null);
        addActionButton(Resources.skin.fCloseButton, 1.0f, new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.close();
            }
        }, null);
        new Gadget(0, 32, this.gui.getClientWidth(), this.gui.getClientHeight() - 32, this.gui) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.4
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                if (AbstractStoreStage.this.isLoading()) {
                    int i3 = i + this.x;
                    int i4 = i2 + this.y;
                    float fMillis = ((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f * 3.1415927f;
                    Drawing.getInstance().drawCircle(i3 + (this.width * 0.5f), i4 + (this.height * 0.5f), 50.0f, 55.0f, fMillis, fMillis + 1.5707964f, 1.0f, 1.0f, this.skin.engine);
                }
            }
        };
        IconButton iconButton = new IconButton(Resources.ICON_HAMBURGER, "", 0, 0, 0, this.line.getFirstPart().getClientHeight(), this.line.getFirstPart()) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                AbstractStoreStage abstractStoreStage = AbstractStoreStage.this;
                abstractStoreStage.buildTabPopup(abstractStoreStage.tabs, this, null);
            }
        };
        new IconButton(iconButton.getX() + iconButton.getWidth() + 1, "", 0, 0, 0, this.line.getFirstPart().getClientHeight(), this.line.getFirstPart()) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.6
            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Gadget
            public void layout() {
                super.layout();
                ShadowedLabel shadowedLabel = this.text;
                if (shadowedLabel != null) {
                    shadowedLabel.setShadow(true);
                    this.text.setColor(Colors.WHITE);
                    this.text.setFont(this.skin.fontBig);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void updateKeyInput(KeyMapper keyMapper) {
                int activeTabIndex = AbstractStoreStage.this.getActiveTabIndex();
                if (keyMapper.keyHit(61)) {
                    if (keyMapper.shiftDown()) {
                        AbstractStoreStage.this.selectPreviousTab(activeTabIndex);
                    } else {
                        AbstractStoreStage.this.selectNextTab(activeTabIndex);
                    }
                }
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                Tab activeTab = AbstractStoreStage.this.getActiveTab();
                if (activeTab != null) {
                    this.icon.setFrame(activeTab.icon);
                    this.text.setText(activeTab.name.get());
                    layout();
                } else {
                    this.icon.setFrame(AbstractStoreStage.this.getFallbackIcon());
                    this.text.setText(AbstractStoreStage.this.getFallbackTitle());
                    layout();
                }
            }

            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
    }

    public final void buildTabPopup(List<Tab> list, final Gadget gadget, final PopupBuilder popupBuilder) {
        final PopupBuilder popupBuilder2 = new PopupBuilder(gadget);
        if (popupBuilder != null) {
            popupBuilder2.setSource(popupBuilder.getSelectedButton().getAbsoluteX(), popupBuilder.getSelectedButton().getAbsoluteY());
        }
        int activeTabIndex = getActiveTabIndex();
        if (popupBuilder != null) {
            popupBuilder2.addItem(Resources.ICON_BACKWARD, this.translator.translate(2416), new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.7
                @Override // java.lang.Runnable
                public void run() {
                    popupBuilder.build();
                }
            });
            popupBuilder2.addSeparator();
        }
        for (int i = 0; i < list.size(); i++) {
            final Tab tab = list.get(i);
            if (tab != null) {
                popupBuilder2.addItem(tab.icon, tab.name.get(), tab.children.isEmpty() ? tab.onClick : new Runnable() { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.8
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractStoreStage.this.buildTabPopup(tab.children, gadget, popupBuilder2);
                    }
                }, activeTabIndex < 0 || tab != this.allTabs.get(activeTabIndex));
            } else {
                popupBuilder2.addSeparator();
            }
        }
        popupBuilder2.build();
    }

    public void selectNextTab(int i) {
        int i2 = i + 1;
        int size = this.allTabs.size();
        while (true) {
            int i3 = i2 % size;
            if (this.allTabs.get(i3) == null || !this.allTabs.get(i3).children.isEmpty()) {
                i2 = i3 + 1;
                size = this.allTabs.size();
            } else {
                this.allTabs.get(i3).onClick.run();
                return;
            }
        }
    }

    public void selectPreviousTab(int i) {
        int iMax = Math.max(((i + this.allTabs.size()) - 1) % this.allTabs.size(), 0);
        while (true) {
            if (this.allTabs.get(iMax) == null || !this.allTabs.get(iMax).children.isEmpty()) {
                iMax = ((iMax + this.allTabs.size()) - 1) % this.allTabs.size();
            } else {
                this.allTabs.get(iMax).onClick.run();
                return;
            }
        }
    }

    public Tab getActiveTab() {
        int activeTabIndex = getActiveTabIndex();
        if (activeTabIndex >= 0) {
            return this.allTabs.get(activeTabIndex);
        }
        return null;
    }

    public int getActiveTabIndex() {
        for (int i = 0; i < this.allTabs.size(); i++) {
            Tab tab = this.allTabs.get(i);
            if (tab != null && tab.isSelected()) {
                return i;
            }
        }
        return -1;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
        this.lastShiftY = this.listBox.getShiftY();
        this.tabs.clear();
        this.allTabs.clear();
    }

    public Button addActionButton(final int i, final float f, final Runnable runnable, final Getter<Boolean> getter) {
        return new Button(0, 0, 30, 30, this.line.getThirdPart()) { // from class: info.flowersoft.theotown.stages.AbstractStoreStage.9
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                Engine engine = this.skin.engine;
                float f2 = f;
                engine.setScale(f2, f2);
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (i == this.skin.fCloseButton) {
                    if (isMouseHovered()) {
                        engine.setColor(Colors.LIGHT_RED);
                    }
                    if (isPressed()) {
                        engine.setColor(Colors.RED);
                    }
                } else {
                    if (isMouseHovered()) {
                        engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                    }
                    if (isPressed()) {
                        engine.setColor(Colors.GRAY);
                    }
                }
                engine.drawImage(Resources.IMAGE_WORLD, i2 + this.x, i3 + this.y, this.width, this.height, 0.5f, 0.5f, i);
                engine.setColor(color);
                engine.setScale(1.0f, 1.0f);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                runnable.run();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                Getter getter2 = getter;
                return getter2 == null || ((Boolean) getter2.get()).booleanValue();
            }
        };
    }

    public void addTabSeparator() {
        addTabSeparator(null);
    }

    public void addTabSeparator(Tab tab) {
        if (tab == null) {
            this.tabs.add(null);
        } else {
            tab.children.add(null);
        }
        this.allTabs.add(null);
    }

    public Tab addTabButton(int i, Getter<String> getter, Runnable runnable, Getter<Boolean> getter2, Tab tab) {
        Tab tab2 = new Tab(i, getter, runnable, getter2);
        if (tab == null) {
            this.tabs.add(tab2);
        } else {
            tab.children.add(tab2);
        }
        this.allTabs.add(tab2);
        return tab2;
    }

    public Tab addTabButton(int i, Getter<String> getter, Runnable runnable, Getter<Boolean> getter2) {
        return addTabButton(i, getter, runnable, getter2, null);
    }

    public Tab addTabButton(int i, String str, Runnable runnable, Getter<Boolean> getter) {
        return addTabButton(i, new StaticGetter(str), runnable, getter);
    }

    public static class Tab {
        public List<Tab> children = new ArrayList();
        public int icon;
        public Getter<Boolean> isSelected;
        public Getter<String> name;
        public Runnable onClick;

        public Tab(int i, Getter<String> getter, Runnable runnable, Getter<Boolean> getter2) {
            this.icon = i;
            this.name = getter;
            this.onClick = runnable;
            this.isSelected = getter2;
        }

        public boolean isSelected() {
            Getter<Boolean> getter = this.isSelected;
            if (getter != null) {
                return getter.get().booleanValue();
            }
            return false;
        }
    }
}
