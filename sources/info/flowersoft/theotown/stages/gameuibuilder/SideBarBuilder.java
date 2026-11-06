package info.flowersoft.theotown.stages.gameuibuilder;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Demand;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.online.CityGiftManager;
import info.flowersoft.theotown.online.CityGiftsDialog;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.stages.BaseStage;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.cityinfo.RCICityInfo;
import info.flowersoft.theotown.stages.gameuibuilder.collectors.AlertCollector;
import info.flowersoft.theotown.stages.gameuibuilder.collectors.RemoveCollector;
import info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector;
import info.flowersoft.theotown.stages.gameuibuilder.collectors.ViewMarkerCollector;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GameMenuBuilder;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.RCIIcon;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.Selector;
import info.flowersoft.theotown.ui.ToolSelector;
import info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft;
import info.flowersoft.theotown.ui.selectable.SelectableCategory;
import info.flowersoft.theotown.ui.toolbar.ToolBar;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SideBarBuilder extends Builder<CityStage.GameStageContext> {
    public int categoryCounter;
    public final City city;
    public final Stapel2DGameContext context;
    public final Master gui;
    public ElementLine line;
    public int openToSide;
    public ToolBar toolBar;

    public SideBarBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.context = gameStageContext.getGameContext();
        this.city = gameStageContext.getCity();
        this.gui = gameStageContext.getGUI();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        LineLayout lineLayout;
        Panel panel = getBuilderContext().areaPanel;
        this.openToSide = Settings.rightSidebar ? 5 : 0;
        ElementLine elementLine = new ElementLine(1, 1, panel.getX() + (Settings.rightSidebar ? panel.getWidth() - 31 : 0), panel.getY(), 31, panel.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.1
            @Override // io.blueflower.stapel2d.gui.ElementLine, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        this.line = elementLine;
        elementLine.setPadding(0);
        this.line.setOmitInvisibleChildren(false);
        this.line.setId("sidebarLine");
        if (!Settings.rightSidebar) {
            panel.setX(panel.getX() + 31);
        }
        panel.setWidth(panel.getWidth() - 31);
        LineLayout firstPart = this.line.getFirstPart();
        LineLayout thirdPart = this.line.getThirdPart();
        final CityGiftManager giftManager = getBuilderContext().getGiftManager();
        int i = 30;
        if (giftManager != null) {
            new IconButton(Resources.ICON_GOLDEN_PRESENT, "", 0, 0, i, i, thirdPart) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    new CityGiftsDialog(giftManager, SideBarBuilder.this.city, new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.2.1
                        @Override // io.blueflower.stapel2d.util.Setter
                        public void set(Stage stage) {
                            ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).visitStage(stage);
                        }
                    }, ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).getGUI(), SideBarBuilder.this.context).setVisible(true);
                }

                @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    super.draw(i2, i3);
                    if (giftManager.hasUnclaimedGiftsUser()) {
                        Drawing.getInstance().drawNewMarker(this.skin.engine, getX() + i2, getY() + i3, getWidth(), getHeight(), 1.2f, -0.4f);
                    }
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    return !Settings.hideUI;
                }
            };
        }
        final AbstractCommentsStage commentsStage = getBuilderContext().getCommentsStage();
        if (commentsStage != null) {
            commentsStage.setOwnBackgroundCity(getBuilderContext().getCity());
            new IconButton(Resources.ICON_NOTIFICATION, "", 0, 0, i, i, thirdPart) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.3
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).visitStage(commentsStage);
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    return !Settings.hideUI;
                }
            };
        }
        new Button(0, 0, i, i, thirdPart) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).close();
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                Engine engine = this.skin.engine;
                int i4 = this.x + i2;
                int i5 = this.y + i3 + (isPressed() ? 2 : 0);
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                }
                drawNinePatch(i2, i3, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                engine.drawImage(Resources.IMAGE_WORLD, i4, i5, this.width, this.height, 0.5f, 0.5f, Resources.ICON_REGION);
                engine.setColor(color);
                if (Tutorial.isMarked(Tutorial.FLAG_REGION)) {
                    Drawing.getInstance().drawArrow(i2, i3, this, 0);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return Tutorial.isVisible(Tutorial.FLAG_REGION) && !Settings.hideUI && super.isVisible();
            }
        }.setId("cmdRegion");
        buildMenuButton(thirdPart).setSize(30, 30);
        if (this.city.isReadonly()) {
            lineLayout = firstPart;
        } else {
            buildBuildButton(firstPart, false).setSize(30, 30);
            lineLayout = firstPart;
            addCollector(new RemoveCollector(this.city), this.openToSide, Tutorial.FLAG_REMOVE, lineLayout, KeyAction.OPEN_CATEGORY_REMOVE).setSize(22, 22);
        }
        addCollector(new ViewMarkerCollector(this.city), this.openToSide, Tutorial.FLAG_VIEW, lineLayout, KeyAction.OPEN_CATEGORY_VIEW).setSize(22, 22);
        if (!this.city.isReadonly()) {
            addCollector(new AlertCollector(this.city), this.openToSide, Tutorial.FLAG_ALERT, lineLayout, KeyAction.OPEN_CATEGORY_ALERT).setSize(22, 22);
        }
        buildRCIButton(this.line.getFirstPart()).setSize(22, 22);
        if (Settings.rightSidebar) {
            this.line.setFloating(1.0f);
        }
    }

    public final Button buildMenuButton(Gadget gadget) {
        Button button = new Button(0, 0, 24, 24, gadget) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Settings.hideUI = false;
                Gadget child = getAbsoluteParent().getChild(r0.countChildren() - 1);
                if ((child instanceof Dialog.Background) && child.isVisible()) {
                    return;
                }
                new GameMenuBuilder().build((Master) getAbsoluteParent(), (CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext(), null, null, ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).getGameContext(), new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.5.1
                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(Stage stage) {
                        if (stage instanceof BaseStage) {
                            ((BaseStage) stage).setOwnBackgroundCity(SideBarBuilder.this.city);
                        }
                        ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).visitStage(stage);
                    }
                });
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                }
                engine.setTransparency(Settings.hideUI ? 100 : 255);
                drawNinePatch(i, i2, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                drawChildren(i, i2 + (isPressed() ? 2 : 0));
                engine.setTransparency(255);
                engine.setColor(color);
            }
        };
        button.setIcon(Resources.ICON_MENU);
        button.setId("cmdMenu");
        KeyAction.OPEN_MENU.applyTo(button);
        return button;
    }

    public final ToolSelector addCollector(final SelectableCollector selectableCollector, int i, int i2, Gadget gadget, KeyAction keyAction) {
        ToolSelector toolSelectorAddCollector = addCollector(selectableCollector.getName(), selectableCollector.getIconId(), i, selectableCollector.collect(), gadget, "cmd" + selectableCollector.getTag(), new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(selectableCollector.isVisible());
            }
        }, true, i2);
        if (keyAction != null) {
            keyAction.applyTo(toolSelectorAddCollector);
        }
        toolSelectorAddCollector.getIconGadget().setScaleDown(false);
        return toolSelectorAddCollector;
    }

    public final List<SelectableCategory> extractCategory(String str, SelectableCollector selectableCollector, boolean z, boolean z2) {
        List<Selectable> listCollect = selectableCollector.collect();
        if (z2) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 3; i++) {
                SelectableCategory selectableCategory = new SelectableCategory(this.city, (CategoryDraft) Drafts.ALL.get(str + "_level0" + i));
                selectableCategory.setMarkNewChildren(z);
                for (int i2 = 0; i2 < listCollect.size(); i2++) {
                    Selectable selectable = listCollect.get(i2);
                    boolean z3 = selectable instanceof SelectableBuildingDraft;
                    if ((z3 && ((SelectableBuildingDraft) selectable).getDraft().level - 1 == i) || (!z3 && i == 0)) {
                        selectableCategory.addChild(selectable);
                    }
                }
                arrayList.add(selectableCategory);
            }
            return arrayList;
        }
        SelectableCategory selectableCategory2 = new SelectableCategory(this.city, (CategoryDraft) Drafts.ALL.get(str));
        selectableCategory2.setMarkNewChildren(z);
        for (int i3 = 0; i3 < 3; i3++) {
            SelectableCategory selectableCategory3 = new SelectableCategory(this.city, (CategoryDraft) Drafts.ALL.get("$cat_level0" + i3));
            selectableCategory3.setMarkNewChildren(z);
            for (int i4 = 0; i4 < listCollect.size(); i4++) {
                Selectable selectable2 = listCollect.get(i4);
                boolean z4 = selectable2 instanceof SelectableBuildingDraft;
                if ((z4 && ((SelectableBuildingDraft) selectable2).getDraft().level - 1 == i3) || (!z4 && i3 == 0)) {
                    selectableCategory3.addChild(selectable2);
                }
            }
            selectableCategory2.addChild(selectableCategory3);
        }
        return Collections.singletonList(selectableCategory2);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final info.flowersoft.theotown.ui.ToolSelector buildBuildButton(io.blueflower.stapel2d.gui.Gadget r24, boolean r25) {
        /*
            Method dump skipped, instruction units count: 681
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.buildBuildButton(io.blueflower.stapel2d.gui.Gadget, boolean):info.flowersoft.theotown.ui.ToolSelector");
    }

    public final void addSeparator(ToolSelector toolSelector) {
        new Panel(0, 0, 3, 30, toolSelector) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.12
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                this.skin.engine.setColor(Colors.LIGHT_GRAY);
                this.skin.engine.drawImage(Resources.IMAGE_WORLD, getX() + i + ((getWidth() - 1) / 2), getY() + i2 + 2, 1, getHeight() - 4, Resources.FRAME_RECT);
                this.skin.engine.setColor(Colors.WHITE);
            }
        };
    }

    public final Button buildRCIButton(Gadget gadget) {
        Button button = new Button(0, 0, 30, 30, gadget) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.13
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ((CityStage.GameStageContext) SideBarBuilder.this.getBuilderContext()).visitCityInfo(new RCICityInfo());
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                }
                drawNinePatch(i, i2, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                drawChildren(i, (isPressed() ? 2 : 0) + i2);
                engine.setColor(color);
                if (Tutorial.isMarked(Tutorial.FLAG_DEMAND)) {
                    Drawing.getInstance().drawArrow(i, i2, this, 1);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return Tutorial.isVisible(Tutorial.FLAG_DEMAND) && !Settings.hideUI && super.isVisible();
            }
        };
        KeyAction.OPEN_RCI.applyTo(button);
        new RCIIcon((Demand) getBuilderContext().getCity().getComponent(10), button).fillParent();
        button.setId("cmdRCI");
        return button;
    }

    public final Runnable generateOnClickRunnable(final ToolSelector toolSelector) {
        return new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.14
            @Override // java.lang.Runnable
            public void run() {
                toolSelector.collapse();
            }
        };
    }

    public final ToolSelector addCollector(String str, int i, int i2, List<Selectable> list, Gadget gadget, String str2, final Getter<Boolean> getter, final boolean z, final int i3) {
        ToolSelector toolSelector = new ToolSelector(i, i2, gadget) { // from class: info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.15
            @Override // info.flowersoft.theotown.ui.ToolSelector
            public boolean examineVisibility() {
                return ((Boolean) getter.get()).booleanValue();
            }

            @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i4, int i5) {
                if (z) {
                    super.draw(i4, i5);
                } else {
                    drawChildren(i4, i5);
                }
                int i6 = i3;
                if (i6 == 0 || !Tutorial.isMarked(i6)) {
                    return;
                }
                Drawing.getInstance().drawArrow(i4, i5, this, 1);
            }

            @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
            }

            @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                int i4 = i3;
                return (i4 == 0 || Tutorial.isVisible(i4)) && super.isVisible() && !Settings.hideUI;
            }
        };
        toolSelector.setId(str2);
        toolSelector.setActiveZebra(this.categoryCounter % 2 == 1);
        if (!z) {
            toolSelector.setSize(26, 26);
        }
        Runnable runnableGenerateOnClickRunnable = generateOnClickRunnable(toolSelector);
        Iterator<Selectable> it = list.iterator();
        while (it.hasNext()) {
            it.next().setOnSelect(runnableGenerateOnClickRunnable);
        }
        new Selector(str, toolSelector, list);
        return toolSelector;
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void release() {
        this.line.push();
    }
}
