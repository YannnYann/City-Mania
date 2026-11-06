package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class GroundLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "ground";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a9  */
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public info.flowersoft.theotown.city.City loadTag(io.blueflower.stapel2d.util.json.JsonReader r17, info.flowersoft.theotown.city.City r18) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 794
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.cityloader.GroundLoader.loadTag(io.blueflower.stapel2d.util.json.JsonReader, info.flowersoft.theotown.city.City):info.flowersoft.theotown.city.City");
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        throw new IllegalStateException("Ground must be provided");
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        Tiles tiles = city.getTiles();
        jsonWriter.beginObject();
        if (Drafts.ZONES.isEmpty()) {
            throw new IllegalStateException("No zones defined");
        }
        jsonWriter.name("zone mapping").beginArray();
        for (int i = 0; i < Drafts.ZONES.size(); i++) {
            jsonWriter.value(Drafts.ZONES.get(i).id);
        }
        jsonWriter.endArray();
        if (Drafts.ZONES.isEmpty()) {
            throw new IllegalStateException("No ground types defined");
        }
        jsonWriter.name("ground type arr").beginArray();
        for (int i2 = 0; i2 < Drafts.GROUNDS.size(); i2++) {
            GroundDraft groundDraft = Drafts.GROUNDS.get(i2);
            jsonWriter.value(groundDraft.id);
            groundDraft.index = i2;
        }
        jsonWriter.endArray();
        jsonWriter.name("ground arr").beginArray();
        for (int i3 = 0; i3 < city.getHeight(); i3++) {
            for (int i4 = 0; i4 < city.getWidth(); i4++) {
                jsonWriter.beginObject();
                tiles.getGround(i4, i3).save(jsonWriter, i4, i3, tiles);
                jsonWriter.endObject();
                ZoneDraft zone = tiles.getZone(i4, i3);
                if (zone != null) {
                    jsonWriter.value(zone.tempId);
                }
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("fences").beginArray();
        for (int i5 = 0; i5 < city.getHeight(); i5++) {
            for (int i6 = 0; i6 < city.getWidth(); i6++) {
                if (tiles.hasFence(i6, i5)) {
                    jsonWriter.beginObject();
                    jsonWriter.name("x").value(i6);
                    jsonWriter.name("y").value(i5);
                    jsonWriter.name("f").beginArray();
                    for (int i7 = 0; i7 < 4; i7++) {
                        FenceDraft fence = tiles.getFence(i6, i5, i7);
                        if (fence != null) {
                            jsonWriter.value(fence.id);
                        } else {
                            jsonWriter.nullValue();
                        }
                    }
                    jsonWriter.endArray();
                    jsonWriter.endObject();
                }
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("heights").beginArray();
        short s = 0;
        for (int i8 = 0; i8 < city.getHeight(); i8++) {
            int i9 = 0;
            while (i9 < city.getWidth()) {
                short s2 = tiles.getGround(i9, i8).height;
                jsonWriter.value(s2 - s);
                i9++;
                s = s2;
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("heightsDX").beginArray();
        short s3 = 0;
        for (int i10 = 0; i10 < city.getWidth(); i10++) {
            int i11 = 0;
            while (i11 < city.getHeight()) {
                short s4 = tiles.getGround(i10, i11).heightDX;
                jsonWriter.value(s4 - s3);
                i11++;
                s3 = s4;
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("heightsDY").beginArray();
        short s5 = 0;
        for (int i12 = 0; i12 < city.getHeight(); i12++) {
            int i13 = 0;
            while (i13 < city.getWidth()) {
                short s6 = tiles.getGround(i13, i12).heightDY;
                jsonWriter.value(s6 - s5);
                i13++;
                s5 = s6;
            }
        }
        jsonWriter.endArray();
        jsonWriter.endObject();
    }
}
