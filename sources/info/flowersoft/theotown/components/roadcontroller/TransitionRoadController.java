package info.flowersoft.theotown.components.roadcontroller;

import com.ironsource.C3540c4;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.RoadList;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.util.SortedList;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionRoadController implements RoadController {
    public final City city;
    public final TransitionRunner funRunner;
    public boolean isLuaInitialized;
    public final TransitionRunner onClickFunRunner;
    public final TransitionRunner randomFunRunner;
    public final List<RoadDraft> randomFunRoads = new ArrayList();
    public final List<RoadDecorationDraft> randomFunDecos = new ArrayList();
    public final List<MethodCluster> dailyMethods = ScriptingEnvironment.getInstance().getMethodClustersOrNull("daily", RoadDraft.class);
    public final List<MethodCluster> dailyDecoMethods = ScriptingEnvironment.getInstance().getMethodClustersOrNull("daily", RoadDecorationDraft.class);
    public final List<MethodCluster> randomMethods = ScriptingEnvironment.getInstance().getMethodClustersOrNull("random", RoadDraft.class);
    public final List<MethodCluster> randomDecoMethods = ScriptingEnvironment.getInstance().getMethodClustersOrNull("random", RoadDecorationDraft.class);

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public boolean canHandle(RoadDraft roadDraft) {
        return true;
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void prepare() {
    }

    public TransitionRoadController(City city) {
        this.city = city;
        this.funRunner = new TransitionRunner(city);
        this.onClickFunRunner = new TransitionRunner(city);
        this.randomFunRunner = new TransitionRunner(city);
        for (int i = 0; i < Drafts.ROADS.size(); i++) {
            RoadDraft roadDraft = Drafts.ROADS.get(i);
            if (roadDraft.randomTransitions != null) {
                this.randomFunRoads.add(roadDraft);
            }
        }
        for (int i2 = 0; i2 < Drafts.ROAD_DECORATIONS.size(); i2++) {
            RoadDecorationDraft roadDecorationDraft = Drafts.ROAD_DECORATIONS.get(i2);
            if (roadDecorationDraft.randomTransitions != null) {
                this.randomFunDecos.add(roadDecorationDraft);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void beforePass() {
        for (int i = 0; i < this.randomFunRoads.size(); i++) {
            RoadDraft roadDraft = this.randomFunRoads.get(i);
            List<Transition> list = roadDraft.randomTransitions;
            if (list != null && roadDraft.active) {
                this.randomFunRunner.acceptRandom(list, "update " + roadDraft.id, roadDraft.luaRepr, roadDraft.isPrivileged());
            }
        }
        for (int i2 = 0; i2 < this.randomFunDecos.size(); i2++) {
            RoadDecorationDraft roadDecorationDraft = this.randomFunDecos.get(i2);
            List<Transition> list2 = roadDecorationDraft.randomTransitions;
            if (list2 != null && roadDecorationDraft.active) {
                this.randomFunRunner.acceptRandom(list2, "update " + roadDecorationDraft.id, roadDecorationDraft.luaRepr, roadDecorationDraft.isPrivileged());
            }
        }
        this.isLuaInitialized = !ScriptingEnvironment.getInstance().getGlobals().get("City").isnil();
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void accept(Road road) {
        Road road2;
        List<Transition> list;
        RoadDraft roadDraft = road.draft;
        List<Transition> list2 = roadDraft.transitions;
        if (list2 == null || !roadDraft.active) {
            road2 = road;
        } else {
            road2 = road;
            this.funRunner.accept(list2, road2, "accept " + roadDraft.id, roadDraft.luaRepr, roadDraft.isPrivileged());
        }
        for (int iCountDecorations = road2.countDecorations() - 1; iCountDecorations >= 0; iCountDecorations--) {
            RoadDecorationDraft decoration = road2.getDecoration(iCountDecorations);
            if (decoration != null && (list = decoration.transitions) != null && roadDraft.active) {
                this.funRunner.accept(list, road2, "accept " + decoration.id, decoration.luaRepr, decoration.isPrivileged());
            }
        }
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void afterPass() {
        this.funRunner.run();
        this.randomFunRunner.run();
        if (this.isLuaInitialized) {
            if (this.dailyMethods != null) {
                for (int i = 0; i < this.dailyMethods.size(); i++) {
                    MethodCluster methodCluster = this.dailyMethods.get(i);
                    SortedList<Road> roadsOfDraft = this.city.getRoads().getRoadsOfDraft((RoadDraft) methodCluster.getDraft());
                    for (int i2 = 0; i2 < roadsOfDraft.size(); i2++) {
                        Road road = roadsOfDraft.get(i2);
                        if (road != null) {
                            methodCluster.invoke(road.getX(), road.getY(), road.getLevel());
                        }
                    }
                }
            }
            List<MethodCluster> list = this.dailyDecoMethods;
            if (list != null && !list.isEmpty()) {
                RoadList roads = this.city.getRoads();
                for (int i3 = 0; i3 < roads.size(); i3++) {
                    Road road2 = roads.get(i3);
                    if (road2 != null) {
                        for (int i4 = 0; i4 < road2.countDecorations(); i4++) {
                            RoadDecorationDraft decoration = road2.getDecoration(i4);
                            if (decoration != null) {
                                for (int i5 = 0; i5 < this.dailyDecoMethods.size(); i5++) {
                                    if (this.dailyDecoMethods.get(i5).getDraft() == decoration) {
                                        this.dailyDecoMethods.get(i5).invoke(road2.getX(), road2.getY(), road2.getLevel());
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (this.randomMethods != null) {
                for (int i6 = 0; i6 < this.randomMethods.size(); i6++) {
                    MethodCluster methodCluster2 = this.randomMethods.get(i6);
                    Random random = Resources.RND;
                    methodCluster2.invoke(random.nextInt(this.city.getWidth()), random.nextInt(this.city.getHeight()), 0);
                }
            }
            if (this.randomDecoMethods != null) {
                for (int i7 = 0; i7 < this.randomDecoMethods.size(); i7++) {
                    MethodCluster methodCluster3 = this.randomDecoMethods.get(i7);
                    Random random2 = Resources.RND;
                    methodCluster3.invoke(random2.nextInt(this.city.getWidth()), random2.nextInt(this.city.getHeight()), 0);
                }
            }
        }
    }

    public void onClick(Road road) {
        MethodCluster methodClusterOrNull;
        List<Transition> list;
        RoadDraft roadDraft = road.draft;
        for (int iCountDecorations = road.countDecorations() - 1; iCountDecorations >= 0; iCountDecorations--) {
            RoadDecorationDraft decoration = road.getDecoration(iCountDecorations);
            if (decoration != null && (list = decoration.onClickTransitions) != null && decoration.active) {
                this.onClickFunRunner.accept(list, road, "on click " + decoration.id, decoration.luaRepr, decoration.isPrivileged());
                this.onClickFunRunner.run();
            }
        }
        List<Transition> list2 = roadDraft.onClickTransitions;
        if (list2 != null && roadDraft.active) {
            this.onClickFunRunner.accept(list2, road, "on click " + roadDraft.id, roadDraft.luaRepr, roadDraft.isPrivileged());
            this.onClickFunRunner.run();
        }
        if (!this.isLuaInitialized) {
            return;
        }
        int iCountDecorations2 = road.countDecorations();
        while (true) {
            iCountDecorations2--;
            if (iCountDecorations2 >= 0) {
                RoadDecorationDraft decoration2 = road.getDecoration(iCountDecorations2);
                if (decoration2 != null && decoration2.luaScripts != null) {
                    MethodCluster methodClusterOrNull2 = ScriptingEnvironment.getInstance().getMethodClusterOrNull(C3540c4.d, decoration2);
                    if (methodClusterOrNull2 != null) {
                        methodClusterOrNull2.invoke(road.getX(), road.getY(), road.getLevel());
                        return;
                    }
                    return;
                }
            } else {
                if (roadDraft.luaScripts == null || (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull(C3540c4.d, roadDraft)) == null) {
                    return;
                }
                methodClusterOrNull.invoke(road.getX(), road.getY(), road.getLevel());
                return;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public String getTag() {
        return "RoadTransitionController";
    }
}
