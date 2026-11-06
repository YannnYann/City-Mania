package info.flowersoft.theotown.cityloader;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Bridge;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.resources.MissingDraftException;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class RoadLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "roads";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        JsonReader jsonReader2;
        Road road;
        Tiles tiles = city.getTiles();
        ArrayList<Bridge> arrayList = new ArrayList();
        jsonReader.beginArray();
        while (true) {
            boolean z = false;
            if (!jsonReader.hasNext()) {
                break;
            }
            jsonReader.beginObject();
            try {
                jsonReader2 = jsonReader;
            } catch (MissingDraftException e) {
                e = e;
                jsonReader2 = jsonReader;
            } catch (Exception e2) {
                e = e2;
                jsonReader2 = jsonReader;
            }
            try {
                road = new Road(jsonReader2, arrayList);
            } catch (MissingDraftException e3) {
                e = e3;
                while (jsonReader2.hasNext()) {
                    jsonReader2.skipValue();
                }
                this.missingDrafts.add(e);
                road = null;
            } catch (Exception e4) {
                e = e4;
                while (jsonReader2.hasNext()) {
                    jsonReader2.skipValue();
                }
                e.printStackTrace();
                road = null;
            }
            jsonReader2.endObject();
            if (road != null && (road.dLevel == 0 || road.draft.supportsSlope)) {
                Ground ground = city.getTiles().getGround(road.x, road.y);
                road.absLevel = ground.getBaseTerrainHeight() + road.level;
                if (!ground.isFlat() && road.level == 0 && road.dLevel == ground.getUpDirs()) {
                    z = true;
                }
                road.slope = z;
                city.getRoads().add(road);
                tiles.setRoad(road.getX(), road.getY(), road.level, road);
            }
        }
        jsonReader.endArray();
        for (Bridge bridge : arrayList) {
            int iRound = Math.round(Math.signum(bridge.tx - bridge.sx));
            int iRound2 = Math.round(Math.signum(bridge.ty - bridge.sy));
            int iFromDifferential = Direction.fromDifferential(iRound, iRound2);
            int iMax = Math.max(Math.abs(bridge.tx - bridge.sx), Math.abs(bridge.ty - bridge.sy));
            int i = iMax + 1;
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = bridge.sx + (i2 * iRound);
                int i4 = bridge.sy + (i2 * iRound2);
                Road road2 = tiles.getRoad(i3, i4, 0);
                if (road2 != null) {
                    if (i2 > 0 && i2 < iMax) {
                        tiles.setRoad(i3, i4, 1, road2);
                        road2.level = 1;
                        tiles.setRoad(i3, i4, 0, null);
                    } else if (i2 == 0) {
                        road2.dLevel = iFromDifferential;
                    } else {
                        road2.dLevel = Direction.opposite(iFromDifferential);
                    }
                }
            }
        }
        Gdx.app.debug("RoadLoader", "Loaded " + arrayList.size() + " bridges");
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        Tiles tiles = city.getTiles();
        jsonWriter.beginArray();
        for (Road road : city.getRoads()) {
            if (tiles.getRoad(road.getX(), road.getY(), road.level) == road) {
                jsonWriter.beginObject();
                road.save(jsonWriter, true);
                jsonWriter.endObject();
            }
        }
        jsonWriter.endArray();
    }
}
