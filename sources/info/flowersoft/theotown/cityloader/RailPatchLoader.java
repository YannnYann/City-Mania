package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import vm2.LuaValue;

/* JADX INFO: compiled from: RailPatchLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RailPatchLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "rail_patch";
    }

    public final void applyPatch(City city, boolean z) {
        if (city.getRails().isEmpty()) {
            return;
        }
        Tiles tiles = city.getTiles();
        RoadDraft roadDraft = (RoadDraft) Drafts.get("$elevated_train_track00", RoadDraft.class);
        if (roadDraft == null) {
            return;
        }
        Map mapMapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to("$rail01", Drafts.get("$elevated_train_track01", RoadDraft.class)));
        List<Rail> rails = city.getRails();
        Intrinsics.checkNotNullExpressionValue(rails, "getRails(...)");
        for (Rail rail : rails) {
            RoadDraft roadDraft2 = (RoadDraft) mapMapOf.get(rail.getDraft().id);
            RoadDraft roadDraft3 = roadDraft2 == null ? roadDraft : roadDraft2;
            Road road = tiles.getRoad(rail.getX(), rail.getY(), 2);
            if (road != null) {
                tiles.setRoad(rail.getX(), rail.getY(), 2, null);
                city.getRoads().remove(road);
            }
            Road road2 = new Road(roadDraft3, rail.getX(), rail.getY(), 2, 0, rail.getFrame());
            road2.setPile(rail.isPile());
            city.getTiles().setRail(rail.getX(), rail.getY(), null);
            tiles.setRoad(rail.getX(), rail.getY(), 2, road2);
            city.getRoads().add(road2);
        }
        city.getRails().clear();
        Map mapMapOf2 = MapsKt__MapsKt.mapOf(TuplesKt.to(Drafts.get("$railwaystation00", BuildingDraft.class), Drafts.get("$elevated_train_station_composition00", BuildingDraft.class)), TuplesKt.to(Drafts.get("$nativerailwaystation01", BuildingDraft.class), Drafts.get("$elevated_train_station_composition01", BuildingDraft.class)));
        CityModifier cityModifier = new CityModifier(city, false);
        for (Map.Entry entry : mapMapOf2.entrySet()) {
            BuildingDraft buildingDraft = (BuildingDraft) entry.getKey();
            BuildingDraft buildingDraft2 = (BuildingDraft) entry.getValue();
            SortedList<Building> buildingsOfDraft = city.getBuildings().getBuildingsOfDraft(buildingDraft);
            Intrinsics.checkNotNullExpressionValue(buildingsOfDraft, "getBuildingsOfDraft(...)");
            for (Building building : CollectionsKt___CollectionsKt.toList(buildingsOfDraft)) {
                cityModifier.remove(building, null);
                int frame = building.getFrame() % 4;
                List<Building> listBuild = cityModifier.build(buildingDraft2, (building.getX() + (building.getWidth() / 2)) - (buildingDraft2.getWidth(frame) / 2), (building.getY() + (building.getHeight() / 2)) - (buildingDraft2.getHeight(frame) / 2), frame, (LuaValue) null);
                Intrinsics.checkNotNullExpressionValue(listBuild, "build(...)");
                Iterator<T> it = listBuild.iterator();
                while (it.hasNext()) {
                    cityModifier.finishBuilding((Building) it.next(), null);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader src, City city) throws IOException {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(city, "city");
        try {
            applyPatch(city, true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        src.beginObject();
        src.endObject();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        Intrinsics.checkNotNullParameter(city, "city");
        try {
            applyPatch(city, false);
            return city;
        } catch (Exception e) {
            e.printStackTrace();
            return city;
        }
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter dest, City city) throws IOException {
        Intrinsics.checkNotNullParameter(dest, "dest");
        Intrinsics.checkNotNullParameter(city, "city");
        dest.beginObject();
        dest.endObject();
    }
}
