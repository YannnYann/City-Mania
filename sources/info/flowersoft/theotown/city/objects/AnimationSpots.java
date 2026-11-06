package info.flowersoft.theotown.city.objects;

import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class AnimationSpots {
    public Color[] colors;
    public int[] offsets;
    public final int slots;
    public float[] speeds;

    public AnimationSpots(int i) {
        this.slots = i;
    }

    public float[] getSpeeds() {
        return this.speeds;
    }

    public int[] getOffsets() {
        return this.offsets;
    }

    public Color[] getColors() {
        return this.colors;
    }

    public void setSpeedPreserveFrame(int i, AnimationSpot animationSpot, int i2, float f) {
        int iActiveAnimationSpotFrame = activeAnimationSpotFrame(i, animationSpot, i2);
        setSpeed(i2, f);
        setFrame(i, animationSpot, i2, iActiveAnimationSpotFrame);
    }

    public void setSpeed(int i, float f) {
        initSpeeds();
        this.speeds[i] = f;
    }

    public float getSpeed(int i) {
        float[] fArr = this.speeds;
        if (fArr != null) {
            return fArr[i];
        }
        return 1.0f;
    }

    public void setOffset(int i, int i2) {
        initSpeeds();
        this.offsets[i] = i2;
    }

    public int getOffset(int i) {
        int[] iArr = this.offsets;
        if (iArr != null) {
            return iArr[i];
        }
        return 0;
    }

    public void setFrame(int i, AnimationSpot animationSpot, int i2, int i3) {
        setOffset(i2, 0);
        int iActiveAnimationSpotFrame = i3 - activeAnimationSpotFrame(i, animationSpot, i2);
        if (iActiveAnimationSpotFrame < 0) {
            iActiveAnimationSpotFrame += animationSpot.draft.frames.length;
        }
        setOffset(i2, iActiveAnimationSpotFrame);
    }

    public void setColor(int i, Color color) {
        initColors();
        this.colors[i] = color;
    }

    public Color getColor(int i) {
        Color[] colorArr = this.colors;
        return colorArr != null ? colorArr[i] : Colors.WHITE;
    }

    public void saveSpeeds(JsonWriter jsonWriter, String str) throws IOException {
        if (this.speeds == null) {
            return;
        }
        jsonWriter.name(str).beginArray();
        int i = 0;
        while (true) {
            float[] fArr = this.speeds;
            if (i < fArr.length) {
                jsonWriter.value(fArr[i]);
                jsonWriter.value(this.offsets[i]);
                i++;
            } else {
                jsonWriter.endArray();
                return;
            }
        }
    }

    public void saveColors(JsonWriter jsonWriter, String str) throws IOException {
        if (this.colors == null) {
            return;
        }
        jsonWriter.name(str);
        jsonWriter.beginArray();
        int i = 0;
        while (true) {
            Color[] colorArr = this.colors;
            if (i < colorArr.length) {
                jsonWriter.value(colorArr[i].toRGBA());
                i++;
            } else {
                jsonWriter.endArray();
                return;
            }
        }
    }

    public final void initSpeeds() {
        if (this.speeds != null) {
            return;
        }
        int i = this.slots;
        float[] fArr = new float[i];
        this.speeds = fArr;
        this.offsets = new int[i];
        Arrays.fill(fArr, 1.0f);
        Arrays.fill(this.offsets, 0);
    }

    public final void initColors() {
        if (this.colors != null) {
            return;
        }
        Color[] colorArr = new Color[this.slots];
        this.colors = colorArr;
        Arrays.fill(colorArr, Colors.WHITE);
    }

    public void loadSpeeds(JsonReader jsonReader) throws IOException {
        initSpeeds();
        jsonReader.beginArray();
        int i = 0;
        while (jsonReader.hasNext()) {
            float[] fArr = this.speeds;
            if (i >= fArr.length) {
                break;
            }
            fArr[i] = jsonReader.nextFloat();
            this.offsets[i] = jsonReader.nextInt();
            i++;
        }
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
    }

    public void loadColors(JsonReader jsonReader) throws IOException {
        initColors();
        jsonReader.beginArray();
        for (int i = 0; jsonReader.hasNext() && i < this.colors.length; i++) {
            int iNextInt = jsonReader.nextInt();
            this.colors[i] = Colors.getRepr((iNextInt >>> 24) & 255, (iNextInt >> 16) & 255, (iNextInt >> 8) & 255, iNextInt & 255);
        }
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
    }

    public int activeAnimationSpotFrame(int i, AnimationSpot animationSpot, int i2) {
        initSpeeds();
        if (i < 0) {
            i -= Integer.MIN_VALUE;
        }
        AnimationDraft animationDraft = animationSpot.draft;
        int iRound = Math.round((((i / 200.0f) * animationDraft.speed) + animationSpot.shift) * this.speeds[i2]) + this.offsets[i2];
        if (animationDraft.rotationAware) {
            return iRound % (animationDraft.frames.length / 4);
        }
        return iRound % animationDraft.frames.length;
    }
}
