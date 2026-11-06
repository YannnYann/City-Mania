package info.flowersoft.theotown.city;

import com.badlogic.gdx.math.MathUtils;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.miniatureview.MiniatureView;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.ScreenRect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class MinimapRenderer {
    public IntBuffer bufferData;
    public final City city;
    public int cornerRadius;
    public final int[] data;
    public final int maxSize;
    public final int origHeight;
    public final int origWidth;
    public final int parcelSize;
    public boolean useDefaultTool;
    public boolean useViewFrame;

    public MinimapRenderer(City city) {
        this(city, city.getWidth(), city.getHeight());
    }

    public MinimapRenderer(City city, int i, int i2) {
        this.cornerRadius = 0;
        this.city = city;
        this.origWidth = i;
        this.origHeight = i2;
        int iMax = Math.max(i, i2);
        this.maxSize = iMax;
        this.parcelSize = Math.max(city.getWidth(), city.getHeight()) / iMax;
        this.data = new int[i * i2];
    }

    public int getCornerRadius() {
        return this.cornerRadius;
    }

    public void setCornerRadius(int i) {
        this.cornerRadius = i;
    }

    public int getWidth() {
        if ((this.city.getRotation() & 1) == 0) {
            return this.origWidth;
        }
        return this.origHeight;
    }

    public int getHeight() {
        if ((this.city.getRotation() & 1) == 0) {
            return this.origHeight;
        }
        return this.origWidth;
    }

    public void setUseDefaultTool(boolean z) {
        this.useDefaultTool = z;
    }

    public void setUseViewFrame(boolean z) {
        this.useViewFrame = z;
    }

    public void render(boolean z) {
        Tool defaultTool;
        int i;
        MiniatureView miniatureView;
        int i2;
        int i3;
        int i4;
        if (this.useDefaultTool) {
            defaultTool = this.city.getDefaultTool();
        } else {
            defaultTool = (Tool) this.city.getComponent(13);
        }
        MiniatureView miniatureView2 = new MiniatureView(this.city, defaultTool);
        ScreenRect view = this.city.getView();
        IsoConverter isoConverter = this.city.getIsoConverter();
        int width = getWidth();
        int height = getHeight();
        int i5 = this.parcelSize;
        int i6 = i5 * i5;
        int i7 = 0;
        int i8 = 0;
        while (i8 < height) {
            int i9 = i7;
            int i10 = 0;
            while (i10 < width) {
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    i = this.parcelSize;
                    if (i12 >= i) {
                        break;
                    }
                    int i15 = (i * i8) + i12;
                    int blue = i14;
                    int i16 = 0;
                    int green = i13;
                    int red = i11;
                    while (true) {
                        int i17 = this.parcelSize;
                        if (i16 < i17) {
                            int i18 = (i17 * i10) + i16;
                            int i19 = i6;
                            try {
                                i4 = i16;
                            } catch (Exception e) {
                                e = e;
                                i4 = i16;
                            }
                            try {
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                i16 = i4 + 1;
                                i6 = i19;
                            }
                            try {
                                Color color = miniatureView2.getColor(this.city.rotatedToOriginalX(i18, i15), this.city.rotatedToOriginalY(i18, i15), z);
                                red += color.getRed();
                                green += color.getGreen();
                                blue += color.getBlue();
                            } catch (Exception e3) {
                                e = e3;
                                e.printStackTrace();
                            }
                            i16 = i4 + 1;
                            i6 = i19;
                        }
                    }
                    i12++;
                    i11 = red;
                    i13 = green;
                    i14 = blue;
                }
                int i20 = i6;
                int i21 = (i11 / i20) | ((i14 / i20) << 16) | (-16777216) | ((i13 / i20) << 8);
                if (this.useViewFrame) {
                    int i22 = i * i10;
                    int i23 = i * i8;
                    boolean zContains = view.contains(isoConverter.isoToAbsX(i22, i23), isoConverter.isoToAbsY(i22, i23));
                    boolean zContains2 = view.contains(isoConverter.isoToAbsX(i22 - this.parcelSize, i23), isoConverter.isoToAbsY(i22 - this.parcelSize, i23));
                    miniatureView = miniatureView2;
                    boolean zContains3 = view.contains(isoConverter.isoToAbsX(this.parcelSize + i22, i23), isoConverter.isoToAbsY(this.parcelSize + i22, i23));
                    if (zContains && (!zContains2 || !zContains3)) {
                        int i24 = (((i21 >> 16) & 255) + 255) / 2;
                        int i25 = (((i21 >> 8) & 255) + 255) / 2;
                        int i26 = ((i21 & 255) + 255) / 2;
                        if (view.contains(isoConverter.isoToAbsX(i22, i23), isoConverter.isoToAbsY(i22, i23 - this.parcelSize))) {
                            i2 = i26;
                            i3 = i25;
                        } else {
                            i24 = 255;
                            i2 = 255;
                            i3 = 255;
                        }
                        i21 = (i2 << 16) | (-16777216) | (i3 << 8) | i24;
                    }
                } else {
                    miniatureView = miniatureView2;
                }
                this.data[i9] = i21;
                i9++;
                i10++;
                i6 = i20;
                miniatureView2 = miniatureView;
            }
            i8++;
            i7 = i9;
        }
        int i27 = this.cornerRadius;
        if (i27 <= 0) {
            return;
        }
        int iClamp = MathUtils.clamp(i27, 0, Math.min(width, height) / 2);
        this.cornerRadius = iClamp;
        int i28 = iClamp * iClamp;
        for (int i29 = 0; i29 < this.cornerRadius; i29++) {
            int i30 = i29 * i29;
            int i31 = 0;
            while (true) {
                int i32 = this.cornerRadius;
                if (i31 < i32) {
                    if ((i31 * i31) + i30 >= i28) {
                        int[] iArr = this.data;
                        iArr[((i32 - 1) - i31) + (((i32 - 1) - i29) * width)] = 0;
                        iArr[(width - i32) + i31 + (((i32 - 1) - i29) * width)] = 0;
                        iArr[((i32 - 1) - i31) + (((height - i32) + i29) * width)] = 0;
                        iArr[(width - i32) + i31 + (((height - i32) + i29) * width)] = 0;
                    }
                    i31++;
                }
            }
        }
    }

    public void renderGrid(int i) {
        int i2 = this.maxSize;
        int i3 = i2 / i;
        int i4 = i2 / i;
        int i5 = 0;
        for (int i6 = 0; i6 < this.maxSize; i6++) {
            int i7 = 0;
            while (true) {
                int i8 = this.maxSize;
                if (i7 < i8) {
                    if ((i7 % i3 == 0 || i6 % i4 == 0 || (i7 + 1) % i3 == 0 || (i6 + 1) % i4 == 0) && (i7 + i6) % 2 == 0 && i7 > 0 && i6 > 0 && i7 < i8 - 1 && i6 < i8 - 1) {
                        this.data[i5] = -1;
                    }
                    i5++;
                    i7++;
                }
            }
        }
    }

    public int[] getData() {
        return this.data;
    }

    public IntBuffer getBufferData() {
        if (this.bufferData == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.data.length * 4);
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            this.bufferData = byteBufferAllocateDirect.asIntBuffer();
        }
        this.bufferData.put(this.data);
        this.bufferData.rewind();
        return this.bufferData;
    }
}
