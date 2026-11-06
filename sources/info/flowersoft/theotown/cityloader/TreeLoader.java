package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.resources.MissingDraftException;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class TreeLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "trees";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        Tiles tiles = city.getTiles();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            try {
                Tree tree = new Tree(jsonReader);
                tiles.setTree(tree.getX(), tree.getY(), tree);
            } catch (MissingDraftException e) {
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                this.missingDrafts.add(e);
            }
            jsonReader.endObject();
        }
        jsonReader.endArray();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        Tiles tiles = city.getTiles();
        jsonWriter.beginArray();
        for (int i = 0; i < city.getHeight(); i++) {
            for (int i2 = 0; i2 < city.getWidth(); i2++) {
                Tree tree = tiles.getTree(i2, i);
                if (tree != null) {
                    jsonWriter.beginObject();
                    tree.save(jsonWriter);
                    jsonWriter.endObject();
                }
            }
        }
        jsonWriter.endArray();
    }
}
