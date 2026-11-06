package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.MathUtil;

/* JADX INFO: loaded from: classes4.dex */
public class TreeTool extends TwoModesTool {
    public final int MAX_SIZE;
    public final TreeDraft draft;
    public final int frame;
    public long price;
    public final int[] prices;

    public TreeTool(TreeDraft treeDraft, int i) {
        int i2 = infiniteRange() ? 64 : 14;
        this.MAX_SIZE = i2;
        this.prices = new int[((i2 * 2) + 1) * ((i2 * 2) + 1)];
        this.draft = treeDraft;
        this.frame = i;
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Tree:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        int iSignum = (int) Math.signum(i3 - i);
        int iSignum2 = (int) Math.signum(i4 - i2);
        if (iSignum == 0) {
            iSignum = 1;
        }
        if (iSignum2 == 0) {
            iSignum2 = 1;
        }
        this.price = 0L;
        int i5 = 0;
        while (i != i3 + iSignum) {
            for (int i6 = i2; i6 != i4 + iSignum2; i6 += iSignum2) {
                if (this.modifier.isBuildable(this.draft, i, i6)) {
                    this.price += this.modifier.getPrice(this.draft, i, i6);
                    Tree treeBuild = this.modifier.build(this.draft, i, i6);
                    int i7 = this.frame;
                    if (i7 >= 0) {
                        treeBuild.setFrame(i7);
                    }
                    i5++;
                }
            }
            i += iSignum;
        }
        getBudget().spend(this.price, i3, i4, "build " + this.draft.id);
        if (i5 > 0) {
            playSound(Resources.SOUND_BUILD, i3, i4, 1, 1);
            issueMovement();
        }
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        super.drawBefore(engine);
        calculatePrices();
    }

    private void calculatePrices() {
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
                        int price = i11 != 0 ? this.prices[i7 + i11 + (((this.MAX_SIZE * 2) + 1) * i8)] : 0;
                        if (i12 != 0) {
                            price += this.prices[((i8 + i12) * ((this.MAX_SIZE * 2) + 1)) + i7];
                        }
                        if (i11 * i12 != 0) {
                            price -= this.prices[(i11 + i7) + ((i12 + i8) * ((this.MAX_SIZE * 2) + 1))];
                        }
                        if (this.modifier.isBuildable(this.draft, i9, i10)) {
                            price = (int) (((long) price) + this.modifier.getPrice(this.draft, i9, i10));
                        }
                        this.prices[i7 + (i8 * ((this.MAX_SIZE * 2) + 1))] = price;
                    }
                    i3++;
                }
            }
            i++;
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public void drawTree(int i, int i2, Tree tree, Drawer drawer) {
        tree.draw(drawer);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        Drawer drawer2;
        Ground ground = this.tiles.getGround(i, i2);
        int i5 = this.mode;
        if (i5 == 0) {
            i3 = i;
            i4 = i2;
            drawer2 = drawer;
            if (!isValid(i3, i4)) {
                drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_BLUE_DOTTED);
            }
        } else if (i5 != 1) {
            i3 = i;
            i4 = i2;
            drawer2 = drawer;
        } else if (i == this.selectedX && i2 == this.selectedY) {
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
            if (!isValid(i3, i4) && isTileInvolved(i3, i4)) {
                drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_BLUE_DOTTED);
            } else if (isValidFast(this.selectedX, this.selectedY, i3, i4) && isTileInvolved(i3, i4)) {
                drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
            }
        }
        drawAreaTextMarker(drawer2, i3, i4);
    }

    private boolean isValidFast(int i, int i2, int i3, int i4) {
        if (Math.max(Math.abs(i3 - i), Math.abs(i4 - i2)) + 1 > this.MAX_SIZE) {
            return false;
        }
        this.price = this.prices[r3 + r2 + ((r4 + r2) * ((r2 * 2) + 1))];
        return getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        this.price = this.modifier.getPrice(this.draft, i, i2);
        return this.modifier.isBuildable(this.draft, i, i2) && getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = 0L;
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
                if (this.modifier.isBuildable(this.draft, i, i8)) {
                    this.price += this.modifier.getPrice(this.draft, i, i8);
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
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }
}
