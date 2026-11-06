package info.flowersoft.theotown.components;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.neighbors.VirtualNeighborCity;
import info.flowersoft.theotown.draft.Draft;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultNeighborhood extends CityComponent {
    public final City city;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 21;
    }

    public DefaultNeighborhood(City city) {
        this.city = city;
    }

    public DefaultNeighborhood(City city, JsonReader jsonReader) throws IOException {
        this(city);
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("neighbors")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    VirtualNeighborCity virtualNeighborCity = new VirtualNeighborCity(jsonReader);
                    if (!virtualNeighborCity.isInvalid()) {
                        city.addNeighbor(virtualNeighborCity);
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("neighbors");
        jsonWriter.beginArray();
        for (VirtualNeighborCity virtualNeighborCity : getNeighbors()) {
            jsonWriter.beginObject();
            virtualNeighborCity.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    public VirtualNeighborCity create(Draft draft, String str, String str2) {
        VirtualNeighborCity virtualNeighborCity = new VirtualNeighborCity(draft, str, str2);
        this.city.addNeighbor(virtualNeighborCity);
        return virtualNeighborCity;
    }

    public void remove(VirtualNeighborCity virtualNeighborCity) {
        this.city.removeNeighbor(virtualNeighborCity);
    }

    public List<VirtualNeighborCity> getNeighbors() {
        return getNeighbors(new Predicate<VirtualNeighborCity>() { // from class: info.flowersoft.theotown.components.DefaultNeighborhood.1
            @Override // io.blueflower.stapel2d.util.Predicate
            public boolean apply(VirtualNeighborCity virtualNeighborCity) {
                return true;
            }
        });
    }

    public List<VirtualNeighborCity> getNeighbors(Predicate<VirtualNeighborCity> predicate) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.city.countNeighbors(); i++) {
            NeighborCity neighbor = this.city.getNeighbor(i);
            if (neighbor instanceof VirtualNeighborCity) {
                VirtualNeighborCity virtualNeighborCity = (VirtualNeighborCity) neighbor;
                if (predicate.apply(virtualNeighborCity)) {
                    arrayList.add(virtualNeighborCity);
                }
            }
        }
        return arrayList;
    }

    public List<VirtualNeighborCity> getDraftNeighbors(final Draft draft) {
        return getNeighbors(new Predicate<VirtualNeighborCity>() { // from class: info.flowersoft.theotown.components.DefaultNeighborhood.2
            @Override // io.blueflower.stapel2d.util.Predicate
            public boolean apply(VirtualNeighborCity virtualNeighborCity) {
                return draft.equals(virtualNeighborCity.getOwner());
            }
        });
    }

    public VirtualNeighborCity getDraftNeighborById(final Draft draft, final String str) {
        List<VirtualNeighborCity> neighbors = getNeighbors(new Predicate<VirtualNeighborCity>() { // from class: info.flowersoft.theotown.components.DefaultNeighborhood.3
            @Override // io.blueflower.stapel2d.util.Predicate
            public boolean apply(VirtualNeighborCity virtualNeighborCity) {
                return draft.equals(virtualNeighborCity.getOwner()) && str.equals(virtualNeighborCity.getId());
            }
        });
        if (neighbors.isEmpty()) {
            return null;
        }
        return neighbors.get(0);
    }
}
