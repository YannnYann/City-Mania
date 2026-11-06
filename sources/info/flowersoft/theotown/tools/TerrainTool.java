package info.flowersoft.theotown.tools;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.MathUtil;

/* JADX INFO: loaded from: classes4.dex */
public class TerrainTool extends TwoModesTool {
    public final int MAX_SIZE;
    public final GroundDraft draft;
    public int heightAdjust;
    public final int level;
    public int price;
    public final int[] prices;
    public final boolean setToWater;

    public static /* synthetic */ int access$028(TerrainTool terrainTool, int i) {
        int i2 = terrainTool.heightAdjust * i;
        terrainTool.heightAdjust = i2;
        return i2;
    }

    public static /* synthetic */ int access$036(TerrainTool terrainTool, int i) {
        int i2 = terrainTool.heightAdjust / i;
        terrainTool.heightAdjust = i2;
        return i2;
    }

    public TerrainTool(boolean z) {
        int i = infiniteRange() ? Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE : 14;
        this.MAX_SIZE = i;
        this.prices = new int[((i * 2) + 1) * ((i * 2) + 1)];
        this.heightAdjust = 100;
        this.setToWater = z;
        this.draft = z ? (GroundDraft) Drafts.get("$water00", GroundDraft.class) : (GroundDraft) Drafts.get("$ground00", GroundDraft.class);
        this.level = 0;
        addActions();
    }

    public TerrainTool(GroundDraft groundDraft) {
        int i = infiniteRange() ? Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE : 14;
        this.MAX_SIZE = i;
        this.prices = new int[((i * 2) + 1) * ((i * 2) + 1)];
        this.heightAdjust = 100;
        this.setToWater = groundDraft.isWater;
        this.level = groundDraft.level;
        this.draft = groundDraft;
        addActions();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Terrain";
    }

