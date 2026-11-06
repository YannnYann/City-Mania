package info.flowersoft.theotown.components.buildingcontroller;

import com.ironsource.C3540c4;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionBuildingController implements BuildingController {
    public final City city;
    public final TransitionRunner funRunner;
    public boolean isLuaInitialized;
    public final TransitionRunner onClickFunRunner;
    public final TransitionRunner randomFunRunner;
    public final List<BuildingDraft> randomFunItems = new ArrayList();
    public final List<MethodCluster> dailyMethods = ScriptingEnvironment.getInstance().getMethodClustersOrNull("daily", BuildingDraft.class);
    public final List<MethodCluster> randomMethods = ScriptingEnvironment.getInstance().getMethodClustersOrNull("random", BuildingDraft.class);

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public TransitionBuildingController(City city) {
        this.city = city;
        this.funRunner = new TransitionRunner(city);
        this.onClickFunRunner = new TransitionRunner(city);
        this.randomFunRunner = new TransitionRunner(city);
        for (int i = 0; i < Drafts.BUILDINGS.size(); i++) {
            BuildingDraft buildingDraft = Drafts.BUILDINGS.get(i);
            if (buildingDraft.randomTransitions != null) {
                this.randomFunItems.add(buildingDraft);
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public boolean canHandle(BuildingDraft buildingDraft) {
        return buildingDraft.transitions != null;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void beforePass() {
        for (int i = 0; i < this.randomFunItems.size(); i++) {
            BuildingDraft buildingDraft = this.randomFunItems.get(i);
            if (buildingDraft.randomTransitions != null && buildingDraft.active) {
                boolean zIsPrivileged = buildingDraft.isPrivileged();
                this.randomFunRunner.acceptRandom(buildingDraft.randomTransitions, "random " + buildingDraft.id, buildingDraft.luaRepr, zIsPrivileged);
            }
        }
        this.isLuaInitialized = !ScriptingEnvironment.getInstance().getGlobals().get("City").isnil();
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        BuildingDraft draft = building.getDraft();
        List<Transition> list = draft.transitions;
        if (list == null || !draft.active) {
            return;
        }
        this.funRunner.accept(list, building, "accept " + building.getDraftId(), draft.id, draft.luaRepr, draft.isPrivileged());
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void afterPass() {
        this.funRunner.run();
        this.randomFunRunner.run();
        if (this.isLuaInitialized) {
            if (this.dailyMethods != null) {
                for (int i = 0; i < this.dailyMethods.size(); i++) {
                    MethodCluster methodCluster = this.dailyMethods.get(i);
                    SortedList<Building> buildingsOfDraft = this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) methodCluster.getDraft());
                    for (int i2 = 0; i2 < buildingsOfDraft.size(); i2++) {
                        Building building = buildingsOfDraft.get(i2);
                        if (building != null) {
                            methodCluster.invoke(building.getX(), building.getY(), 0);
                        }
                    }
                }
            }
            if (this.randomMethods != null) {
                for (int i3 = 0; i3 < this.randomMethods.size(); i3++) {
                    MethodCluster methodCluster2 = this.randomMethods.get(i3);
                    BuildingDraft buildingDraft = (BuildingDraft) methodCluster2.getDraft();
                    int iMax = Math.max(buildingDraft.getWidth(0), buildingDraft.getHeight(0));
                    Random random = Resources.RND;
                    methodCluster2.invoke(random.nextInt((this.city.getWidth() - iMax) + 1), random.nextInt((this.city.getHeight() - iMax) + 1), 0);
                }
            }
        }
    }

    public void onClick(Building building) {
        Building building2;
        MethodCluster methodClusterOrNull;
        BuildingDraft draft = building.getDraft();
        if (draft.onClickTransitions == null || !draft.active) {
            building2 = building;
        } else {
            boolean zIsPrivileged = building.getDraft().isPrivileged();
            building2 = building;
            this.onClickFunRunner.accept(building.getDraft().onClickTransitions, building2, "on click " + building.getDraftId(), building.getDraftId(), building.getDraft().luaRepr, zIsPrivileged);
            this.onClickFunRunner.run();
        }
        if (draft.luaScripts == null || !this.isLuaInitialized || (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull(C3540c4.d, draft)) == null) {
            return;
        }
        methodClusterOrNull.invoke(building2.getX(), building2.getY(), 0);
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "MachineTransitionController";
    }
}
