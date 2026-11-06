package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.tools.marker.AttributeMarker;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.DensityMarker;
import info.flowersoft.theotown.tools.marker.HappinessMarker;
import info.flowersoft.theotown.tools.marker.InfluenceMarker;
import info.flowersoft.theotown.tools.marker.LevelMarker;
import info.flowersoft.theotown.tools.marker.MetroMarker;
import info.flowersoft.theotown.tools.marker.PowerMarker;
import info.flowersoft.theotown.tools.marker.TrafficMarker;
import info.flowersoft.theotown.tools.marker.WaterMarker;
import info.flowersoft.theotown.tools.marker.WaterPipeMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Getter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ToolResolver {
    public static Map<Class<? extends Disaster>, String> disasterToName = new HashMap();
    public City city;

    public ToolResolver(City city) {
        this.city = city;
    }

    public BuildTool resolve(BuildingDraft buildingDraft) {
        return resolve(buildingDraft, -1);
    }

    public BuildTool resolve(BuildingDraft buildingDraft, int i) {
        BuildTool buildingTool;
        BuildTool beachTool;
        if (buildingDraft.id.startsWith("$beach")) {
            beachTool = new BeachTool(buildingDraft);
        } else {
            if (buildingDraft.frameAlignment) {
                buildingTool = new AlignedBuildingTool(buildingDraft, i);
            } else {
                buildingTool = new BuildingTool(buildingDraft, i);
            }
            beachTool = buildingTool;
        }
        if (buildingDraft.influencePreview) {
            if (buildingDraft.power > 0 || buildingDraft.superConductive) {
                beachTool.setMarker(new PowerMarker(this.city));
            } else if (buildingDraft.water > 0) {
                beachTool.setMarker(new WaterMarker(this.city));
            } else if (buildingDraft.getMetaTag("metro") != null) {
                beachTool.setMarker(new MetroMarker(this.city));
            } else {
                BuildingType buildingType = buildingDraft.buildingType;
                if (buildingType == BuildingType.RAILWAY_STATION) {
                    beachTool.setMarker(new InfluenceMarker(this.city, InfluenceType.PASSENGER_TRAIN));
                } else if (!buildingType.isRCIOrDeco()) {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < InfluenceType.cachedValues().length; i2++) {
                        if (buildingDraft.influenceInduceVector[i2] > 0 && !InfluenceType.cachedValues()[i2].isHidden()) {
                            arrayList.add(InfluenceType.cachedValues()[i2]);
                        }
                    }
                    if (arrayList.size() >= 2) {
                        arrayList.remove(InfluenceType.NATURE);
                    }
                    if (!arrayList.isEmpty()) {
                        InfluenceMarker influenceMarker = new InfluenceMarker(this.city);
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            influenceMarker.addInfluence((InfluenceType) arrayList.get(i3));
                        }
                        beachTool.setMarker(influenceMarker);
                    }
                }
            }
        }
        return finalizeDraftBasedBuildTool(buildingDraft, beachTool);
    }

    public BuildTool resolve(ZoneDraft zoneDraft) {
        return finalizeDraftBasedBuildTool(zoneDraft, new ZoneTool(zoneDraft));
    }

    public RemoveTool resolveRemove() {
        return new RemoveTool();
    }

    public RemovePipeTool resolveRemovePipe() {
        return new RemovePipeTool();
    }

    public RemoveZoneTool resolveRemoveZone() {
        return new RemoveZoneTool();
    }

    public RemoveTunnelTool resolveRemoveTunnelTool() {
        return new RemoveTunnelTool(-1);
    }

    public RemoveTunnelTool resolveRemoveMetroTool() {
        return new RemoveTunnelTool(-2);
    }

    public RemoveUndergroundWireTool resolveRemoveUndergroundWireTool() {
        return new RemoveUndergroundWireTool();
    }

    public RemoveRoadDecorationTool resolveRemoveRoadDecorationTool() {
        return new RemoveRoadDecorationTool();
    }

    public RemoveFenceTool resolveRemoveFenceTool() {
        return new RemoveFenceTool();
    }

    public MarkTool resolve(final InfluenceType influenceType) {
        MarkTool markTool = new MarkTool(new InfluenceMarker(this.city, influenceType));
        markTool.setName(new Getter() { // from class: info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return ToolResolver.$r8$lambda$OueMuE7US0dFbOX4_WkuwC1DMDg(this.f$0, influenceType);
            }
        });
        return markTool;
    }

    public static /* synthetic */ String $r8$lambda$OueMuE7US0dFbOX4_WkuwC1DMDg(ToolResolver toolResolver, InfluenceType influenceType) {
        toolResolver.getClass();
        int nameId = influenceType.getNameId();
        if (nameId != 0) {
            return toolResolver.city.getTranslator().translate(nameId);
        }
        return influenceType.name();
    }

    public MarkTool resolve(final BuildToolMarker buildToolMarker) {
        MarkTool markTool = new MarkTool(buildToolMarker);
        markTool.setName(new Getter() { // from class: info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return ToolResolver.$r8$lambda$o2K7ReKssLKvG1wl6jdjuAEwuJg(this.f$0, buildToolMarker);
            }
        });
        return markTool;
    }

    public static /* synthetic */ String $r8$lambda$o2K7ReKssLKvG1wl6jdjuAEwuJg(ToolResolver toolResolver, BuildToolMarker buildToolMarker) {
        toolResolver.getClass();
        return new DraftLocalizer(toolResolver.city).getTitle("$marker_" + buildToolMarker.getTag().toLowerCase(Locale.ENGLISH));
    }

    public MarkTool resolve(final Attribute attribute) {
        MarkTool markTool = new MarkTool(new AttributeMarker(this.city, attribute));
        markTool.setName(new Getter() { // from class: info.flowersoft.theotown.tools.ToolResolver$$ExternalSyntheticLambda2
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return this.f$0.city.getTranslator().translate(attribute.getNameLocalizationId());
            }
        });
        return markTool;
    }

    public DisasterTool resolve(final Class<? extends Disaster> cls) {
        return new DisasterTool() { // from class: info.flowersoft.theotown.tools.ToolResolver.1
            @Override // info.flowersoft.theotown.tools.DisasterTool
            public Class<? extends Disaster> getDisasterType() {
                return cls;
            }

            @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
            public String getName() {
                if (ToolResolver.disasterToName.containsKey(cls)) {
                    return (String) ToolResolver.disasterToName.get(cls);
                }
                return "Unnamed disaster";
            }
        };
    }

    public RoadTool resolve(RoadDraft roadDraft) {
        return (RoadTool) finalizeDraftBasedBuildTool(roadDraft, new RoadTool(roadDraft));
    }

    public RailTool resolve(RailDraft railDraft) {
        return (RailTool) finalizeDraftBasedBuildTool(railDraft, new RailTool(railDraft));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final <T extends BuildTool> T finalizeDraftBasedBuildTool(Draft draft, T t) {
        JSONObject metaTag;
        if (t != null && draft != null && (metaTag = draft.getMetaTag("tool")) != null) {
            String strOptString = metaTag.optString("marker");
            strOptString.getClass();
            switch (strOptString) {
                case "happiness":
                    t.setMarker(new HappinessMarker(this.city));
                    break;
                case "traffic":
                    t.setMarker(new TrafficMarker(this.city));
                    return t;
                case "pipe":
                    t.setMarker(new WaterPipeMarker(this.city));
                    return t;
                case "level":
                    t.setMarker(new LevelMarker(this.city));
                    return t;
                case "power":
                    t.setMarker(new PowerMarker(this.city));
                    return t;
                case "water":
                    t.setMarker(new WaterMarker(this.city));
                    return t;
                case "density":
                    t.setMarker(new DensityMarker(this.city));
                    return t;
            }
        }
        return t;
    }

    public static void setDisasterName(Class<? extends Disaster> cls, String str) {
        disasterToName.put(cls, str);
    }
}
