package info.flowersoft.theotown.ui.toolbar;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.utils.IntMap;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.NewContentManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.tutorial.TutorialButtonFilter;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft;
import info.flowersoft.theotown.ui.selectable.SelectableCategory;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.ui.selectable.SelectableRawBuildingDraft;
import info.flowersoft.theotown.ui.selectable.SelectableToolGroupDraft;
import info.flowersoft.theotown.ui.selectable.Separator;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.GadgetFilter;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.util.AnimationTimer;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class ToolBar extends Panel {
    public int BAR_HEIGHT;
    public int BREADCRUMB_HEIGHT;
    public int HISTORY_LENGTH;
    public final String PREF_NAME;
    public int ROW_HEIGHT;
    public int SLIDE_TASK_VANISH_TIME_MINUTES;
    public int TEXT_LINE_HEIGHT;
    public int WIDTH_PER_ITEM;
    public AnimationTimer animationTimer;
    public boolean atBottom;
    public String cachedPath;
    public List<Selectable> cachedPathContext;
    public final List<SelectableCategory> categoryHistory;
    public final Map<Selectable, List<Selectable>> childrenSelectables;
    public City city;
    public final Button cmdDown;
    public final Button cmdUp;
    public final Stapel2DGameContext context;
    public List<Selectable> current;
    public int currentActiveCount;
    public int currentColumnCount;
    public int currentRowCount;
    public boolean dark;
    public final List<Selectable> flatSelectableList;
    public final Panel hiddenPanel;
    public final List<List<Selectable>> history;
    public final List<String> historyIds;
    public final List<Runnable> hotkeyActions;
    public final IntList hotkeyModifiers;
    public final IntList hotkeys;
    public final Map<String, Selectable> idMapping;
    public boolean inTutorial;
    public final Panel mainPanel;
    public Set<Selectable> markedSelectables;
    public int maxRowCount;
    public IntList moveHistory;
    public float moveX;
    public float moveXSpeed;
    public float moveY;
    public float moveYSpeed;
    public final SelectableCategory pluginCategory;
    public final SelectableCategory recentCategory;
    public final List<Selectable> root;
    public String searchTerm;
    public final Map<Selectable, SelectableCategory> selectableToParentMapping;
    public int selectedIndex;
    public boolean showName;
    public boolean showPrice;
    public final SlidePanel slidePanel;
    public TaskManager.Task slideTask;
    public Selectable slideTaskSelectable;
    public final Translator translator;
    public boolean vertical;

    public ToolBar(City city, List<Selectable> list, final boolean z, final boolean z2, final boolean z3, boolean z4, boolean z5, Stapel2DGameContext stapel2DGameContext, final Master master) {
        super(0, 0, master.getClientWidth(), master.getClientHeight(), master);
        this.PREF_NAME = "info.flowersoft.theotown.theotown.toolbar";
        this.BAR_HEIGHT = 80;
        this.TEXT_LINE_HEIGHT = 20;
        this.WIDTH_PER_ITEM = 80;
        this.BREADCRUMB_HEIGHT = 10;
        this.HISTORY_LENGTH = 10;
        this.SLIDE_TASK_VANISH_TIME_MINUTES = 2400;
        this.showName = true;
        this.showPrice = true;
        this.history = new ArrayList();
        this.categoryHistory = new ArrayList();
        this.moveHistory = new IntList();
        this.maxRowCount = 3;
        this.animationTimer = new AnimationTimer(60L);
        this.historyIds = new ArrayList();
        this.idMapping = new HashMap();
        this.selectableToParentMapping = new HashMap();
        this.flatSelectableList = new ArrayList();
        this.childrenSelectables = new HashMap();
        this.hotkeys = new IntList();
        this.hotkeyModifiers = new IntList();
        this.hotkeyActions = new ArrayList();
        this.slideTask = TaskManager.getInstance().TASK_TOOL_SLIDE;
        this.selectedIndex = -1;
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        this.atBottom = z;
        this.vertical = z2;
        this.showName = z4;
        this.showPrice = z5;
        this.dark = z3;
        this.city = city;
        setId("roottoolbar");
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("toolbar");
        if (jSONObjectOptJSONObject != null) {
            this.BAR_HEIGHT = jSONObjectOptJSONObject.optInt("bar height", this.BAR_HEIGHT);
            this.TEXT_LINE_HEIGHT = jSONObjectOptJSONObject.optInt("text line height", this.TEXT_LINE_HEIGHT);
            this.WIDTH_PER_ITEM = jSONObjectOptJSONObject.optInt("width per item", this.WIDTH_PER_ITEM);
            this.BREADCRUMB_HEIGHT = jSONObjectOptJSONObject.optInt("breadcrumb height", this.BREADCRUMB_HEIGHT);
            this.HISTORY_LENGTH = jSONObjectOptJSONObject.optInt("history length", this.HISTORY_LENGTH);
            this.SLIDE_TASK_VANISH_TIME_MINUTES = jSONObjectOptJSONObject.optInt("vanish slide task minutes", this.SLIDE_TASK_VANISH_TIME_MINUTES);
        }
        this.ROW_HEIGHT = (this.BAR_HEIGHT - this.BREADCRUMB_HEIGHT) - 2;
        this.root = list;
        this.current = list;
        SelectableCategory selectableCategory = new SelectableCategory(city, (CategoryDraft) Drafts.get("$cat_recent00", CategoryDraft.class)) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.1
            @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
            public boolean isActive() {
                return super.isActive() && !getChildren().isEmpty();
            }
        };
        this.recentCategory = selectableCategory;
        buildIdMapping();
        loadHistory();
        list.add(0, selectableCategory);
        addHotkey(selectableCategory);
        SelectableCategory selectableCategory2 = new SelectableCategory(city, (CategoryDraft) Drafts.get("$cat_plugins00", CategoryDraft.class)) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.2
            @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
            public boolean isActive() {
                return super.isActive() && !getChildren().isEmpty();
            }
        };
        this.pluginCategory = selectableCategory2;
        loadPlugins();
        list.add(1, selectableCategory2);
        addHotkey(selectableCategory2);
        setTouchThrough(true);
        Panel panel = new Panel(0, z ? master.getHeight() - this.BAR_HEIGHT : 0, getWidth(), this.BAR_HEIGHT, this) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.3
            @Override // io.blueflower.stapel2d.gui.Gadget
            public CursorType getCursor() {
                return CursorType.Normal;
            }

            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                int paddingTop;
                int i3;
                int progress = i2 - (((int) (this.height * (1.0f - ToolBar.this.animationTimer.getProgress()))) * (z ? -1 : 1));
                Engine engine = this.skin.engine;
                int paddingLeft = i - master.getPaddingLeft();
                int paddingRight = master.getPaddingRight() + this.width + master.getPaddingLeft();
                int i4 = this.height;
                if (z) {
                    paddingTop = i4;
                    i3 = progress;
                } else {
                    int paddingTop2 = (progress - master.getPaddingTop()) - 20;
                    paddingTop = i4 + master.getPaddingTop() + 20;
                    i3 = paddingTop2;
                }
                if (z3) {
                    drawNinePatch(paddingLeft, i3, paddingRight, paddingTop, this.skin.npIndicator);
                    engine.setTransparency(200);
                    drawNinePatch(paddingLeft, i3, paddingRight, paddingTop, this.skin.npIndicator);
                } else {
                    engine.setTransparency(230);
                    drawNinePatch(i - 9, progress - 9, getWidth() + 20, getHeight() + 20, this.skin.npRectShadow);
                    drawNinePatch(paddingLeft, i3, paddingRight, paddingTop, this.skin.npPanel);
                }
                engine.setTransparency(255);
                drawChildren(i, progress);
            }
        };
        this.mainPanel = panel;
        int i = 32;
        new Panel(i, 0, panel.getClientWidth() - 32, this.BREADCRUMB_HEIGHT, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.4
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                ToolBar toolBar = ToolBar.this;
                if (toolBar.BREADCRUMB_HEIGHT == 0) {
                    return;
                }
                Engine engine = this.skin.engine;
                List<Selectable> list2 = toolBar.cachedPathContext;
                ToolBar toolBar2 = ToolBar.this;
                if (list2 != toolBar2.current) {
                    StringBuilder sb = new StringBuilder(toolBar2.translator.translate(2842));
                    for (int i4 = 0; i4 < ToolBar.this.categoryHistory.size(); i4++) {
                        SelectableCategory selectableCategory3 = (SelectableCategory) ToolBar.this.categoryHistory.get(i4);
                        sb.append(" > ");
                        sb.append(selectableCategory3.getTitle());
                        if (Settings.debugMode) {
                            sb.append(" (");
                            sb.append(selectableCategory3.getDraft().id);
                            sb.append(")");
                        }
                    }
                    ToolBar.this.cachedPath = sb.toString();
                    ToolBar toolBar3 = ToolBar.this;
                    toolBar3.cachedPathContext = toolBar3.current;
                }
                Skin skin = this.skin;
                Font font = skin.fontSmall;
                engine.setColor(z3 ? Colors.WHITE : skin.cText);
                engine.drawText(font, ToolBar.this.cachedPath, i2 + this.x + 2, i3 + this.y, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
                engine.setColor(Colors.WHITE);
            }
        };
        this.slidePanel = new SlidePanel(this, stapel2DGameContext, 32, this.BREADCRUMB_HEIGHT + 1, panel.getClientWidth() - 33, this.ROW_HEIGHT, panel);
        Skin skin = this.skin;
        final int i2 = z3 ? skin.npButtonBlueDown : skin.npButtonDown;
        Skin skin2 = this.skin;
        final int i3 = z3 ? skin2.npButtonBlue : skin2.npButton;
        int i4 = 30;
        new Panel(0, 0, i4, panel.getClientHeight(), panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.5
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
                Engine engine = this.skin.engine;
                engine.setColor(z3 ? Colors.MARINE_BLUE : Colors.WHITE);
                engine.drawImage(Resources.IMAGE_WORLD, i5 + this.x, i6 + this.y, this.width, this.height, Resources.FRAME_GRADIENT_X);
                engine.setColor(Colors.WHITE);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && !z2;
            }
        }.setTouchThrough(true);
        int i5 = 30;
        int i6 = 2;
        new Button(i6, 32, i4, i5, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i7, int i8) {
                Engine engine = this.skin.engine;
                if (isMouseHovered()) {
                    engine.setColor(engine.getColor(Colors.TEMP).lerp(Colors.BLACK, 0.05f));
                }
                int i9 = this.width;
                drawNinePatch(i7, i8, i9, i9, isPressed() ? i2 : i3);
                engine.setColor(Colors.WHITE);
                Engine engine2 = this.skin.engine;
                Image image = Resources.IMAGE_WORLD;
                float f = this.x + i7;
                float f2 = this.y + i8 + (isPressed() ? 2 : 0);
                int i10 = this.width;
                engine2.drawImage(image, f, f2, i10, i10, 0.5f, 0.5f, ToolBar.this.history.isEmpty() ? Resources.ICON_CANCEL : Resources.ICON_BACKWARD);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (ToolBar.this.isBackAvailable()) {
                    super.onClick();
                    ToolBar.this.back();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return ToolBar.this.isBackAvailable();
            }
        };
        new Button(i6, 1, i4, i5, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.7
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i7, int i8) {
                Engine engine = this.skin.engine;
                if (isMouseHovered()) {
                    engine.setColor(engine.getColor(Colors.TEMP).lerp(Colors.BLACK, 0.05f));
                }
                int i9 = this.width;
                drawNinePatch(i7, i8, i9, i9, isPressed() ? i2 : i3);
                engine.setColor(Colors.WHITE);
                Engine engine2 = this.skin.engine;
                Image image = Resources.IMAGE_WORLD;
                float f = this.x + i7;
                float f2 = this.y + i8 + (isPressed() ? 2 : 0);
                int i10 = this.width;
                engine2.drawImage(image, f, f2, i10, i10, 0.5f, 0.5f, (!ToolBar.this.history.isEmpty() || Math.abs(ToolBar.this.moveX) >= 1.0f) ? Resources.ICON_BUILD : Resources.ICON_CANCEL);
                if (ToolBar.this.markBackButton()) {
                    drawNinePatch(i7, i8, Resources.NP_TUTORIAL_MARK);
                    Drawing.getInstance().drawArrow(i7, i8, this, 2);
                }
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ToolBar.this.top();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && !ToolBar.this.history.isEmpty();
            }
        };
        new Button(i, 2, i4, 10, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.8
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i7, int i8) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (ToolBar.this.isBackAvailable()) {
                    super.onClick();
                    ToolBar.this.top();
                }
            }
        };
        int i7 = 30;
        this.cmdUp = new Button(i6, 62, i4, i7, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.9
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i8, int i9) {
                Engine engine = this.skin.engine;
                if (isMouseHovered()) {
                    engine.setColor(engine.getColor(Colors.TEMP).lerp(Colors.BLACK, 0.05f));
                }
                int i10 = this.width;
                drawNinePatch(i8, i9, i10, i10, isPressed() ? i2 : i3);
                Color color = Colors.WHITE;
                engine.setColor(color);
                Engine engine2 = this.skin.engine;
                Image image = Resources.IMAGE_WORLD;
                float f = this.x + i8;
                float f2 = this.y + i9 + (isPressed() ? 2 : 0);
                int i11 = this.width;
                engine2.drawImage(image, f, f2, i11, i11, 0.5f, 0.5f, Resources.ICON_UP);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                ToolBar.this.scrollUp();
            }
        };
        this.cmdDown = new Button(i6, 93, i4, i7, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.10
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i8, int i9) {
                Engine engine = this.skin.engine;
                if (isMouseHovered()) {
                    engine.setColor(engine.getColor(Colors.TEMP).lerp(Colors.BLACK, 0.05f));
                }
                int i10 = this.width;
                drawNinePatch(i8, i9, i10, i10, isPressed() ? i2 : i3);
                Color color = Colors.WHITE;
                engine.setColor(color);
                Engine engine2 = this.skin.engine;
                Image image = Resources.IMAGE_WORLD;
                float f = this.x + i8;
                float f2 = this.y + i9 + (isPressed() ? 2 : 0);
                int i11 = this.width;
                engine2.drawImage(image, f, f2, i11, i11, 0.5f, 0.5f, Resources.ICON_DOWN);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                ToolBar.this.scrollDown();
            }
        };
        new Panel(panel.getClientWidth() - 30, 0, master.getPaddingRight() + 30, panel.getClientHeight(), panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.11
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i8, int i9) {
                Engine engine = this.skin.engine;
                engine.setColor(z3 ? Colors.MARINE_BLUE : Colors.WHITE);
                engine.drawImage(Resources.IMAGE_WORLD, i8 + this.x, i9 + this.y, this.width, this.height, Resources.FRAME_GRADIENT_MX);
                engine.setColor(Colors.WHITE);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && !z2;
            }
        }.setTouchThrough(true);
        int i8 = 20;
        int i9 = 20;
        int i10 = 0;
        new Button(panel.getClientWidth() - 20, i10, i8, i9, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.12
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i11, int i12) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_RED);
                }
                if (isPressed()) {
                    engine.setColor(Colors.RED);
                }
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i11, this.y + i12 + (isPressed() ? 2 : 0), this.width, this.height, 0.5f, 0.5f, this.skin.fCloseButton);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ToolBar.this.close();
            }
        };
        new Button(panel.getClientWidth() - 45, i10, i8, i9, panel) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.13
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i11, int i12) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_GRAY);
                }
                if (isPressed()) {
                    engine.setColor(Colors.GRAY);
                }
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i11, this.y + i12 + (isPressed() ? 2 : 0), this.width, this.height, 0.5f, 0.5f, Resources.FRAME_SEARCH_BUTTON);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ToolBar.this.showSearchDialog();
            }
        };
        this.hiddenPanel = new Panel(0, i10, 0, 0, this) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.14
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i11, int i12) {
            }
        };
        setVisible(false);
    }

    public void scrollUp() {
        this.moveY += this.ROW_HEIGHT;
    }

    public void scrollDown() {
        this.moveY -= this.ROW_HEIGHT;
    }

    public final void showSearchDialog() {
        new RenameDialogBuilder((Master) getAbsoluteParent(), this.translator, this.context.getKey()).setOkText(this.translator.translate(2573)).setCancelText(this.translator.translate(3140)).setFilter(new Predicate() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return ToolBar.m2407$r8$lambda$YgowQjm5EdrCV5ml2MmjPOLcEk((String) obj);
            }
        }).setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                this.f$0.search((String) obj);
            }
        }).build(Resources.ICON_EYE, this.translator.translate(1175), this.translator.translate(1858), this.searchTerm).setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$YgowQjm5EdrC-V5ml2MmjPOLcEk, reason: not valid java name */
    public static /* synthetic */ boolean m2407$r8$lambda$YgowQjm5EdrCV5ml2MmjPOLcEk(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    public final void search(String str) {
        this.searchTerm = str;
        saveHistory();
        String strUnifyString = unifyString(str);
        TheoTown.analytics.logEvent("Toolbar", "Search", strUnifyString);
        if (!this.history.isEmpty()) {
            top();
        }
        CategoryDraft categoryDraft = new CategoryDraft();
        categoryDraft.id = "$cat_search00";
        final String str2 = StringFormatter.format(this.translator.translate(3011), str);
        SelectableCategory selectableCategory = new SelectableCategory(this.city, categoryDraft) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.15
            @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
            public int getPreviewFrame() {
                return 0;
            }

            @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.Selectable
            public String getTitle() {
                return str2;
            }

            @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
            public String getText() {
                return "";
            }
        };
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Selectable selectable : this.flatSelectableList) {
            int searchScore = getSearchScore(selectable, strUnifyString);
            if (searchScore > 0 && !hashSet.contains(selectable)) {
                arrayList.add(new Tuple(selectable, Integer.valueOf(searchScore)));
                hashSet.add(selectable);
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ToolBar.m2406$r8$lambda$S8849T97oc3GmgZaZqSD0O3Rvk((Tuple) obj, (Tuple) obj2);
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            selectableCategory.addChild((Selectable) ((Tuple) it.next()).getFirst());
        }
        select(selectableCategory);
    }

    /* JADX INFO: renamed from: $r8$lambda$S8849T97oc-3GmgZaZqSD0O3Rvk, reason: not valid java name */
    public static /* synthetic */ int m2406$r8$lambda$S8849T97oc3GmgZaZqSD0O3Rvk(Tuple tuple, Tuple tuple2) {
        return ((Integer) tuple2.getSecond()).intValue() - ((Integer) tuple.getSecond()).intValue();
    }

    public final int getSearchScore(Selectable selectable, String str) {
        int i;
        String str2;
        JSONObject jSONObject;
        JSONArray jSONArrayOptJSONArray;
        String strUnifyString = unifyString(selectable.getId());
        String strUnifyString2 = unifyString(selectable.getTitle());
        boolean z = selectable instanceof SelectableDraft;
        String strUnifyString3 = z ? unifyString(((SelectableDraft) selectable).getText()) : "";
        Draft draft = z ? ((SelectableDraft) selectable).getDraft() : null;
        int i2 = 0;
        if (draft != null && !draft.searchable) {
            return 0;
        }
        if (str.equals("untouchable") && (selectable instanceof SelectableBuildingDraft)) {
            Iterator it = new SafeListAccessor(this.city.getBuildings().getBuildingsOfDraft(((SelectableBuildingDraft) selectable).getDraft())).iterator();
            while (it.hasNext()) {
                if (((Building) it.next()).isUntouchable()) {
                    i = 1;
                    break;
                }
            }
            i = 0;
        } else {
            i = 0;
        }
        if (strUnifyString.contains(str)) {
            i++;
        }
        if (strUnifyString2.contains(str)) {
            i++;
        }
        if (!(selectable instanceof SelectableRawBuildingDraft) && strUnifyString3.contains(str)) {
            i++;
        }
        if (draft != null && (jSONObject = draft.meta) != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray("search tags")) != null) {
            while (true) {
                if (i2 < jSONArrayOptJSONArray.length()) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (strOptString != null && unifyString(strOptString).contains(str)) {
                        i++;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
        }
        return (draft == null || (str2 = draft.author) == null || !unifyString(str2).contains(str)) ? i : i + 1;
    }

    public final String unifyString(String str) {
        return str.toLowerCase(Locale.ENGLISH).trim();
    }

    public final SelectableCategory findCategory(List<Selectable> list, String str, int i) {
        if (i > 100) {
            return null;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            Selectable selectable = list.get(i2);
            if (selectable instanceof SelectableCategory) {
                SelectableCategory selectableCategory = (SelectableCategory) selectable;
                if (selectableCategory.getDraft().id.equals(str)) {
                    return selectableCategory;
                }
                SelectableCategory selectableCategoryFindCategory = findCategory(selectableCategory.getChildren(), str, i + 1);
                if (selectableCategoryFindCategory != null) {
                    return selectableCategoryFindCategory;
                }
            }
        }
        return null;
    }

    public final void addHotkey(Selectable selectable) {
        KeyAction keyAction;
        final CategoryDraft draft = ((SelectableCategory) selectable).getDraft();
        if (draft == null || (keyAction = draft.hotkey) == null) {
            return;
        }
        int[] keys = keyAction.getKeys();
        int[] modifiers = draft.hotkey.getModifiers();
        for (int i = 0; i < keys.length; i++) {
            int i2 = keys[i];
            int i3 = modifiers[i];
            if (i2 > 0) {
                this.hotkeys.add(i2);
                this.hotkeyModifiers.add(i3);
                this.hotkeyActions.add(new Runnable() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ToolBar.$r8$lambda$ibcSczno5zlyPTFvA2ibDkZo7hQ(this.f$0, draft);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$ibcSczno5zlyPTFvA2ibDkZo7hQ(ToolBar toolBar, CategoryDraft categoryDraft) {
        SelectableCategory selectableCategoryFindCategory = toolBar.findCategory(toolBar.root, categoryDraft.id, 0);
        if (selectableCategoryFindCategory != null) {
            toolBar.select(selectableCategoryFindCategory);
            toolBar.selectedIndex = 0;
        }
    }

    public final void buildIdMapping() {
        int i;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        arrayDeque.add(this.root);
        arrayDeque2.add(this.recentCategory);
        while (true) {
            i = 0;
            if (arrayDeque.isEmpty()) {
                break;
            }
            List list = (List) arrayDeque.poll();
            SelectableCategory selectableCategory = (SelectableCategory) arrayDeque2.poll();
            if (selectableCategory == this.recentCategory) {
                selectableCategory = null;
            }
            while (i < list.size()) {
                Selectable selectable = (Selectable) list.get(i);
                if (selectableCategory != null) {
                    this.selectableToParentMapping.put(selectable, selectableCategory);
                }
                if (selectable instanceof SelectableCategory) {
                    addHotkey(selectable);
                    if (selectable != this.recentCategory) {
                        SelectableCategory selectableCategory2 = (SelectableCategory) selectable;
                        arrayDeque.add(selectableCategory2.getChildren());
                        arrayDeque2.add(selectableCategory2);
                    }
                } else if (selectable instanceof SelectableToolGroupDraft) {
                    for (SelectableDraft selectableDraft : ((SelectableToolGroupDraft) selectable).getSelectables()) {
                        String id = selectableDraft.getId();
                        if (id != null) {
                            this.idMapping.put(id, selectable);
                            this.flatSelectableList.add(selectableDraft);
                        }
                    }
                } else {
                    String id2 = selectable.getId();
                    if (id2 != null) {
                        this.idMapping.put(id2, selectable);
                        this.flatSelectableList.add(selectable);
                    }
                }
                i++;
            }
        }
        while (i < this.flatSelectableList.size()) {
            Selectable selectable2 = this.flatSelectableList.get(i);
            SelectableCategory selectableCategory3 = this.selectableToParentMapping.get(selectable2);
            while (selectableCategory3 != null && selectableCategory3 != selectable2 && selectableCategory3.markNewChildren() && selectableCategory3.isSelectable()) {
                List<Selectable> arrayList = this.childrenSelectables.get(selectableCategory3);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.childrenSelectables.put(selectableCategory3, arrayList);
                }
                arrayList.add(selectable2);
                selectableCategory3 = this.selectableToParentMapping.get(selectableCategory3);
            }
            if (isSelectableActive(selectable2) && selectable2.isSelectable()) {
                NewContentManager.getInstance().register(selectable2.getId());
            }
            i++;
        }
        NewContentManager.getInstance().endRegister();
    }

    public boolean isSelectableActive(Selectable selectable) {
        return (selectable == null || !selectable.isActive() || (selectable instanceof Separator)) ? false : true;
    }

    public final void loadPlugins() {
        List list;
        List list2;
        this.pluginCategory.getChildren().clear();
        IntMap intMap = new IntMap();
        HashMap map = new HashMap();
        for (Draft draft : Drafts.ALL.values()) {
            int i = draft.pluginId;
            if (i > 0) {
                List arrayList = (List) intMap.get(i);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    intMap.put(draft.pluginId, arrayList);
                }
                Selectable selectable = this.idMapping.get(draft.id);
                if (selectable != null) {
                    arrayList.add(selectable);
                }
            } else {
                LocalPluginManifest localPluginManifest = draft.manifest;
                if (localPluginManifest != null) {
                    List arrayList2 = (List) map.get(localPluginManifest.getId());
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        map.put(draft.manifest.getId(), arrayList2);
                    }
                    Selectable selectable2 = this.idMapping.get(draft.id);
                    if (selectable2 != null) {
                        arrayList2.add(selectable2);
                    }
                }
            }
        }
        List<ManagedPluginFile> downloadedPlugins = ManagedPluginsController.getInstance().getDownloadedPlugins();
        Collections.sort(downloadedPlugins, new Comparator<ManagedPluginFile>() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.16
            @Override // java.util.Comparator
            public int compare(ManagedPluginFile managedPluginFile, ManagedPluginFile managedPluginFile2) {
                return (int) Math.signum(managedPluginFile2.getFirstDownloaded() - managedPluginFile.getFirstDownloaded());
            }
        });
        Iterator<LocalPluginManifest> it = Drafts.LOCAL_PLUGIN_MANIFESTS.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            LocalPluginManifest next = it.next();
            if (next.isActive() && (list2 = (List) map.get(next.getId())) != null && !list2.isEmpty()) {
                CategoryDraft categoryDraft = (CategoryDraft) Drafts.get("$lpf_cat_" + next.getId() + ":" + next.getVersion(), CategoryDraft.class);
                if (categoryDraft != null) {
                    SelectableCategory selectableCategory = new SelectableCategory(this.city, categoryDraft);
                    this.pluginCategory.addChild(selectableCategory);
                    for (int i2 = 0; i2 < list2.size(); i2++) {
                        selectableCategory.addChild((Selectable) list2.get(i2));
                    }
                }
            }
        }
        for (ManagedPluginFile managedPluginFile : downloadedPlugins) {
            if (managedPluginFile.isActive() && !managedPluginFile.isPermanent() && (list = (List) intMap.get(managedPluginFile.getPluginId())) != null && !list.isEmpty()) {
                SelectableCategory selectableCategory2 = this.pluginCategory;
                CategoryDraft categoryDraft2 = (CategoryDraft) Drafts.get("$mpf_cat_" + managedPluginFile.getPluginId() + ":" + managedPluginFile.getRevisionId(), CategoryDraft.class);
                if (categoryDraft2 != null) {
                    selectableCategory2 = new SelectableCategory(this.city, categoryDraft2);
                    this.pluginCategory.addChild(selectableCategory2);
                }
                for (int i3 = 0; i3 < list.size(); i3++) {
                    selectableCategory2.addChild((Selectable) list.get(i3));
                }
            }
        }
    }

    public final void loadHistory() {
        this.historyIds.clear();
        this.recentCategory.getChildren().clear();
        Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.toolbar"));
        String string = preferences.getString("history", null);
        int i = 0;
        if (string != null) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strOptString = jSONArray.optString(i2);
                    if (strOptString != null) {
                        this.historyIds.add(strOptString);
                    }
                }
            } catch (JSONException e) {
                TheoTown.analytics.logException("History", e);
            }
        }
        this.searchTerm = preferences.getString("search", "");
        if (this.historyIds.isEmpty()) {
            return;
        }
        while (i < this.historyIds.size()) {
            if (i >= this.HISTORY_LENGTH) {
                this.historyIds.remove(i);
            } else {
                String str = this.historyIds.get(i);
                if (str != null) {
                    Selectable selectable = this.idMapping.get(str);
                    if (selectable != null) {
                        this.recentCategory.addChild(selectable);
                    } else {
                        this.historyIds.remove(i);
                    }
                }
                i++;
            }
            i--;
            i++;
        }
        saveHistory();
    }

    public boolean isNew(Selectable selectable) {
        Draft draft;
        if (!selectable.isSelectable() || ((selectable instanceof SelectableDraft) && (draft = ((SelectableDraft) selectable).getDraft()) != null && !draft.showNewMarker)) {
            return false;
        }
        if (selectable instanceof SelectableCategory) {
            List<Selectable> list = this.childrenSelectables.get(selectable);
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    Selectable selectable2 = list.get(i);
                    if (isSelectableActive(selectable2) && selectable2.isSelectable() && NewContentManager.getInstance().isNew(selectable2.getId())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return NewContentManager.getInstance().isNew(selectable.getId());
    }

    public final void saveHistory() {
        Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.toolbar"));
        preferences.putString("history", new JSONArray(this.historyIds).toString());
        preferences.putString("search", this.searchTerm);
        preferences.flush();
    }

    public final boolean markBackButton() {
        if (this.markedSelectables == null) {
            return false;
        }
        for (int i = 0; i < this.current.size(); i++) {
            if (this.markedSelectables.contains(this.current.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setVisible(boolean z) {
        this.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (!isVisible() && z) {
            this.animationTimer.reset();
            checkForTutorial();
            this.selectedIndex = -1;
            onChangeCurrent();
        }
        super.setVisible(z);
    }

    public final void checkForTutorial() {
        resetMarks();
        GadgetFilter filter = ((Master) getAbsoluteParent()).getFilter();
        this.inTutorial = false;
        if (filter instanceof TutorialButtonFilter) {
            for (String str : ((TutorialButtonFilter) filter).getClickableButtonIds()) {
                if (str.startsWith("selectable:")) {
                    Selectable selectable = this.idMapping.get(str.substring(11));
                    if (selectable != null) {
                        markSelectable(selectable);
                    }
                }
            }
            this.inTutorial = true;
        }
    }

    public final void resetMarks() {
        this.markedSelectables = null;
    }

    public final void markSelectable(Selectable selectable) {
        if (this.markedSelectables == null) {
            this.markedSelectables = new HashSet();
        }
        while (selectable != null) {
            this.markedSelectables.add(selectable);
            selectable = this.selectableToParentMapping.get(selectable);
        }
    }

    public final void top() {
        if (this.history.isEmpty() && Math.abs(this.moveX) < 1.0f) {
            close();
        } else {
            this.history.clear();
            this.categoryHistory.clear();
            this.moveHistory.clear();
            this.current = this.root;
            onChangeCurrent();
        }
        this.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.moveX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public boolean isBackAvailable() {
        return !this.history.isEmpty();
    }

    public void back() {
        if (this.history.isEmpty()) {
            this.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            close();
            return;
        }
        this.current = this.history.remove(r0.size() - 1);
        this.categoryHistory.remove(r0.size() - 1);
        IntList intList = this.moveHistory;
        this.moveX = intList.removeAt(intList.size() - 1);
        this.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        onChangeCurrent();
    }

    public boolean isDialogOpen() {
        Master master = (Master) getAbsoluteParent();
        Gadget child = master.getChild(master.countChildren() - 1);
        return (child instanceof Dialog.Background) && child.isVisible();
    }

    public void showInfo(final Selectable selectable) {
        if (selectable instanceof Separator) {
            return;
        }
        if (selectable.isSelectable()) {
            NewContentManager.getInstance().markAsNotNew(selectable.getId());
        }
        if (isDialogOpen()) {
            return;
        }
        String str = "";
        final Dialog dialog = new Dialog(Resources.ICON_CANCEL, selectable.getTitle(), str, 300, ModuleDescriptor.MODULE_VERSION, (Master) getAbsoluteParent()) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.17
            @Override // info.flowersoft.theotown.ui.Dialog
            public Button addHiddenCancelButton(Runnable runnable) {
                this.icon.setVisible(false);
                this.icon = new Icon(0, this.icon.getX(), this.icon.getY(), this.icon.getWidth(), this.icon.getHeight(), this.icon.getParent()) { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar.17.1
                    @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i, int i2) {
                        Engine engine = this.skin.engine;
                        float previewWidth = selectable.getPreviewWidth();
                        float previewHeight = selectable.getPreviewHeight();
                        float fMax = 1.0f / Math.max(Math.max(previewWidth / this.width, previewHeight / this.height), 1.0f);
                        engine.setScale(fMax, fMax);
                        selectable.drawPreview(engine, i + ((int) ((this.width - (previewWidth * fMax)) / 2.0f)), i2 + ((int) ((this.height - (previewHeight * fMax)) / 2.0f)));
                        engine.setScale(1.0f, 1.0f);
                    }
                };
                return super.addHiddenCancelButton(runnable);
            }
        };
        dialog.removeControlLine();
        selectable.build(dialog.getContentPane());
        selectable.setOnSelect(new Runnable() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ToolBar.$r8$lambda$saq9MuwR71vMcHfdEydp6j3kna4(this.f$0, selectable, dialog);
            }
        });
        dialog.setDrawBackground(true);
        dialog.addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ToolBar.m2408$r8$lambda$ZLtUFnRGs9654YZfZDBejzb4O0(this.f$0, selectable);
            }
        });
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$saq9MuwR71vMcHfdEydp6j3kna4(ToolBar toolBar, Selectable selectable, Dialog dialog) {
        toolBar.registerForUse(selectable);
        dialog.setVisible(false);
        toolBar.close();
        selectable.setOnSelect(null);
    }

    /* JADX INFO: renamed from: $r8$lambda$Z-LtUFnRGs9654YZfZDBejzb4O0, reason: not valid java name */
    public static /* synthetic */ void m2408$r8$lambda$ZLtUFnRGs9654YZfZDBejzb4O0(ToolBar toolBar, Selectable selectable) {
        toolBar.getClass();
        if ((selectable instanceof SelectableCategory) || toolBar.slideTask.isCompleted() || !selectable.isSelectable() || toolBar.vertical) {
            return;
        }
        toolBar.slideTaskSelectable = selectable;
    }

    public void registerForUse(String str) {
        Selectable selectable = this.idMapping.get(str);
        if (selectable != null) {
            registerForUse(selectable);
        }
    }

    public void registerForUse(Selectable selectable) {
        NewContentManager.getInstance().markAsNotNew(selectable.getId());
        List<Selectable> children = this.recentCategory.getChildren();
        children.remove(selectable);
        children.add(0, selectable);
        if (children.size() > this.HISTORY_LENGTH) {
            children.remove(children.size() - 1);
        }
        String id = selectable.getId();
        if (id != null) {
            this.historyIds.remove(id);
            this.historyIds.add(0, id);
            if (this.historyIds.size() > this.HISTORY_LENGTH) {
                this.historyIds.remove(r5.size() - 1);
            }
            saveHistory();
        }
    }

    public List<String> getHistory() {
        return this.historyIds;
    }

    public void select(Selectable selectable) {
        if (selectable instanceof SelectableCategory) {
            SelectableCategory selectableCategory = (SelectableCategory) selectable;
            this.history.add(this.current);
            this.current = selectableCategory.getChildren();
            this.categoryHistory.add(selectableCategory);
            this.moveHistory.add((int) this.moveX);
            this.moveX = 100.0f;
            this.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.selectedIndex = -1;
            onChangeCurrent();
            return;
        }
        selectViaDragging(selectable);
    }

    public final void onChangeCurrent() {
        this.currentActiveCount = 0;
        for (int i = 0; i < this.current.size(); i++) {
            if (isSelectableActive(this.current.get(i))) {
                this.currentActiveCount++;
            }
        }
        if (this.vertical) {
            int clientWidth = this.slidePanel.getClientWidth();
            int i2 = this.WIDTH_PER_ITEM * this.currentActiveCount;
            int height = getHeight() - this.BAR_HEIGHT;
            int i3 = this.ROW_HEIGHT;
            this.maxRowCount = Math.min(Math.max(1, (height + i3) / i3), 3);
            this.currentRowCount = Math.min(Math.max(1, (int) Math.ceil(i2 / clientWidth)), this.maxRowCount);
            this.currentColumnCount = clientWidth / this.WIDTH_PER_ITEM;
        } else {
            this.currentRowCount = 1;
            this.currentColumnCount = this.currentActiveCount;
            this.maxRowCount = 1;
        }
        this.mainPanel.setHeight(this.BAR_HEIGHT + ((this.currentRowCount - 1) * this.ROW_HEIGHT));
        this.slidePanel.setHeight(this.ROW_HEIGHT * this.currentRowCount);
        if (this.vertical) {
            int i4 = this.currentRowCount;
            int i5 = this.currentActiveCount;
            int i6 = this.currentColumnCount;
            if (i4 < ((i5 + i6) - 1) / Math.max(1, i6)) {
                this.cmdUp.setVisible(true);
                this.cmdDown.setVisible(true);
                this.cmdUp.setY(this.mainPanel.getClientHeight() - 63);
                this.cmdDown.setY(this.mainPanel.getClientHeight() - 32);
                return;
            }
        }
        this.cmdUp.setVisible(false);
        this.cmdDown.setVisible(false);
    }

    public void close() {
        setVisible(false);
    }

    public boolean isDragable(Selectable selectable) {
        if ((selectable instanceof SelectableCategory) || this.vertical || !selectable.isSelectable()) {
            return false;
        }
        Set<Selectable> set = this.markedSelectables;
        return set == null || set.contains(selectable);
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        if (this.parent.countChildren() > 1) {
            Gadget gadget = this.parent;
            Gadget child = gadget.getChild(gadget.countChildren() - 1);
            if (child != this && (!(child instanceof Dialog.Background) || !child.isVisible())) {
                this.parent.pushChild(this);
            }
        }
        if (!this.inTutorial || (((Master) getAbsoluteParent()).getFilter() instanceof TutorialButtonFilter)) {
            return;
        }
        setVisible(false);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void updateKeyInput(KeyMapper keyMapper) {
        if (isDialogOpen()) {
            return;
        }
        super.updateKeyInput(keyMapper);
        for (int i = 0; i < this.hotkeys.size(); i++) {
            if (keyMapper.keyHit(this.hotkeys.get(i), this.hotkeyModifiers.get(i))) {
                setVisible(true);
                if (!this.history.isEmpty()) {
                    top();
                }
                this.hotkeyActions.get(i).run();
                return;
            }
        }
    }

    public void selectViaDragging(Selectable selectable) {
        this.slideTask.completeForSeconds(this.SLIDE_TASK_VANISH_TIME_MINUTES * 60);
        this.slideTaskSelectable = null;
        this.hiddenPanel.removeAllChildren();
        selectable.build(this.hiddenPanel);
        registerForUse(selectable);
        selectable.select();
        close();
    }

    public boolean isMarked(Selectable selectable) {
        Set<Selectable> set = this.markedSelectables;
        return set != null && set.contains(selectable);
    }
}
