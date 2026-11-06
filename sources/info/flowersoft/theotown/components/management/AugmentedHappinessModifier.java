package info.flowersoft.theotown.components.management;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.HappinessContext;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AugmentedHappinessModifier implements IHappinessModifier, Saveable {
    public final List<Modifier>[] modificatorsByAttrId = new List[AttributeFactory.countAttributes()];

    public AugmentedHappinessModifier() {
        int i = 0;
        while (true) {
            List<Modifier>[] listArr = this.modificatorsByAttrId;
            if (i >= listArr.length) {
                return;
            }
            listArr[i] = new ArrayList();
            i++;
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("mods")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    Attribute attribute = AttributeFactory.getAttribute(jsonReader.nextName());
                    if (attribute == null) {
                        jsonReader.skipValue();
                    } else {
                        List<Modifier> list = this.modificatorsByAttrId[attribute.getIndex()];
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            list.add(new Modifier(jsonReader.nextString(), jsonReader.nextFloat()));
                        }
                        jsonReader.endArray();
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("mods").beginObject();
        int i = 0;
        while (true) {
            List<Modifier>[] listArr = this.modificatorsByAttrId;
            if (i < listArr.length) {
                List<Modifier> list = listArr[i];
                if (list.size() > 0) {
                    jsonWriter.name(AttributeFactory.getTag(i)).beginArray();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Modifier modifier = list.get(i2);
                        if (Math.abs(modifier.value) > 0.01f) {
                            jsonWriter.value(modifier.tag).value(modifier.value);
                        }
                    }
                    jsonWriter.endArray();
                }
                i++;
            } else {
                jsonWriter.endObject();
                return;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.management.IHappinessModifier
    public float modify(Attribute attribute, float f, HappinessContext happinessContext) {
        List<Modifier> list = this.modificatorsByAttrId[attribute.getIndex()];
        if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && list.size() > 0) {
            f = 0.5f;
        }
        if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return f;
        }
        for (int i = 0; i < list.size(); i++) {
            try {
                f += list.get(i).value;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return Math.max(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min(1.0f, f));
    }

    public void damp() {
        int i = 0;
        while (true) {
            List<Modifier>[] listArr = this.modificatorsByAttrId;
            if (i >= listArr.length) {
                return;
            }
            List<Modifier> list = listArr[i];
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.get(i2).value *= 0.9f;
            }
            i++;
        }
    }

    public float set(Attribute attribute, String str, float f) {
        List<Modifier> list = this.modificatorsByAttrId[attribute.getIndex()];
        for (int i = 0; i < list.size(); i++) {
            Modifier modifier = list.get(i);
            if (modifier.tag.equals(str)) {
                modifier.value = f;
                return f;
            }
        }
        list.add(new Modifier(str, f));
        return f;
    }

    public float add(Attribute attribute, String str, float f) {
        List<Modifier> list = this.modificatorsByAttrId[attribute.getIndex()];
        for (int i = 0; i < list.size(); i++) {
            Modifier modifier = list.get(i);
            if (modifier.tag.equals(str)) {
                float f2 = modifier.value + f;
                modifier.value = f2;
                return f2;
            }
        }
        list.add(new Modifier(str, f));
        return f;
    }

    public float get(Attribute attribute, String str) {
        List<Modifier> list = this.modificatorsByAttrId[attribute.getIndex()];
        for (int i = 0; i < list.size(); i++) {
            Modifier modifier = list.get(i);
            if (modifier.tag.equals(str)) {
                return modifier.value;
            }
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public static class Modifier {
        public String tag;
        public float value;

        public Modifier(String str, float f) {
            this.tag = str;
            this.value = f;
        }
    }
}
