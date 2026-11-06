package info.flowersoft.theotown.tools;

import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.RoadBuilder;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.tools.marker.PowerMarker;
import info.flowersoft.theotown.tools.marker.TrafficMarker;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveTool extends TwoModesTool implements BuildToolMarker {
    public final LinkedList<DestructionAnimation> destructionAnimations;
    public final List<Building> diamondBuildings;
    public boolean hideAnimations;
    public final IntMap<DestructionAnimation> position2Animation;
    public int removeMode;
    public int removeTunnelLevel;
    public boolean removeUnder;

    public interface RemoveOperation {
        boolean remove(int i, int i2, TileGhost tileGhost);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int countVariants() {
        return 1;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getBuildingIntensity(int i, int i2) {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return null;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        return true;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markTree(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayAlpha(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Remove";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        return Colors.RED;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void undo(boolean z) {
        super.undo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        super.redo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        int i3;
        int i4;
        Building building = this.tiles.getBuilding(i, i2);
        if (building == null) {
            return false;
        }
        int x = building.getX();
        int y = building.getY();
        int width = (building.getWidth() + x) - 1;
        int height = (building.getHeight() + y) - 1;
        if (!(this.mode == 1) || !this.drawnTarget) {
            return ((TwoModesTool) this).drawnTargetHover && x <= (i3 = ((TwoModesTool) this).drawnTargetX) && y <= (i4 = ((TwoModesTool) this).drawnTargetY) && i3 <= width && i4 <= height;
        }
        return width >= Math.min(this.selectedX, ((TwoModesTool) this).drawnTargetX) && x <= Math.max(this.selectedX, ((TwoModesTool) this).drawnTargetX) && height >= Math.min(this.selectedY, ((TwoModesTool) this).drawnTargetY) && y <= Math.max(this.selectedY, ((TwoModesTool) this).drawnTargetY);
    }

    private void recalculate() {
        ((DefaultPower) this.city.getComponent(5)).calculate();
        ((DefaultWater) this.city.getComponent(8)).calculate();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        super.mouseMove(i, i2, f, f2, f3, f4, z);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "";
    }

    public RemoveTool() {
        this(true, true);
    }

    public RemoveTool(boolean z, boolean z2) {
        this.destructionAnimations = new LinkedList<>();
        this.position2Animation = new IntMap<>();
        this.removeTunnelLevel = -1;
        this.diamondBuildings = new ArrayList();
        enterNormalMode();
        ArrayList arrayList = new ArrayList();
        if (z2) {
            arrayList.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RemoveTool.1
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_REMOVE_UNDER;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRemoveUnder";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    RemoveTool.this.removeUnder = !r0.removeUnder;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return RemoveTool.this.removeUnder;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RemoveTool.this.city.getTranslator().translate(3557);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return RemoveTool.this.removeMode == 0;
                }
            });
        }
        if (z) {
            arrayList.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RemoveTool.2
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_REMOVE;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRemoveNormal";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    RemoveTool.this.enterNormalMode();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RemoveTool.this.city.getTranslator().translate(IronSourceError.ERROR_NO_INTERNET_CONNECTION);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return RemoveTool.this.removeMode != 0;
                }
            });
        }
        if (!arrayList.isEmpty()) {
            this.actions.add(arrayList);
        }
        if (z) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RemoveTool.3
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_REMOVE_TUNNEL_SMALL;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRemoveTunnel";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    RemoveTool removeTool = RemoveTool.this;
                    if (removeTool.removeMode == 1) {
                        removeTool.enterNormalMode();
                    } else {
                        removeTool.enterRemoveTunnelMode();
                    }
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RemoveTool.this.city.getTranslator().translate(2045);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return RemoveTool.this.removeMode == 1;
                }
            });
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RemoveTool.4
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_REMOVE_UNDERGROUND_WIRE_SMALL;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRemoveUndergroundWires";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    RemoveTool removeTool = RemoveTool.this;
                    if (removeTool.removeMode == 2) {
                        removeTool.enterNormalMode();
                    } else {
                        removeTool.enterRemoveUndergroundWiresMode();
                    }
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RemoveTool.this.city.getTranslator().translate(398);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return RemoveTool.this.removeMode == 2;
                }
            });
        }
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public CursorType getBuildableCursor() {
        return CursorType.Delete;
    }

    public void enterNormalMode() {
        setMarker(this);
        this.removeMode = 0;
        this.drawUnderground = false;
        this.drawUndergroundRoad = false;
    }

    public void enterRemoveTunnelMode() {
        setMarker(null);
        if (Settings.showTrafficMarkerInRoadTool) {
            setMarker(new TrafficMarker(this.city) { // from class: info.flowersoft.theotown.tools.RemoveTool.5
                @Override // info.flowersoft.theotown.tools.marker.TrafficMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
                public float overlayAlpha(int i, int i2) {
                    if (RemoveTool.this.tiles.getRoad(i, i2, RemoveTool.this.removeTunnelLevel) != null) {
                        return 1.0f;
                    }
                    return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
            });
        }
        this.removeMode = 1;
        this.drawUndergroundRoad = true;
        this.drawUnderground = false;
    }

    public void enterRemoveUndergroundWiresMode() {
        setMarker(new PowerMarker(this.city));
        this.removeMode = 2;
        this.drawUnderground = true;
        this.drawUndergroundRoad = false;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        int i5 = this.removeMode;
        if (i5 == 0) {
            buildNormal(i, i2, i3, i4);
            recalculate();
        } else if (i5 == 1) {
            buildRemoveTunnel(i, i2, i3, i4);
        } else {
            if (i5 != 2) {
                return;
            }
            buildRemoveUndergroundWires(i, i2, i3, i4);
            recalculate();
        }
    }

    public void buildRemoveTunnel(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        RoadBuilder roadBuilder = this.modifier.getRoadBuilder();
        for (int i5 = 0; i5 <= Math.abs(i4 - i2); i5++) {
            for (int i6 = 0; i6 <= Math.abs(i3 - i); i6++) {
                int iMin = Math.min(i, i3) + i6;
                int iMin2 = Math.min(i2, i4) + i5;
                if (this.tiles.getRoad(iMin, iMin2, this.removeTunnelLevel) != null) {
                    roadBuilder.remove(iMin, iMin2, this.removeTunnelLevel);
                    addDestructionAnimation(iMin, iMin2);
                    this.soundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(this.city, iMin, iMin2));
                }
            }
        }
        endCaptureState();
    }

    public void buildRemoveUndergroundWires(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        for (int i5 = 0; i5 <= Math.abs(i4 - i2); i5++) {
            for (int i6 = 0; i6 <= Math.abs(i3 - i); i6++) {
                int iMin = Math.min(i, i3) + i6;
                int iMin2 = Math.min(i2, i4) + i5;
                Wire wire = this.tiles.getWire(iMin, iMin2, -1);
                if (wire != null) {
                    this.modifier.remove(wire, iMin, iMin2);
                    this.soundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(this.city, iMin, iMin2));
                    addDestructionAnimation(iMin, iMin2);
                }
            }
        }
        endCaptureState();
    }

    public void buildNormal(final int i, final int i2, final int i3, final int i4) {
        DefaultSoundManager defaultSoundManager;
        captureState(i, i2, i3, i4);
        final int iMin = Math.min(i, i3);
        final int iMin2 = Math.min(i2, i4);
        final int iMax = Math.max(i, i3);
        final int iMax2 = Math.max(i2, i4);
        boolean z = true;
        int i5 = (iMax - iMin) + 1;
        int i6 = (iMax2 - iMin2) + 1;
        TileGhost[][] tileGhostArr = (TileGhost[][]) Array.newInstance((Class<?>) TileGhost.class, i5, i6);
        final DefaultSoundManager defaultSoundManager2 = (DefaultSoundManager) this.city.getComponent(15);
        this.modifier.removeFenceWithin(iMin, iMin2, i5, i6);
        for (int i7 = iMin; i7 <= iMax; i7++) {
            int i8 = iMin2;
            while (i8 <= iMax2) {
                tileGhostArr[i7 - iMin][i8 - iMin2] = new TileGhost(this.tiles, i7, i8);
                i8++;
                z = z;
                i5 = i5;
            }
        }
        int i9 = i5;
        boolean z2 = z;
        this.diamondBuildings.clear();
        List<RemoveOperation> listCollectRemoveOperations = collectRemoveOperations();
        final int size = this.destructionAnimations.size();
        double estate = getBudget().getEstate();
        boolean z3 = false;
        for (int i10 = iMin; i10 <= iMax; i10++) {
            for (int i11 = iMin2; i11 <= iMax2; i11++) {
                TileGhost tileGhost = tileGhostArr[i10 - iMin][i11 - iMin2];
                if (tileGhost.isSame(this.tiles, i10, i11)) {
                    int i12 = 0;
                    while (true) {
                        if (i12 >= listCollectRemoveOperations.size()) {
                            break;
                        }
                        if (listCollectRemoveOperations.get(i12).remove(i10, i11, tileGhost)) {
                            z3 = !tileGhost.isSame(this.tiles, i10, i11);
                            break;
                        }
                        i12++;
                    }
                }
            }
        }
        double estate2 = getBudget().getEstate() - estate;
        if (z3) {
            endCaptureState();
            if (estate2 < 0.0d && canUndo() && !this.city.getGameMode().hasInfinityMoney()) {
                undo(z2);
                getBudget().clearPlacedPrices();
                this.hideAnimations = z2;
                this.questionListener.ask(Resources.ICON_MONEY, this.city.getTranslator().translate(183), StringFormatter.format(this.city.getTranslator().translate(507), Localizer.localizeMoney(-estate2)), new Runnable() { // from class: info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoveTool.$r8$lambda$M0FVDOvPMafQH0FqILI5cld0TtA(this.f$0, size, defaultSoundManager2, iMin, iMin2, iMax, iMax2);
                    }
                }, new Runnable() { // from class: info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoveTool.$r8$lambda$xO82drb4UIxA6EHsGDY9dN_0zu4(this.f$0);
                    }
                });
                return;
            }
            defaultSoundManager = defaultSoundManager2;
            if (this.destructionAnimations.size() > size) {
                defaultSoundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(this.city, iMin, iMin2, i9, i6));
            }
        } else {
            defaultSoundManager = defaultSoundManager2;
        }
        if (this.diamondBuildings.isEmpty()) {
            return;
        }
        final DefaultSoundManager defaultSoundManager3 = defaultSoundManager;
        this.questionListener.ask(Resources.ICON_REMOVE, this.city.getTranslator().translate(291), StringFormatter.format(this.city.getTranslator().translate(2055), Integer.valueOf(this.diamondBuildings.size())), new Runnable() { // from class: info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RemoveTool.$r8$lambda$B7qwfr0itre_GaJuP9Xqaym5AKw(this.f$0, i, i2, i3, i4, defaultSoundManager3);
            }
        }, (Runnable) null);
    }

    public static /* synthetic */ void $r8$lambda$M0FVDOvPMafQH0FqILI5cld0TtA(RemoveTool removeTool, int i, DefaultSoundManager defaultSoundManager, int i2, int i3, int i4, int i5) {
        removeTool.hideAnimations = false;
        removeTool.redo(true);
        Iterator<DestructionAnimation> it = removeTool.destructionAnimations.iterator();
        while (it.hasNext()) {
            it.next().time = removeTool.getTime();
        }
        if (removeTool.destructionAnimations.size() > i) {
            defaultSoundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(removeTool.city, i2, i3, (i4 - i2) + 1, (i5 - i3) + 1));
        }
    }

    public static /* synthetic */ void $r8$lambda$xO82drb4UIxA6EHsGDY9dN_0zu4(RemoveTool removeTool) {
        removeTool.hideAnimations = false;
        removeTool.clearRedo();
        removeTool.destructionAnimations.clear();
        removeTool.position2Animation.clear();
    }

    public static /* synthetic */ void $r8$lambda$B7qwfr0itre_GaJuP9Xqaym5AKw(RemoveTool removeTool, int i, int i2, int i3, int i4, DefaultSoundManager defaultSoundManager) {
        removeTool.captureState(i, i2, i3, i4);
        for (int i5 = 0; i5 < removeTool.diamondBuildings.size(); i5++) {
            Building building = removeTool.diamondBuildings.get(i5);
            removeTool.modifier.remove(building, null);
            removeTool.addDestructionAnimation(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            defaultSoundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new BuildingSoundSource(removeTool.city, building));
        }
        removeTool.endCaptureState();
    }

    public final List<RemoveOperation> collectRemoveOperations() {
        RemoveOperation removeOperation = new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.6
            @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
            public boolean remove(int i, int i2, TileGhost tileGhost) {
                Building building = RemoveTool.this.tiles.getBuilding(i, i2);
                if (building == null) {
                    return false;
                }
                BuildingDraft draft = building.getDraft();
                if (building.isLocked()) {
                    return true;
                }
                if (building.getDraft().diamondPrice.get() > 0 && !building.getDraft().isBoughtInFeature(RemoveTool.this.city)) {
                    if (RemoveTool.this.diamondBuildings.contains(building)) {
                        return true;
                    }
                    RemoveTool.this.diamondBuildings.add(building);
                    return true;
                }
                RemoveTool.this.modifier.remove(building, null);
                long buildingBulldozePrice = getBuildingBulldozePrice(building);
                if (buildingBulldozePrice <= 0) {
                    RemoveTool.this.getBudget().earn(-buildingBulldozePrice, (building.getX() + (building.getWidth() / 2.0f)) - 0.5f, (building.getY() + (building.getHeight() / 2.0f)) - 0.5f, "bulldoze " + draft.id);
                } else {
                    RemoveTool.this.getBudget().spend(buildingBulldozePrice, (building.getX() + (building.getWidth() / 2.0f)) - 0.5f, (building.getY() + (building.getHeight() / 2.0f)) - 0.5f, "bulldoze " + draft.id);
                }
                RemoveTool.this.addDestructionAnimation(building.getX(), building.getY(), building.getWidth(), building.getHeight());
                return true;
            }

            public final long getBuildingBulldozePrice(Building building) {
                BuildingDraft draft = building.getDraft();
                long j = (building.getZone().rci || !(draft.isBoughtInFeature(RemoveTool.this.city) || draft.diamondPrice.get() == 0)) ? 0L : (-RemoveTool.this.getBudget().getPrice(draft, 1)) / 2;
                long j2 = draft.bulldozePrice;
                if (j2 != -2147483648L) {
                    j = j2;
                }
                if (building.isSpentMoneyUnknown()) {
                    return draft.isExternalPlugin() ? Math.max(0L, j) : j;
                }
                return Math.max(-building.getSpentMoney(), j);
            }
        };
        RemoveOperation removeOperation2 = new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.7
            @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
            public boolean remove(int i, int i2, TileGhost tileGhost) {
                Rail rail = RemoveTool.this.tiles.getRail(i, i2);
                if (rail == null) {
                    return false;
                }
                RemoveTool.this.getBudget().spend(0.0d, i, i2, "remove " + rail.getDraft().id);
                RemoveTool.this.modifier.remove(rail);
                RemoveTool.this.addDestructionAnimation(i, i2);
                return true;
            }
        };
        RemoveOperation removeOperation3 = new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.8
            @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
            public boolean remove(int i, int i2, TileGhost tileGhost) {
                Wire wire = RemoveTool.this.tiles.getWire(i, i2, 1);
                if (wire == null) {
                    return false;
                }
                RemoveTool.this.getBudget().earn(wire.getDraft().price / 2, i, i2, "remove " + wire.getDraft().id);
                RemoveTool.this.modifier.remove(wire, i, i2);
                RemoveTool.this.addDestructionAnimation(i, i2);
                return true;
            }
        };
        RemoveOperation removeOperation4 = new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.9
            @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
            public boolean remove(int i, int i2, TileGhost tileGhost) {
                Wire wire = RemoveTool.this.tiles.getWire(i, i2, 0);
                if (wire == null) {
                    return false;
                }
                RemoveTool.this.getBudget().earn(wire.getDraft().price / 2, i, i2, "remove " + wire.getDraft().id);
                RemoveTool.this.modifier.remove(wire, i, i2);
                RemoveTool.this.addDestructionAnimation(i, i2);
                return true;
            }
        };
        ArrayList arrayList = new ArrayList();
        for (final int i = 0; i <= 16; i++) {
            arrayList.add(new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.10
                @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
                public boolean remove(int i2, int i3, TileGhost tileGhost) {
                    Road road = RemoveTool.this.tiles.getRoad(i2, i3, i);
                    if (road == null) {
                        return false;
                    }
                    BusStop busStop = road.getBusStop();
                    if (busStop != null) {
                        RemoveTool.this.getBudget().spend(0.0d, i2, i3, "remove " + busStop.getDraft().id);
                        RemoveTool.this.modifier.remove(busStop, i2, i3);
                        RemoveTool.this.addDestructionAnimation(i2, i3);
                        return true;
                    }
                    RemoveTool.this.getBudget().spend(0.0d, i2, i3, "remove " + road.draft.id);
                    RemoveTool.this.modifier.removeRoad(i2, i3, road.level);
                    RemoveTool.this.addDestructionAnimation(i2, i3);
                    return true;
                }
            });
        }
        RemoveOperation removeOperation5 = new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.11
            @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
            public boolean remove(int i2, int i3, TileGhost tileGhost) {
                Road road = RemoveTool.this.tiles.getRoad(i2, i3, -1);
                if (road == null || road.dLevel == 0) {
                    return false;
                }
                BusStop busStop = road.getBusStop();
                if (busStop != null) {
                    RemoveTool.this.getBudget().spend(0.0d, i2, i3, "remove " + busStop.getDraft().id);
                    RemoveTool.this.modifier.remove(busStop, i2, i3);
                    RemoveTool.this.addDestructionAnimation(i2, i3);
                    return true;
                }
                RemoveTool.this.getBudget().spend(0.0d, i2, i3, "remove " + road.draft.id);
                RemoveTool.this.modifier.removeRoad(i2, i3, road.level);
                RemoveTool.this.addDestructionAnimation(i2, i3);
                return true;
            }
        };
        RemoveOperation removeOperation6 = new RemoveOperation() { // from class: info.flowersoft.theotown.tools.RemoveTool.12
            @Override // info.flowersoft.theotown.tools.RemoveTool.RemoveOperation
            public boolean remove(int i2, int i3, TileGhost tileGhost) {
                Tree tree = RemoveTool.this.tiles.getTree(i2, i3);
                if (tree == null) {
                    return false;
                }
                RemoveTool.this.getBudget().spend(0.0d, i2, i3, "remove " + tree.getDraft().id);
                RemoveTool.this.modifier.remove(tree, i2, i3);
                RemoveTool.this.addDestructionAnimation(i2, i3);
                return true;
            }
        };
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(removeOperation);
        for (int size = arrayList.size() - 1; size >= 3; size--) {
            arrayList2.add((RemoveOperation) arrayList.get(size));
        }
        arrayList2.add(removeOperation3);
        arrayList2.add((RemoveOperation) arrayList.get(2));
        arrayList2.add(removeOperation2);
        arrayList2.add((RemoveOperation) arrayList.get(1));
        arrayList2.add(removeOperation4);
        arrayList2.add((RemoveOperation) arrayList.get(0));
        arrayList2.add(removeOperation5);
        arrayList2.add(removeOperation6);
        if (this.removeUnder) {
            Collections.reverse(arrayList2);
        }
        return arrayList2;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        return Math.max(Math.abs(i3 - i), Math.abs(i4 - i2)) + 1 <= 11 || infiniteRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    @Override // info.flowersoft.theotown.tools.BuildTool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void drawOnTop(int r8, int r9, info.flowersoft.theotown.city.Drawer r10) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.RemoveTool.drawOnTop(int, int, info.flowersoft.theotown.city.Drawer):void");
    }

    public void drawAnimations(int i, int i2, Drawer drawer) {
        long time = getTime();
        int i3 = Resources.FRAMES_DESTRUCTION_COUNT;
        DestructionAnimation destructionAnimation = this.position2Animation.get(PackedInt2.pack(i, i2));
        if (destructionAnimation == null || !destructionAnimation.valid) {
            return;
        }
        float f = (time - destructionAnimation.time) / (i3 * 200);
        if (f > 1.0f) {
            destructionAnimation.valid = false;
        } else {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.terrainHeight) * 12.0f, Resources.FRAMES_DESTRUCTION + Math.min((int) (f * i3), i3));
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        long time = getTime();
        if (this.hideAnimations) {
            return;
        }
        while (!this.destructionAnimations.isEmpty()) {
            if (this.destructionAnimations.peek().valid && (time - this.destructionAnimations.peek().time) / (Resources.FRAMES_DESTRUCTION_COUNT * 200) < 1.0f) {
                return;
            }
            DestructionAnimation destructionAnimationPoll = this.destructionAnimations.poll();
            int iPack = PackedInt2.pack(destructionAnimationPoll.x, destructionAnimationPoll.y);
            if (this.position2Animation.get(iPack) == destructionAnimationPoll) {
                this.position2Animation.remove(iPack);
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_REMOVE;
    }

    public void addDestructionAnimation(int i, int i2, int i3, int i4) {
        this.hideAnimations = false;
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                addDestructionAnimation(i + i5, i2 + i6);
            }
        }
    }

    public void addDestructionAnimation(int i, int i2) {
        DestructionAnimation destructionAnimation = new DestructionAnimation();
        destructionAnimation.x = i;
        destructionAnimation.y = i2;
        destructionAnimation.time = getTime();
        destructionAnimation.valid = true;
        this.destructionAnimations.add(destructionAnimation);
        this.position2Animation.put(PackedInt2.pack(i, i2), destructionAnimation);
        issueMovement();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public int getTreeTransparency() {
        if (this.drawUnderground || this.drawUndergroundRoad) {
            return 40;
        }
        return super.getTreeTransparency();
    }

    public final long getTime() {
        return TimeUtils.millis();
    }

    public static class DestructionAnimation {
        public long time;
        public boolean valid;
        public int x;
        public int y;

        public DestructionAnimation() {
        }
    }

    public static class TileGhost {
        public final Building building;
        public final Rail rail;
        public final Tree tree;
        public final ZoneDraft zone;
        public final BusStop[] busStop = new BusStop[19];
        public final Wire[] wires = new Wire[3];
        public final Road[] roads = new Road[19];

        public TileGhost(Tiles tiles, int i, int i2) {
            this.building = tiles.getBuilding(i, i2);
            for (int i3 = -2; i3 <= 16; i3++) {
                this.roads[i3 + 2] = tiles.getRoad(i, i2, i3);
            }
            for (int i4 = 0; i4 < 19; i4++) {
                BusStop[] busStopArr = this.busStop;
                Road road = this.roads[i4];
                busStopArr[i4] = road != null ? road.getBusStop() : null;
            }
            this.tree = tiles.getTree(i, i2);
            for (int i5 = -1; i5 <= 1; i5++) {
                this.wires[i5 + 1] = tiles.getWire(i, i2, i5);
            }
            this.zone = tiles.getZone(i, i2);
            this.rail = tiles.getRail(i, i2);
        }

        public boolean isSame(Tiles tiles, int i, int i2) {
            for (int i3 = -2; i3 <= 16; i3++) {
                if (tiles.getRoad(i, i2, i3) != this.roads[i3 + 2]) {
                    return false;
                }
            }
            for (int i4 = -2; i4 <= 16; i4++) {
                Road road = tiles.getRoad(i, i2, i4);
                BusStop busStop = this.busStop[i4 + 2];
                if ((busStop != null && road == null) || (road != null && busStop != road.getBusStop())) {
                    return false;
                }
            }
            for (int i5 = -1; i5 <= 1; i5++) {
                if (this.wires[i5 + 1] != tiles.getWire(i, i2, i5)) {
                    return false;
                }
            }
            return tiles.getBuilding(i, i2) == this.building && tiles.getTree(i, i2) == this.tree && tiles.getZone(i, i2) == this.zone && tiles.getRail(i, i2) == this.rail;
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(IronSourceError.ERROR_NO_INTERNET_CONNECTION);
    }
}
