package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "buildings";
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027 A[LOOP:2: B:14:0x0021->B:16:0x0027, LOOP_END] */
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public info.flowersoft.theotown.city.City loadTag(io.blueflower.stapel2d.util.json.JsonReader r4, info.flowersoft.theotown.city.City r5) throws java.io.IOException {
        /*
            r3 = this;
            info.flowersoft.theotown.city.modifier.CityModifier r0 = new info.flowersoft.theotown.city.modifier.CityModifier
            r1 = 0
            r0.<init>(r5, r1)
            r4.beginArray()
        L9:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L42
            r4.beginObject()
            info.flowersoft.theotown.city.objects.Building r1 = new info.flowersoft.theotown.city.objects.Building     // Catch: java.lang.ClassCastException -> L1b java.lang.IllegalArgumentException -> L1d info.flowersoft.theotown.resources.MissingDraftException -> L1f
            r1.<init>(r4)     // Catch: java.lang.ClassCastException -> L1b java.lang.IllegalArgumentException -> L1d info.flowersoft.theotown.resources.MissingDraftException -> L1f
            r0.buildRaw(r1)     // Catch: java.lang.ClassCastException -> L1b java.lang.IllegalArgumentException -> L1d info.flowersoft.theotown.resources.MissingDraftException -> L1f
            goto L3e
        L1b:
            r1 = move-exception
            goto L21
        L1d:
            r1 = move-exception
            goto L21
        L1f:
            r1 = move-exception
            goto L2f
        L21:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L2b
            r4.skipValue()
            goto L21
        L2b:
            r1.printStackTrace()
            goto L3e
        L2f:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L39
            r4.skipValue()
            goto L2f
        L39:
            java.util.Set<info.flowersoft.theotown.resources.MissingDraftException> r2 = r3.missingDrafts
            r2.add(r1)
        L3e:
            r4.endObject()
            goto L9
        L42:
            r4.endArray()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.cityloader.BuildingLoader.loadTag(io.blueflower.stapel2d.util.json.JsonReader, info.flowersoft.theotown.city.City):info.flowersoft.theotown.city.City");
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginArray();
        for (Building building : city.getBuildings()) {
            if (building != null) {
                jsonWriter.beginObject();
                building.save(jsonWriter, true);
                jsonWriter.endObject();
            }
        }
        jsonWriter.endArray();
    }
}
