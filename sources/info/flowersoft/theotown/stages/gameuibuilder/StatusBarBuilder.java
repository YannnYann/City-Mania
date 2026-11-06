package info.flowersoft.theotown.stages.gameuibuilder;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo;
import info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.BudgetIndicator;
import info.flowersoft.theotown.ui.DateIndicator;
import info.flowersoft.theotown.ui.DiamondIndicator;
import info.flowersoft.theotown.ui.DiamondShopDialog;
import info.flowersoft.theotown.ui.Minimap;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.ToggleButton;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class StatusBarBuilder extends Builder<CityStage.GameStageContext> {
    public City city;
    public Stapel2DGameContext context;
    public Master gui;
    public ElementLine pnlStatusbar;

    public StatusBarBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.context = getBuilderContext().getGameContext();
        this.city = getBuilderContext().getCity();
        this.gui = getBuilderContext().getGUI();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        final Setter<Stage> setter = new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.1
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Stage stage) {
                ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).visitStage(stage);
            }
        };
        Panel panel = getBuilderContext().areaPanel;
        buildOtherButtons(panel);
        ElementLine elementLine = new ElementLine(0, 1, panel.getX() + (Settings.leftMinimap ? 49 : 0), (panel.getY() + panel.getHeight()) - 20, panel.getWidth() - 49, 20, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.2
            @Override // io.blueflower.stapel2d.gui.ElementLine, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return !Settings.hideUI;
            }
        };
        this.pnlStatusbar = elementLine;
        elementLine.getFirstPart();
        panel.setHeight(panel.getHeight() - 20);
        DateIndicator dateIndicator = new DateIndicator(0, 0, this.pnlStatusbar.getFirstPart(), this.city, this.context, new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.3
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Stage stage) {
                ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).visitStage(stage);
            }
        }) { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).visitCityInfo(new StatisticsCityInfo());
            }
        };
        dateIndicator.setId("cmdDate");
        KeyAction.OPEN_DATE_INDICATOR.applyTo(dateIndicator);
        LineLayout thirdPart = this.pnlStatusbar.getThirdPart();
        if (dateIndicator.getWidth() + (TheoTown.PREMIUM ? 100 : 180) > this.pnlStatusbar.getWidth()) {
            ElementLine elementLine2 = new ElementLine(0, 1, this.pnlStatusbar.getX(), this.pnlStatusbar.getY() - 20, this.pnlStatusbar.getWidth(), 20, this.gui);
            this.pnlStatusbar = elementLine2;
            thirdPart = elementLine2.getFirstPart();
            panel.setHeight(panel.getHeight() - 20);
        }
        LineLayout lineLayout = thirdPart;
        int i = 0;
        new DiamondIndicator(0, i, 30, lineLayout) { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                TheoTown.analytics.logEvent("Shop", "Open", "Statusbar");
                new DiamondShopDialog((Master) getAbsoluteParent(), StatusBarBuilder.this.context, setter).setVisible(true);
            }
        }.setId("cmdDiamondShop");
        BudgetIndicator budgetIndicator = new BudgetIndicator(0, i, 60, lineLayout, this.city) { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).visitCityInfo(new BudgetCityInfo());
            }
        };
        budgetIndicator.setId("cmdBudget");
        KeyAction.OPEN_BUDGET_INDICATOR.applyTo(budgetIndicator);
    }

    public final void buildOtherButtons(Panel panel) {
        final int y = panel.getY() + panel.getHeight();
        ToggleButton toggleButton = new ToggleButton(panel.getX() + (Settings.leftMinimap ? 0 : panel.getWidth() - 48), y - 48, 48, 48, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.7
            @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Settings.showMinimap = !Settings.showMinimap;
            }

            @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).minimapPanel.isVisible();
            }

            public final void updateSize() {
                if (StatusBarBuilder.this.city.getWidth() == StatusBarBuilder.this.city.getHeight()) {
                    return;
                }
                if (!Settings.showMinimap) {
                    this.height = (int) ((StatusBarBuilder.this.city.getRotatedHeight() * 48.0f) / StatusBarBuilder.this.city.getRotatedWidth());
                } else {
                    this.height = this.width;
                }
                this.y = y - this.height;
                layout();
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                updateSize();
                super.onUpdate();
            }

            @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Minimap minimap = ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).getMinimap();
                Engine engine = this.skin.engine;
                int i3 = this.x + i;
                int i4 = this.y + i2;
                if (Settings.showMinimap) {
                    Color color = Colors.WHITE;
                    engine.setColor(color);
                    float f = i3;
                    engine.drawNinePatch(Resources.IMAGE_WORLD, f, i4, getWidth(), getHeight(), Resources.skin.npButton);
                    engine.setColor(color);
                    engine.setTransparency(255);
                    engine.setScale(0.5f, 0.5f);
                    engine.drawImage(Resources.IMAGE_WORLD, f, i4 + (getHeight() / 2), getWidth(), getHeight() / 2, 0.5f, 0.5f, Resources.ICON_CANCEL);
                    engine.setScale(1.0f, 1.0f);
                    engine.setColor(color);
                } else if (minimap != null) {
                    engine.setColor(Colors.BLACK);
                    engine.setTransparency(180);
                    engine.setTransparency(255);
                    engine.setColor(Colors.WHITE);
                    drawNinePatch(i, i2, this.skin.npIndicator);
                    try {
                        minimap.draw(i3 + 2, i4 + 2, getWidth() - 4, getHeight() - 4);
                        engine.flush();
                    } catch (RuntimeException e) {
                        TheoTown.analytics.logException("Flush", e);
                        engine.removeFramebuffer();
                    }
                    engine.setTransparency(180);
                    int rotation = StatusBarBuilder.this.city.getRotation();
                    if (rotation == 0) {
                        float f2 = i3 + 3;
                        float f3 = i4 + 3;
                        Drawing.getInstance().drawTriangle(f2, f3, i3 + 5, f3, f2, i4 + 5, engine);
                    } else if (rotation == 1) {
                        float f4 = i4 + 3;
                        Drawing.getInstance().drawTriangle((getWidth() + i3) - 3, f4, (getWidth() + i3) - 5, f4, (i3 + getWidth()) - 3, i4 + 5, engine);
                    } else if (rotation == 2) {
                        Drawing.getInstance().drawTriangle((getWidth() + i3) - 3, (getHeight() + i4) - 3, (getWidth() + i3) - 5, (getHeight() + i4) - 3, (i3 + getWidth()) - 3, (i4 + getHeight()) - 5, engine);
                    } else if (rotation == 3) {
                        float f5 = i3 + 3;
                        Drawing.getInstance().drawTriangle(f5, (getHeight() + i4) - 3, i3 + 5, (getHeight() + i4) - 3, f5, (i4 + getHeight()) - 5, engine);
                    }
                    engine.setTransparency(255);
                }
                if (Tutorial.isMarked(Tutorial.FLAG_MAP)) {
                    Drawing.getInstance().drawArrow(i, i2, this, 0);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return Tutorial.isVisible(Tutorial.FLAG_MAP) && !Settings.hideUI;
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void updateKeyInput(KeyMapper keyMapper) {
                super.updateKeyInput(keyMapper);
                if (keyActionHit(keyMapper, KeyAction.TURN_MAP_LEFT)) {
                    ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).turnMap(1);
                }
                if (keyActionHit(keyMapper, KeyAction.TURN_MAP_RIGHT)) {
                    ((CityStage.GameStageContext) StatusBarBuilder.this.getBuilderContext()).turnMap(-1);
                }
            }

            public final boolean keyActionHit(KeyMapper keyMapper, KeyAction keyAction) {
                boolean zKeyHit = false;
                for (int i : keyAction.getKeys()) {
                    if (i > 0) {
                        zKeyHit |= keyMapper.keyHit(i);
                    }
                }
                return zKeyHit;
            }
        };
        KeyAction.OPEN_MINIMAP.applyTo(toggleButton);
        toggleButton.setId("cmdMinimap");
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void release() {
        this.pnlStatusbar.push();
    }
}
