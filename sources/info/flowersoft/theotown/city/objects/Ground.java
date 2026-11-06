package info.flowersoft.theotown.city.objects;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.Hashing;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Ground {
    public static GroundDraft DEFAULT_WATER_DRAFT;
    public static final float[] EDGE_LEFT_BOTTOM_UVS;
    public static final float[] EDGE_LEFT_TOP_UVS;
    public static final float[] EDGE_LEFT_UVS;
    public static final float[] EDGE_LEFT_WATER_TOP_UVS;
    public static final float[] EDGE_RIGHT_BOTTOM_UVS;
    public static final float[] EDGE_RIGHT_TOP_UVS;
    public static final float[] EDGE_RIGHT_UVS;
    public static final float[] EDGE_RIGHT_WATER_TOP_UVS;
    public static final float[] TILE_UVS_INNER;
    public static final float[] TILE_UVS_INNER_HANDLE;
    public byte baseTerrainHeight;
    public byte borderFrame = -1;
    public GroundDraft draft;
    public byte frame;
    public short height;
    public byte heightDX;
    public byte heightDY;
    public byte terrainHeights;
    public static final Color COLOR_BUF = new Color(0, 0, 0);
    public static final float[] RECT_UVS = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, 1.0f, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT};
    public static final float[] TILE_UVS = {0.5f, 0.0625f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.53125f, 0.5f, 1.0f, 1.0f, 0.53125f};

    public static void resolveDefaultWater() {
        DEFAULT_WATER_DRAFT = (GroundDraft) Drafts.get("$water00", GroundDraft.class);
    }

    public static void resetDefaultWater() {
        DEFAULT_WATER_DRAFT = null;
    }

    static {
        int i = 0;
        float[] fArr = {0.5f, 0.09375f, 0.03125f, 0.53125f, 0.5f, 0.96875f, 0.96875f, 0.53125f};
        TILE_UVS_INNER = fArr;
        float[] fArr2 = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.20833333f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.8333333f, 1.0f, 1.0f, 1.0f, 0.375f};
        EDGE_LEFT_UVS = fArr2;
        float[] fArr3 = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.375f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, 0.8333333f, 1.0f, 0.20833333f};
        EDGE_RIGHT_UVS = fArr3;
        float[] fArr4 = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.20833333f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.8333333f, 1.0f, 1.0f, 1.0f, 0.375f};
        EDGE_LEFT_TOP_UVS = fArr4;
        float[] fArr5 = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.375f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, 0.8333333f, 1.0f, 0.20833333f};
        EDGE_RIGHT_TOP_UVS = fArr5;
        float[] fArr6 = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.20833333f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.8333333f, 1.0f, 1.0f, 1.0f, 0.375f};
        EDGE_LEFT_BOTTOM_UVS = fArr6;
        float[] fArr7 = {UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.375f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, 0.8333333f, 1.0f, 0.20833333f};
        EDGE_RIGHT_BOTTOM_UVS = fArr7;
        fArr6[1] = fArr2[3] - 0.22916667f;
        fArr6[7] = fArr2[5] - 0.22916667f;
        fArr4[3] = fArr2[1] + 0.22916667f;
        fArr4[5] = fArr2[7] + 0.22916667f;
        fArr7[1] = fArr3[3] - 0.22916667f;
        fArr7[7] = fArr3[5] - 0.22916667f;
        fArr5[3] = fArr3[1] + 0.22916667f;
        fArr5[5] = fArr3[7] + 0.22916667f;
        fArr2[1] = fArr2[1] + 0.22916667f;
        fArr2[7] = fArr2[7] + 0.22916667f;
        fArr2[3] = fArr2[3] - 0.22916667f;
        fArr2[5] = fArr2[5] - 0.22916667f;
        fArr3[1] = fArr3[1] + 0.22916667f;
        fArr3[7] = fArr3[7] + 0.22916667f;
        fArr3[3] = fArr3[3] - 0.22916667f;
        fArr3[5] = fArr3[5] - 0.22916667f;
        EDGE_LEFT_WATER_TOP_UVS = new float[]{UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.20833333f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.4375f, 1.0f, 0.6041667f, 1.0f, 0.375f};
        EDGE_RIGHT_WATER_TOP_UVS = new float[]{UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.375f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.6041667f, 1.0f, 0.4375f, 1.0f, 0.20833333f};
        TILE_UVS_INNER_HANDLE = new float[fArr.length];
        while (true) {
            float[] fArr8 = TILE_UVS_INNER;
            if (i >= fArr8.length) {
                return;
            }
            float[] fArr9 = TILE_UVS_INNER_HANDLE;
            fArr9[i] = fArr8[i];
            int i2 = i + 1;
            fArr9[i2] = (fArr8[i2] * 16.0f) / 20.0f;
            i += 2;
        }
    }

    public Ground(JsonReader jsonReader, List<GroundDraft> list, int i, int i2, Tiles tiles) throws IOException {
        this.draft = list.get(0);
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "height":
                case "h":
                    this.height = jsonReader.nextShort();
                    break;
                case "heightDX":
                case "dx":
                    this.heightDX = jsonReader.nextByte();
                    break;
                case "heightDY":
                case "dy":
                    this.heightDY = jsonReader.nextByte();
                    break;
                case "f":
                case "frame":
                    this.frame = jsonReader.nextByte();
                    break;
                case "i":
                    int iNextInt = jsonReader.nextInt();
                    if (iNextInt < 0) {
                        int i3 = (-iNextInt) - 1;
                        if (Drafts.WATER_TILES.size() > i3) {
                            List<GroundDraft> list2 = Drafts.WATER_TILES;
                            this.draft = list2.get(Math.min(i3, list2.size() - 1));
                        }
                        break;
                    } else {
                        if (Drafts.LAND_TILES.size() > iNextInt) {
                            List<GroundDraft> list3 = Drafts.LAND_TILES;
                            this.draft = list3.get(Math.min(iNextInt, list3.size() - 1));
                        }
                        break;
                    }
                    break;
                case "j":
                    this.draft = list.get(jsonReader.nextInt());
                    break;
                case "j2":
                    tiles.setGroundDraft2(i, i2, list.get(jsonReader.nextInt()));
                    break;
                case "id":
                    this.draft = (GroundDraft) Drafts.ALL.get(jsonReader.nextString());
                    break;
                case "f2:":
                    tiles.setGroundFrame2(i, i2, jsonReader.nextByte());
                    break;
                case "hxy":
                    int iNextInt2 = jsonReader.nextInt();
                    this.height = (short) (iNextInt2 >> 16);
                    this.heightDX = (byte) (iNextInt2 >> 8);
                    this.heightDY = (byte) iNextInt2;
                    break;
                case "tbh":
                    this.baseTerrainHeight = jsonReader.nextByte();
                    break;
                case "ths":
                    byte bNextByte = jsonReader.nextByte();
                    this.terrainHeights = (byte) (((bNextByte << 1) & 8) | (bNextByte & 3) | ((bNextByte >> 1) & 4));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        this.frame = (byte) Math.max(Math.min((int) this.frame, this.draft.frames.length - 1), 0);
    }

    public Ground(GroundDraft groundDraft, int i) {
        this.draft = groundDraft;
        this.frame = (byte) i;
    }

    public void setDraft(GroundDraft groundDraft) {
        this.draft = groundDraft;
        this.frame = (byte) Math.max(Math.min((int) this.frame, groundDraft.frames.length - 1), 0);
    }

    public GroundDraft getDraft() {
        return this.draft;
    }

    public void save(JsonWriter jsonWriter, int i, int i2, Tiles tiles) throws IOException {
        if (this.draft.index > 0) {
            jsonWriter.name("j").value(this.draft.index);
        }
        GroundDraft groundDraft2 = tiles.getGroundDraft2(i, i2);
        if (groundDraft2 != null) {
            jsonWriter.name("j2").value(groundDraft2.index);
        }
        if (this.frame != 0) {
            jsonWriter.name("f").value(this.frame);
        }
        int groundFrame2 = tiles.getGroundFrame2(i, i2);
        if (groundFrame2 != 0) {
            jsonWriter.name("f2").value(groundFrame2);
        }
        if (this.baseTerrainHeight != 0) {
            jsonWriter.name("tbh").value(this.baseTerrainHeight);
        }
        byte b = this.terrainHeights;
        if (b != 0) {
            jsonWriter.name("ths").value((byte) (((b << 1) & 8) | (b & 3) | ((b >> 1) & 4)));
        }
    }

    public byte getTerrainHeight(int i) {
        return (byte) (this.baseTerrainHeight + ((this.terrainHeights >> ((i + 1) & 3)) & 1));
    }

    public byte getTerrainHeight(int i, int i2) {
        return (byte) (this.baseTerrainHeight + ((this.terrainHeights >> (((i2 * 3) + i) - ((i * 2) * i2))) & 1));
    }

    public float getTerrainAverageHeight() {
        if (this.terrainHeights == 0) {
            return this.baseTerrainHeight;
        }
        return this.baseTerrainHeight + (((((r0 & 1) + ((r0 >> 1) & 1)) + ((r0 >> 2) & 1)) + ((r0 >> 3) & 1)) / 4.0f);
    }

    public int getBaseTerrainHeight() {
        return this.baseTerrainHeight;
    }

    public int getCeilingTerrainheight() {
        if (this.terrainHeights == 0) {
            return this.baseTerrainHeight;
        }
        return this.baseTerrainHeight + 1;
    }

    public boolean isFlat() {
        return this.terrainHeights == 0;
    }

    public byte getTerrainHeights() {
        return this.terrainHeights;
    }

    public void setTerrainHeights(byte b) {
        this.terrainHeights = b;
    }

    public boolean setTerrainHeight(int i, int i2, byte b) {
        int i3 = 1 << (((i2 * 3) + i) - ((i * 2) * i2));
        byte b2 = this.baseTerrainHeight;
        byte b3 = this.terrainHeights;
        if (b < b2) {
            this.terrainHeights = (byte) ((~i3) & 15);
            this.baseTerrainHeight = b;
        } else if (b > b2 + 1) {
            this.terrainHeights = (byte) i3;
            this.baseTerrainHeight = (byte) (b - 1);
        } else if (b == b2) {
            this.terrainHeights = (byte) ((~i3) & b3);
        } else if (b == b2 + 1) {
            this.terrainHeights = (byte) (i3 | b3);
        }
        if (this.terrainHeights == 15) {
            this.baseTerrainHeight = (byte) (this.baseTerrainHeight + 1);
            this.terrainHeights = (byte) 0;
        }
        return (b2 == this.baseTerrainHeight && b3 == this.terrainHeights) ? false : true;
    }

    public void setTerrainHeight(byte b) {
        this.baseTerrainHeight = b;
        this.terrainHeights = (byte) 0;
    }

    public int getUpDirs() {
        byte b = this.terrainHeights;
        if (b == 0) {
            return 0;
        }
        int i = b & 1;
        int i2 = (b >> 1) & 1;
        int i3 = (b >> 2) & 1;
        int i4 = (b >> 3) & 1;
        return (i4 * 4 * i) | (i2 * i3) | (i4 * 2 * i3) | (i2 * 8 * i);
    }

    public int getPotentialUpDirs() {
        byte b = this.terrainHeights;
        if (b == 0) {
            return 0;
        }
        int i = b & 1;
        int i2 = (b >> 1) & 1;
        int i3 = (b >> 2) & 1;
        int i4 = (b >> 3) & 1;
        return ((i4 | i) * 4) | ((i3 | i4) * 2) | i2 | i3 | ((i | i2) * 8);
    }

    public boolean isRift() {
        byte b = this.terrainHeights;
        return b == 5 || b == 16;
    }

    public boolean hasLowPartialFlatPart() {
        return ((1 << this.terrainHeights) & 65257) == 0;
    }

    public boolean hasHighPartialFlatPart() {
        return ((1 << this.terrainHeights) & 38783) == 0;
    }

    public float getDerivativeSq() {
        byte b = this.heightDX;
        byte b2 = this.heightDY;
        return ((b * b) + (b2 * b2)) * 2.0E-4f;
    }

    public void drawFlat(Drawer drawer, int i) {
        Engine engine = drawer.engine;
        engine.setColor(COLOR_BUF);
        if (this.draft.shading && Settings.terrainShading && !isBorder()) {
            int i2 = this.heightDX + this.heightDY;
            GroundDraft groundDraft = this.draft;
            addLight(drawer, (i2 / groundDraft.shadingFactor) + groundDraft.shadingOffset);
        }
        int i3 = this.draft.frames[this.frame];
        drawer.engine.setType(3);
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-i) * 12, i3);
        engine.setColor(Colors.WHITE);
    }

    public void draw(Drawer drawer, GroundDraft groundDraft, GroundDraft groundDraft2, GroundDraft groundDraft3, GroundNeighborhood groundNeighborhood, GroundDraft groundDraft4, int i) {
        Engine engine = drawer.engine;
        COLOR_BUF.setTo(engine.getRed(), engine.getGreen(), engine.getBlue(), 255);
        boolean z = drawer.useShading;
        if (isWater()) {
            drawWater(drawer, this.draft);
        } else {
            int i2 = (-this.baseTerrainHeight) * 12;
            drawGroundDraft(drawer, this.draft, this.frame, i2, groundDraft, groundDraft2, groundDraft3);
            if (groundNeighborhood != null && !isBorder()) {
                for (int i3 = 0; i3 < groundNeighborhood.getSize(); i3++) {
                    Ground ground = groundNeighborhood.getGround(i3);
                    drawer.engine.setTransparency((int) (groundNeighborhood.getWeight(i3) * 0.12f * 255.0f));
                    GroundDraft groundDraft5 = ground.draft;
                    drawGroundDraft(drawer, groundDraft5, ground.frame, i2, groundDraft5, groundDraft5, null);
                }
                drawer.engine.setTransparency(255);
            }
            if (groundDraft4 != null) {
                drawGroundDraft(drawer, groundDraft4, i, i2, null, null, null);
            }
        }
        engine.setColor(Colors.WHITE);
        drawer.useShading = z;
    }

    public final void drawGroundDraft(Drawer drawer, GroundDraft groundDraft, int i, int i2, GroundDraft groundDraft2, GroundDraft groundDraft3, GroundDraft groundDraft4) {
        int i3;
        Engine engine = drawer.engine;
        drawer.useShading &= !groundDraft.light;
        boolean zIsBorder = isBorder();
        if (zIsBorder && groundDraft.borderFrames != null) {
            if (groundDraft4 != null) {
                drawWater(drawer, groundDraft4);
            }
            engine.setColor(COLOR_BUF);
            i3 = groundDraft.borderFrames[Direction.rotateCW(this.borderFrame, drawer.rotation)];
        } else {
            i3 = groundDraft.frames[i];
        }
        int i4 = i3;
        if (this.terrainHeights != 0) {
            drawSlope(drawer, groundDraft, i, groundDraft.slopeShadingFactor, groundDraft.slopeShadingOffset);
        }
        Color color = COLOR_BUF;
        engine.setColor(color);
        if (groundDraft.shading && Settings.terrainShading) {
            if (!zIsBorder) {
                addLight(drawer, ((this.heightDX + this.heightDY) / groundDraft.shadingFactor) + groundDraft.shadingOffset);
            } else {
                addLight(drawer, groundDraft.shadingOffset);
            }
        }
        if (this.terrainHeights == 0) {
            drawer.engine.setType(3);
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i2, i4);
            return;
        }
        if (hasLowPartialFlatPart()) {
            setClipRect(drawer, Direction.rotateCW(this.terrainHeights, drawer.rotation), i2, 0);
            if (groundDraft2 != null && groundDraft2 != groundDraft) {
                if (zIsBorder && groundDraft2.borderFrames != null) {
                    drawWater(drawer, groundDraft4);
                    engine.setColor(color);
                    i4 = groundDraft2.borderFrames[Direction.rotateCW(this.borderFrame, drawer.rotation)];
                } else {
                    i4 = groundDraft2.frames[0];
                }
            }
            drawer.engine.setType(3);
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i2, i4);
            drawer.resetClipping();
            return;
        }
        if (hasHighPartialFlatPart()) {
            int i5 = i2 - 12;
            setClipRect(drawer, (~Direction.rotateCW(this.terrainHeights, drawer.rotation)) & 15, i5, 1);
            if (groundDraft3 != null && groundDraft3 != groundDraft) {
                if (zIsBorder && groundDraft3.borderFrames != null) {
                    drawWater(drawer, groundDraft4);
                    engine.setColor(color);
                    i4 = groundDraft3.borderFrames[Direction.rotateCW(this.borderFrame, drawer.rotation)];
                } else {
                    i4 = groundDraft3.frames[0];
                }
            }
            drawer.engine.setType(3);
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i5, i4);
            drawer.resetClipping();
        }
    }

    public final void setClipRect(Drawer drawer, int i, int i2, int i3) {
        if (i == 1) {
            drawer.setClipRect(15, i2 - 32, 18, 64);
            return;
        }
        if (i == 2) {
            drawer.setClipRect(-1, i2 - 32, 34, i3 + 32);
        } else if (i == 4) {
            drawer.setClipRect(-1, i2 - 32, 18, 64);
        } else {
            if (i != 8) {
                return;
            }
            drawer.setClipRect(-1, (i2 - 1) + (i3 * 2), 34, 32);
        }
    }

    public final void drawSlope(Drawer drawer, GroundDraft groundDraft, int i, int i2, int i3) {
        drawer.engine.setType(3);
        int i4 = (-this.baseTerrainHeight) * 12;
        int[] iArr = groundDraft.texture;
        if (iArr != null) {
            drawRawSlope(drawer, Resources.IMAGE_WORLD, i4, this.terrainHeights, RECT_UVS, iArr[i % iArr.length], true, true, false, i2, i3);
        } else {
            Image image = Resources.IMAGE_WORLD;
            int i5 = groundDraft.frames[i];
            drawRawSlope(drawer, image, i4, this.terrainHeights, selectUVs(image, i5), i5, true, false, false, i2, i3);
        }
    }

    public void drawFrameOnSlope(Drawer drawer, Image image, int i) {
        if (isFlat()) {
            drawer.draw(image, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-this.baseTerrainHeight) * 12, i);
        } else {
            drawRawSlope(drawer, image, (-this.baseTerrainHeight) * 12, this.terrainHeights, selectUVs(image, i), i, false, false, true, 1, 0);
        }
    }

    public static void drawFrameOnCustomSlope(Drawer drawer, Image image, int i, int i2, int i3) {
        drawRawSlope(drawer, image, (-i) * 12, i2, selectUVs(image, i3), i3, false, false, true, 1, 0);
    }

    public static float[] selectUVs(Image image, int i) {
        if (image.getHeight(i) == 20.0f) {
            return TILE_UVS_INNER_HANDLE;
        }
        return TILE_UVS_INNER;
    }

    public static void drawRawSlope(Drawer drawer, Image image, int i, int i2, float[] fArr, int i3, boolean z, boolean z2, boolean z3, int i4, int i5) {
        int i6;
        float f;
        int i7;
        float f2;
        int i8;
        int i9;
        float f3;
        float f4;
        char c;
        float f5;
        float f6;
        int i10;
        int i11;
        char c2;
        float f7;
        char c3;
        int iRotateCW = Direction.rotateCW(i2, drawer.rotation);
        int i12 = iRotateCW & 1;
        int i13 = (iRotateCW >> 1) & 1;
        int i14 = (iRotateCW >> 2) & 1;
        int i15 = (iRotateCW >> 3) & 1;
        float f8 = (i - 8) - (i15 * 12);
        float f9 = (i - (i12 * 12)) + 0.5f;
        float f10 = ((i + 8) - (i13 * 12)) + 1;
        float f11 = (i - (i14 * 12)) + 0.5f;
        if (i15 == i13 && (i12 != i15 || i14 != i15)) {
            if (z) {
                if (i12 < i15) {
                    setLight(drawer, 0);
                } else if (i12 > i15) {
                    setLight(drawer, ((-750) / i4) + i5);
                } else {
                    setLight(drawer, ((-350) / i4) + i5);
                }
            }
            if (z3 || i15 != i12) {
                f5 = 16.0f;
                f6 = f8;
                i10 = i15;
                i11 = i14;
                c2 = 1;
                drawer.drawTriangle(image, i3, 16.0f, f6, -1.0f, f9, 16.0f, f10, fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5]);
                f7 = f10;
            } else {
                i10 = i15;
                c2 = 1;
                i11 = i14;
                f6 = f8;
                f7 = f10;
                f5 = 16.0f;
            }
            int i16 = i10;
            if (!z) {
                c3 = 0;
            } else if (i11 > i16) {
                c3 = 0;
                setLight(drawer, 0);
            } else {
                c3 = 0;
                if (i11 < i16) {
                    setLight(drawer, ((-700) / i4) + i5);
                } else {
                    setLight(drawer, ((-350) / i4) + i5);
                }
            }
            if (z3 || i11 != i16) {
                drawer.drawTriangle(image, i3, f5, f6, f5, f7, 33.0f, f11, fArr[c3], fArr[c2], fArr[4], fArr[5], fArr[6], fArr[7]);
                return;
            }
            return;
        }
        if (z) {
            if (f9 > f11) {
                setLight(drawer, i5);
            } else if (f9 < f11) {
                setLight(drawer, ((-500) / i4) + i5);
            } else {
                setLight(drawer, ((-100) / i4) + i5);
            }
        }
        if (((i12 == 1 && i15 == 1) || (i13 == 1 && i14 == 1)) && z2) {
            if (z3 || i14 != i15) {
                f3 = 16.0f;
                f4 = 33.0f;
                c = 1;
                drawer.drawTriangle(image, i3, 16.0f, f8, -1.0f, f9, 33.0f, f11, fArr[2], fArr[3], fArr[4], fArr[5], fArr[0], fArr[1]);
            } else {
                f3 = 16.0f;
                f4 = 33.0f;
                c = 1;
            }
            drawer.drawTriangle(image, i3, -1.0f, f9, f3, f10, f4, f11, fArr[4], fArr[5], fArr[6], fArr[7], fArr[0], fArr[c]);
            return;
        }
        if (!(!z3 && i15 == i12 && i15 == i14) && (i15 == 1 || i12 == 0 || i14 == 0)) {
            i6 = i13;
            f = 16.0f;
            i7 = i14;
            f2 = -1.0f;
            i8 = i12;
            drawer.drawTriangle(image, i3, 16.0f, f8, -1.0f, f9, 33.0f, f11, fArr[0], fArr[1], fArr[2], fArr[3], fArr[6], fArr[7]);
        } else {
            i6 = i13;
            f = 16.0f;
            i7 = i14;
            f2 = -1.0f;
            i8 = i12;
        }
        if (!z3 && (i9 = i6) == i8 && i9 == i7) {
            return;
        }
        drawer.drawTriangle(image, i3, f2, f9, f, f10, 33.0f, f11, fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]);
    }

    public void drawWater(Drawer drawer, GroundDraft groundDraft) {
        GroundDraft groundDraft2 = groundDraft == null ? DEFAULT_WATER_DRAFT : groundDraft;
        boolean z = drawer.useShading;
        boolean zDrawFancyWater = drawer.lod.drawFancyWater();
        drawer.useShading = !groundDraft2.light;
        Engine engine = drawer.engine;
        engine.setType(4);
        int i = (-drawer.baseTerrainHeight) * 12;
        int iMin = Math.min((int) this.height, 0) + 80;
        if (iMin < 0) {
            iMin = Math.max(iMin, -500);
            int iMin2 = Math.min((-iMin) / 5, 255);
            int i2 = 255 - iMin2;
            int red = groundDraft2.darkWaterColor.getRed() * iMin2;
            Color color = COLOR_BUF;
            engine.setColor((red + (color.getRed() * i2)) / 255, ((groundDraft2.darkWaterColor.getGreen() * iMin2) + (color.getGreen() * i2)) / 255, ((iMin2 * groundDraft2.darkWaterColor.getBlue()) + (i2 * color.getBlue())) / 255);
        }
        int i3 = groundDraft2.waterAnimMS;
        int i4 = groundDraft2.waterSparkleAnimMS;
        int length = groundDraft2.frames.length;
        int iHash = Hashing.hash(drawer.tileX, drawer.tileY);
        float fAbs = Math.abs(((drawer.time + iHash) % (i3 * length)) / i3);
        int i5 = (iHash % length) + ((int) fAbs);
        float f = i;
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, groundDraft2.frames[i5 % length]);
        if (zDrawFancyWater) {
            drawer.engine.setTransparency((int) ((fAbs % 1.0f) * 255.0f));
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, groundDraft2.frames[(i5 + 1) % length]);
        }
        int[] iArr = groundDraft2.sparkleFrames;
        if (iArr != null && Settings.drawWaterSparkle && zDrawFancyWater) {
            int length2 = iArr.length;
            float fAbs2 = Math.abs(((drawer.time + iHash) % (i4 * length2)) / i4);
            int i6 = (iHash % length2) + ((int) fAbs2);
            float f2 = fAbs2 % 1.0f;
            drawer.engine.setTransparency((int) ((1.0f - f2) * 255.0f));
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, groundDraft2.sparkleFrames[i6 % length2]);
            drawer.engine.setTransparency((int) (f2 * 255.0f));
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, groundDraft2.sparkleFrames[(i6 + 1) % length2]);
        }
        drawer.engine.setTransparency(255);
        if (iMin > 0 && zDrawFancyWater) {
            engine.setColor(groundDraft2.lightWaterColor);
            engine.setTransparency(iMin / 7);
            engine.setAdditive(255);
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i + 4, Resources.FRAME_WHITE_TILE);
            engine.setTransparency(255);
            engine.setAdditive(0);
        }
        engine.setColor(COLOR_BUF);
        drawer.useShading = z;
    }

    public final void addLight(Drawer drawer, int i) {
        Engine engine = drawer.engine;
        engine.setColor(engine.getRed() + i, engine.getGreen() + i, engine.getBlue() + i);
    }

    public static void setLight(Drawer drawer, int i) {
        Engine engine = drawer.engine;
        Color color = COLOR_BUF;
        engine.setColor(color.getRed() + i, color.getGreen() + i, color.getBlue() + i);
    }

    public void drawEdge(Drawer drawer, int i) {
        int i2;
        Ground ground = this;
        Drawer drawer2 = drawer;
        int iRotateCW = Direction.rotateCW(ground.borderFrame, drawer2.rotation);
        int iRotateCW2 = Direction.rotateCW(ground.terrainHeights, drawer2.rotation);
        drawer2.engine.setType(6);
        if (Direction.isIn(8, i)) {
            byte b = ground.baseTerrainHeight;
            int i3 = (iRotateCW2 & 1) + b;
            int i4 = (-i3) * 12;
            int i5 = 8 - (((((iRotateCW2 >> 1) & 1) + b) - i3) * 12);
            int[] iArr = ground.draft.edgeFrames;
            int i6 = iArr[(ground.frame % (iArr.length / 2)) * 2];
            if (ground.isWater()) {
                ground.drawObliqueFilled(drawer2, Resources.IMAGE_WORLD, 0, i4 + 11, 16, (i3 * 12) + 10, i5, 8, i6, EDGE_LEFT_UVS, 12);
                drawer2.engine.setType(4);
                i2 = 1;
                drawOblique(drawer2, Resources.IMAGE_WORLD, 0, i4 + 1, 16, 11, i5, 8, i6, EDGE_LEFT_WATER_TOP_UVS);
                drawer2.engine.setType(6);
                ground = this;
                ground.drawOblique(drawer2, Resources.IMAGE_WORLD, 0, 21, 16, 11, 8, 8, i6, EDGE_LEFT_BOTTOM_UVS);
                drawer2 = drawer;
            } else {
                i2 = 1;
                drawer2 = drawer;
                drawObliqueFilled(drawer2, Resources.IMAGE_WORLD, 0, i4 + 11, 16, (i3 * 12) + 10, i5, 8, i6, EDGE_LEFT_UVS, 12);
                drawOblique(drawer2, Resources.IMAGE_WORLD, 0, i4, 16, 11, i5, i5, i6, EDGE_LEFT_TOP_UVS);
                ground = this;
                ground.drawOblique(drawer2, Resources.IMAGE_WORLD, 0, 21, 16, 11, 8, 8, i6, EDGE_LEFT_BOTTOM_UVS);
                if (ground.isBorder()) {
                    drawer2.draw(Resources.IMAGE_WORLD, 0, i4, ground.draft.edgeBorderFrames[iRotateCW * 2]);
                }
            }
        } else {
            i2 = 1;
        }
        if (Direction.isIn(i2, i)) {
            byte b2 = ground.baseTerrainHeight;
            int i7 = ((iRotateCW2 >> 1) & i2) + b2;
            int i8 = ((iRotateCW2 >> 2) & i2) + b2;
            int i9 = (-i7) * 12;
            int i10 = i9 + 8;
            int i11 = (-8) - ((i8 - i7) * 12);
            int[] iArr2 = ground.draft.edgeFrames;
            int i12 = iArr2[((ground.frame % (iArr2.length / 2)) * 2) + i2];
            if (ground.isWater()) {
                ground.drawObliqueFilled(drawer2, Resources.IMAGE_WORLD, 16, i9 + 19, 16, (i7 * 12) + 10, i11, -8, i12, EDGE_RIGHT_UVS, 12);
                drawer2.engine.setType(4);
                drawOblique(drawer2, Resources.IMAGE_WORLD, 16, i9 + 9, 16, 11, i11, -8, i12, EDGE_RIGHT_WATER_TOP_UVS);
                drawer2.engine.setType(6);
                drawOblique(drawer2, Resources.IMAGE_WORLD, 16, 29, 16, 11, -8, -8, i12, EDGE_RIGHT_BOTTOM_UVS);
                return;
            }
            drawObliqueFilled(drawer, Resources.IMAGE_WORLD, 16, i9 + 19, 16, (i7 * 12) + 10, i11, -8, i12, EDGE_RIGHT_UVS, 12);
            drawOblique(drawer, Resources.IMAGE_WORLD, 16, i10, 16, 11, i11, i11, i12, EDGE_RIGHT_TOP_UVS);
            drawOblique(drawer, Resources.IMAGE_WORLD, 16, 29, 16, 11, -8, -8, i12, EDGE_RIGHT_BOTTOM_UVS);
            if (isBorder()) {
                drawer.draw(Resources.IMAGE_WORLD, 16, (-i8) * 12, this.draft.edgeBorderFrames[(iRotateCW * 2) + i2]);
            }
        }
    }

    public final void drawObliqueFilled(Drawer drawer, Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, float[] fArr, int i8) {
        float f = i4;
        int iRound = Math.round(f / i8);
        float f2 = iRound;
        float f3 = f / f2;
        int i9 = 0;
        while (i9 < iRound) {
            float f4 = i9;
            float f5 = f4 / f2;
            i9++;
            float f6 = i9;
            float f7 = f6 / f2;
            int i10 = (int) (f4 * f3);
            int i11 = ((int) (f6 * f3)) - i10;
            float f8 = i6;
            float f9 = i5;
            drawOblique(drawer, image, i, i2 + i10, i3, i11, (int) ((f5 * f8) + ((1.0f - f5) * f9)), (int) ((f8 * f7) + ((1.0f - f7) * f9)), i7, fArr);
        }
    }

    public final void drawOblique(Drawer drawer, Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, float[] fArr) {
        float f = i;
        float f2 = i2 + i4;
        float f3 = i + i3;
        float f4 = i2 + i5;
        drawer.drawTriangle(image, i7, f, i2, f, f2, f3, f4, fArr[0], fArr[1], fArr[2], fArr[3], fArr[6], fArr[7]);
        drawer.drawTriangle(image, i7, f, f2, f3, r15 + i6, f3, f4, fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]);
    }

    public void setBorder(int i) {
        if (i >= 0) {
            this.borderFrame = (byte) i;
        } else {
            this.borderFrame = (byte) -1;
        }
    }

    public boolean isBorder() {
        return this.borderFrame >= 0;
    }

    public byte getBorderFrame() {
        return this.borderFrame;
    }

    public boolean isWater() {
        return this.draft.isWater;
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = (byte) i;
    }

    public void copyFrom(Ground ground) {
        this.height = ground.height;
        this.heightDX = ground.heightDX;
        this.heightDY = ground.heightDY;
        this.baseTerrainHeight = ground.baseTerrainHeight;
        this.terrainHeights = ground.terrainHeights;
    }
}
