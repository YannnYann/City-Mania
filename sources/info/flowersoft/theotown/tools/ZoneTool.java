package info.flowersoft.theotown.tools;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.modifier.RoadBuilder;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.PackedInt2;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneTool extends TwoModesTool {
    public long price;
    public final int[] prices = new int[16641];
    public final ZoneDraft zone;

    public final void runPostprocessors(int i, int i2, int i3, int i4) {
    }

    public ZoneTool(final ZoneDraft zoneDraft) {
        this.zone = zoneDraft;
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.ZoneTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_AUTOROAD;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdAutoRoadGrid";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                Settings.autoRoadForZones = !Settings.autoRoadForZones;
                ZoneTool.this.calculatePrices();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isPressed() {
                return Settings.autoRoadForZones;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                ZoneDraft zoneDraft2 = zoneDraft;
                return zoneDraft2.autoRoad && zoneDraft2.rci;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return ZoneTool.this.city.getTranslator().translate(3419);
            }
        });
        RoadDraft roadDraft = getRoadDraft();
        if (roadDraft != null && roadDraft.trafficLights != null) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.ZoneTool.2
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Settings.autoTrafficLights ? Resources.ICON_TRAFFIC_LIGHTS_ON : Resources.ICON_TRAFFIC_LIGHTS_OFF;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdTrafficLightsOff";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    Settings.autoTrafficLights = !Settings.autoTrafficLights;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return Settings.autoTrafficLights;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return zoneDraft.autoRoad && Settings.autoRoadForZones;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return ZoneTool.this.city.getTranslator().translate(2486);
                }
            });
        }
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Zone:" + this.zone.id;
    }

    public ZoneDraft getZone() {
        return this.zone;
    }

    public final RoadDraft getRoadDraft() {
        if (!useAutoRoads()) {
            return null;
        }
        if (this.zone == Zones.getInstance().RESIDENTIAL1 || this.zone == Zones.getInstance().COMMERCIAL1 || this.zone == Zones.getInstance().INDUSTRIAL1) {
            return (RoadDraft) Drafts.get("$road01", RoadDraft.class);
        }
        if (this.zone == Zones.getInstance().FARM) {
            return (RoadDraft) Drafts.get("$dirt_track_00", RoadDraft.class);
        }
        return (RoadDraft) Drafts.get("$road00", RoadDraft.class);
    }

    public final boolean useAutoRoads() {
        ZoneDraft zoneDraft = this.zone;
        return zoneDraft.autoRoad && Settings.autoRoadForZones && zoneDraft.rci;
    }

    public final boolean shouldBuildRoadAt(int i, int i2) {
        if (!useAutoRoads() || !isTileSuitableForRoad(i, i2)) {
            return false;
        }
        int iAbs = Math.abs(i - this.selectedX) + 1;
        int iAbs2 = Math.abs(i2 - this.selectedY) + 1;
        int iSignum = (int) Math.signum(((TwoModesTool) this).drawnTargetX - this.selectedX);
        int iSignum2 = (int) Math.signum(((TwoModesTool) this).drawnTargetY - this.selectedY);
        if (iSignum == 0) {
            iSignum = 1;
        }
        if (iSignum2 == 0) {
            iSignum2 = 1;
        }
        return iAbs % (Settings.roadZoneWidth + 1) == 0 || iAbs2 % (Settings.roadZoneHeight + 1) == 0 || (this.drawnTarget && (i == this.selectedX - iSignum || i2 == this.selectedY - iSignum2));
    }

    public final boolean isTileSuitableForRoad(int i, int i2) {
        return this.city.isValid(i, i2) && this.tiles.getZone(i, i2) == null && !this.tiles.isGroundWater(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        calculatePrices();
        super.drawBefore(engine);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void calculatePrices() {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.ZoneTool.calculatePrices():void");
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(final int i, final int i2, final int i3, final int i4) {
        if (isValid(i, i2, i3, i4) || this.notBuildableBecauseOfPrice) {
            if (this.notBuildableBecauseOfPrice) {
                this.moneyNeededListener.beg((int) (this.price - Math.max(getBudget().getEstate(), 0.0d)), new Runnable() { // from class: info.flowersoft.theotown.tools.ZoneTool$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.finallyBuild(i, i2, i3, i4, true);
                    }
                }, this.zone.id, false);
            } else {
                finallyBuild(i, i2, i3, i4, true);
            }
        }
    }

    public final void finallyBuild(int i, int i2, int i3, int i4, boolean z) {
        int i5;
        int i6;
        captureState(i, i2, i3, i4);
        getBudget().spend(this.price, i3, i4, "build " + this.zone.id);
        int iSignum = (int) Math.signum((float) (i3 - i));
        int iSignum2 = (int) Math.signum((float) (i4 - i2));
        int i7 = 1;
        int i8 = iSignum != 0 ? iSignum : 1;
        int i9 = iSignum2 != 0 ? iSignum2 : 1;
        RoadDraft roadDraft = getRoadDraft();
        RoadBuilder roadBuilder = this.modifier.getRoadBuilder();
        if (roadDraft != null) {
            roadBuilder.setDraft(roadDraft, null);
        }
        IntList intList = new IntList();
        boolean z2 = Settings.roadAutoJoin;
        Settings.roadAutoJoin = true;
        int i10 = i - iSignum;
        int i11 = i10;
        while (i11 != i3 + i8) {
            int i12 = i2 - iSignum2;
            int i13 = i12;
            while (i13 != i4 + i9) {
                if (this.city.isValid(i11, i13)) {
                    if (shouldBuildRoadAt(i11, i13) || i11 == i - i8 || i13 == i2 - i9) {
                        if (useAutoRoads() && this.tiles.getZone(i11, i13) == null) {
                            int i14 = 0;
                            int i15 = i7;
                            while (i15 <= 8) {
                                int iDifferenceX = Direction.differenceX(i15) + i11;
                                int i16 = iSignum2;
                                int iDifferenceY = i13 + Direction.differenceY(i15);
                                int i17 = i8;
                                if (Math.min(i10, i3) <= iDifferenceX && iDifferenceX <= Math.max(i10, i3) && Math.min(i12, i4) <= iDifferenceY && iDifferenceY <= Math.max(i12, i4) && ((shouldBuildRoadAt(iDifferenceX, iDifferenceY) || iDifferenceX == i - i17 || iDifferenceY == i2 - i9) && isTileSuitableForRoad(i11, i13) && isTileSuitableForRoad(iDifferenceX, iDifferenceY))) {
                                    roadBuilder.setLine(i11, i13, iDifferenceX, iDifferenceY);
                                    if (roadBuilder.isBuildable()) {
                                        roadBuilder.build();
                                        i14++;
                                    }
                                }
                                i15 *= 2;
                                i8 = i17;
                                iSignum2 = i16;
                            }
                            i5 = iSignum2;
                            i6 = i8;
                            if (i14 > 0) {
                                intList.add(PackedInt2.pack(i11, i13));
                            }
                        }
                    } else if (this.modifier.isBuildable(this.zone, i11, i13)) {
                        this.modifier.markZone(this.zone, i11, i13);
                    }
                    i5 = iSignum2;
                    i6 = i8;
                } else {
                    i5 = iSignum2;
                    i6 = i8;
                }
                i13 += i9;
                i8 = i6;
                iSignum2 = i5;
                i7 = 1;
            }
            i11 += i8;
            i7 = 1;
        }
        Settings.roadAutoJoin = z2;
        setTrafficLights(intList);
        runPostprocessors(i, i2, i3, i4);
        playSound(Resources.SOUND_BUILD, i3, i4);
        issueMovement();
        endCaptureState();
    }

    public final void setTrafficLights(IntList intList) {
        for (int i = 0; i < intList.size(); i++) {
            int i2 = intList.get(i);
            Road road = this.tiles.getRoad(PackedInt2.unpackX(i2), PackedInt2.unpackY(i2), 0);
            if (road != null && road.shouldHaveTrafficLights()) {
                road.setTrafficLights(Settings.autoTrafficLights);
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void draw(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        Drawer drawer2;
        int i5;
        int i6;
        super.draw(i, i2, drawer);
        Ground ground = this.tiles.getGround(i, i2);
        int i7 = this.mode;
        if (i7 == 0) {
            i3 = i;
            i4 = i2;
            drawer2 = drawer;
            if (((TwoModesTool) this).drawnTargetHover && (i5 = ((TwoModesTool) this).drawnTargetX) == i3 && (i6 = ((TwoModesTool) this).drawnTargetY) == i4) {
                drawer2.engine.setColor(isValid(i5, i6) ? Colors.GREEN : Colors.RED);
                drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
                drawer2.engine.setColor(Colors.WHITE);
            }
        } else if (i7 != 1) {
            i3 = i;
            i4 = i2;
            drawer2 = drawer;
        } else {
            int i8 = this.selectedX;
            if (i == i8 && i2 == this.selectedY) {
                if (this.drawnTarget && !this.drawnTargetValid) {
                    drawer.engine.setColor(Colors.RED);
                }
                i3 = i;
                i4 = i2;
                drawer2 = drawer;
                drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_CHECKER);
                drawer2.engine.setColor(Colors.WHITE);
            } else {
                i3 = i;
                i4 = i2;
                drawer2 = drawer;
                if ((isValidFast(i8, this.selectedY, i3, i4) || this.notBuildableBecauseOfPrice) && isTileInvolved(i3, i4)) {
                    Engine engine = drawer2.engine;
                    boolean zShouldBuildRoadAt = shouldBuildRoadAt(i3, i4);
                    int i9 = Resources.FRAME_TOOLMARK_GREEN_DOTTED;
                    if (zShouldBuildRoadAt) {
                        if (this.notBuildableBecauseOfPrice) {
                            i9 = Resources.FRAME_TOOLMARK_RED_DOTTED;
                        } else {
                            i9 = Resources.FRAME_TOOLMARK_BLUE_DOTTED;
                        }
                    } else if (this.notBuildableBecauseOfPrice) {
                        i9 = Resources.FRAME_TOOLMARK_YELLOW_DOTTED;
                    }
                    engine.setColor((i3 + i4) % 2 == 0 ? Colors.WHITE : Colors.LIGHT_GRAY);
                    if (!zShouldBuildRoadAt && !this.notBuildableBecauseOfPrice) {
                        engine.setTransparency(100);
                        drawTileOverlayFrame(drawer2, i3, i4, ground, this.zone.frames[0]);
                        engine.setTransparency(255);
                    }
                    drawTileOverlayFrame(drawer2, i3, i4, ground, i9);
                    engine.setColor(Colors.WHITE);
                }
            }
        }
        drawAreaTextMarker(drawer2, i3, i4);
    }

    public final int getEffectiveMaxSize() {
        return infiniteRange() ? 64 : 14;
    }

    private boolean isValidFast(int i, int i2, int i3, int i4) {
        this.notBuildableBecauseOfPrice = false;
        if (Math.max(Math.abs(i3 - i), Math.abs(i4 - i2)) + 1 > getEffectiveMaxSize() || !isValid(i, i2) || !isValid(i3, i4)) {
            return false;
        }
        this.price = this.prices[r1 + 64 + ((r3 + 64) * Sdk.SDKError.Reason.EMPTY_TPAT_ERROR_VALUE)];
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        this.notBuildableBecauseOfPrice = false;
        this.price = this.modifier.getPrice(this.zone, 1);
        if (!this.modifier.isBuildable(this.zone, i, i2) && !shouldBuildRoadAt(i, i2)) {
            return false;
        }
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = 0L;
        this.notBuildableBecauseOfPrice = false;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (Math.max(Math.abs(i5), Math.abs(i6)) + 1 > getEffectiveMaxSize()) {
            return false;
        }
        int iSignum = (int) Math.signum(i5);
        int iSignum2 = (int) Math.signum(i6);
        int i7 = iSignum != 0 ? iSignum : 1;
        int i8 = iSignum2 != 0 ? iSignum2 : 1;
        RoadDraft roadDraft = getRoadDraft();
        RoadBuilder roadBuilder = this.modifier.getRoadBuilder();
        if (roadDraft != null) {
            roadBuilder.setDraft(roadDraft, null);
        }
        if (!this.city.isValid(i, i2) || !this.city.isValid(i3, i4)) {
            return false;
        }
        int i9 = 0;
        for (int i10 = i - iSignum; i10 != i3 + i7; i10 += i7) {
            for (int i11 = i2 - iSignum2; i11 != i4 + i8; i11 += i8) {
                if (this.city.isValid(i10, i11)) {
                    if (shouldBuildRoadAt(i10, i11) || i10 == i - i7 || i11 == i2 - i8) {
                        roadBuilder.setLine(i10, i11, i10, i11);
                        roadBuilder.setMaxLevel(0);
                        if (useAutoRoads() && roadBuilder.isBuildable()) {
                            this.price += roadBuilder.getPrice();
                        }
                    } else if (this.modifier.isBuildable(this.zone, i10, i11) && this.tiles.getZone(i10, i11) != this.zone) {
                        i9++;
                    }
                }
            }
        }
        this.price += this.modifier.getPrice(this.zone, i9);
        if (!this.modifier.isBuildable(this.zone, i, i2)) {
            return false;
        }
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isTileInvolved(int i, int i2) {
        if (super.isTileInvolved(i, i2)) {
            return true;
        }
        if (this.drawnTarget) {
            int iSignum = (int) Math.signum(((TwoModesTool) this).drawnTargetX - this.selectedX);
            int iSignum2 = (int) Math.signum(((TwoModesTool) this).drawnTargetY - this.selectedY);
            int i3 = iSignum != 0 ? iSignum : 1;
            int i4 = iSignum2 != 0 ? iSignum2 : 1;
            if (shouldBuildRoadAt(i, i2) && iSignum != 0 && iSignum2 != 0 && (((i == this.selectedX - i3 && Math.min(this.selectedY, ((TwoModesTool) this).drawnTargetY) <= i2 && i2 <= Math.max(this.selectedY, ((TwoModesTool) this).drawnTargetY)) || ((i2 == this.selectedY - i4 && Math.min(this.selectedX, ((TwoModesTool) this).drawnTargetX) <= i && i <= Math.max(this.selectedX, ((TwoModesTool) this).drawnTargetX) && this.drawnTargetValid) || (i == this.selectedX - i3 && i2 == this.selectedY - i4))) && this.drawnTargetValid)) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        ZoneDraft zoneDraft = this.zone;
        int[] iArr = zoneDraft.previewFrames;
        return iArr != null ? iArr[0] : zoneDraft.frames[0];
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.zone);
    }
}
