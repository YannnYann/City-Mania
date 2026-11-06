package info.flowersoft.theotown.components;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.components.water.WaterWorker;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.MultiList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultWater extends CityComponent {
    public WaterWorker worker;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 8;
    }

    public DefaultWater(JsonReader jsonReader, City city) throws IOException {
        this.tiles = city.getTiles();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("pipes")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = "$pipe00";
                    int iNextInt = 0;
                    int iNextInt2 = 0;
                    int iNextInt3 = 0;
                    int iNextInt4 = 0;
                    while (jsonReader.hasNext()) {
                        String strNextName = jsonReader.nextName();
                        strNextName.getClass();
                        switch (strNextName) {
                            case "f":
                            case "frame":
                                iNextInt3 = jsonReader.nextInt();
                                break;
                            case "x":
                                iNextInt = jsonReader.nextInt();
                                break;
                            case "y":
                                iNextInt2 = jsonReader.nextInt();
                                break;
                            case "id":
                                strNextString = jsonReader.nextString();
                                break;
                            case "connection dir":
                                iNextInt4 = jsonReader.nextInt();
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    PipeDraft pipeDraft = (PipeDraft) Drafts.ALL.get(strNextString);
                    if (pipeDraft != null) {
                        Pipe pipe = new Pipe(pipeDraft, iNextInt, iNextInt2, iNextInt3);
                        pipe.setConnection(iNextInt4);
                        this.tiles.setPipe(iNextInt, iNextInt2, pipe);
                        city.getPipes().add(pipe);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public DefaultWater() {
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("pipes");
        jsonWriter.beginArray();
        for (int i = 0; i < this.city.getHeight(); i++) {
            for (int i2 = 0; i2 < this.city.getWidth(); i2++) {
                Pipe pipe = this.tiles.getPipe(i2, i);
                if (pipe != null) {
                    jsonWriter.beginObject();
                    if (!pipe.getDraft().id.equals("$pipe00")) {
                        jsonWriter.name(C3670j8.x).value(pipe.getDraft().id);
                    }
                    jsonWriter.name("x").value(i2);
                    jsonWriter.name("y").value(i);
                    jsonWriter.name("f").value(pipe.getFrame());
                    int connectionDir = pipe.getConnectionDir();
                    if (connectionDir != 0) {
                        jsonWriter.name("connection dir").value(connectionDir);
                    }
                    jsonWriter.endObject();
                }
            }
        }
        jsonWriter.endArray();
    }

    public WaterWorker getWorker() {
        return this.worker;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        WaterWorker waterWorker = new WaterWorker(city);
        this.worker = waterWorker;
        addWorker(waterWorker);
    }

    public void calculate() {
        this.worker.startAnytime();
    }

    public int countNetworks() {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups != null) {
            return lastGroups.size();
        }
        return 0;
    }

    public long availableWater() {
        return availableWater(-1);
    }

    public long consumedWater() {
        return consumedWater(-1);
    }

    public long nativeAvailableWater() {
        return nativeAvailableWater(-1);
    }

    public long nativeConsumedWater() {
        return nativeConsumedWater(-1);
    }

    public Building sampleProducer(int i) {
        WaterWorker.WaterGroup group = getGroup(i);
        if (group == null) {
            return null;
        }
        MultiList<Building>.SingleList producer = group.getProducer();
        if (producer.isEmpty()) {
            return null;
        }
        return producer.get(Resources.RND.nextInt(producer.size()));
    }

    public Building sampleConsumer(int i) {
        WaterWorker.WaterGroup group = getGroup(i);
        if (group == null) {
            return null;
        }
        MultiList<Building>.SingleList needer = group.getNeeder();
        if (needer.isEmpty()) {
            return null;
        }
        return needer.get(Resources.RND.nextInt(needer.size()));
    }

    public final WaterWorker.WaterGroup getGroup(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups == null || lastGroups.size() <= i) {
            return null;
        }
        Iterator<WaterWorker.WaterGroup> it = lastGroups.iterator();
        for (int i2 = 0; i2 < i && it.hasNext(); i2++) {
            it.next();
        }
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public long availableWater(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        long water = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    water = (long) (water + waterGroup.getWater());
                }
                i2++;
            }
        }
        return water;
    }

    public long consumedWater(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        long usage = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    usage = (long) (usage + waterGroup.getUsage());
                }
                i2++;
            }
        }
        return usage;
    }

    public long nativeAvailableWater(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        long water = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    for (int i3 = 0; i3 < waterGroup.getProducer().size(); i3++) {
                        water += waterGroup.getProducer().get(i3).getWater();
                    }
                }
                i2++;
            }
        }
        return water;
    }

    public long nativeConsumedWater(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        long water = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    for (int i3 = 0; i3 < waterGroup.getNeeder().size(); i3++) {
                        water -= waterGroup.getNeeder().get(i3).getWater();
                    }
                }
                i2++;
            }
        }
        return water;
    }

    public float usageRatio() {
        return usageRatio(-1);
    }

    public float usageRatio(int i) {
        float fConsumedWater = consumedWater(i);
        float fAvailableWater = availableWater(i);
        return fAvailableWater > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? fConsumedWater / fAvailableWater : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public int availableWaterBuildings() {
        return availableWaterBuildings(-1);
    }

    public int availableWaterBuildings(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        int size = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    size += waterGroup.getProducer().size();
                }
                i2++;
            }
        }
        return size;
    }

    public int consumedWaterBuildings() {
        return consumedWaterBuildings(-1);
    }

    public int consumedWaterBuildings(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        int size = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    size += waterGroup.getNeeder().size();
                }
                i2++;
            }
        }
        return size;
    }

    public float getWaterWaste() {
        return getWaterWaste(-1);
    }

    public float getWaterWaste(int i) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups != null) {
            int i2 = 0;
            float waste = 0.0f;
            for (WaterWorker.WaterGroup waterGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    waste += waterGroup.getWaste();
                }
                i2++;
            }
            float fMax = Math.max(waste, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            float fAvailableWater = availableWater(i);
            if (fAvailableWater > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                float f = fMax / fAvailableWater;
                return f * f;
            }
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public int getNetwork(Building building) {
        Set<WaterWorker.WaterGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups == null) {
            return -2;
        }
        Iterator<WaterWorker.WaterGroup> it = lastGroups.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().getProducer().contains(building)) {
                return i2;
            }
            i2++;
        }
        Iterator<WaterWorker.WaterGroup> it2 = lastGroups.iterator();
        while (it2.hasNext()) {
            if (it2.next().getNeeder().contains(building)) {
                return i;
            }
            i++;
        }
        return -2;
    }
}
