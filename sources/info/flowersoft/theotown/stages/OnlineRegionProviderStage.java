package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.cityfile.OnlineRegionProvider;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.online.Multiplayer;
import info.flowersoft.theotown.online.OnlineNotificationManager;
import info.flowersoft.theotown.online.RegionTagMap;
import info.flowersoft.theotown.online.VirtualRegion;
import info.flowersoft.theotown.online.VirtualUser;
import info.flowersoft.theotown.region.RegionIcon;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.listitem.GadgetListItem;
import info.flowersoft.theotown.util.OSUtil;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineRegionProviderStage extends AbstractStoreStage {
    public final OnlineRegionProvider orp;
    public String targetAuthorName;
    public int targetCityId;
    public int targetRegionId;
    public String targetTagName;

    public static /* synthetic */ void $r8$lambda$tUVsDWCgeZRG3PSmfkuWjI7_PL0() {
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void buildHeaderButtons(LineLayout lineLayout) {
    }

    public OnlineRegionProviderStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        OnlineRegionProvider onlineRegionProvider = new OnlineRegionProvider(stapel2DGameContext);
        this.orp = onlineRegionProvider;
        onlineRegionProvider.setType(OnlineRegionProvider.Type.PUBLIC);
        reload(true);
    }

    public OnlineRegionProviderStage(Stapel2DGameContext stapel2DGameContext, long j, String str) {
        super(stapel2DGameContext);
        OnlineRegionProvider onlineRegionProvider = new OnlineRegionProvider(stapel2DGameContext);
        this.orp = onlineRegionProvider;
        onlineRegionProvider.setType(OnlineRegionProvider.Type.OTHER_USER_REGIONS, j, "");
        this.targetAuthorName = str;
        reload(true);
    }

    public OnlineRegionProviderStage(Stapel2DGameContext stapel2DGameContext, int i, int i2) {
        super(stapel2DGameContext);
        this.orp = new OnlineRegionProvider(stapel2DGameContext);
        locateOnline(i, i2);
    }

    public void locateOnline(int i, int i2) {
        this.orp.setType(OnlineRegionProvider.Type.NOTIFICATIONS);
        reload(true);
        this.targetRegionId = i;
        this.targetCityId = i2;
    }

    private void reload(boolean z) {
        if (z) {
            this.lastShiftY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        GameHandler.getInstance().getRegionUnlockTime(0);
        if (Multiplayer.isSupported()) {
            ListBox listBox = this.listBox;
            if (listBox != null) {
                listBox.removeAllItems();
            }
            this.orp.loadLight(new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    OnlineRegionProviderStage.$r8$lambda$tUVsDWCgeZRG3PSmfkuWjI7_PL0();
                }
            });
            OnlineNotificationManager.getInstance().fetch(false);
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        TheoTown.analytics.logEvent("online", "list regions", "");
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public synchronized void enter() {
        try {
            super.enter();
            addTypeButton(Resources.ICON_REGION, this.translator.translate(2520), OnlineRegionProvider.Type.PUBLIC);
            addTypeButton(((AnimationDraft) Drafts.get("$anim_ui_new00", AnimationDraft.class)).frames[0], this.translator.translate(3409), OnlineRegionProvider.Type.NEW);
            addTypeButton(Resources.ICON_PLUS, this.translator.translate(3352), OnlineRegionProvider.Type.FREE);
            addTypeButton(Resources.ICON_LOCKED, this.translator.translate(414), OnlineRegionProvider.Type.PROTECTED);
            addTypeButton(Resources.ICON_SIGN, this.translator.translate(2876), OnlineRegionProvider.Type.LIST_TAGS);
            User user = Backend.getInstance().getUser();
            if (user.isValid() && user.isForumConnected()) {
                addTabSeparator();
                addTypeButton(Resources.ICON_ACCOUNT, this.translator.translate(3305), OnlineRegionProvider.Type.USER);
                addTypeButton(Resources.ICON_ACCOUNT, this.translator.translate(229), OnlineRegionProvider.Type.USER_REGIONS);
            }
            if (Backend.getInstance().getUser().getAdmin() != 0) {
                addTabSeparator();
                addTypeButton(Resources.ICON_REPORT, "Reports", OnlineRegionProvider.Type.REPORT);
            }
            if (!Multiplayer.isSupported()) {
                Dialog dialog = new Dialog(Resources.ICON_ALERT, this.translator.translate(816), this.translator.translate(1178), this.gui);
                dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), false, new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnlineRegionProviderStage.this.getGameStack().pop();
                    }
                }).addSensitiveKey(66);
                dialog.setVisible(true);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void addTypeButton(int i, String str, final OnlineRegionProvider.Type type) {
        addTabButton(i, str, new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                OnlineRegionProviderStage.$r8$lambda$4e807kQtLHvBS7Jfp6Pcxkdo3Fk(this.f$0, type);
            }
        }, new Getter() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda2
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(type == this.f$0.orp.getType());
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$4e807kQtLHvBS7Jfp6Pcxkdo3Fk(OnlineRegionProviderStage onlineRegionProviderStage, OnlineRegionProvider.Type type) {
        onlineRegionProviderStage.orp.setType(type);
        onlineRegionProviderStage.reload(true);
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public int getFallbackIcon() {
        if (this.orp.getType() == OnlineRegionProvider.Type.SEARCH) {
            return Resources.FRAME_SEARCH_BUTTON;
        }
        if (this.orp.getType() == OnlineRegionProvider.Type.TAG) {
            return Resources.ICON_SIGN;
        }
        if (this.orp.getType() == OnlineRegionProvider.Type.OTHER_USER_REGIONS) {
            return Resources.ICON_ACCOUNT;
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public String getFallbackTitle() {
        if (this.orp.getType() == OnlineRegionProvider.Type.SEARCH) {
            return Settings.regionSearchTerm;
        }
        if (this.orp.getType() == OnlineRegionProvider.Type.TAG) {
            return this.targetTagName;
        }
        if (this.orp.getType() == OnlineRegionProvider.Type.OTHER_USER_REGIONS) {
            return this.targetAuthorName;
        }
        return "";
    }

    public final void visitSearch(String str) {
        Settings.regionSearchTerm = str;
        this.orp.setType(OnlineRegionProvider.Type.SEARCH, str);
        reload(true);
    }

    public final void visitTag(int i, String str) {
        this.orp.setType(OnlineRegionProvider.Type.TAG, "" + i);
        this.targetTagName = str;
        reload(true);
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void search() {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(this.gui, this.translator, this.context.getKey());
        renameDialogBuilder.setOkText(this.translator.translate(3499));
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda7
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                this.f$0.visitSearch((String) obj);
            }
        });
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda8
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return OnlineRegionProviderStage.m2260$r8$lambda$Q01a7d8Eu5uxOMoGADCAGllw0((String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_EYE, this.translator.translate(1485), this.translator.translate(1115), Settings.regionSearchTerm).setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$Q01a7d8Eu5uxOMoGA-DCAGllw-0, reason: not valid java name */
    public static /* synthetic */ boolean m2260$r8$lambda$Q01a7d8Eu5uxOMoGADCAGllw0(String str) {
        return str != null && str.trim().length() >= 2;
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void help() {
        TheoTown.analytics.logEvent("Help", "Open (Region Store)", "");
        OSUtil.openHelp();
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void close() {
        getGameStack().pop();
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public boolean isLoading() {
        return !this.orp.isLoaded();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        if (this.orp.isLoaded() && this.listBox.countItems() == 0) {
            if (this.orp.getType() == OnlineRegionProvider.Type.LIST_TAGS) {
                RegionTagMap availableTags = this.orp.getAvailableTags();
                for (int i = 0; i < availableTags.size(); i++) {
                    final int id = availableTags.getId(i);
                    final String nameById = availableTags.getNameById(id);
                    GadgetListItem gadgetListItem = new GadgetListItem(new TagEntry(this.listBox, id, nameById, availableTags.getThemedColorById(id), availableTags.getRegionCountById(id), this.context, new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.visitTag(id, nameById);
                        }
                    }));
                    gadgetListItem.setDrawBackground(true);
                    gadgetListItem.setCanBeSelected(false);
                    this.listBox.addItem(gadgetListItem);
                }
                this.listBox.setShiftY(this.lastShiftY);
            } else {
                IntList mapIds = this.orp.getMapIds();
                int i2 = this.targetRegionId;
                if (i2 > 0 && mapIds.contains(i2)) {
                    visitRegion(this.targetRegionId).locateOnline(this.targetRegionId, this.targetCityId);
                    this.targetRegionId = 0;
                    this.targetCityId = 0;
                    return;
                }
                this.targetRegionId = 0;
                if (!mapIds.isEmpty()) {
                    for (int i3 = 0; i3 < mapIds.size(); i3++) {
                        final int i4 = mapIds.get(i3);
                        final VirtualRegion virtualRegion = this.orp.getVirtualRegion(i4);
                        if (virtualRegion != null) {
                            GadgetListItem gadgetListItem2 = new GadgetListItem(new RegionEntry(this.listBox, virtualRegion, this.orp, i4, this.context, new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.visitRegion(i4);
                                }
                            }, new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    OnlineRegionProviderStage.m2261$r8$lambda$ss8Rkh2l42i0xe8Vk0b2oMypw(this.f$0, virtualRegion);
                                }
                            }));
                            gadgetListItem2.setDrawBackground(true);
                            gadgetListItem2.setCanBeSelected(false);
                            this.listBox.addItem(gadgetListItem2);
                        }
                    }
                    this.listBox.setShiftY(this.lastShiftY);
                }
            }
        }
        drawBackground();
        if (isDialogOpen() || !this.orp.isLoaded() || this.enteredTime < 1.0d || TaskManager.getInstance().TASK_ONLINE_REGIONS.isCompleted()) {
            return;
        }
        TaskManager.getInstance().TASK_ONLINE_REGIONS.complete();
        Dialog dialog = new Dialog(Resources.ICON_REGION, this.translator.translate(1017), this.translator.translate(337), this.gui);
        dialog.addButton(Resources.ICON_ONLINE_REGIONS, this.translator.translate(1651), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                Gdx.net.openURI(Multiplayer.getRulesUrl());
            }
        });
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), false, null);
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$ss-8Rkh2l42-i0xe8Vk0b2oMypw, reason: not valid java name */
    public static /* synthetic */ void m2261$r8$lambda$ss8Rkh2l42i0xe8Vk0b2oMypw(OnlineRegionProviderStage onlineRegionProviderStage, VirtualRegion virtualRegion) {
        onlineRegionProviderStage.getClass();
        onlineRegionProviderStage.visitAuthor(virtualRegion.getOwner());
    }

    public final void visitAuthor(VirtualUser virtualUser) {
        this.orp.setType(OnlineRegionProvider.Type.OTHER_USER_REGIONS, virtualUser.getId(), "");
        this.targetAuthorName = virtualUser.getName();
        reload(true);
    }

    public final RegionStage visitRegion(int i) {
        TheoTown.analytics.logEvent("online", "enter region", this.orp.getName(i));
        this.orp.setDefaultRegionId(i);
        RegionStage regionStage = new RegionStage(this.context, this.orp);
        regionStage.setAllowToGoBack(true);
        getGameStack().push(regionStage);
        return regionStage;
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
    }

    public String toString() {
        return "OnlineRegionProviderStage";
    }

    public static class TagEntry extends Panel {
        public final int childIndex;
        public final Color color;
        public final Stapel2DGameContext context;
        public final int ctr;
        public final int id;
        public final String name;
        public final Runnable onClick;

        public TagEntry(Gadget gadget, int i, String str, Color color, int i2, Stapel2DGameContext stapel2DGameContext, Runnable runnable) {
            super(0, 0, gadget.getClientWidth() - 4, 40, gadget);
            this.id = i;
            this.name = str;
            this.color = color;
            this.ctr = i2;
            this.context = stapel2DGameContext;
            this.onClick = runnable;
            this.childIndex = gadget.countChildren();
            build();
        }

        public final void build() {
            new Button(0, 0, 0, 0, this) { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage.TagEntry.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    TagEntry.this.onClick.run();
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                    drawChildren(i, i2);
                }
            }.setFillParent(true);
            int i = Resources.ICON_SIGN;
            String str = StringFormatter.format(this.context.getTranslator().translate(1795), Integer.valueOf(this.ctr));
            ElementLine elementLine = new ElementLine(0, 2, 0, 0, getClientWidth(), getClientHeight(), this);
            elementLine.setPadding(2, 2, 2, 2);
            new Icon(i, 0, 0, 30, 30, elementLine.getFirstPart());
            Label label = new Label(this.name, 30, 0, elementLine.getClientWidth(), elementLine.getClientHeight(), elementLine);
            label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f);
            label.setColor(this.color);
            Label label2 = new Label(str, 30, 0, elementLine.getClientWidth(), elementLine.getClientHeight(), elementLine);
            label2.setFont(this.skin.fontSmall);
            label2.setColor(this.skin.cTextSecondary);
            label2.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.7f);
            new GoldButton(Resources.ICON_NEXT, "", 0, 0, elementLine.getClientHeight(), elementLine.getClientHeight(), elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage.TagEntry.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    TagEntry.this.onClick.run();
                }
            }.setGolden(false);
            layout();
        }

        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            drawChildren(i, i2);
        }
    }

    public static class RegionEntry extends Panel {
        public final RegionTagMap availableTags;
        public final int childIndex;
        public final Stapel2DGameContext context;
        public final int id;
        public final OnlineRegionProvider orp;
        public final VirtualRegion region;
        public final int[] tags;

        public RegionEntry(Gadget gadget, VirtualRegion virtualRegion, OnlineRegionProvider onlineRegionProvider, int i, Stapel2DGameContext stapel2DGameContext, Runnable runnable, Runnable runnable2) {
            super(0, 0, gadget.getClientWidth() - 4, 40, gadget);
            this.region = virtualRegion;
            this.orp = onlineRegionProvider;
            this.id = i;
            this.context = stapel2DGameContext;
            this.childIndex = gadget.countChildren();
            this.tags = virtualRegion.getTags();
            this.availableTags = onlineRegionProvider.getAvailableTags();
            build(runnable, runnable2);
        }

        public final void build(final Runnable runnable, final Runnable runnable2) {
            int i;
            ElementLine elementLine;
            new Button(0, 0, 0, 0, this) { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    runnable.run();
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    drawChildren(i2, i3);
                }
            }.setFillParent(true);
            int totalCities = this.region.getTotalCities();
            int freeCities = this.region.getFreeCities();
            int userCities = this.region.getUserCities();
            int newGifts = this.region.getNewGifts();
            String name = this.region.getName();
            int frame = RegionIcon.Companion.resolveOrDefault(this.region.getIcon()).getFrame();
            if (!this.orp.isPasswordProtected(this.id)) {
                i = 0;
            } else if (this.orp.canBeEnteredWithoutPassword(this.id)) {
                i = Resources.ICON_UNLOCK;
            } else {
                i = Resources.ICON_LOCKED;
            }
            if (userCities > 0) {
                i = Resources.ICON_STAR;
            }
            if (newGifts > 0) {
                i = Resources.ICON_GOLDEN_PRESENT;
            }
            int i2 = i;
            String str = StringFormatter.format(this.context.getTranslator().translate(2286), Integer.valueOf(totalCities - freeCities), Integer.valueOf(totalCities));
            ElementLine elementLine2 = new ElementLine(0, 2, 0, 0, getClientWidth(), getClientHeight(), this);
            elementLine2.setPadding(2, 2, 2, 2);
            new Icon(frame, 0, 0, 30, 30, elementLine2.getFirstPart());
            if (i2 != 0) {
                elementLine = elementLine2;
                new Icon(i2, 15, 15, 12, 12, elementLine).setScale(0.5f);
            } else {
                elementLine = elementLine2;
            }
            ElementLine elementLine3 = elementLine;
            Label label = new Label(name, 30, 0, elementLine.getClientWidth(), elementLine.getClientHeight(), elementLine3);
            label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f);
            Label label2 = new Label(" by ", label.getX() + ((int) label.getTextWidth()), 0, elementLine3.getClientWidth(), elementLine3.getClientHeight(), elementLine3);
            label2.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.3f);
            label2.setFont(this.skin.fontSmall);
            Label label3 = new Label(this.region.getOwner().getName(), label2.getX() + ((int) label2.getTextWidth()), 0, elementLine3.getClientWidth(), elementLine3.getClientHeight(), elementLine3);
            label3.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.3f);
            label3.setColor(ThemeManager.INSTANCE.transformColor(this.region.getOwner().getColor()));
            label3.setFont(this.skin.fontSmall);
            new Button(label2.getX(), 0, ((label3.getX() + ((int) label3.getTextWidth())) - label2.getX()) + 4, 20, elementLine3) { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i3, int i4) {
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    runnable2.run();
                }
            };
            LineLayout lineLayout = new LineLayout(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, 5, elementLine3);
            lineLayout.setPadding(30, 20, 0, 0);
            Label label4 = new Label(str, 0, 0, 0, 0, lineLayout);
            label4.setFont(this.skin.fontSmall);
            label4.setColor(this.skin.cTextSecondary);
            label4.adjustSizeToText();
            int i3 = 0;
            while (true) {
                int[] iArr = this.tags;
                if (i3 < iArr.length) {
                    int i4 = iArr[i3];
                    if (this.availableTags.containsIds(i4)) {
                        String nameById = this.availableTags.getNameById(i4);
                        Color themedColorById = this.availableTags.getThemedColorById(i4);
                        Label label5 = new Label(nameById, 0, 0, 0, 0, lineLayout);
                        label5.setFont(this.skin.fontSmall);
                        label5.setColor(themedColorById);
                        label5.adjustSizeToText();
                    }
                    i3++;
                } else {
                    new GoldButton(Resources.ICON_NEXT, "", 0, 0, elementLine3.getClientHeight(), elementLine3.getClientHeight(), elementLine3.getThirdPart()) { // from class: info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry.3
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            runnable.run();
                        }
                    }.setGolden(false);
                    layout();
                    return;
                }
            }
        }

        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            drawChildren(i, i2);
        }
    }
}