    public final void addActions() {
        if (this.setToWater) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.TerrainTool.1
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_LEVEL_DOWN;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdTerrainDown";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    TerrainTool.access$028(TerrainTool.this, 2);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return TerrainTool.this.heightAdjust < 2000;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return TerrainTool.this.city.getTranslator().translate(505);
                }
            });
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.TerrainTool.2
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_LEVEL_UP;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdTerrainUp";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    TerrainTool.access$036(TerrainTool.this, 2);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return TerrainTool.this.heightAdjust > 100;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return TerrainTool.this.city.getTranslator().translate(972);
                }
            });
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.TerrainTool.3
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_RIVER;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdTerrainSmooth";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    Settings.smoothWaterHeight = !Settings.smoothWaterHeight;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return TerrainTool.this.city.getTranslator().translate(1488);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return Settings.smoothWaterHeight;
                }
            });
        }
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        super.drawOnTop(i, i2, drawer);
        if (this.mode == 1 && isValidFast(this.selectedX, this.selectedY, i, i2) && isTileInvolved(i, i2)) {
            Ground ground = this.tiles.getGround(i, i2);
            if (this.modifier.isTerrainBuildable(this.setToWater, i, i2)) {
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
            } else {
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        GroundDraft groundDraft;
        int i8;
        int i9 = i;
        int i10 = i2;
        captureState(i, i2, i3, i4);
        int iMin = Math.min(i9, i3);
        int iMin2 = Math.min(i10, i4);
        int i11 = i3 - i9;
        int iSignum = (int) Math.signum(i11);
        int i12 = i4 - i10;
        int iSignum2 = (int) Math.signum(i12);
        int i13 = 1;
        if (iSignum == 0) {
            iSignum = 1;
        }
        if (iSignum2 == 0) {
            iSignum2 = 1;
        }
        int iAbs = Math.abs(i11) + 1;
        int iAbs2 = Math.abs(i12) + 1;
        this.price = 0;
        int i14 = 0;
        while (i9 != i3 + iSignum) {
            int i15 = i10;
            while (i15 != i4 + iSignum2) {
                Ground ground = this.tiles.getGround(i9, i15);
                GroundDraft groundDraft2 = this.level == i13 ? this.tiles.getGroundDraft2(i9, i15) : ground.getDraft();
                if (this.level == 0) {
                    if (this.modifier.isTerrainBuildable(this.setToWater, i9, i15)) {
                        groundDraft = groundDraft2;
                        i7 = iSignum;
                        this.price = (int) (((long) this.price) + this.modifier.getPriceForTerrain(this.setToWater));
                        this.modifier.buildTerrain(this.setToWater, i9, i15, null);
                        i14++;
                    } else {
                        i7 = iSignum;
                        groundDraft = groundDraft2;
                    }
                    GroundDraft groundDraft3 = this.draft;
                    if (groundDraft3 != null && groundDraft3.isWater == ground.isWater() && groundDraft != this.draft) {
                        if (!this.modifier.isTerrainBuildable(this.setToWater, i9, i15)) {
                            this.price = (int) (((long) this.price) + (this.modifier.getPriceForTerrain(this.setToWater) / 4));
                        }
                        ground.setDraft(this.draft);
                        ground.setFrame(Resources.RND.nextInt(this.draft.frames.length));
                    }
                    if (this.setToWater == ground.isWater()) {
                        if (this.setToWater) {
                            i8 = 0;
                            ground.height = (short) Math.min((int) ground.height, 0);
                        } else {
                            i8 = 0;
                        }
                        if (!this.setToWater) {
                            ground.height = (short) Math.max((int) ground.height, i8);
                        }
                        int i16 = this.heightAdjust;
                        short s = ground.height;
                        if (this.setToWater) {
                            i16 = -i16;
                        }
                        ground.height = (short) (s + i16);
                    }
                    this.tiles.setGroundDraft2(i9, i15, null);
                    this.tiles.setGroundFrame2(i9, i15, 0);
                } else {
                    i7 = iSignum;
                    if (groundDraft2 != this.draft) {
                        boolean zIsWater = ground.isWater();
                        boolean z = this.setToWater;
                        if (zIsWater == z) {
                            this.price = (int) (((long) this.price) + this.modifier.getPriceForTerrain(z));
                            i14++;
                            this.tiles.setGroundDraft2(i9, i15, this.draft);
                            this.tiles.setGroundFrame2(i9, i15, Resources.RND.nextInt(this.draft.frames.length));
                        }
                    }
                }
                i15 += iSignum2;
                iSignum = i7;
                i13 = 1;
            }
            i9 += iSignum;
            i10 = i2;
            i13 = 1;
        }
        getBudget().spend(this.price, i3, i4, "terrain " + this.draft);
        if (Settings.smoothWaterHeight) {
            for (int i17 = 0; i17 < 3; i17++) {
                int i18 = iMin2 - 3;
                while (true) {
                    int i19 = iMin2 + iAbs2;
                    if (i18 < i19 + 3) {
                        int i20 = iMin - 3;
                        while (true) {
                            int i21 = iMin + iAbs;
                            if (i20 < i21 + 3) {
                                if (!this.city.isValid(i20, i18) || (i20 >= iMin && i18 >= iMin2 && i20 < i21 && i18 < i19)) {
                                    i5 = i18;
                                    i6 = i19;
                                } else {
                                    Ground ground2 = this.tiles.getGround(i20, i18);
                                    int i22 = ground2.height;
                                    i5 = i18;
                                    int i23 = 1;
                                    int i24 = 1;
                                    while (i23 <= 8) {
                                        int iDifferenceX = Direction.differenceX(i23) + i20;
                                        int i25 = i19;
                                        int iDifferenceY = i5 + Direction.differenceY(i23);
                                        if (this.city.isValid(iDifferenceX, iDifferenceY)) {
                                            i22 += this.tiles.getGround(iDifferenceX, iDifferenceY).height;
                                            i24++;
                                        }
                                        i23 *= 2;
                                        i19 = i25;
                                    }
                                    i6 = i19;
                                    int i26 = i22 / i24;
                                    if (ground2.isWater()) {
                                        ground2.height = (short) Math.min(0, i26);
                                    } else {
                                        ground2.height = (short) Math.max(0, i26);
                                    }
                                }
                                i20++;
                                i19 = i6;
                                i18 = i5;
                            }
                        }
                        i18++;
                    }
                }
            }
        }
        if (i14 > 0) {
            if (this.setToWater) {
                this.modifier.removeFenceWithin(iMin, iMin2, iAbs, iAbs2);
            }
            if (this.city.canAchieve()) {
                TheoTown.gamesService.unlockAchievement("terraform");
            }
            if (this.setToWater) {
                playSound(Resources.SOUND_BUILD_WATER, i3, i4, 1, 1);
            } else {
                playSound(Resources.SOUND_BUILD_LAND, i3, i4, 1, 1);
            }
            issueMovement();
            endCaptureState();
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        super.drawBefore(engine);
        calculatePrices();
    }

    public final void calculatePrices() {
        long j;
        long priceForTerrain;
        if (this.mode != 1) {
            return;
        }
        int i = -this.MAX_SIZE;
        while (true) {
            int i2 = this.MAX_SIZE;
            if (i > i2) {
                return;
            }
            int i3 = -i2;
            while (true) {
                int i4 = this.MAX_SIZE;
                if (i3 <= i4) {
                    int i5 = i3 <= 0 ? (-i4) - i3 : i3;
                    int i6 = i <= 0 ? (-i4) - i : i;
                    int i7 = i5 + i4;
                    int i8 = i4 + i6;
                    int i9 = this.selectedX + i5;
                    int i10 = this.selectedY + i6;
                    if (this.city.isValid(i9, i10)) {
                        int i11 = -MathUtil.signum(i5);
                        int i12 = -MathUtil.signum(i6);
                        int i13 = i11 != 0 ? this.prices[i7 + i11 + (((this.MAX_SIZE * 2) + 1) * i8)] : 0;
                        if (i12 != 0) {
                            i13 += this.prices[((i8 + i12) * ((this.MAX_SIZE * 2) + 1)) + i7];
                        }
                        if (i11 * i12 != 0) {
                            i13 -= this.prices[(i11 + i7) + ((i12 + i8) * ((this.MAX_SIZE * 2) + 1))];
                        }
                        Ground ground = this.tiles.getGround(i9, i10);
                        if (this.level == 0) {
                            if (this.modifier.isTerrainBuildable(this.setToWater, i9, i10) || ground.getDraft() != this.draft) {
                                j = i13;
                                priceForTerrain = this.modifier.getPriceForTerrain(this.setToWater);
                                i13 = (int) (j + priceForTerrain);
                            }
                            this.prices[i7 + (i8 * ((this.MAX_SIZE * 2) + 1))] = i13;
                        } else {
                            if (ground.isWater() == this.setToWater && this.tiles.getGroundDraft2(i9, i10) != this.draft) {
                                j = i13;
                                priceForTerrain = this.modifier.getPriceForTerrain(this.setToWater);
                                i13 = (int) (j + priceForTerrain);
                            }
                            this.prices[i7 + (i8 * ((this.MAX_SIZE * 2) + 1))] = i13;
                        }
                    }
                    i3++;
                }
            }
            i++;
        }
    }

    public final boolean isValidFast(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int iMax = Math.max(Math.abs(i5), Math.abs(i6)) + 1;
        int i7 = this.MAX_SIZE;
        if (iMax > i7) {
            return false;
        }
        this.price = this.prices[i5 + i7 + ((i6 + i7) * ((i7 * 2) + 1))];
        return getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        return getBudget().canSpend(this.modifier.getPriceForTerrain(this.setToWater));
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = 0;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (Math.max(Math.abs(i5), Math.abs(i6)) + 1 > this.MAX_SIZE) {
            return false;
        }
        int iSignum = (int) Math.signum(i5);
        int iSignum2 = (int) Math.signum(i6);
        if (iSignum == 0) {
            iSignum = 1;
        }
        int i7 = iSignum2 != 0 ? iSignum2 : 1;
        while (i != i3 + iSignum) {
            for (int i8 = i2; i8 != i4 + i7; i8 += i7) {
                if (this.modifier.isTerrainBuildable(this.setToWater, i, i8)) {
                    this.price = (int) (((long) this.price) + this.modifier.getPriceForTerrain(this.setToWater));
                }
            }
            i += iSignum;
        }
        return getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_TERRAIN;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        String title = new DraftLocalizer(this.city).getTitle(getId(this.setToWater));
        if (!this.setToWater) {
            return title;
        }
        return title + ", " + ((-this.heightAdjust) / 100);
    }

    public static String getId(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("$terrain");
        sb.append(z ? "water" : "land");
        return sb.toString();
    }
}
