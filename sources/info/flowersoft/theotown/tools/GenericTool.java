package info.flowersoft.theotown.tools;

import com.ironsource.C3522b4;
import com.ironsource.C3540c4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.List;
import java.util.Objects;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;

/* JADX INFO: loaded from: classes4.dex */
public class GenericTool extends BuildTool {
    public final int UNKNOWN_ICON;
    public boolean buildingFilter;
    public boolean busStopFilter;
    public final MethodCluster eventMethod;
    public boolean landFilter;
    public boolean mouseFilter;
    public boolean railwayFilter;
    public ScriptMethod redoCallback;
    public boolean roadDecorationFilter;
    public boolean roadFilter;
    public final ToolDraft tool;
    public boolean treeFilter;
    public boolean useFilter = false;
    public boolean waterFilter;
    public boolean zoneFilter;

    public GenericTool(ToolDraft toolDraft) {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$logo_unknown00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.UNKNOWN_ICON = animationDraft.frames[0];
        this.tool = toolDraft;
        this.eventMethod = ScriptingEnvironment.getInstance().getMethodClusterOrNull("event", toolDraft);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Generic" + this.tool.id;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.actions.clear();
        LuaValue luaValue = ScriptingEnvironment.getInstance().getGlobals().get("TheoTown");
        luaValue.set("setToolMarker", new OneArgFunction() { // from class: info.flowersoft.theotown.tools.GenericTool.1
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue2) {
                GenericTool.this.setMarker(new BuildToolMarker(luaValue2.checktable()) { // from class: info.flowersoft.theotown.tools.GenericTool.1.1
                    public final ScriptMethod buildingIntensity;
                    public final ScriptMethod getIntensity;
                    public final ScriptMethod ignoreBuilding;
                    public final ScriptMethod markBuilding;
                    public final ScriptMethod markTree;
                    public final ScriptMethod overlayAlpha;
                    public final ScriptMethod useOverlay;
                    public final /* synthetic */ LuaTable val$table;

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public int countVariants() {
                        return 1;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public int getIcon() {
                        return 0;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public List<LegendEntry> getLegend() {
                        return null;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public void setVariant(int i) {
                    }

                    {
                        this.val$table = luaTable;
                        this.useOverlay = ScriptMethod.resolve(luaTable, "useOverlay");
                        this.overlayAlpha = ScriptMethod.resolve(luaTable, "overlayAlpha");
                        this.getIntensity = ScriptMethod.resolve(luaTable, "getIntensity");
                        this.ignoreBuilding = ScriptMethod.resolve(luaTable, "ignoreBuilding");
                        this.markBuilding = ScriptMethod.resolve(luaTable, "markBuilding");
                        this.markTree = ScriptMethod.resolve(luaTable, "markTree");
                        this.buildingIntensity = ScriptMethod.resolve(luaTable, "buildingIntensity");
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public Color getColor(int i, int i2, Color color) {
                        return Colors.BLUE;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public boolean useOverlay(int i, int i2) {
                        ScriptMethod scriptMethod = this.useOverlay;
                        if (scriptMethod != null) {
                            return scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optboolean(false);
                        }
                        return false;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public float overlayAlpha(int i, int i2) {
                        ScriptMethod scriptMethod = this.overlayAlpha;
                        if (scriptMethod != null) {
                            return (float) scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optdouble(1.0d);
                        }
                        return 1.0f;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public float overlayTempAlpha(int i, int i2) {
                        return overlayAlpha(i, i2);
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public float getIntensity(int i, int i2) {
                        ScriptMethod scriptMethod = this.getIntensity;
                        return scriptMethod != null ? (float) scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optdouble(0.0d) : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public float getTempIntensity(int i, int i2) {
                        return getIntensity(i, i2);
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public boolean ignoreBuilding(int i, int i2) {
                        ScriptMethod scriptMethod = this.ignoreBuilding;
                        if (scriptMethod != null) {
                            return scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optboolean(false);
                        }
                        return false;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public boolean markBuilding(int i, int i2) {
                        ScriptMethod scriptMethod = this.markBuilding;
                        if (scriptMethod != null) {
                            return scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optboolean(false);
                        }
                        return false;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public boolean markTree(int i, int i2) {
                        ScriptMethod scriptMethod = this.markTree;
                        if (scriptMethod != null) {
                            return scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optboolean(false);
                        }
                        return false;
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public float getBuildingIntensity(int i, int i2) {
                        ScriptMethod scriptMethod = this.buildingIntensity;
                        if (scriptMethod != null) {
                            return (float) scriptMethod.call(LuaValue.valueOf(i), LuaValue.valueOf(i2)).optdouble(0.0d);
                        }
                        return getIntensity(i, i2);
                    }

                    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
                    public String getTag() {
                        return "generic";
                    }
                });
                return LuaValue.NIL;
            }
        });
        luaValue.set("registerToolAction", new OneArgFunction() { // from class: info.flowersoft.theotown.tools.GenericTool.2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue2) {
                GenericTool.this.actions.add(new ToolAction(luaValue2.checktable()) { // from class: info.flowersoft.theotown.tools.GenericTool.2.1
                    public ScriptMethod getNameFunc;
                    public ScriptMethod iconFunc;
                    public ScriptMethod idFunc;
                    public ScriptMethod isPressedFunc;
                    public ScriptMethod isVisibleFunc;
                    public final ScriptMethod onClickFunc;
                    public final /* synthetic */ LuaTable val$table;

                    {
                        this.val$table = luaTable;
                        ScriptMethod scriptMethodResolve = ScriptMethod.resolve(luaTable, C3522b4.i.H0);
                        this.iconFunc = scriptMethodResolve;
                        if (scriptMethodResolve == null) {
                            this.iconFunc = ScriptMethod.resolve(luaTable, "getIcon");
                        }
                        ScriptMethod scriptMethodResolve2 = ScriptMethod.resolve(luaTable, C3670j8.x);
                        this.idFunc = scriptMethodResolve2;
                        if (scriptMethodResolve2 == null) {
                            this.idFunc = ScriptMethod.resolve(luaTable, "getId");
                        }
                        this.onClickFunc = ScriptMethod.resolve(luaTable, "onClick");
                        ScriptMethod scriptMethodResolve3 = ScriptMethod.resolve(luaTable, "pressed");
                        this.isPressedFunc = scriptMethodResolve3;
                        if (scriptMethodResolve3 == null) {
                            this.isPressedFunc = ScriptMethod.resolve(luaTable, "isPressed");
                        }
                        ScriptMethod scriptMethodResolve4 = ScriptMethod.resolve(luaTable, "visible");
                        this.isVisibleFunc = scriptMethodResolve4;
                        if (scriptMethodResolve4 == null) {
                            this.isVisibleFunc = ScriptMethod.resolve(luaTable, C3670j8.k);
                        }
                        ScriptMethod scriptMethodResolve5 = ScriptMethod.resolve(luaTable, "name");
                        this.getNameFunc = scriptMethodResolve5;
                        if (scriptMethodResolve5 == null) {
                            this.getNameFunc = ScriptMethod.resolve(luaTable, "getName");
                        }
                    }

                    @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                    public int getIcon() {
                        ScriptMethod scriptMethod = this.iconFunc;
                        return (scriptMethod != null ? scriptMethod.call() : this.val$table.get(C3522b4.i.H0)).optint(0);
                    }

                    @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                    public String getId() {
                        ScriptMethod scriptMethod = this.idFunc;
                        return (scriptMethod != null ? scriptMethod.call() : this.val$table.get(C3670j8.x)).optjstring("");
                    }

                    @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                    public void onClick() {
                        ScriptMethod scriptMethod = this.onClickFunc;
                        if (scriptMethod != null) {
                            scriptMethod.call();
                        }
                    }

                    @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                    public boolean isPressed() {
                        ScriptMethod scriptMethod = this.isPressedFunc;
                        return (scriptMethod != null ? scriptMethod.call() : this.val$table.get("pressed")).optboolean(false);
                    }

                    @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                    public boolean isVisible() {
                        ScriptMethod scriptMethod = this.isVisibleFunc;
                        return (scriptMethod != null ? scriptMethod.call() : this.val$table.get("visible")).optboolean(true);
                    }

                    @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                    public String getName() {
                        ScriptMethod scriptMethod = this.getNameFunc;
                        return (scriptMethod != null ? scriptMethod.call() : this.val$table.get("name")).optjstring(null);
                    }
                });
                return LuaValue.NIL;
            }
        });
        luaValue.set("setToolFilter", new OneArgFunction() { // from class: info.flowersoft.theotown.tools.GenericTool.3
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue2) {
                if (luaValue2.istable()) {
                    GenericTool.this.useFilter = true;
                    GenericTool.this.buildingFilter = luaValue2.get("building").optboolean(false);
                    GenericTool.this.waterFilter = luaValue2.get("water").optboolean(false);
                    GenericTool.this.landFilter = luaValue2.get("land").optboolean(false);
                    GenericTool.this.roadFilter = luaValue2.get("road").optboolean(false);
                    GenericTool.this.treeFilter = luaValue2.get("tree").optboolean(false);
                    GenericTool.this.zoneFilter = luaValue2.get("zone").optboolean(false);
                    GenericTool.this.roadDecorationFilter = luaValue2.get("roadDecoration").optboolean(false);
                    GenericTool.this.busStopFilter = luaValue2.get("busStop").optboolean(false);
                    GenericTool.this.mouseFilter = luaValue2.get("mouse").optboolean(false);
                    GenericTool.this.railwayFilter = luaValue2.get("railway").optboolean(false);
                } else {
                    GenericTool.this.useFilter = false;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("addUndoButton", new VarArgFunction() { // from class: info.flowersoft.theotown.tools.GenericTool.4
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                GenericTool.this.redoCallback = ScriptMethod.create("<redo>", varargs.arg1());
                GenericTool.this.addUndoButton();
                return LuaValue.varargsOf(new VarArgFunction() { // from class: info.flowersoft.theotown.tools.GenericTool.4.1
                    @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                    public Varargs invoke(Varargs varargs2) {
                        int iCheckint = varargs2.arg(1).checkint();
                        int iCheckint2 = varargs2.arg(2).checkint();
                        int iOptint = varargs2.arg(3).optint(iCheckint);
                        int iOptint2 = varargs2.arg(4).optint(iCheckint2);
                        GenericTool.this.captureState(iCheckint, iCheckint2, iOptint, iOptint2, varargs2.arg(5).optint(iOptint), varargs2.arg(6).optint(iOptint2), 8);
                        return LuaValue.NIL;
                    }
                }, new ZeroArgFunction() { // from class: info.flowersoft.theotown.tools.GenericTool.4.2
                    @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
                    public LuaValue call() {
                        return LuaValue.valueOf(GenericTool.this.endCaptureState());
                    }
                });
            }
        });
        MethodCluster methodCluster = this.eventMethod;
        if (methodCluster != null) {
            methodCluster.invoke(0, 0, 0, 5);
        }
        LuaValue luaValue2 = LuaValue.NIL;
        luaValue.set("setToolMarker", luaValue2);
        luaValue.set("registerToolAction", luaValue2);
        luaValue.set("setToolFilter", luaValue2);
        luaValue.set("addUndoButton", luaValue2);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.city.components.CityComponent
    public void unbind() {
        super.unbind();
        MethodCluster methodCluster = this.eventMethod;
        if (methodCluster != null) {
            methodCluster.invoke(0, 0, 0, 8);
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        ScriptMethod scriptMethod = this.redoCallback;
        if (scriptMethod != null) {
            scriptMethod.call();
        }
        super.redo(z);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public void drawTree(int i, int i2, Tree tree, Drawer drawer) {
        tree.draw(drawer);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (isBuildable(i, i2)) {
            super.onClick(i, i2, f, f2, i3, i4);
            MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull(C3540c4.d, this.tool);
            if (methodClusterOrNull != null) {
                methodClusterOrNull.invoke(i, i2, 0);
            }
            if (this.tool.onClickTransitions != null) {
                TransitionRunner transitionRunner = new TransitionRunner(this.city);
                String str = "tool click " + this.tool.id;
                ToolDraft toolDraft = this.tool;
                transitionRunner.accept(this.tool.onClickTransitions, i, i2, 1L, 1L, 0, "", str, toolDraft.luaRepr, toolDraft.isPrivileged());
                transitionRunner.run();
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void draw(int i, int i2, Drawer drawer) {
        super.draw(i, i2, drawer);
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (topRoad != null && topRoad.level < 0) {
            topRoad = null;
        }
        if (this.useFilter) {
            if ((!this.buildingFilter || this.tiles.getBuilding(i, i2) == null) && (!(this.waterFilter && this.tiles.isGroundWater(i, i2)) && ((!this.landFilter || this.tiles.isGroundWater(i, i2)) && (!(this.roadFilter && this.tiles.hasVisibleRoad(i, i2)) && ((!this.treeFilter || this.tiles.getTree(i, i2) == null) && ((!this.zoneFilter || this.tiles.getZone(i, i2) == null) && ((!this.roadDecorationFilter || topRoad == null || topRoad.countDecorations() <= 0) && ((!this.busStopFilter || topRoad == null || topRoad.getBusStop() == null) && !(this.mouseFilter && this.drawnTargetHover && this.drawnTargetX == i && this.drawnTargetY == i2))))))))) {
                return;
            }
            if (this.railwayFilter && this.tiles.getRail(i, i2) != null) {
                return;
            }
        }
        if (this.tool.drawMethods != null) {
            if (this.city.getScale() >= 0.5f || (this.drawnTargetHover && Math.max(Math.abs(this.drawnTargetX - i), Math.abs(this.drawnTargetY - i2)) <= 12)) {
                int i3 = this.drawnTargetX;
                int i4 = this.drawnTargetY;
                if (!this.drawnTargetHover) {
                    i3 = -1;
                    i4 = -1;
                }
                this.tool.drawMethods.invoke(i, i2, i3, i4);
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        ToolDraft toolDraft = this.tool;
        int[] iArr = toolDraft.iconFrames;
        if (iArr != null) {
            return iArr[0];
        }
        int[] iArr2 = toolDraft.frames;
        return iArr2 != null ? iArr2[0] : this.UNKNOWN_ICON;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.tool);
    }

    private boolean isBuildable(int i, int i2) {
        MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("isBuildable", this.tool);
        if (methodClusterOrNull == null || methodClusterOrNull.invoke(i, i2, 0)) {
            return ((DefaultBudget) this.city.getComponent(0)).canSpend(this.tool.price);
        }
        return false;
    }
}
