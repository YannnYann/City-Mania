package info.flowersoft.theotown.ui;

import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.MapDirectory;
import info.flowersoft.theotown.cityfile.OnlineMapDirectory;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.online.DownloadUtil;
import info.flowersoft.theotown.region.Region;
import info.flowersoft.theotown.region.RegionMap;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.AccountStage;
import info.flowersoft.theotown.stages.CityCommentStage;
import info.flowersoft.theotown.stages.RegionStage;
import info.flowersoft.theotown.ui.RegionCityPanel;
import info.flowersoft.theotown.ui.ReportDialog;
import info.flowersoft.theotown.ui.SelectUserDialog;
import info.flowersoft.theotown.ui.SpendDiamondsButton;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StaticGetter;

/* JADX INFO: loaded from: classes4.dex */
public class RegionCityPanel extends Panel {
    public RegionMap builtMap;
    public boolean builtWaiting;
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public final Master gui;
    public int mapX;
    public int mapY;
    public final boolean noUnlockNeeded;
    public final Region region;
    public final RegionStage regionStage;
    public final Translator translator;

    public RegionCityPanel(RegionStage regionStage, Region region, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack, boolean z) {
        super(0, 0, 140, 40, gadget);
        setPadding(2);
        this.regionStage = regionStage;
        this.region = region;
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        this.gameStack = gameStack;
        this.gui = (Master) getAbsoluteParent();
        this.noUnlockNeeded = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31, types: [io.blueflower.stapel2d.gui.Gadget] */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r4v21, types: [io.blueflower.stapel2d.gui.Gadget] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [io.blueflower.stapel2d.util.Getter] */
    /* JADX WARN: Type inference failed for: r8v7 */
    private void rebuild() {
        int i;
        RegionCityPanel regionCityPanel;
        ElementLine elementLine;
        int i2;
        final RegionInformation.CityInformation cityInformation;
        MapDirectory mapDirectory;
        final LightCityInfo lightCityInfo;
        ?? r0;
        final ?? r8;
        ElementLine elementLine2;
        int i3;
        boolean z;
        MapDirectory mapDirectory2;
        RegionMap regionMap;
        Translator translator;
        int i4;
        removeAllChildren();
        setSize(140, 60);
        final RegionMap selectedMap = this.region.getSelectedMap();
        LightCityInfo info2 = selectedMap.getKeeper().getInfo();
        final RegionInformation.CityInformation cityInformation2 = this.region.getRegionInformation().getCityInformation(selectedMap.getKeeper());
        MapDirectory mapDirectory3 = this.region.getMapDirectory();
        StringBuilder sb = new StringBuilder();
        ElementLine elementLine3 = new ElementLine(0, 1, 0, getClientHeight() - 30, getClientWidth(), 30, this);
        if (cityInformation2 == null || !mapDirectory3.isOnline()) {
            i = 1;
            regionCityPanel = this;
            elementLine = elementLine3;
            i2 = 60;
            cityInformation = cityInformation2;
            mapDirectory = mapDirectory3;
            lightCityInfo = info2;
        } else {
            lightCityInfo = info2;
            final OnlineMapDirectory onlineMapDirectory = (OnlineMapDirectory) mapDirectory3;
            int i5 = 30;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            i = 1;
            i2 = 60;
            elementLine = elementLine3;
            mapDirectory = mapDirectory3;
            new IconButton(Resources.ICON_MENU, "", i6, i7, i8, i5, elementLine3.getThirdPart()) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RegionCityPanel.this.showOnlineMenu(onlineMapDirectory, selectedMap, cityInformation2, lightCityInfo);
                }
            };
            cityInformation = cityInformation2;
            regionCityPanel = this;
            new IconButton(Resources.ICON_NOTIFICATION, "" + onlineMapDirectory.getCityComments(selectedMap.getKeeper()), i6, i7, i8, i5, elementLine.getThirdPart(), false) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RegionCityPanel.this.gameStack.push(new CityCommentStage(RegionCityPanel.this.context, onlineMapDirectory, selectedMap.getKeeper()));
                }
            };
            selectedMap = selectedMap;
        }
        int i9 = (mapDirectory.isOnline() || lightCityInfo == null || lightCityInfo.getLastModified() != 1498587047558L || cityInformation == null || !cityInformation.isAcquired() || !cityInformation.isCreated()) ? 0 : i;
        Object anonymousClass3 = null;
        if (cityInformation != null && (!cityInformation.isLocked() || regionCityPanel.noUnlockNeeded)) {
            if (cityInformation.isCreated() || (!cityInformation.isCanBeAcquired() && !cityInformation.isAcquired())) {
                StaticGetter staticGetter = new StaticGetter(lightCityInfo.getName());
                if (Settings.debugMode) {
                    sb.append("(");
                    sb.append(selectedMap.getKeeper().getFile().getName());
                    sb.append(")");
                    if (mapDirectory.isOnline()) {
                        sb.append(((OnlineMapDirectory) mapDirectory).getCityId(selectedMap.getKeeper()));
                    }
                    sb.append('\n');
                }
                if (mapDirectory.isOnline()) {
                    sb.append(StringFormatter.format(regionCityPanel.translator.translate(151), cityInformation.getAuthor()));
                    sb.append('\n');
                }
                sb.append(StringFormatter.format(regionCityPanel.translator.translate(2574), Integer.valueOf(lightCityInfo.getHabitants())));
                sb.append("\n");
                sb.append(regionCityPanel.translator.translate(1182));
                sb.append(' ');
                String strTranslate = regionCityPanel.translator.translate(lightCityInfo.getGameMode().getLocalizationId());
                if (lightCityInfo.isUber()) {
                    strTranslate = strTranslate + " " + regionCityPanel.translator.translate(1219);
                }
                sb.append(strTranslate);
                sb.append('\n');
                if (cityInformation.isCreated()) {
                    sb.append(StringFormatter.format(regionCityPanel.translator.translate(1326), TimeSpan.localize(lightCityInfo.getCityInfo().playtimeSeconds * 1000)));
                    sb.append('\n');
                }
                if (cityInformation.isCreated()) {
                    if (lightCityInfo.getLastModified() != 1531240611981L) {
                        sb.append(StringFormatter.format(regionCityPanel.translator.translate(210), TimeSpan.localize(InternetTime.getInstance().getTime() - lightCityInfo.getLastModified())));
                        sb.append('\n');
                    }
                    if (mapDirectory.isOnline()) {
                        sb.append(StringFormatter.format(regionCityPanel.translator.translate(772), Integer.valueOf(cityInformation.getDownloads())));
                        sb.append('\n');
                    }
                }
                MapDirectory mapDirectory4 = mapDirectory;
                if (mapDirectory4.canReset(selectedMap.getKeeper()) && (mapDirectory4 instanceof LocalMapDirectory)) {
                    anonymousClass3 = regionCityPanel.new AnonymousClass3(Resources.ICON_TRASH, "", 0, 0, 30, 30, elementLine.getThirdPart(), selectedMap);
                    if (i9 == 0 && RestoreCityDialog.INSTANCE.supportsRestore(mapDirectory4, selectedMap.getKeeper())) {
                        RegionMap regionMap2 = selectedMap;
                        new AnonymousClass4(Resources.ICON_MEDIC, "", 0, 0, 30, 30, elementLine.getThirdPart(), mapDirectory4, regionMap2);
                        mapDirectory2 = mapDirectory4;
                        regionMap = regionMap2;
                    } else {
                        regionMap = selectedMap;
                        mapDirectory2 = mapDirectory4;
                    }
                } else {
                    mapDirectory2 = mapDirectory4;
                    regionMap = selectedMap;
                }
                if (cityInformation.isCreated()) {
                    if (mapDirectory2.isOnline()) {
                        if (lightCityInfo.getFilteredUsedPlugins().isEmpty()) {
                            regionCityPanel = this;
                        } else {
                            regionCityPanel = this;
                            final LightCityInfo lightCityInfo2 = lightCityInfo;
                            new IconButton(Resources.ICON_PLUGIN, "", 0, 0, 0, 30, elementLine.getThirdPart(), false) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.5
                                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                                public void onClick() {
                                    super.onClick();
                                    new MissingPluginsDialogBuilder(RegionCityPanel.this.gui, RegionCityPanel.this.context, RegionCityPanel.this.gameStack).showPluginsWindow(lightCityInfo2.getFilteredUsedPlugins(), false);
                                }
                            };
                        }
                        cityInformation.isAcquired();
                    } else {
                        regionCityPanel = this;
                    }
                    int i10 = Resources.ICON_PLAY;
                    if (cityInformation.isAcquired()) {
                        translator = regionCityPanel.translator;
                        i4 = 2579;
                    } else {
                        translator = regionCityPanel.translator;
                        i4 = 2649;
                    }
                    selectedMap = regionMap;
                    new GoldButton(i10, translator.translate(i4), 0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.6
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            RegionCityPanel.this.regionStage.doMapAction(selectedMap);
                        }
                    }.addSensitiveKey(66);
                } else {
                    regionCityPanel = this;
                    selectedMap = regionMap;
                }
                r0 = anonymousClass3;
                anonymousClass3 = staticGetter;
            } else {
                if (cityInformation.isAcquired()) {
                    sb.append(regionCityPanel.translator.translate(1347));
                    new GoldButton(Resources.ICON_CITY, regionCityPanel.translator.translate(257), 0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.7
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            RegionCityPanel.this.regionStage.doMapAction(selectedMap);
                        }
                    }.addSensitiveKey(66);
                } else if (cityInformation.isCanBeAcquired()) {
                    long remainingRegionUnlockTime = regionCityPanel.regionStage.getRemainingRegionUnlockTime();
                    if (remainingRegionUnlockTime == Long.MAX_VALUE) {
                        remainingRegionUnlockTime = 0;
                    }
                    if (remainingRegionUnlockTime > 0) {
                        sb.append(regionCityPanel.translator.translate(1509));
                    } else {
                        sb.append(regionCityPanel.translator.translate(757));
                    }
                    new GoldButton(Resources.ICON_PLUS, regionCityPanel.translator.translate(1343), 0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.8
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            if (isEnabled()) {
                                super.onClick();
                                if (RegionCityPanel.this.isLoggedIn()) {
                                    RegionCityPanel.this.acquireMap(selectedMap);
                                } else {
                                    RegionCityPanel.this.showAcquireCityAccountNeededDialog();
                                }
                            }
                        }

                        @Override // io.blueflower.stapel2d.gui.Gadget
                        public boolean isEnabled() {
                            if (super.isEnabled()) {
                                return RegionCityPanel.this.regionStage.getRemainingRegionUnlockTime() <= 0 || !RegionCityPanel.this.isLoggedIn();
                            }
                            return false;
                        }

                        @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
                        public void onUpdate() {
                            super.onUpdate();
                            long remainingRegionUnlockTime2 = RegionCityPanel.this.regionStage.getRemainingRegionUnlockTime();
                            if (remainingRegionUnlockTime2 <= 0 || !RegionCityPanel.this.isLoggedIn()) {
                                setText(RegionCityPanel.this.translator.translate(1343));
                            } else {
                                setText(TimeSpan.localize(remainingRegionUnlockTime2));
                            }
                        }
                    }.addSensitiveKey(66);
                }
                r0 = 0;
            }
        } else if (regionCityPanel.region.isWaitingToUnlock(selectedMap)) {
            Getter getter = new Getter() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return RegionCityPanel.$r8$lambda$tsa4EPzwZ00TMyHJ7wKnRN_bTQs(cityInformation);
                }
            };
            regionCityPanel.new AnonymousClass9(Resources.ICON_PLAYFAST, regionCityPanel.translator.translate(3099), 0, 0, 30, 30, elementLine.getThirdPart(), selectedMap).addSensitiveKey(66);
            sb.append(regionCityPanel.translator.translate(1181));
            r0 = 0;
            anonymousClass3 = getter;
        } else {
            if (regionCityPanel.region.isUnlockable(selectedMap)) {
                int iRegionInhabitantsNeededToUnlock = regionCityPanel.region.regionInhabitantsNeededToUnlock();
                int unlockedOrWaitingMaps = regionCityPanel.region.getUnlockedOrWaitingMaps();
                int unlockedMaps = regionCityPanel.region.getUnlockedMaps();
                int i11 = ((((long) iRegionInhabitantsNeededToUnlock) > regionCityPanel.region.getInhabitants() || unlockedOrWaitingMaps - unlockedMaps >= regionCityPanel.regionStage.MAX_CONCURRENT_WAITING) && unlockedOrWaitingMaps != 0) ? 0 : i;
                if (i11 != 0) {
                    new GoldButton(Resources.ICON_UNLOCK, regionCityPanel.translator.translate(1728), 0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.10
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            RegionCityPanel.this.regionStage.unlockMap(selectedMap);
                            RegionCityPanel.this.builtMap = null;
                        }
                    }.addSensitiveKey(66);
                } else {
                    if (unlockedOrWaitingMaps - unlockedMaps >= regionCityPanel.regionStage.MAX_CONCURRENT_WAITING) {
                        sb.append(StringFormatter.format(regionCityPanel.translator.translate(2470), Integer.valueOf(regionCityPanel.regionStage.MAX_CONCURRENT_WAITING)));
                    } else {
                        sb.append(StringFormatter.format(regionCityPanel.translator.translate(254), Integer.valueOf(iRegionInhabitantsNeededToUnlock)));
                    }
                    RegionMap regionMap3 = selectedMap;
                    selectedMap = regionMap3;
                    regionCityPanel.new AnonymousClass11(Resources.ICON_UNLOCK, regionCityPanel.translator.translate(3374), 0, 0, 30, 30, elementLine.getThirdPart(), TheoTown.PREMIUM ? BuyOrVideoDialog.combinePriceAndFlags(i2, SpendDiamondsButton.FLAG_REGION_COIN) : 60L, regionMap3).addSensitiveKey(66);
                }
                if (TheoTown.DEBUG && i11 == 0) {
                    regionCityPanel = this;
                    new IconButton(Resources.ICON_WIZARD, "", 0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.12
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            RegionCityPanel.this.regionStage.unlockMapImmediately(RegionCityPanel.this.builtMap);
                            RegionCityPanel.this.builtMap = null;
                        }
                    };
                } else {
                    regionCityPanel = this;
                }
            }
            r0 = 0;
        }
        if (i9 != 0) {
            StaticGetter staticGetter2 = new StaticGetter(regionCityPanel.translator.translate(771));
            StringBuilder sb2 = new StringBuilder();
            if (r0 != 0) {
                r0.getParent().removeChild(r0);
            }
            r8 = staticGetter2;
            sb = sb2;
        } else {
            r8 = anonymousClass3;
        }
        LineLayout firstPart = elementLine.getFirstPart();
        LineLayout secondPart = elementLine.getSecondPart();
        LineLayout thirdPart = elementLine.getThirdPart();
        Gadget[] gadgetArr = new Gadget[3];
        gadgetArr[0] = firstPart;
        gadgetArr[i] = secondPart;
        gadgetArr[2] = thirdPart;
        int width = 0;
        for (int i12 = 0; i12 < 3; i12++) {
            Gadget gadget = gadgetArr[i12];
            for (int i13 = 0; i13 < gadget.countChildren(); i13++) {
                width += gadget.getChild(i13).getWidth() + 1;
            }
        }
        int paddingLeft = (width - 1) + regionCityPanel.getPaddingLeft() + regionCityPanel.getPaddingRight();
        if (paddingLeft > regionCityPanel.getWidth()) {
            regionCityPanel.setWidth(paddingLeft);
            elementLine2 = elementLine;
            elementLine2.setWidth(regionCityPanel.getClientWidth());
        } else {
            elementLine2 = elementLine;
            if (elementLine2.getFirstPart().countChildren() == 0 && elementLine2.getSecondPart().countChildren() == 0 && elementLine2.getThirdPart().countChildren() == i) {
                elementLine2.getThirdPart().getChild(0).setWidth(regionCityPanel.getClientWidth());
            }
        }
        if (r8 != 0) {
            Label label = new Label((String) r8.get(), 0, 0, regionCityPanel.getClientWidth(), 0, this) { // from class: info.flowersoft.theotown.ui.RegionCityPanel.13
                @Override // io.blueflower.stapel2d.gui.Gadget
                public void onUpdate() {
                    super.onUpdate();
                    setText((String) r8.get());
                }
            };
            label.setAlignment(0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            label.setColor(regionCityPanel.skin.cText);
            i3 = 12;
        } else {
            i3 = 0;
        }
        if (sb.length() > 0) {
            z = true;
            if (sb.charAt(sb.length() - 1) == '\n') {
                sb.deleteCharAt(sb.length() - 1);
            }
        } else {
            z = true;
        }
        ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame(sb.toString(), 0, i3, regionCityPanel.getClientWidth(), (regionCityPanel.getClientHeight() - i3) - (elementLine2.getThirdPart().countChildren() + elementLine2.getFirstPart().countChildren() == 0 ? 0 : 30), this);
        scrollableTextFrame.setShowBorder(false);
        scrollableTextFrame.setFont(this.skin.fontSmall);
        scrollableTextFrame.getTextFrame().setColor(this.skin.cTextSecondary);
        if (scrollableTextFrame.getTextHeight() + 4 != scrollableTextFrame.getClientHeight()) {
            int textHeight = (scrollableTextFrame.getTextHeight() + 4) - scrollableTextFrame.getClientHeight();
            scrollableTextFrame.setHeight(scrollableTextFrame.getHeight() + textHeight);
            setHeight(getHeight() + textHeight);
            elementLine2.setY(elementLine2.getY() + textHeight);
        }
        this.builtMap = selectedMap;
        this.builtWaiting = (cityInformation == null || !cityInformation.isWaitingToUnlock()) ? false : z;
        onUpdate();
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$3, reason: invalid class name */
    public class AnonymousClass3 extends IconButton {
        public final /* synthetic */ RegionMap val$selectedMap;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, RegionMap regionMap) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$selectedMap = regionMap;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            RegionCityPanel regionCityPanel = RegionCityPanel.this;
            final RegionMap regionMap = this.val$selectedMap;
            regionCityPanel.showResetCityDialog(new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RegionCityPanel.this.regionStage.resetMap(regionMap);
                }
            });
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$4, reason: invalid class name */
    public class AnonymousClass4 extends IconButton {
        public final /* synthetic */ MapDirectory val$mapDirectory;
        public final /* synthetic */ RegionMap val$selectedMap;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, MapDirectory mapDirectory, RegionMap regionMap) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$mapDirectory = mapDirectory;
            this.val$selectedMap = regionMap;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            RestoreCityDialog.INSTANCE.show(this.val$mapDirectory, this.val$selectedMap.getKeeper(), new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RegionCityPanel.this.regionStage.reload();
                }
            }, RegionCityPanel.this.context, RegionCityPanel.this.gui);
        }
    }

    public static /* synthetic */ String $r8$lambda$tsa4EPzwZ00TMyHJ7wKnRN_bTQs(RegionInformation.CityInformation cityInformation) {
        int iTimeUntilUnlockInMS = cityInformation.timeUntilUnlockInMS();
        if (iTimeUntilUnlockInMS < 0) {
            iTimeUntilUnlockInMS = 0;
        }
        return TimeSpan.localize(iTimeUntilUnlockInMS);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$9, reason: invalid class name */
    public class AnonymousClass9 extends GoldButton {
        public final /* synthetic */ RegionMap val$selectedMap;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass9(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, RegionMap regionMap) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$selectedMap = regionMap;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            int i = Resources.ICON_PLAYFAST;
            String strTranslate = RegionCityPanel.this.translator.translate(2746);
            String strTranslate2 = RegionCityPanel.this.translator.translate(2975);
            Master master = RegionCityPanel.this.gui;
            final RegionMap regionMap = this.val$selectedMap;
            new BuyOrVideoDialog(i, strTranslate, strTranslate2, master, 30L, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$9$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return RegionCityPanel.AnonymousClass9.$r8$lambda$QBwzgEmvWZcUYb9xapU7cqNGtoI(this.f$0, regionMap);
                }
            }, (Setter<Stage>) new Setter() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$9$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    RegionCityPanel.this.regionStage.getGameStack().push((Stage) obj);
                }
            }, RegionCityPanel.this.context, "shorten unlock city time", "Region_Unlock_Time", false).setVisible(true);
        }

        public static /* synthetic */ Boolean $r8$lambda$QBwzgEmvWZcUYb9xapU7cqNGtoI(AnonymousClass9 anonymousClass9, RegionMap regionMap) {
            RegionCityPanel.this.regionStage.fastForwardMapUnlock(regionMap);
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$11, reason: invalid class name */
    public class AnonymousClass11 extends GoldButton {
        public final /* synthetic */ RegionMap val$selectedMap;
        public final /* synthetic */ long val$unlockImPrice;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass11(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, long j, RegionMap regionMap) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$unlockImPrice = j;
            this.val$selectedMap = regionMap;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            int i = Resources.ICON_UNLOCK;
            String strTranslate = RegionCityPanel.this.translator.translate(857);
            String strTranslate2 = RegionCityPanel.this.translator.translate(2438);
            Master master = RegionCityPanel.this.gui;
            long j = this.val$unlockImPrice;
            final RegionMap regionMap = this.val$selectedMap;
            new BuyOrVideoDialog(i, strTranslate, strTranslate2, master, j, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$11$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return RegionCityPanel.AnonymousClass11.m2391$r8$lambda$R3YRRQpXKN5pWnmgnqfdZMMSjM(this.f$0, regionMap);
                }
            }, (Setter<Stage>) new Setter() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$11$$ExternalSyntheticLambda1
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    RegionCityPanel.this.regionStage.getGameStack().push((Stage) obj);
                }
            }, RegionCityPanel.this.context, "unlock city immediately", "Region_Unlock_Immediately", false).setVisible(true);
        }

        /* JADX INFO: renamed from: $r8$lambda$R3YRRQpXKN5pWnmgnqfdZ-MMSjM, reason: not valid java name */
        public static /* synthetic */ Boolean m2391$r8$lambda$R3YRRQpXKN5pWnmgnqfdZMMSjM(AnonymousClass11 anonymousClass11, RegionMap regionMap) {
            RegionCityPanel.this.regionStage.fastForwardMapUnlock(regionMap);
            RegionCityPanel.this.builtWaiting = true;
            return Boolean.TRUE;
        }
    }

    public final void showCityTransferOwnershipDialog(OnlineMapDirectory onlineMapDirectory, CityKeeper cityKeeper) {
        int cityOwnerId = onlineMapDirectory.getCityOwnerId(cityKeeper);
        if (cityOwnerId == 0) {
            return;
        }
        new SelectUserDialog(new AnonymousClass14(cityKeeper, onlineMapDirectory, cityOwnerId), cityOwnerId, this.context, this.gui).setVisible(true);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$14, reason: invalid class name */
    public class AnonymousClass14 implements SelectUserDialog.UserReceiver {
        public final /* synthetic */ CityKeeper val$keeper;
        public final /* synthetic */ OnlineMapDirectory val$omd;
        public final /* synthetic */ int val$ownerId;

        @Override // info.flowersoft.theotown.ui.SelectUserDialog.UserReceiver
        public void canceled() {
        }

        public AnonymousClass14(CityKeeper cityKeeper, OnlineMapDirectory onlineMapDirectory, int i) {
            this.val$keeper = cityKeeper;
            this.val$omd = onlineMapDirectory;
            this.val$ownerId = i;
        }

        /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$14$1, reason: invalid class name */
        public class AnonymousClass1 implements Setter<String> {
            public final /* synthetic */ SelectUserDialog.User val$user;

            public AnonymousClass1(SelectUserDialog.User user) {
                this.val$user = user;
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(final String str) {
                Dialog dialog = new Dialog(Resources.ICON_NEXT, RegionCityPanel.this.translator.translate(739), StringFormatter.format(RegionCityPanel.this.translator.translate(1111), AnonymousClass14.this.val$keeper.getInfo().getName(), this.val$user.name), RegionCityPanel.this.gui);
                dialog.addCancelButton(Resources.ICON_CANCEL, RegionCityPanel.this.translator.translate(1477)).setGolden(true);
                dialog.addButton(Resources.ICON_NEXT, RegionCityPanel.this.translator.translate(LevelPlayAdError.ERROR_CODE_LOAD_FAILED_ALREADY_CALLED), false, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.14.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        AnonymousClass14 anonymousClass14 = AnonymousClass14.this;
                        anonymousClass14.val$omd.transferCityOwnership(anonymousClass14.val$keeper, (int) anonymousClass1.val$user.id, str, new Service.Handler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.14.1.1.1
                            @Override // info.flowersoft.theotown.backend.Service.Handler
                            public void onSuccess(JSONObject jSONObject) {
                                TheoTown.analytics.logEvent("online", "transfer city", AnonymousClass14.this.val$keeper.getInfo().getName());
                                RegionCityPanel.this.regionStage.addReloadTask();
                            }

                            @Override // info.flowersoft.theotown.backend.Service.Handler
                            public void onFailure(JSONObject jSONObject) {
                                TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
                            }
                        });
                    }
                });
                dialog.setVisible(true);
            }
        }

        @Override // info.flowersoft.theotown.ui.SelectUserDialog.UserReceiver
        public void select(SelectUserDialog.User user) {
            RegionCityPanel.this.regionStage.enterReasonDialog(new AnonymousClass1(user), ((long) this.val$ownerId) != Backend.getInstance().getUser().getId());
        }
    }

    public final void showOnlineMenu(final OnlineMapDirectory onlineMapDirectory, final RegionMap regionMap, RegionInformation.CityInformation cityInformation, LightCityInfo lightCityInfo) {
        User user = Backend.getInstance().getUser();
        boolean z = false;
        boolean z2 = user.isValid() && user.getAdmin() != 0;
        boolean z3 = user.isValid() && ((long) onlineMapDirectory.getCityOwnerId(regionMap.getKeeper())) == user.getId();
        if (user.isValid() && onlineMapDirectory.getOwnerId() == user.getId()) {
            z = true;
        }
        PopupBuilder popupBuilder = new PopupBuilder(this);
        if (z2) {
            final boolean zIsCityProtected = onlineMapDirectory.isCityProtected(regionMap.getKeeper());
            popupBuilder.addItem(zIsCityProtected ? Resources.ICON_UNLOCK : Resources.ICON_LOCKED, zIsCityProtected ? "Remove protection" : "Protect this city", new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.15
                @Override // java.lang.Runnable
                public void run() {
                    onlineMapDirectory.setCityProtection(regionMap.getKeeper(), !zIsCityProtected, new Service.Handler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.15.1
                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onSuccess(JSONObject jSONObject) {
                            RegionCityPanel.this.regionStage.addReloadTask();
                        }

                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onFailure(JSONObject jSONObject) {
                            TheoTown.runtimeFeatures.showToast(jSONObject.optString("hint", "Error"));
                        }
                    });
                }
            });
        }
        if (z2 && onlineMapDirectory.getCityReports(regionMap.getKeeper()) > 0) {
            popupBuilder.addItem(Resources.ICON_CANCEL, "Clear reports", new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.16
                @Override // java.lang.Runnable
                public void run() {
                    onlineMapDirectory.clearReports(regionMap.getKeeper(), new Service.Handler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.16.1
                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onSuccess(JSONObject jSONObject) {
                            TheoTown.runtimeFeatures.showToast("Success");
                            RegionCityPanel.this.regionStage.addReloadTask();
                        }

                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onFailure(JSONObject jSONObject) {
                            TheoTown.runtimeFeatures.showToast(jSONObject.optString("hint", "Error"));
                        }
                    });
                }
            });
            popupBuilder.addSeparator();
        }
        if (!z3) {
            popupBuilder.addItem(Resources.ICON_REPORT, this.translator.translate(Sdk.SDKError.Reason.MRAID_JS_CALL_EMPTY_VALUE), new AnonymousClass17(lightCityInfo, onlineMapDirectory, regionMap));
        }
        popupBuilder.addSeparator();
        if (cityInformation.isCreated() && (z2 || z3 || z)) {
            popupBuilder.addItem(Resources.ICON_REMOVE, this.translator.translate(166), new AnonymousClass18(onlineMapDirectory, regionMap, z3));
            popupBuilder.addItem(Resources.ICON_DOWNLOAD, this.translator.translate(1005), new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    RegionCityPanel regionCityPanel = this.f$0;
                    DownloadUtil.downloadCity(regionCityPanel.gameStack, regionCityPanel.context, regionCityPanel.region, regionMap);
                }
            });
        }
        if (!cityInformation.isCanBeAcquired() && (z2 || z3)) {
            popupBuilder.addItem(Resources.ICON_NEXT, this.translator.translate(739), new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.19
                @Override // java.lang.Runnable
                public void run() {
                    RegionCityPanel.this.showCityTransferOwnershipDialog(onlineMapDirectory, regionMap.getKeeper());
                }
            });
        }
        if (!cityInformation.isCanBeAcquired() && (z2 || z || z3)) {
            popupBuilder.addItem(Resources.ICON_ACCOUNT, this.translator.translate(2195), new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.20
                @Override // java.lang.Runnable
                public void run() {
                    RegionCityPanel.this.showRemoveOwnerDialog(onlineMapDirectory, regionMap.getKeeper());
                }
            });
        }
        popupBuilder.build();
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$17, reason: invalid class name */
    public class AnonymousClass17 implements Runnable {
        public final /* synthetic */ LightCityInfo val$info;
        public final /* synthetic */ OnlineMapDirectory val$omd;
        public final /* synthetic */ RegionMap val$selectedMap;

        public AnonymousClass17(LightCityInfo lightCityInfo, OnlineMapDirectory onlineMapDirectory, RegionMap regionMap) {
            this.val$info = lightCityInfo;
            this.val$omd = onlineMapDirectory;
            this.val$selectedMap = regionMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            ReportDialog.show(RegionCityPanel.this.context, RegionCityPanel.this.gui, StringFormatter.format(RegionCityPanel.this.translator.translate(1193), this.val$info.getName()), new ReportDialog.Reporter() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.17.1
                @Override // info.flowersoft.theotown.ui.ReportDialog.Reporter
                public void report(String str, final Runnable runnable, final Setter<String> setter) {
                    AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                    anonymousClass17.val$omd.reportCity(anonymousClass17.val$selectedMap.getKeeper(), str, new Service.Handler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.17.1.1
                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onSuccess(JSONObject jSONObject) {
                            TheoTown.analytics.logEvent("online", "report city", AnonymousClass17.this.val$info.getName());
                            runnable.run();
                        }

                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onFailure(JSONObject jSONObject) {
                            setter.set(jSONObject.optString("hint"));
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$18, reason: invalid class name */
    public class AnonymousClass18 implements Runnable {
        public final /* synthetic */ boolean val$isOwner;
        public final /* synthetic */ OnlineMapDirectory val$omd;
        public final /* synthetic */ RegionMap val$selectedMap;

        public AnonymousClass18(OnlineMapDirectory onlineMapDirectory, RegionMap regionMap, boolean z) {
            this.val$omd = onlineMapDirectory;
            this.val$selectedMap = regionMap;
            this.val$isOwner = z;
        }

        /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$18$1, reason: invalid class name */
        public class AnonymousClass1 implements Setter<String> {
            public AnonymousClass1() {
            }

            @Override // io.blueflower.stapel2d.util.Setter
            public void set(final String str) {
                RegionCityPanel.this.showResetCityDialog(new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.18.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass18 anonymousClass18 = AnonymousClass18.this;
                        anonymousClass18.val$omd.resetCity(anonymousClass18.val$selectedMap.getKeeper(), str, new Service.Handler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.18.1.1.1
                            @Override // info.flowersoft.theotown.backend.Service.Handler
                            public void onSuccess(JSONObject jSONObject) {
                                TheoTown.analytics.logEvent("online", "reset city", AnonymousClass18.this.val$selectedMap.getKeeper().getInfo().getName());
                                RegionCityPanel.this.regionStage.addReloadTask();
                            }

                            @Override // info.flowersoft.theotown.backend.Service.Handler
                            public void onFailure(JSONObject jSONObject) {
                                TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
                            }
                        });
                    }
                });
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            RegionCityPanel.this.regionStage.enterReasonDialog(new AnonymousClass1(), !this.val$isOwner);
        }
    }

    public final void showRemoveOwnerDialog(OnlineMapDirectory onlineMapDirectory, CityKeeper cityKeeper) {
        int cityOwnerId = onlineMapDirectory.getCityOwnerId(cityKeeper);
        if (cityOwnerId == 0) {
            return;
        }
        this.regionStage.enterReasonDialog(new AnonymousClass21(onlineMapDirectory, cityKeeper), ((long) cityOwnerId) != Backend.getInstance().getUser().getId());
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.RegionCityPanel$21, reason: invalid class name */
    public class AnonymousClass21 implements Setter<String> {
        public final /* synthetic */ CityKeeper val$keeper;
        public final /* synthetic */ OnlineMapDirectory val$omd;

        public AnonymousClass21(OnlineMapDirectory onlineMapDirectory, CityKeeper cityKeeper) {
            this.val$omd = onlineMapDirectory;
            this.val$keeper = cityKeeper;
        }

        @Override // io.blueflower.stapel2d.util.Setter
        public void set(final String str) {
            Dialog dialog = new Dialog(Resources.PEOPLE_LAWYER, RegionCityPanel.this.translator.translate(2195), StringFormatter.format(RegionCityPanel.this.translator.translate(697), this.val$omd.getCityAuthor(this.val$keeper)), RegionCityPanel.this.gui);
            dialog.addCancelButton(Resources.ICON_CANCEL, RegionCityPanel.this.translator.translate(1477)).setGolden(true);
            dialog.addButton(Resources.ICON_ACCOUNT, RegionCityPanel.this.translator.translate(2464), false, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.21.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                    anonymousClass21.val$omd.removeOwner(anonymousClass21.val$keeper, str, new Service.Handler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.21.1.1
                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onSuccess(JSONObject jSONObject) {
                            TheoTown.analytics.logEvent("online", "remove city owner", AnonymousClass21.this.val$keeper.getInfo().getName());
                            RegionCityPanel.this.regionStage.addReloadTask();
                        }

                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onFailure(JSONObject jSONObject) {
                            TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
                        }
                    });
                }
            });
            dialog.setVisible(true);
        }
    }

    public final void showResetCityDialog(Runnable runnable) {
        Dialog dialog = new Dialog(Resources.PEOPLE_LAWYER, this.translator.translate(166), this.translator.translate(3380), this.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477)).setGolden(true);
        dialog.addButton(Resources.ICON_REMOVE, this.translator.translate(1703), false, runnable);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public final boolean isLoggedIn() {
        return Backend.getInstance().getUser().isForumConnected();
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        Engine engine = this.skin.engine;
        Drawing.getInstance().drawLine(this.x + i + (this.width / 2), this.y + i2 + this.height, this.mapX, this.mapY - 8, 1.0f, engine);
        engine.setTransparency(255);
        drawNinePatch(i - 8, i2 - 8, this.width + 16, this.height + 16, Resources.skin.npRectShadow);
        Color color = Colors.WHITE;
        engine.setColor(color);
        engine.setTransparency(240);
        drawNinePatch(i, i2, this.skin.npPanel);
        engine.setColor(color);
        engine.setTransparency(255);
        drawChildren(i, i2);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        RegionMap selectedMap = this.region.getSelectedMap();
        RegionInformation regionInformation = this.region.getRegionInformation();
        IsoConverter iso = this.region.getIso();
        if (isVisible()) {
            float x = selectedMap.getX() + (selectedMap.getWidth() / 2.0f);
            float y = selectedMap.getY() + (selectedMap.getHeight() / 2.0f);
            this.mapX = (int) (iso.isoToAbsX(x, y) * this.master.getVirtualWidthRatio());
            this.mapY = (int) (iso.isoToAbsY(x, y) * this.master.getVirtualHeightRatio());
            setPosition((this.mapX - (this.width / 2)) - this.gui.getPaddingLeft(), ((this.mapY - this.height) - 30) - this.gui.getPaddingTop());
            RegionInformation.CityInformation cityInformation = regionInformation.getCityInformation(selectedMap.getKeeper());
            if (selectedMap == this.builtMap && (cityInformation == null || cityInformation.isWaitingToUnlock() == this.builtWaiting)) {
                return;
            }
            rebuild();
            return;
        }
        setPosition(0, (-this.height) - 1000);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        RegionMap selectedMap = this.region.getSelectedMap();
        if (selectedMap == null || this.regionStage.waitingToLoadSelectedCity() || !this.region.isBoardCreated()) {
            return false;
        }
        return !this.region.isLocked(selectedMap) || this.region.isUnlockable(selectedMap) || this.region.isWaitingToUnlock(selectedMap);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setPosition(int i, int i2) {
        if (isVisible()) {
            i = Math.max(Math.min(i, getParent().getClientWidth() - getWidth()), 0);
            i2 = Math.max(Math.min(i2, getParent().getClientHeight() - getHeight()), 0);
        }
        super.setPosition(i, i2);
    }

    public final void acquireMap(final RegionMap regionMap) {
        final Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.22
            @Override // java.lang.Runnable
            public void run() {
                TheoTown.analytics.logEvent("online", "acquire plot", RegionCityPanel.this.region.getRegionInformation().getName());
                TheoTown.gamesService.unlockAchievement("online_city_acquire");
            }
        };
        if (TheoTown.PREMIUM) {
            new BuyOrVideoDialog(Resources.ICON_PLUS, this.translator.translate(141), this.translator.translate(540), this.gui, BuyOrVideoDialog.combinePriceAndFlags(regionMap.getWidth() * 15, SpendDiamondsButton.FLAG_REGION_COIN), new SpendDiamondsButton.SuccessHandler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda1
                @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
                public final void handle(SpendDiamondsButton.HandlerReporter handlerReporter) {
                    RegionCityPanel regionCityPanel = this.f$0;
                    regionCityPanel.regionStage.acquireMap(regionMap, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.23
                        @Override // java.lang.Runnable
                        public void run() {
                            handlerReporter.report(true);
                            runnable.run();
                        }
                    }, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.24
                        @Override // java.lang.Runnable
                        public void run() {
                            handlerReporter.report(false);
                        }
                    });
                }
            }, (Setter<Stage>) this.gameStack, this.context, "acquire map", (String) null, false).setVisible(true);
        } else {
            new BuyOrVideoDialog(Resources.ICON_PLUS, this.translator.translate(141), this.translator.translate(540), this.gui, regionMap.getWidth() * 15, new SpendDiamondsButton.SuccessHandler() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.25
                @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
                public void handle(final SpendDiamondsButton.HandlerReporter handlerReporter) {
                    RegionCityPanel.this.regionStage.acquireMap(regionMap, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.25.1
                        @Override // java.lang.Runnable
                        public void run() {
                            handlerReporter.report(true);
                            runnable.run();
                        }
                    }, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.25.2
                        @Override // java.lang.Runnable
                        public void run() {
                            handlerReporter.report(false);
                        }
                    });
                }
            }, (Setter<Stage>) this.gameStack, this.context, "acquire map", (String) null, false).setVisible(true);
        }
    }

    public final void showAcquireCityAccountNeededDialog() {
        Dialog dialog = new Dialog(Resources.ICON_ACCOUNT, this.translator.translate(3417), this.translator.translate(238), this.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477));
        dialog.addButton(Resources.ICON_OK, this.translator.translate(2447), false, new Runnable() { // from class: info.flowersoft.theotown.ui.RegionCityPanel.26
            @Override // java.lang.Runnable
            public void run() {
                RegionCityPanel.this.gameStack.push(new AccountStage(RegionCityPanel.this.context));
            }
        }).setGolden(true);
        dialog.setVisible(true);
    }
}
