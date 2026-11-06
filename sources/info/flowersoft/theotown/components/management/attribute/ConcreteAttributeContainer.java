package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.objects.AttributeContainer;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ConcreteAttributeContainer implements AttributeContainer, Saveable {
    public final float[] deltas;
    public final int happinessIndex;
    public float happinessVariance;
    public final float[] values;
    public float minHappinessValue = -1.0f;
    public int minHappinessIndex = -1;
    public float maxHappinessValue = -1.0f;
    public float happinessMean = -1.0f;

    public ConcreteAttributeContainer() {
        float[] fArr = new float[AttributeFactory.countAttributes()];
        this.values = fArr;
        this.deltas = new float[fArr.length];
        Arrays.fill(fArr, -1.0f);
        this.happinessIndex = AttributeFactory.getIndex((Class<? extends Attribute>) GeneralHappiness.class);
    }

    public float[] getValues() {
        return this.values;
    }

    public float[] getDeltas() {
        return this.deltas;
    }

    @Override // info.flowersoft.theotown.city.objects.AttributeContainer
    public boolean isUnhappy() {
        float f = this.minHappinessValue;
        return f <= 0.2f && f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("attributes")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    float fNextInt = jsonReader.nextInt() / 1000.0f;
                    float fNextInt2 = jsonReader.nextInt() / 1000.0f;
                    int index = AttributeFactory.getIndex(jsonReader.nextString());
                    if (index >= 0) {
                        this.values[index] = fNextInt;
                        this.deltas[index] = fNextInt2;
                    }
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        calculateStats();
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        List<String> tags = AttributeFactory.getTags();
        jsonWriter.name("attributes");
        jsonWriter.beginArray();
        int i = 0;
        while (true) {
            float[] fArr = this.values;
            if (i >= fArr.length) {
                jsonWriter.endArray();
                return;
            }
            if (fArr[i] >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                jsonWriter.beginArray();
                jsonWriter.value(tags.get(i));
                jsonWriter.value((int) (this.values[i] * 1000.0f));
                jsonWriter.value((int) (this.deltas[i] * 1000.0f));
                jsonWriter.endArray();
            }
            i++;
        }
    }

    public float getMinHappinessValue() {
        return this.minHappinessValue;
    }

    public int getMinHappinessIndex() {
        return this.minHappinessIndex;
    }

    public float getMaxHappinessValue() {
        return this.maxHappinessValue;
    }

    public float getHappinessMean() {
        return this.happinessMean;
    }

    public float getHappinessVariance() {
        return this.happinessVariance;
    }

    public float getHappiness() {
        return this.values[this.happinessIndex];
    }

    public void calculateStats() {
        List<Attribute> attributes = AttributeFactory.getAttributes();
        this.minHappinessValue = Float.MAX_VALUE;
        this.minHappinessIndex = -1;
        this.maxHappinessValue = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.happinessMean = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.happinessVariance = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            float[] fArr = this.values;
            if (i2 >= fArr.length) {
                break;
            }
            float f = fArr[i2];
            if (f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && attributes.get(i2).isHappiness()) {
                if (f < this.minHappinessValue) {
                    this.minHappinessValue = f;
                    this.minHappinessIndex = i2;
                }
                this.maxHappinessValue = Math.max(f, this.maxHappinessValue);
                this.happinessMean += f;
                i3++;
            }
            i2++;
        }
        if (i3 > 0) {
            float f2 = i3;
            this.happinessMean /= f2;
            while (true) {
                float[] fArr2 = this.values;
                if (i < fArr2.length) {
                    float f3 = fArr2[i];
                    if (f3 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && attributes.get(i).isHappiness()) {
                        float f4 = f3 - this.happinessMean;
                        this.happinessVariance += f4 * f4;
                    }
                    i++;
                } else {
                    this.happinessVariance /= f2;
                    return;
                }
            }
        } else {
            this.happinessMean = -1.0f;
            this.minHappinessValue = -1.0f;
            this.maxHappinessValue = -1.0f;
        }
    }

    public List<Integer> getSortedHappinesses() {
        ArrayList arrayList = new ArrayList();
        List<Attribute> attributes = AttributeFactory.getAttributes();
        int i = 0;
        while (true) {
            float[] fArr = this.values;
            if (i >= fArr.length) {
                Collections.sort(arrayList, new Comparator<Integer>() { // from class: info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer.1
                    @Override // java.util.Comparator
                    public int compare(Integer num, Integer num2) {
                        return (int) Math.signum(ConcreteAttributeContainer.this.values[num2.intValue()] - ConcreteAttributeContainer.this.values[num.intValue()]);
                    }
                });
                return arrayList;
            }
            if (fArr[i] >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && attributes.get(i).isHappiness()) {
                arrayList.add(Integer.valueOf(i));
            }
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.values.length; i++) {
            String str = AttributeFactory.getTags().get(i);
            Attribute attribute = AttributeFactory.getAttributes().get(i);
            float f = this.values[i];
            sb.append(str);
            sb.append(": ");
            sb.append(f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? Float.valueOf(f) : "None");
            sb.append(' ');
            sb.append(attribute.getClass().getSimpleName());
            sb.append(attribute.isHappiness() ? " (happiness)" : "");
            if (i < this.values.length - 1) {
                sb.append('\n');
            }
        }
        return sb.toString();
    }
}
