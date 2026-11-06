package info.flowersoft.theotown.city.components;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingSurvey {
    public static final float[][] commercialFactors = {new float[]{0.9f, 0.1f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT}, new float[]{0.1f, 0.7f, 0.2f}, new float[]{UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f, 0.8f}};
    public static final float[][] industrialFactors = {new float[]{0.9f, 0.1f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT}, new float[]{0.1f, 0.7f, 0.2f}, new float[]{UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f, 0.8f}};
    public final int[] commercial;
    public final float[] commercialHappiness;
    public final int[] industrial;
    public final float[] industrialHappiness;
    public BuildingProperty[] properties;
    public float ratingDelta;
    public float ratingValue;
    public final int[] residential;
    public final float[] residentialHappiness;

    public BuildingSurvey(JsonReader jsonReader) throws IOException {
        this();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "rating":
                    jsonReader.beginArray();
                    this.ratingValue = jsonReader.nextInt() / 1000.0f;
                    this.ratingDelta = jsonReader.nextInt() / 1000.0f;
                    jsonReader.endArray();
                    break;
                case "rci":
                    jsonReader.beginArray();
                    int[][] iArr = {this.residential, this.commercial, this.industrial};
                    float[][] fArr = {this.residentialHappiness, this.commercialHappiness, this.industrialHappiness};
                    for (int i = 0; i < 3; i++) {
                        int[] iArr2 = iArr[i];
                        for (int i2 = 0; i2 < 6; i2++) {
                            iArr2[i2] = jsonReader.nextInt();
                        }
                    }
                    if (jsonReader.hasNext()) {
                        for (int i3 = 0; i3 < 3; i3++) {
                            float[] fArr2 = fArr[i3];
                            for (int i4 = 0; i4 < 3; i4++) {
                                fArr2[i4] = jsonReader.nextFloat();
                            }
                        }
                    }
                    jsonReader.endArray();
                    break;
                case "rci space":
                    jsonReader.beginArray();
                    int[][] iArr3 = {this.residential, this.commercial, this.industrial};
                    for (int i5 = 0; i5 < 3; i5++) {
                        int[] iArr4 = iArr3[i5];
                        for (int i6 = 6; i6 < 9; i6++) {
                            iArr4[i6] = jsonReader.nextInt();
                        }
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public BuildingSurvey(BuildingSurvey buildingSurvey) {
        this(buildingSurvey.residential, buildingSurvey.commercial, buildingSurvey.industrial, buildingSurvey.residentialHappiness, buildingSurvey.commercialHappiness, buildingSurvey.industrialHappiness, buildingSurvey.ratingValue, buildingSurvey.ratingDelta);
    }

    public BuildingSurvey() {
        this(new int[9], new int[9], new int[9], new float[3], new float[3], new float[3], 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public BuildingSurvey(int[] iArr, int[] iArr2, int[] iArr3, float[] fArr, float[] fArr2, float[] fArr3, float f, float f2) {
        this.properties = new BuildingProperty[16];
        this.residential = iArr;
        this.commercial = iArr2;
        this.industrial = iArr3;
        this.residentialHappiness = fArr;
        this.commercialHappiness = fArr2;
        this.industrialHappiness = fArr3;
        this.ratingValue = f;
        this.ratingDelta = f2;
        for (int i = 0; i < 16; i++) {
            this.properties[i] = new BuildingProperty();
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        int[][] iArr = {this.residential, this.commercial, this.industrial};
        float[][] fArr = {this.residentialHappiness, this.commercialHappiness, this.industrialHappiness};
        jsonWriter.name("rci");
        jsonWriter.beginArray();
        for (int i = 0; i < 3; i++) {
            int[] iArr2 = iArr[i];
            for (int i2 = 0; i2 < 6; i2++) {
                jsonWriter.value(iArr2[i2]);
            }
        }
        for (int i3 = 0; i3 < 3; i3++) {
            for (float f : fArr[i3]) {
                jsonWriter.value(f);
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("rci space");
        jsonWriter.beginArray();
        for (int i4 = 0; i4 < 3; i4++) {
            int[] iArr3 = iArr[i4];
            for (int i5 = 6; i5 < 9; i5++) {
                jsonWriter.value(iArr3[i5]);
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("rating");
        jsonWriter.beginArray();
        jsonWriter.value((int) (this.ratingValue * 1000.0f));
        jsonWriter.value((int) (this.ratingDelta * 1000.0f));
        jsonWriter.endArray();
    }

    public float getBuildingHappiness() {
        float fMin = 1.0f;
        for (int i = 0; i < 3; i++) {
            int i2 = this.residential[i];
            if (i2 > 0) {
                fMin = Math.min(fMin, this.residentialHappiness[i] / i2);
            }
        }
        return fMin;
    }

    public float getResidentialBuildingHappiness(int i, float f) {
        int i2 = this.residential[i];
        return i2 > 0 ? this.residentialHappiness[i] / i2 : f;
    }

    public float getCommercialBuildingHappiness(int i, float f) {
        int i2 = this.commercial[i];
        return i2 > 0 ? this.commercialHappiness[i] / i2 : f;
    }

    public float getIndustrialBuildingHappiness(int i, float f) {
        int i2 = this.industrial[i];
        return i2 > 0 ? this.industrialHappiness[i] / i2 : f;
    }

    public int getResidentialSpace(int i, int i2) {
        int[] iArr = this.residential;
        return iArr[i] + (i2 * iArr[i + 6]);
    }

    public int getCommercialJobs(int i, int i2) {
        float[] fArr = commercialFactors[i];
        float f = fArr[0];
        int[] iArr = this.commercial;
        return Math.round((f * (iArr[0] + (iArr[6] * i2))) + (fArr[1] * (iArr[1] + (iArr[7] * i2))) + (fArr[2] * (iArr[2] + (i2 * iArr[8]))));
    }

    public int getIndustrialJobs(int i, int i2) {
        float[] fArr = industrialFactors[i];
        float f = fArr[0];
        int[] iArr = this.industrial;
        return Math.round((f * (iArr[0] + (iArr[6] * i2))) + (fArr[1] * (iArr[1] + (iArr[7] * i2))) + (fArr[2] * (iArr[2] + (i2 * iArr[8]))));
    }

    public int getJobs(int i, int i2) {
        return getCommercialJobs(i, i2) + getIndustrialJobs(i, i2);
    }

    public int getShoppingPlaces(int i, int i2) {
        int[] iArr = this.commercial;
        return iArr[i] + (i2 * iArr[i + 6]);
    }

    public int getProducers(int i, int i2) {
        int[] iArr = this.industrial;
        return iArr[i] + (i2 * iArr[i + 6]);
    }

    public void set(BuildingSurvey buildingSurvey) {
        int[] iArr = buildingSurvey.residential;
        int[] iArr2 = this.residential;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = buildingSurvey.commercial;
        int[] iArr4 = this.commercial;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = buildingSurvey.industrial;
        int[] iArr6 = this.industrial;
        System.arraycopy(iArr5, 0, iArr6, 0, iArr6.length);
        float[] fArr = buildingSurvey.residentialHappiness;
        float[] fArr2 = this.residentialHappiness;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        float[] fArr3 = buildingSurvey.commercialHappiness;
        float[] fArr4 = this.commercialHappiness;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        float[] fArr5 = buildingSurvey.industrialHappiness;
        float[] fArr6 = this.industrialHappiness;
        System.arraycopy(fArr5, 0, fArr6, 0, fArr6.length);
        this.ratingValue = buildingSurvey.ratingValue;
        this.ratingDelta = buildingSurvey.ratingDelta;
        for (int i = 0; i < 16; i++) {
            this.properties[i].setTo(buildingSurvey.properties[i]);
        }
    }

    public float getRatingValue() {
        return this.ratingValue;
    }

    public float getRatingDelta() {
        return this.ratingDelta;
    }
}
