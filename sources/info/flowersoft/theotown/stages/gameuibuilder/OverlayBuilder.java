package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.city.toolaction.ToolActionGroup;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.TimedEffectManager;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.RankStage;
import info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo;
import info.flowersoft.theotown.stages.cityinfo.RankCityInfo;
import info.flowersoft.theotown.stages.cityinfo.RatingCityInfo;
import info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.tools.BuildTool;
import info.flowersoft.theotown.tools.TwoModesTool;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.LegendDrawer;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.CityNameIndicator;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.FollowCarToolUI;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.RankIndicator;
import info.flowersoft.theotown.ui.RatingIndicator;
import info.flowersoft.theotown.ui.ShadowedLabel;
import info.flowersoft.theotown.ui.TaskIndicator;
import info.flowersoft.theotown.ui.ToolSelector;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.touch.TouchUpdate;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class OverlayBuilder extends Builder<CityStage.GameStageContext> {
    public final AnimationDraft IS_NEW_MARKER;
    public final JSONObject beginnerConfig;
    public final Master gui;
    public final List<InfoLine> infoLines;
    public final Translator translator;

    public interface InfoLine {
        Color getColor();

        String getText();

        boolean isActive();
    }

    public OverlayBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.IS_NEW_MARKER = (AnimationDraft) Drafts.get("$anim_ui_new00", AnimationDraft.class);
        this.infoLines = new ArrayList();
        this.beginnerConfig = Resources.getSpecificConfig("beginner");
        this.gui = getBuilderContext().getGUI();
        this.translator = gameStageContext.getGameContext().getTranslator();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        LineLayout lineLayout;
        LineLayout lineLayout2;
        JSONObject jSONObject;
        City city;
        Panel panel = getBuilderContext().areaPanel;
        JSONObject jSONObjectOptObject = JSONUtil.optObject(Resources.getSpecificConfig("ui"), "overlay");
        final City city2 = getBuilderContext().getCity();
        final TimedEffectManager timedEffectManager = GameHandler.getInstance().getTimedEffectManager();
        if (Settings.verticalToolButtons) {
            lineLayout = new LineLayout(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1, 1, new Gadget((panel.getX() + panel.getWidth()) - 30, panel.getY(), 30, panel.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.1
            });
            lineLayout.setFloating(1.0f);
        } else {
            lineLayout = new LineLayout(1.0f, 0, 1, new Gadget(panel.getX(), panel.getY(), panel.getWidth(), 30, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.2
            });
            lineLayout.setReversed(true);
        }
        LineLayout lineLayout3 = lineLayout;
        lineLayout3.setOmitInvisibleChildren(false);
        ToolSelector toolSelector = new ToolSelector(Resources.ICON_CANCEL, 4, lineLayout3) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.3
            @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                City city3 = city2;
                city3.applyComponent(city3.getDefaultTool());
            }

            @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return city2.getComponent(13) != city2.getDefaultTool();
            }
        };
        toolSelector.setId("cmdCloseTool");
        int i = 8;
        int i2 = 2;
        int i3 = 26;
        if (Settings.verticalToolButtons) {
            int i4 = 0;
            while (i4 < i) {
                int i5 = i4;
                int i6 = i3;
                int i7 = i2;
                Gadget gadget = new Gadget(0, 0, 26, 26, lineLayout3) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.4
                };
                int i8 = i;
                LineLayout lineLayout4 = lineLayout3;
                int i9 = 1;
                while (i9 <= i7) {
                    int i10 = 0;
                    while (i10 < i9) {
                        int i11 = i8;
                        City city3 = city2;
                        ToolActionButton toolActionButton = new ToolActionButton(city3, i10, i5, true, i9, i10 == 0, gadget);
                        city2 = city3;
                        toolActionButton.setSize(i6, i6);
                        toolActionButton.setPosition(((i9 - 1) - i10) * (-27), 0);
                        i10++;
                        i8 = i11;
                        i7 = i7;
                    }
                    i9++;
                    i7 = i7;
                }
                lineLayout3 = lineLayout4;
                i4 = i5 + 1;
                i3 = i6;
                i = i8;
                i2 = i7;
            }
        } else {
            int i12 = 0;
            while (true) {
                lineLayout2 = lineLayout3;
                if (i12 >= 8) {
                    break;
                }
                City city4 = city2;
                city2 = city4;
                lineLayout3 = lineLayout2;
                new ToolActionButton(city4, i12, 0, false, 0, Settings.verticalToolButtons, lineLayout2).setSize(26, 26);
                i12++;
            }
            lineLayout3 = lineLayout2;
        }
        new Panel(0, 0, 0, 0, lineLayout3) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.5
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i13, int i14) {
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate touchUpdate) {
                super.updateTouchInput(touchUpdate);
                ToolActionGroup actions = ((Tool) city2.getComponent(13)).getActions();
                for (int i13 = 0; i13 < actions.size(); i13++) {
                    updateKeyAction(((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).getGameContext().getKey(), actions.get(i13));
                }
                return null;
            }

            private boolean isDialogOpen() {
                Master master = (Master) getAbsoluteParent();
                if (master.countChildren() == 0) {
                    return false;
                }
                Gadget child = master.getChild(master.countChildren() - 1);
                Dialog dialog = child instanceof Dialog.Background ? ((Dialog.Background) child).getDialog() : null;
                return dialog != null && dialog.isVisible();
            }

            public final void updateKeyAction(KeyMapper keyMapper, ToolAction toolAction) {
                KeyAction hotkey;
                if (toolAction == null || !toolAction.isHotkeyActive() || (hotkey = toolAction.getHotkey()) == null || isDialogOpen()) {
                    return;
                }
                int[] keys = hotkey.getKeys();
                int[] modifiers = hotkey.getModifiers();
                for (int i13 = 0; i13 < keys.length; i13++) {
                    if (keyMapper.keyHit(keys[i13], modifiers[i13])) {
                        toolAction.onClick();
                        return;
                    }
                }
            }
        };
        lineLayout3.layout();
        final City city5 = city2;
        new FollowCarToolUI(city5, getBuilderContext().getGameContext(), new Setter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.getBuilderContext().visitStage((Stage) obj);
            }
        }, 0, 0, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui);
        final Getter<TwoModesTool> getter = new Getter<TwoModesTool>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public TwoModesTool get() {
                Tool tool = (Tool) city5.getComponent(13);
                if (tool instanceof TwoModesTool) {
                    return (TwoModesTool) tool;
                }
                return null;
            }
        };
        Panel panel2 = new Panel(100, 100, 66, 34, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.7
            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                TwoModesTool twoModesTool = (TwoModesTool) getter.get();
                if (twoModesTool != null && twoModesTool.moveIsPending()) {
                    int iMax = Math.max(Math.min(twoModesTool.getDrawnTargetX(), city5.getWidth() - 1), 0);
                    int iMax2 = Math.max(Math.min(twoModesTool.getDrawnTargetY(), city5.getHeight() - 1), 0);
                    float terrainAvgHeight = city5.getTiles().getTerrainAvgHeight(iMax, iMax2);
                    int iOriginalToRotatedX = city5.originalToRotatedX(iMax, iMax2);
                    int iOriginalToRotatedY = city5.originalToRotatedY(iMax, iMax2);
                    IsoConverter isoConverter = city5.getIsoConverter();
                    setPosition(MathUtils.clamp(((int) ((isoConverter.isoToAbsX(iOriginalToRotatedX, iOriginalToRotatedY) + ((int) ((isoConverter.getAbsScaleX() * 0.5f) * 32.0f))) * OverlayBuilder.this.gui.getVirtualWidthRatio())) - (getWidth() / 2), 0, OverlayBuilder.this.gui.getClientWidth() - getWidth()) - OverlayBuilder.this.gui.getPaddingLeft(), MathUtils.clamp((int) ((isoConverter.isoToAbsY(iOriginalToRotatedX, iOriginalToRotatedY) - ((int) (isoConverter.getAbsScaleY() * ((terrainAvgHeight * 12.0f) - 8.0f)))) * OverlayBuilder.this.gui.getVirtualHeightRatio()), 0, OverlayBuilder.this.gui.getClientHeight() - getHeight()) - OverlayBuilder.this.gui.getPaddingTop());
                    if (!this.visible) {
                        push();
                    }
                    this.visible = true;
                } else {
                    this.visible = false;
                }
                return this.visible;
            }
        };
        CreateIconButton(Resources.ICON_OK, 2, 2, 30, 30, panel2, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.8
            @Override // java.lang.Runnable
            public void run() {
                ((TwoModesTool) getter.get()).finishMove();
            }
        });
        CreateIconButton(Resources.ICON_CANCEL, 34, 2, 30, 30, panel2, new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.9
            @Override // java.lang.Runnable
            public void run() {
                ((TwoModesTool) getter.get()).cancelMove();
            }
        });
        ShadowedLabel shadowedLabel = new ShadowedLabel("", panel.getX() + 2, panel.getY() + 2, (panel.getWidth() - 4) - toolSelector.getWidth(), 0, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.10
            @Override // io.blueflower.stapel2d.gui.Label
            public String getText() {
                return ((Tool) city5.getComponent(13)).getName();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return (city5.getComponent(13) == city5.getDefaultTool() || Settings.hideUI) ? false : true;
            }
        };
        shadowedLabel.setColor(Colors.WHITE);
        shadowedLabel.setFont(Resources.skin.fontBig);
        shadowedLabel.setHeight((int) shadowedLabel.getFont().getHeight());
        shadowedLabel.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        int i13 = 0;
        new Panel(panel.getX(), panel.getY() + 20, 0, i13, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.11
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i14, int i15) {
                Skin skin = this.skin;
                Engine engine = skin.engine;
                Font font = skin.fontSmall;
                int i16 = i14 + this.x + 2;
                int i17 = i15 + this.y + 2;
                for (int i18 = 0; i18 < OverlayBuilder.this.infoLines.size(); i18++) {
                    InfoLine infoLine = (InfoLine) OverlayBuilder.this.infoLines.get(i18);
                    if (infoLine.isActive()) {
                        String text = infoLine.getText();
                        engine.setColor(infoLine.getColor());
                        Drawing.getInstance().drawOutlinedText(text, i16, i17, font, Colors.BLACK, engine);
                        i17 += 10;
                    }
                }
                engine.setColor(Colors.WHITE);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && city5.getComponent(13) == city5.getDefaultTool() && !Settings.hideUI;
            }
        };
        new Panel(panel.getX() + 5, shadowedLabel.getY() + shadowedLabel.getHeight() + 5, 0, i13, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.12
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i14, int i15) {
                BuildToolMarker marker;
                List<LegendEntry> legend;
                Tool tool = (Tool) city5.getComponent(13);
                if (!(tool instanceof BuildTool) || (marker = ((BuildTool) tool).getMarker()) == null || (legend = marker.getLegend()) == null || legend.isEmpty()) {
                    return;
                }
                LegendDrawer legendDrawer = LegendDrawer.INSTANCE;
                int i16 = this.x + i14;
                int i17 = this.y + i15;
                int iMax = Math.max(100, this.parent.getClientWidth() / 3);
                int iMax2 = Math.max(100, this.parent.getClientHeight() - 60);
                Color color = Colors.BLACK;
                Skin skin = this.skin;
                legendDrawer.draw(legend, i16, i17, iMax, iMax2, color, skin.engine, skin);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && (city5.getComponent(13) instanceof BuildTool) && !Settings.hideUI;
            }
        };
        ElementLine elementLine = new ElementLine(0, 1, panel.getX(), panel.getY(), panel.getWidth(), 20, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.13
            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return city5.getComponent(13) == city5.getDefaultTool() && !Settings.hideUI;
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                layout();
                super.onUpdate();
            }
        };
        if (TheoTown.PREMIUM || city5.isReadonly()) {
            jSONObject = jSONObjectOptObject;
        } else {
            jSONObject = jSONObjectOptObject;
            new AnonymousClass14(Resources.ICON_SHORT_BUILD_TIME, "", 0, 0, 26, 26, elementLine.getThirdPart(), jSONObject, Resources.getSpecificConfig("build time boost").optInt("duration minutes") * 60000, timedEffectManager).setId("cmdBuildTimeBoost");
        }
        if (city5.isUber() || !city5.getGameMode().hasInfinityMoney() || city5.isReadonly()) {
            city = city5;
        } else {
            AnonymousClass15 anonymousClass15 = new AnonymousClass15(Resources.ICON_UBER, "", 0, 0, 26, 26, elementLine.getThirdPart(), jSONObject, city5);
            city = city5;
            anonymousClass15.setId("cmdUber");
        }
        JSONObject specificConfig = Resources.getSpecificConfig(C3522b4.i.U);
        if (specificConfig.optBoolean("active overlay") && specificConfig.optInt("min version") <= TheoTown.VERSION_CODE && !TheoTown.PREMIUM) {
            new IconButton(StoreStage.getIcon(), "", 0, 0, 26, 26, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.16
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    TheoTown.analytics.logEvent("Store", "Open", "Overlay");
                    ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitStage(new StoreStage(((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).getGameContext(), ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).getCity()));
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    if (super.isVisible() && Tutorial.isVisible(Tutorial.FLAG_PLUGIN_STORE)) {
                        return TheoTown.PREMIUM || ((long) OverlayBuilder.this.beginnerConfig.optInt("hide store minutes")) * 60 <= Settings.playTimeSeconds;
                    }
                    return false;
                }

                @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i14, int i15) {
                    super.drawChildren(i14, i15);
                    if (TaskManager.getInstance().TASK_OPEN_STORE.isCompleted()) {
                        return;
                    }
                    this.skin.engine.drawImage(Resources.IMAGE_WORLD, i14 + this.x + 12, i15 + this.y + (-Math.max(((float) Math.sin(((double) (((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f)) * 3.141592653589793d)) * 3.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)), OverlayBuilder.this.IS_NEW_MARKER.frames[0]);
                }
            }.setId("cmdPluginStore");
        }
        final City city6 = city;
        final City city7 = city;
        RankIndicator rankIndicator = new RankIndicator(0, 0, elementLine.getThirdPart(), city7) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.17
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (!((DefaultRequirement) city6.getComponent(11)).hasNewRank() || city6.isReadonly()) {
                    ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitCityInfo(new RankCityInfo());
                    return;
                }
                RankStage rankStage = new RankStage(((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).getGameContext(), city6);
                rankStage.setOwnBackgroundCity(city6);
                ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitStage(rankStage);
            }

            @Override // info.flowersoft.theotown.ui.RankIndicator, io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return city6.getGameMode().hasRequirements() && super.isVisible();
            }
        };
        rankIndicator.setId("cmdRank");
        KeyAction.OPEN_RANK_INDICATOR.applyTo(rankIndicator);
        new TaskIndicator((panel.getX() + panel.getWidth()) - 60, panel.getY() + 40, this.gui, city7).setId("cmdTask");
        int i14 = 0;
        int i15 = 0;
        CityNameIndicator cityNameIndicator = new CityNameIndicator(i14, i15, 100, elementLine.getFirstPart(), city7) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.18
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitCityInfo(new GeneralCityInfo());
            }
        };
        cityNameIndicator.setId("cmdCityName");
        KeyAction.OPEN_CITYNAME_INDICATOR.applyTo(cityNameIndicator);
        RatingIndicator ratingIndicator = new RatingIndicator(i14, i15, 53, elementLine.getFirstPart(), city7) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.19
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitCityInfo(new RatingCityInfo());
            }
        };
        ratingIndicator.setId("cmdRating");
        KeyAction.OPEN_RATING_INDICATOR.applyTo(ratingIndicator);
        this.infoLines.add(new InfoLine() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.20
            public final TimeSpan timeSpan = new TimeSpan(0);

            /* JADX WARN: Multi-variable type inference failed */
            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public boolean isActive() {
                return timedEffectManager.getFastForwardDays() > 0 && ((DefaultDate) city7.getComponent(1)).getSpeed() == 3 && !((FeatureDraft) Features.getInstance().FEATURE_FREEFASTSPEED00.get()).isUnlocked();
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public Color getColor() {
                return Colors.YELLOW;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public String getText() {
                this.timeSpan.setMs(timedEffectManager.getFastForwardDays() * 500);
                return OverlayBuilder.this.translator.translate(1292) + " " + this.timeSpan.getLocalization();
            }
        });
        this.infoLines.add(new InfoLine() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.21
            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public boolean isActive() {
                return timedEffectManager.getDoubleIncomeDays() > 0;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public Color getColor() {
                return Colors.YELLOW;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public String getText() {
                return StringFormatter.format(OverlayBuilder.this.translator.translate(574), Integer.valueOf(timedEffectManager.getDoubleIncomeDays()));
            }
        });
        this.infoLines.add(new InfoLine() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.22
            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public boolean isActive() {
                return timedEffectManager.getRemainingShortBuildTimeMS() > 0;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public Color getColor() {
                return Colors.CYAN;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public String getText() {
                return StringFormatter.format(OverlayBuilder.this.translator.translate(1826), TimeSpan.localize(timedEffectManager.getRemainingShortBuildTimeMS()));
            }
        });
        this.infoLines.add(new InfoLine() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.23
            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public boolean isActive() {
                return timedEffectManager.getRemainingDoubledIncomeMS() > 0;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public Color getColor() {
                return Colors.ORANGE;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public String getText() {
                return StringFormatter.format(OverlayBuilder.this.translator.translate(3189), TimeSpan.localize(timedEffectManager.getRemainingDoubledIncomeMS()));
            }
        });
        this.infoLines.add(new InfoLine() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.24
            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public boolean isActive() {
                return timedEffectManager.getRemainingHalfTunnelPriceMS() > 0;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public Color getColor() {
                return Colors.GREEN;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public String getText() {
                return StringFormatter.format(OverlayBuilder.this.translator.translate(864), TimeSpan.localize(timedEffectManager.getRemainingHalfTunnelPriceMS()));
            }
        });
        this.infoLines.add(new InfoLine() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.25
            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public boolean isActive() {
                return timedEffectManager.getFreeTunnels() > 0;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public Color getColor() {
                return Colors.TURQUOISE;
            }

            @Override // info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine
            public String getText() {
                return StringFormatter.format(OverlayBuilder.this.translator.translate(1974), Integer.valueOf(timedEffectManager.getFreeTunnels()));
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14, reason: invalid class name */
    public class AnonymousClass14 extends IconButton {
        public final boolean circle;
        public final boolean halo;
        public final /* synthetic */ JSONObject val$overlayConfig;
        public final /* synthetic */ int val$shortBuildingTimeMS;
        public final /* synthetic */ TimedEffectManager val$timedEffectManager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass14(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, JSONObject jSONObject, int i6, TimedEffectManager timedEffectManager) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$overlayConfig = jSONObject;
            this.val$shortBuildingTimeMS = i6;
            this.val$timedEffectManager = timedEffectManager;
            this.halo = jSONObject.optBoolean("build time boost halo", false);
            this.circle = jSONObject.optBoolean("build time boost circle", false);
        }

        @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            drawChildren(i, i2);
            if (this.circle) {
                Drawing.getInstance().drawAnimatedGadgetCircle(this, i, i2);
            }
            if (this.halo) {
                Drawing.getInstance().drawHalo(this.x + i + (this.width / 2), this.y + i2 + (this.height / 2), this.skin.engine, 2.0f);
            }
            if (Tutorial.isMarked(Tutorial.FLAG_SHORT_BUILD_TIME)) {
                Drawing.getInstance().drawArrow(i, i2, this, 2);
            }
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            int i = Resources.ICON_SHORT_BUILD_TIME;
            String strTranslate = OverlayBuilder.this.translator.translate(1907);
            String str = StringFormatter.format(OverlayBuilder.this.translator.translate(3230), TimeSpan.localize(this.val$shortBuildingTimeMS));
            Master master = (Master) getAbsoluteParent();
            long jCombinePriceAndFlags = BuyOrVideoDialog.combinePriceAndFlags(30, 0);
            final TimedEffectManager timedEffectManager = this.val$timedEffectManager;
            final int i2 = this.val$shortBuildingTimeMS;
            new BuyOrVideoDialog(i, strTranslate, str, master, jCombinePriceAndFlags, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return OverlayBuilder.AnonymousClass14.m2331$r8$lambda$vrzplXxzJpeIq9RBLjD7PfZQYA(timedEffectManager, i2);
                }
            }, (Setter<Stage>) new Setter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitStage((Stage) obj);
                }
            }, ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).getGameContext(), "short building time button", "Build_Time_Boost", false).setVisible(true);
        }

        /* JADX INFO: renamed from: $r8$lambda$vrzplXxzJpeIq9RBLjD7PfZ-QYA, reason: not valid java name */
        public static /* synthetic */ Boolean m2331$r8$lambda$vrzplXxzJpeIq9RBLjD7PfZQYA(TimedEffectManager timedEffectManager, int i) {
            timedEffectManager.addShortBuildTime(i);
            return Boolean.TRUE;
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isVisible() {
            return super.isVisible() && Tutorial.isVisible(Tutorial.FLAG_SHORT_BUILD_TIME) && OverlayBuilder.this.beginnerConfig.optLong("hide build time boost minutes") * 60 <= Settings.playTimeSeconds && this.val$timedEffectManager.getRemainingShortBuildTimeMS() < (-Resources.getSpecificConfig("build time boost").optLong("cooldown minutes")) * 60000;
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15, reason: invalid class name */
    public class AnonymousClass15 extends IconButton {
        public final boolean circle;
        public final boolean halo;
        public final /* synthetic */ City val$city;
        public final /* synthetic */ JSONObject val$overlayConfig;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass15(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, JSONObject jSONObject, City city) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$overlayConfig = jSONObject;
            this.val$city = city;
            boolean z = false;
            this.halo = jSONObject.optBoolean("uber halo", false) && !TheoTown.PREMIUM;
            if (jSONObject.optBoolean("uber circle", false) && !TheoTown.PREMIUM) {
                z = true;
            }
            this.circle = z;
        }

        @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            drawChildren(i, i2);
            if (this.circle) {
                Drawing.getInstance().drawAnimatedGadgetCircle(this, i, i2);
            }
            if (this.halo) {
                Drawing.getInstance().drawHalo(this.x + i + (this.width / 2), this.y + i2 + (this.height / 2), this.skin.engine, 2.0f);
            }
            if (Tutorial.isMarked(Tutorial.FLAG_SHORT_BUILD_TIME)) {
                Drawing.getInstance().drawArrow(i, i2, this, 2);
            }
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            long jOptInt = this.val$overlayConfig.optInt("uber price", 100);
            if (TheoTown.PREMIUM) {
                jOptInt = BuyOrVideoDialog.combinePriceAndFlags(0, 0);
            }
            long j = jOptInt;
            int i = Resources.ICON_UBER;
            String strTranslate = OverlayBuilder.this.translator.translate(1739);
            String strTranslate2 = OverlayBuilder.this.translator.translate(2099);
            Master master = (Master) getAbsoluteParent();
            final City city = this.val$city;
            new BuyOrVideoDialog(i, strTranslate, strTranslate2, master, j, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return OverlayBuilder.AnonymousClass15.$r8$lambda$U9XEDAsTwbXokZ5x4JtRq8_Z0c0(this.f$0, city);
                }
            }, (Setter<Stage>) new Setter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).visitStage((Stage) obj);
                }
            }, ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).getGameContext(), "uber mode", "Build_Time_Boost", false).setVisible(true);
        }

        public static /* synthetic */ Boolean $r8$lambda$U9XEDAsTwbXokZ5x4JtRq8_Z0c0(AnonymousClass15 anonymousClass15, City city) {
            anonymousClass15.getClass();
            city.setUber(true);
            ((CityStage.GameStageContext) OverlayBuilder.this.getBuilderContext()).save(null);
            return Boolean.TRUE;
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isVisible() {
            return super.isVisible() && !this.val$city.isUber();
        }
    }

    public final IconButton CreateIconButton(int i, int i2, int i3, int i4, int i5, Gadget gadget, final Runnable runnable) {
        return new IconButton(i, "", i2, i3, i4, i5, gadget) { // from class: info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.26
            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                this.skin.engine.setColor(Colors.WHITE);
                int i8 = (isPressed() || isMarked()) ? this.skin.npButtonBlueDown : this.skin.npButtonBlue;
                drawNinePatch(i6, i7, i8);
                drawChildren(i6, i7 + (isPressed() ? 2 : 0));
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                runnable.run();
            }
        };
    }
}
