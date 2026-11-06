package info.flowersoft.theotown.components;

import com.badlogic.gdx.utils.IntMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Sign;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SignStyleProvider;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.MathUtil;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultSigns extends CityComponent implements Saveable {
    public boolean enableIconGrouping;
    public float iconOffsetY;
    public final List<Sign> signs = new ArrayList();
    public final IntList icons = new IntList();
    public final IntList iconGrid = new IntList();
    public final IntList iconGridIndices = new IntList();
    public final int INT_FLOAT_FACTOR = 100;
    public final float ICON_NORMAL_SCALE = 1.0f;
    public final Drawer.IconDrawer iconDrawer = new Drawer.IconDrawer() { // from class: info.flowersoft.theotown.components.DefaultSigns.1
        @Override // info.flowersoft.theotown.city.Drawer.IconDrawer
        public void draw(Engine engine, float f, float f2, int i) {
            if (Settings.hideUI) {
                return;
            }
            DefaultSigns.this.icons.add((int) (f * 100.0f));
            DefaultSigns.this.icons.add((int) (100.0f * f2));
            DefaultSigns.this.icons.add(i);
            if (DefaultSigns.this.enableIconGrouping) {
                return;
            }
            DefaultSigns.this.drawIcon(engine, f, f2, i);
        }
    };

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 18;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("signs")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    this.signs.add(new Sign(jsonReader));
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("signs").beginArray();
        for (int i = 0; i < this.signs.size(); i++) {
            Sign sign = this.signs.get(i);
            jsonWriter.beginObject();
            sign.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    public void drawSigns(Engine engine, boolean z) {
        float f;
        float f2;
        if (Settings.hideLabels) {
            return;
        }
        IsoConverter isoConverter = this.city.getIsoConverter();
        float f3 = 1.0f;
        engine.setScale(1.0f, 1.0f);
        engine.setTransparency(255);
        int i = 0;
        while (i < this.signs.size()) {
            Sign sign = this.signs.get(i);
            String text = sign.getText();
            float x = sign.getX();
            float y = sign.getY();
            float fOriginalToRotatedX = this.city.originalToRotatedX(x, y) + 0.5f;
            float fOriginalToRotatedY = this.city.originalToRotatedY(x, y) + 0.5f;
            int i2 = (int) x;
            int i3 = (int) y;
            Font font = SignStyleProvider.FONTS[Math.min(sign.getSize(), r6.length - 1)];
            Color color = sign.getColor();
            float fIsoToAbsX = isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY);
            float fIsoToAbsY = isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY);
            float width = font.getWidth(text);
            float height = font.getHeight(text);
            float f4 = fIsoToAbsX - (width / 2.0f);
            float absScaleY = fIsoToAbsY - height;
            if (this.city.isValid(i2, i3)) {
                f = f3;
                absScaleY -= (int) ((isoConverter.getAbsScaleY() * this.city.getTiles().getTerrainAvgHeight(i2, i3)) * 12.0f);
            } else {
                f = f3;
            }
            float f5 = absScaleY;
            if (z) {
                engine.setColor(Colors.WHITE);
                engine.setTransparency(100);
                f2 = f4;
                engine.drawImage(Resources.IMAGE_WORLD, f2, f5, width, height, Resources.FRAME_RECT);
                engine.setTransparency(255);
            } else {
                f2 = f4;
            }
            if (this.city.getIsoConverter().getAbsScaleX() == f && !z) {
                engine.setTransparency(100);
            } else {
                engine.setColor(Colors.BLACK);
                engine.drawText(font, sign.getText(), f2 + f, f5);
                engine.drawText(font, sign.getText(), f2 - f, f5);
                engine.drawText(font, sign.getText(), f2, f5 - f);
                engine.drawText(font, sign.getText(), f2, f5 + f);
            }
            engine.setColor(color);
            engine.drawText(font, sign.getText(), f2, f5);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(255);
            i++;
            f3 = f;
        }
    }

    public void addSign(Sign sign) {
        this.signs.add(sign);
    }

    public int countSigns() {
        return this.signs.size();
    }

    public Sign getSign(int i) {
        return this.signs.get(i);
    }

    public void removeSign(Sign sign) {
        this.signs.remove(sign);
    }

    public Sign getSignAt(int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < this.signs.size(); i5++) {
            Sign sign = this.signs.get(i5);
            if (Math.floor(sign.getX()) != i3 || Math.floor(sign.getY()) != i4) {
                String text = sign.getText();
                float x = sign.getX();
                float y = sign.getY();
                float fOriginalToRotatedX = this.city.originalToRotatedX(x, y) + 0.5f;
                float fOriginalToRotatedY = this.city.originalToRotatedY(x, y) + 0.5f;
                int i6 = (int) x;
                int i7 = (int) y;
                Font font = SignStyleProvider.FONTS[Math.min(sign.getSize(), r9.length - 1)];
                IsoConverter isoConverter = this.city.getIsoConverter();
                int iIsoToAbsX = (int) isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY);
                int iIsoToAbsY = (int) isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY);
                int width = (int) font.getWidth(text);
                int height = (int) font.getHeight(text);
                int i8 = iIsoToAbsX - (width / 2);
                int absScaleY = iIsoToAbsY - height;
                if (this.city.isValid(i6, i7)) {
                    absScaleY -= (int) ((isoConverter.getAbsScaleY() * this.city.getTiles().getTerrainAvgHeight(i6, i7)) * 12.0f);
                }
                if (!MathUtil.inRect(i, i2, i8, absScaleY, width, height)) {
                }
            }
            return sign;
        }
        return null;
    }

    public Drawer.IconDrawer getIconDrawer() {
        return this.iconDrawer;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        super.drawBefore(engine);
        this.icons.clear();
        this.enableIconGrouping = this.city.getScale() < 1.0f;
        this.iconOffsetY = this.city.getScale() * 2.0f * ((float) Math.sin(((double) ((System.currentTimeMillis() % 1200) / 1200.0f)) * 6.283185307179586d));
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawAfterCached(Drawer drawer) {
        float f;
        float f2;
        int i;
        super.drawAfter(drawer);
        Engine engine = drawer.engine;
        int i2 = 0;
        float f3 = 100.0f;
        if (!this.enableIconGrouping) {
            engine.setTransparency(50);
            while (i2 < this.icons.size()) {
                drawIcon(engine, this.icons.get(i2) / 100.0f, this.icons.get(i2 + 1) / 100.0f, this.icons.get(i2 + 2));
                i2 += 3;
            }
            engine.setTransparency(255);
            return;
        }
        if (this.icons.isEmpty()) {
            return;
        }
        float scale = this.city.getScale();
        float scale2 = (this.city.getScale() * 128.0f) / ((float) Math.pow(2.0d, Math.round(Math.log(scale) / Math.log(2.0d))));
        int width = ((int) (this.city.getView().getWidth() / scale2)) + 4;
        int height = ((int) (this.city.getView().getHeight() / scale2)) + 4;
        IsoConverter isoConverter = this.city.getIsoConverter();
        float f4 = 2.0f * scale2;
        float fIsoToAbsX = f4 - (isoConverter.isoToAbsX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) % scale2);
        float fIsoToAbsY = f4 - (isoConverter.isoToAbsY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) % scale2);
        IntMap intMap = new IntMap();
        for (int i3 = 0; i3 < this.icons.size(); i3 += 3) {
            int i4 = this.icons.get(i3 + 2);
            IntList intList = (IntList) intMap.get(i4);
            if (intList == null) {
                intList = new IntList();
                intMap.put(i4, intList);
            }
            intList.add(i3);
        }
        while (this.iconGrid.size() < width * 7 * height) {
            this.iconGrid.add(0);
        }
        for (IntList intList2 : intMap.values()) {
            int i5 = i2;
            while (i5 < intList2.size()) {
                int i6 = (int) (((this.icons.get(r13) / f3) + fIsoToAbsX) / scale2);
                float f5 = f3;
                int i7 = intList2.get(i5) + 1;
                int i8 = (int) (((this.icons.get(i7) / f5) + fIsoToAbsY) / scale2);
                if (i6 < 0 || i8 < 0 || i6 >= width || i8 >= height) {
                    f = scale;
                    f2 = scale2;
                    i = width;
                } else {
                    int i9 = i6 + (i8 * width);
                    int i10 = i9 * 7;
                    f = scale;
                    f2 = scale2;
                    int i11 = i10 + 2;
                    int i12 = this.iconGrid.get(i11);
                    i = width;
                    float f6 = i12;
                    float f7 = ((this.iconGrid.get(i10) / f5) * f6) + (this.icons.get(r13) / f5);
                    int i13 = i12 + 1;
                    float f8 = i13;
                    float f9 = ((f6 * (this.iconGrid.get(r3) / f5)) + (this.icons.get(i7) / f5)) / f8;
                    int i14 = (int) ((f7 / f8) * f5);
                    this.iconGrid.set(i10, i14);
                    int i15 = (int) (f9 * f5);
                    this.iconGrid.set(i10 + 1, i15);
                    this.iconGrid.set(i11, i13);
                    if (i12 == 0) {
                        this.iconGrid.set(i10 + 3, i14);
                        this.iconGrid.set(i10 + 4, i15);
                        this.iconGrid.set(i10 + 5, i14);
                        this.iconGrid.set(i10 + 6, i15);
                        this.iconGridIndices.add(i9);
                    } else {
                        IntList intList3 = this.iconGrid;
                        int i16 = i10 + 3;
                        intList3.set(i16, Math.min(i14, intList3.get(i16)));
                        IntList intList4 = this.iconGrid;
                        int i17 = i10 + 4;
                        intList4.set(i17, Math.min(i15, intList4.get(i17)));
                        IntList intList5 = this.iconGrid;
                        int i18 = i10 + 5;
                        intList5.set(i18, Math.max(i14, intList5.get(i18)));
                        IntList intList6 = this.iconGrid;
                        int i19 = i10 + 6;
                        intList6.set(i19, Math.max(i15, intList6.get(i19)));
                    }
                }
                i5++;
                f3 = f5;
                scale = f;
                scale2 = f2;
                width = i;
            }
            float f10 = scale;
            float f11 = f3;
            float f12 = scale2;
            int i20 = width;
            int i21 = this.icons.get(intList2.get(0) + 2);
            int i22 = 0;
            while (i22 < this.iconGridIndices.size()) {
                float f13 = this.iconGrid.get(r4) / f11;
                float f14 = this.iconGrid.get(r4 + 1) / f11;
                int i23 = (this.iconGridIndices.get(i22) * 7) + 2;
                int i24 = this.iconGrid.get(i23);
                int i25 = i22;
                float f15 = ((this.iconGrid.get(r4 + 5) / f11) - (this.iconGrid.get(r4 + 3) / f11)) / f10;
                float f16 = (this.iconGrid.get(r4 + 6) / f11) - (this.iconGrid.get(r4 + 4) / f11);
                float fPow = (((float) Math.pow((f15 * f15) + (f16 * f16), 0.5d)) / 32.0f) + 1.0f;
                float fPow2 = ((float) Math.pow(i24, 0.5d)) * f10;
                float f17 = f10 * fPow;
                engine.setScale(f17, f17);
                engine.setTransparency((int) ((fPow2 * 255.0f) / f17));
                drawIcon(engine, f13, f14, i21);
                this.iconGrid.set(i23, 0);
                i22 = i25 + 1;
            }
            this.iconGridIndices.clear();
            i2 = 0;
            scale = f10;
            scale2 = f12;
            width = i20;
            f3 = f11;
        }
    }

    public final void drawIcon(Engine engine, float f, float f2, int i) {
        float scaleY = f2 + (this.iconOffsetY - (engine.getScaleY() * 16.0f));
        engine.drawImage(Resources.IMAGE_WORLD, f, scaleY, Resources.FRAME_ZONE_WARNING_SIGN);
        engine.drawImage(Resources.IMAGE_WORLD, f, scaleY, i);
    }
}
