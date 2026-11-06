package info.flowersoft.theotown.tools;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.CursorType;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TwoModesTool extends BuildTool {
    public boolean drawnTarget;
    public boolean drawnTargetHover;
    public boolean drawnTargetPending;
    public boolean drawnTargetValid;
    public int drawnTargetX;
    public int drawnTargetY;
    public boolean hasToBeLine;
    public boolean notBuildableBecauseOfPrice;
    public int selectedX;
    public int selectedY;
    public int lineWidth = 1;
    public int additionalValidMapSize = 0;
    public int mode = 0;

    public boolean allowsDiagonal() {
        return false;
    }

    public abstract void build(int i, int i2, int i3, int i4);

    public void cancel(int i, int i2, int i3, int i4) {
    }

    public abstract boolean isValid(int i, int i2);

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void undo(boolean z) {
        cancelMove();
        super.undo(z);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        cancelMove();
        super.redo(z);
    }

    public void setHasToBeLine(boolean z) {
        this.hasToBeLine = z;
    }

    public void setLineWidth(int i) {
        this.lineWidth = i;
    }

    public void playSound(int i, int i2, int i3) {
        int iMin = Math.min(this.selectedX, i2);
        int iMin2 = Math.min(this.selectedY, i3);
        playSound(i, iMin, iMin2, (Math.max(this.selectedX, i2) - iMin) + 1, (Math.max(this.selectedY, i3) - iMin2) + 1);
    }

    public void drawOverlayText(Drawer drawer, String str) {
        Engine engine = drawer.engine;
        Drawing.getInstance().drawOutlinedText(str, drawer.x + ((drawer.getShiftX() + 16.0f) * engine.getScaleX()), ((drawer.getShiftY() - (drawer.terrainHeight * 12.0f)) * engine.getScaleY()) + drawer.y, Resources.skin.fontSmall, Colors.BLACK, engine, 0.5f, 0.8f);
    }

    public void drawAreaTextMarker(Drawer drawer, int i, int i2) {
        if (this.mode != 1) {
            return;
        }
        if (!(i == this.selectedX && i2 == this.selectedY) && isTileInvolved(i, i2) && drawer.lod.drawRoadLength()) {
            Engine engine = drawer.engine;
            int i3 = this.selectedX;
            if (i == i3 && (i2 - this.selectedY) % 2 != 0) {
                drawOverlayText(drawer, "" + (Math.abs(i2 - this.selectedY) + 1));
            } else if (i2 == this.selectedY && (i - i3) % 2 != 0) {
                drawOverlayText(drawer, "" + (Math.abs(i - this.selectedX) + 1));
            } else if (isDrawnTarget(i, i2)) {
                drawOverlayText(drawer, (Math.abs(i - this.selectedX) + 1) + "x" + (Math.abs(i2 - this.selectedY) + 1));
            }
            engine.setColor(Colors.WHITE);
        }
    }

    public void drawOverlay(Drawer drawer, int i, int i2, int i3, int i4) {
        if (isTileInvolved(i, i2)) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            boolean z = Math.abs(i - this.selectedX) == Math.abs(i2 - this.selectedY);
            boolean zIsDrawnTarget = isDrawnTarget(i, i2);
            boolean z2 = i == this.selectedX || i2 == this.selectedY;
            Engine engine = drawer.engine;
            if (i3 > 0) {
                engine.setColor((i + i2) % 2 == 0 ? Colors.WHITE : Colors.LIGHT_GRAY);
                if (!z2 && !zIsDrawnTarget) {
                    engine.setTransparency(100);
                }
                drawTileOverlayFrame(drawer, i, i2, ground, i3);
                engine.setTransparency(255);
            }
            if (drawer.lod.drawRoadLength() && i4 > 0 && ((z2 || z || zIsDrawnTarget) && ((i4 < 100 && i4 % 2 != 0) || zIsDrawnTarget))) {
                engine.setColor(255, 255, 255);
                drawOverlayText(drawer, Integer.toString(i4 + 1));
            }
            engine.setColor(Colors.WHITE);
        }
    }

    public void drawHelperLines(int i, int i2, Drawer drawer) {
        if ((this.drawnTarget || this.drawnTargetHover) && Math.max(Math.abs(this.drawnTargetX - i), Math.abs(this.drawnTargetY - i2)) % 2 == 0) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            Engine engine = drawer.engine;
            engine.setColor(Colors.WHITE);
            if (this.drawnTargetX == i || this.drawnTargetY == i2) {
                engine.setTransparency(20);
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_WHITE);
            } else if (allowsDiagonal() && Math.abs(this.drawnTargetX - i) == Math.abs(this.drawnTargetY - i2)) {
                engine.setTransparency(5);
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_WHITE);
            }
            engine.setTransparency(255);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (this.drawnTargetPending) {
            cancelMove();
            return;
        }
        if (this.drawnTarget && !this.drawnTargetHover) {
            cancelMove();
        }
        int i5 = this.mode;
        if (i5 == 0) {
            if (isValid(i, i2) || this.notBuildableBecauseOfPrice) {
                this.mode = 1;
                this.selectedX = i;
                this.selectedY = i2;
                return;
            }
            return;
        }
        if (i5 != 1) {
            return;
        }
        if (this.hasToBeLine) {
            int i6 = i - this.selectedX;
            int i7 = i2 - this.selectedY;
            int iAbs = Math.abs(i6);
            int iAbs2 = Math.abs(i7);
            if (this.lineWidth == 1) {
                int[] iArrNormalizeLine = normalizeLine(this.selectedX, this.selectedY, i, i2);
                int i8 = iArrNormalizeLine[0];
                i2 = iArrNormalizeLine[1];
                i = i8;
            } else {
                int iMax = Math.max(iAbs, iAbs2) + 1;
                int i9 = this.lineWidth;
                if (iMax > i9) {
                    if (iAbs > iAbs2) {
                        if (Math.abs((i9 - 1) - i7) == 1) {
                            i7 = this.lineWidth - 1;
                        } else if (Math.abs((1 - this.lineWidth) - i7) == 1) {
                            i7 = 1 - this.lineWidth;
                        }
                    } else if (iAbs2 > iAbs) {
                        if (Math.abs((i9 - 1) - i6) == 1) {
                            i6 = this.lineWidth - 1;
                        } else if (Math.abs((1 - this.lineWidth) - i6) == 1) {
                            i6 = 1 - this.lineWidth;
                        }
                    }
                    i = this.selectedX + i6;
                    i2 = this.selectedY + i7;
                }
            }
        }
        if (isValid(this.selectedX, this.selectedY, i, i2) || this.notBuildableBecauseOfPrice) {
            build(this.selectedX, this.selectedY, i, i2);
        } else {
            cancel(this.selectedX, this.selectedY, i, i2);
        }
        this.mode = 0;
    }

    public boolean isValid(int i, int i2, int i3, int i4) {
        this.notBuildableBecauseOfPrice = false;
        int iAbs = Math.abs(i3 - i);
        int iAbs2 = Math.abs(i4 - i2);
        if (!this.hasToBeLine || Math.min(iAbs, iAbs2) + 1 == this.lineWidth) {
            return true;
        }
        if (allowsDiagonal()) {
            boolean z = this.drawnTarget && !(this.drawnTargetX == i3 && this.drawnTargetY == i4);
            if ((Math.max(iAbs, iAbs2) - Math.min(iAbs, iAbs2) == this.lineWidth || iAbs == iAbs2) && ((iAbs >= 2 && iAbs2 >= 2) || z)) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean canBeginMove(float f, float f2, int i, int i2, float f3, float f4) {
        return this.mode == 0 && isValid(i, i2) && !this.drawnTargetPending && Settings.supportDrawInTwoModeTools;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void beginMove(int i, int i2, float f, float f2) {
        this.drawnTargetPending = false;
        if (isValid(i, i2) && this.mode == 0) {
            this.selectedX = i;
            this.selectedY = i2;
            this.mode = 1;
            this.drawnTarget = true;
            this.drawnTargetHover = false;
        }
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void endMove() {
        if (this.drawnTarget) {
            if (isValid(this.selectedX, this.selectedY, this.drawnTargetX, this.drawnTargetY)) {
                if (!this.drawnTargetHover) {
                    this.drawnTargetPending = true;
                    return;
                } else {
                    finishMove();
                    return;
                }
            }
            cancelMove();
        }
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void finishMove() {
        if (isValid(this.selectedX, this.selectedY, this.drawnTargetX, this.drawnTargetY)) {
            build(this.selectedX, this.selectedY, this.drawnTargetX, this.drawnTargetY);
        }
        cancelMove();
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void cancelMove() {
        this.mode = 0;
        this.drawnTarget = false;
        this.drawnTargetPending = false;
        this.drawnTargetHover = false;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean close() {
        int i = this.mode;
        cancelMove();
        return i == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] normalizeLine(int r7, int r8, int r9, int r10) {
        /*
            r6 = this;
            int r7 = r9 - r7
            int r8 = r10 - r8
            int r0 = java.lang.Math.abs(r7)
            int r1 = java.lang.Math.abs(r8)
            if (r7 == 0) goto L6f
            if (r8 == 0) goto L6f
            int r2 = r0 + r1
            r3 = 2
            if (r2 <= r3) goto L6f
            int r4 = java.lang.Math.min(r0, r1)
            r5 = 5
            if (r4 < r5) goto L2c
            boolean r4 = r6.allowsDiagonal()
            if (r4 == 0) goto L6f
            int r4 = r0 - r1
            int r4 = java.lang.Math.abs(r4)
            r5 = 8
            if (r4 >= r5) goto L6f
        L2c:
            boolean r9 = r6.allowsDiagonal()
            r10 = 0
            if (r9 == 0) goto L65
            int r9 = r1 * 2
            if (r0 <= r9) goto L39
        L37:
            r8 = r10
            goto L68
        L39:
            int r9 = r0 * 2
            if (r1 <= r9) goto L3f
        L3d:
            r7 = r10
            goto L68
        L3f:
            float r7 = (float) r7
            float r7 = java.lang.Math.signum(r7)
            int r7 = (int) r7
            int r2 = r2 + 1
            int r7 = r7 * r2
            int r7 = r7 / r3
            float r8 = (float) r8
            float r8 = java.lang.Math.signum(r8)
            int r8 = (int) r8
            int r8 = r8 * r2
            int r8 = r8 / r3
            if (r0 >= r1) goto L5b
            float r7 = (float) r7
            float r9 = java.lang.Math.signum(r7)
            float r7 = r7 - r9
            int r7 = (int) r7
            goto L68
        L5b:
            if (r1 >= r0) goto L68
            float r8 = (float) r8
            float r9 = java.lang.Math.signum(r8)
            float r8 = r8 - r9
            int r8 = (int) r8
            goto L68
        L65:
            if (r0 >= r1) goto L37
            goto L3d
        L68:
            int r9 = r6.selectedX
            int r9 = r9 + r7
            int r7 = r6.selectedY
            int r10 = r7 + r8
        L6f:
            int[] r7 = new int[]{r9, r10}
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.TwoModesTool.normalizeLine(int, int, int, int):int[]");
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public CursorType getCursorType() {
        if (this.mode == 0) {
            if (!isValid(this.drawnTargetX, this.drawnTargetY)) {
                return CursorType.NotAllowed;
            }
            return getBuildableCursor();
        }
        if (!this.drawnTargetValid) {
            return CursorType.NotAllowed;
        }
        if (this.notBuildableBecauseOfPrice) {
            return CursorType.NoMoney;
        }
        return getBuildableCursor();
    }

    public CursorType getBuildableCursor() {
        return CursorType.Build;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean updateMove(float f, float f2, float f3, float f4, int i, int i2, float f5, float f6) {
        if (this.lineWidth == 1 && this.hasToBeLine) {
            int[] iArrNormalizeLine = normalizeLine(this.selectedX, this.selectedY, i, i2);
            i = iArrNormalizeLine[0];
            i2 = iArrNormalizeLine[1];
        }
        this.drawnTargetX = Math.max(Math.min(i, (this.city.getWidth() - 1) + this.additionalValidMapSize), 0);
        int iMax = Math.max(Math.min(i2, (this.city.getHeight() - 1) + this.additionalValidMapSize), 0);
        this.drawnTargetY = iMax;
        this.drawnTargetValid = isValid(this.selectedX, this.selectedY, this.drawnTargetX, iMax) || this.notBuildableBecauseOfPrice;
        return this.drawnTarget;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        int i3 = this.mode;
        if (i3 == 1 && !z && !this.drawnTargetPending) {
            if (!this.drawnTarget) {
                this.drawnTarget = true;
                this.drawnTargetHover = true;
            }
            updateMove(f3, f4, f, f2, i, i2, f, f2);
            return;
        }
        if (i3 == 0 && !z) {
            this.drawnTargetHover = true;
            this.drawnTargetX = i;
            this.drawnTargetY = i2;
            return;
        }
        this.drawnTargetHover = false;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void cancelMouse() {
        if (this.drawnTargetHover) {
            this.drawnTarget = false;
            this.drawnTargetHover = false;
        }
    }

    public boolean moveIsPending() {
        return this.drawnTargetPending;
    }

    public int getDrawnTargetX() {
        return this.drawnTargetX;
    }

    public int getDrawnTargetY() {
        return this.drawnTargetY;
    }

    public boolean isDrawnTarget(int i, int i2) {
        return this.drawnTarget && this.drawnTargetValid && i == this.drawnTargetX && i2 == this.drawnTargetY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        if (r9 != r10) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isTileInvolved(int r9, int r10) {
        /*
            r8 = this;
            boolean r0 = r8.drawnTarget
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L72
            boolean r0 = r8.drawnTargetValid
            if (r0 == 0) goto L72
            int r0 = r8.selectedX
            int r9 = r9 - r0
            int r3 = r8.selectedY
            int r10 = r10 - r3
            int r4 = r8.drawnTargetX
            int r4 = r4 - r0
            int r0 = r8.drawnTargetY
            int r0 = r0 - r3
            int r3 = r9 * r4
            if (r3 < 0) goto L71
            int r5 = java.lang.Math.abs(r9)
            int r6 = java.lang.Math.abs(r4)
            if (r5 > r6) goto L71
            int r5 = r10 * r0
            if (r5 < 0) goto L71
            int r6 = java.lang.Math.abs(r10)
            int r7 = java.lang.Math.abs(r0)
            if (r6 <= r7) goto L33
            goto L71
        L33:
            if (r4 == 0) goto L72
            if (r0 == 0) goto L72
            boolean r6 = r8.hasToBeLine
            if (r6 == 0) goto L72
            boolean r6 = r8.allowsDiagonal()
            if (r6 == 0) goto L72
            int r9 = java.lang.Math.abs(r9)
            int r10 = java.lang.Math.abs(r10)
            int r4 = java.lang.Math.abs(r4)
            int r0 = java.lang.Math.abs(r0)
            if (r3 < 0) goto L71
            if (r5 >= 0) goto L56
            goto L71
        L56:
            if (r4 <= r0) goto L5a
            r0 = r1
            goto L5b
        L5a:
            r0 = r2
        L5b:
            if (r0 == 0) goto L5f
            if (r9 < r10) goto L63
        L5f:
            if (r0 != 0) goto L64
            if (r9 <= r10) goto L64
        L63:
            return r2
        L64:
            int r0 = java.lang.Math.max(r9, r10)
            int r3 = java.lang.Math.min(r9, r10)
            int r0 = r0 - r3
            if (r0 == r1) goto L72
            if (r9 == r10) goto L72
        L71:
            return r2
        L72:
            boolean r9 = r8.drawnTarget
            if (r9 == 0) goto L7c
            boolean r9 = r8.drawnTargetValid
            if (r9 == 0) goto L7b
            goto L7c
        L7b:
            return r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.TwoModesTool.isTileInvolved(int, int):boolean");
    }

    public boolean infiniteRange() {
        return Gdx.app.getType() == Application.ApplicationType.Desktop;
    }
}
