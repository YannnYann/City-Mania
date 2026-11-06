package info.flowersoft.theotown.ui.selectable;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.disaster.BlizzardDisaster;
import info.flowersoft.theotown.components.disaster.EarthQuakeDisaster;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.components.disaster.FloodingDisaster;
import info.flowersoft.theotown.components.disaster.GreenSlimeDisaster;
import info.flowersoft.theotown.components.disaster.IllnessDisaster;
import info.flowersoft.theotown.components.disaster.MeteoriteDisaster;
import info.flowersoft.theotown.components.disaster.NukeDisaster;
import info.flowersoft.theotown.components.disaster.PinkSlimeDisaster;
import info.flowersoft.theotown.components.disaster.RiotDisaster;
import info.flowersoft.theotown.components.disaster.TornadoDisaster;
import info.flowersoft.theotown.components.disaster.UfoDisaster;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.DataDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ScriptDraft;
import info.flowersoft.theotown.draft.TemplateDraft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.draft.ToolGroupDraft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import io.blueflower.stapel2d.drawing.Color;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableResolver {
    public final City city;

    public SelectableResolver(City city) {
        this.city = city;
    }

    public SelectableDraft resolve(final Draft draft, boolean z, Color color) {
        ToolDraft toolDraft;
        if (draft.hidden && !z) {
            return null;
        }
        if (draft instanceof ToolGroupDraft) {
            ToolGroupDraft toolGroupDraft = (ToolGroupDraft) draft;
            SelectableDraft[] selectableDraftArr = new SelectableDraft[toolGroupDraft.drafts.size()];
            for (int i = 0; i < toolGroupDraft.drafts.size(); i++) {
                selectableDraftArr[i] = resolve(toolGroupDraft.drafts.get(i), z, color);
            }
            return new SelectableToolGroupDraft(this.city, toolGroupDraft, selectableDraftArr);
        }
        if (draft instanceof BuildingDraft) {
            BuildingDraft buildingDraft = (BuildingDraft) draft;
            if (buildingDraft.buildingType.isRCIOrDeco() && buildingDraft.buildingType != BuildingType.DECORATION) {
                return new SelectableRawBuildingDraft(this.city, buildingDraft);
            }
            return new SelectableBuildingDraft(this.city, buildingDraft);
        }
        if (draft instanceof RoadDraft) {
            return new SelectableRoadDraft(this.city, (RoadDraft) draft);
        }
        if (draft instanceof RoadDecorationDraft) {
            return new SelectableRoadDecorationDraft(this.city, (RoadDecorationDraft) draft);
        }
        if (draft instanceof WireDraft) {
            return new SelectableWireDraft(this.city, (WireDraft) draft);
        }
        if (draft instanceof PipeDraft) {
            return new SelectablePipeDraft(this.city, (PipeDraft) draft);
        }
        if (draft instanceof RailDraft) {
            return new SelectableRailDraft(this.city, (RailDraft) draft);
        }
        if (draft instanceof ZoneDraft) {
            return new SelectableZone(this.city, (ZoneDraft) draft);
        }
        if (draft instanceof TreeDraft) {
            return new SelectableTreeDraft(this.city, (TreeDraft) draft);
        }
        if (draft instanceof GroundDraft) {
            return new SelectableTerrain(this.city, (GroundDraft) draft);
        }
        if (draft instanceof BusStopDraft) {
            return new SelectableBusStopDraft(this.city, (BusStopDraft) draft);
        }
        if (draft instanceof FenceDraft) {
            return new SelectableFenceDraft(this.city, (FenceDraft) draft);
        }
        if (draft instanceof CarDraft) {
            return new SelectableCarDraft(this.city, (CarDraft) draft, color);
        }
        if (draft instanceof ToolDraft) {
            toolDraft = (ToolDraft) draft;
            String str = draft.id;
            str.getClass();
            switch (str) {
                case "$tool_disaster_ufo00":
                    return new SelectableDisaster(this.city, toolDraft, UfoDisaster.class);
                case "$tool_terrain_increase00":
                case "$tool_terrain_platform00":
                case "$tool_terrain_lower00":
                    return new SelectableTerrainTool(this.city, toolDraft);
                case "$tool_label00":
                    return new SelectableSign(this.city);
                case "$tool_disaster_meteorite00":
                    return new SelectableDisaster(this.city, toolDraft, MeteoriteDisaster.class);
                case "$tool_disaster_pink_slime00":
                    return new SelectableDisaster(this.city, toolDraft, PinkSlimeDisaster.class);
                case "$tool_terrain_land00":
                    return new SelectableTerrain(this.city, false);
                case "$tool_disaster_tornado00":
                    return new SelectableDisaster(this.city, toolDraft, TornadoDisaster.class);
                case "$tool_movebuilding00":
                    return new SelectableMoveBuilding(this.city);
                case "$tool_disaster_flooding00":
                    return new SelectableDisaster(this.city, toolDraft, FloodingDisaster.class);
                case "$tool_disaster_earthquake00":
                    return new SelectableDisaster(this.city, toolDraft, EarthQuakeDisaster.class);
                case "$tool_disaster_fire00":
                    return new SelectableDisaster(this.city, toolDraft, FireDisaster.class);
                case "$tool_disaster_illness00":
                    return new SelectableDisaster(this.city, toolDraft, IllnessDisaster.class);
                case "$tool_disaster_nuke00":
                    return new SelectableDisaster(this.city, toolDraft, NukeDisaster.class);
                case "$tool_disaster_riot00":
                    return new SelectableDisaster(this.city, toolDraft, RiotDisaster.class);
                case "$tool_disaster_blizzard00":
                    return new SelectableDisaster(this.city, toolDraft, BlizzardDisaster.class);
                case "$tool_eyedropper00":
                    return new SelectableEyedropper(this.city);
                case "$tool_disaster_green_slime00":
                    return new SelectableDisaster(this.city, toolDraft, GreenSlimeDisaster.class);
                case "$tool_terrain_water00":
                    return new SelectableTerrain(this.city, true);
                default:
                    if (toolDraft.onClickTransitions == null && toolDraft.luaScripts.isEmpty()) {
                        return null;
                    }
                    return new SelectableGenericTool(this.city, toolDraft);
            }
        }
        if (draft instanceof CategoryDraft) {
            CategoryDraft categoryDraft = (CategoryDraft) draft;
            SelectableCategory selectableCategory = new SelectableCategory(this.city, categoryDraft);
            Iterator<Draft> it = categoryDraft.children.iterator();
            while (it.hasNext()) {
                SelectableDraft selectableDraftResolve = resolve(it.next(), z, color);
                if (selectableDraftResolve != null) {
                    selectableCategory.addChild(selectableDraftResolve);
                }
            }
            return selectableCategory;
        }
        if ((draft instanceof ScriptDraft) || (draft instanceof DataDraft)) {
            return new SelectableDraft(this.city) { // from class: info.flowersoft.theotown.ui.selectable.SelectableResolver.1
                @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
                public long getPrice() {
                    return 0L;
                }

                @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
                public Draft getDraft() {
                    return draft;
                }
            };
        }
        if (draft instanceof TemplateDraft) {
            return null;
        }
        Gdx.app.error("SelectableResolver", "May not resolve draft " + draft.id + " of type " + draft.getClass().getName());
        return null;
    }
}
