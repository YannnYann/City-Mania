package info.flowersoft.theotown.components.transition;

import com.badlogic.gdx.utils.IntIntMap;
import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.Property;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionRunner {
    public static final Pattern STRING_INTERPOLATION_PATTERN = Pattern.compile("\\$\\{([^\\}]*)\\}");
    public final City city;
    public String lastFeedback;
    public final CityModifier m;
    public final DefaultManagement management;
    public final DefaultPeople people;
    public final Tiles tiles;
    public Map<String, Property<Long>> virtualVariables;
    public final ProbabilitySelector<Transition> selector = new ProbabilitySelector<>(new Random());
    public final List<Transition> finalTransitions = new ArrayList();
    public final List<String> finalActionSources = new ArrayList();
    public final List<LuaValue> finalActionSenders = new ArrayList();
    public final IntList finalActionArgs = new IntList();
    public final IntList finalActionResults = new IntList();
    public final IntIntMap selectedAmount = new IntIntMap();
    public final IntIntMap visitedAmount = new IntIntMap();

    /* JADX INFO: renamed from: $r8$lambda$h6lPxkIwD6tVYHnzkjJZ-elH0Tw, reason: not valid java name */
    public static /* synthetic */ Building m2137$r8$lambda$h6lPxkIwD6tVYHnzkjJZelH0Tw(Building building) {
        return building;
    }

    public TransitionRunner(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        this.m = new CityModifier(city, true);
        this.people = (DefaultPeople) city.getComponent(9);
        this.management = (DefaultManagement) city.getComponent(3);
    }

    public final Map<String, Property<Long>> getVirtualVariables() {
        if (this.virtualVariables == null) {
            HashMap map = new HashMap();
            new VariableCollector(this.city, map).collect();
            this.virtualVariables = map;
        }
        return this.virtualVariables;
    }

    public String getLastFeedback() {
        return this.lastFeedback;
    }

    public boolean acceptRandom(List<Transition> list, String str, LuaValue luaValue, boolean z) {
        Random random = Resources.RND;
        return accept(list, random.nextInt(this.city.getWidth()), random.nextInt(this.city.getHeight()), 1L, 1L, Integer.MIN_VALUE, "", str, luaValue, z);
    }

    public boolean accept(List<Transition> list, Building building, String str, LuaValue luaValue, boolean z) {
        return accept(list, building, "", str, luaValue, z);
    }

    public boolean accept(List<Transition> list, Building building, String str, String str2, LuaValue luaValue, boolean z) {
        return accept(list, building.getX(), building.getY(), building.getWidth(), building.getHeight(), Integer.MIN_VALUE, str, str2, luaValue, z);
    }

    public boolean accept(List<Transition> list, Road road, String str, LuaValue luaValue, boolean z) {
        return accept(list, road.x, road.y, 1L, 1L, road.level, "", str, luaValue, z);
    }

    public boolean accept(List<Transition> list, long j, long j2, long j3, long j4, int i, String str, String str2, LuaValue luaValue, boolean z) {
        return collectTransitions(list, j, j2, j3, j4, i, str, str2, luaValue, z);
    }

    public void run() {
        Transition transition;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        TransitionRunner transitionRunner = this;
        if (transitionRunner.finalTransitions.isEmpty()) {
            return;
        }
        synchronized (transitionRunner.city) {
            for (int i7 = 0; i7 < transitionRunner.finalTransitions.size(); i7 = i6 + 1) {
                try {
                    Transition transition2 = transitionRunner.finalTransitions.get(i7);
                    String str = transitionRunner.finalActionSources.get(i7);
                    LuaValue luaValue = transitionRunner.finalActionSenders.get(i7);
                    int i8 = i7 * 6;
                    int i9 = transitionRunner.finalActionArgs.get(i8);
                    int i10 = transitionRunner.finalActionArgs.get(i8 + 1);
                    int i11 = transitionRunner.finalActionArgs.get(i8 + 2);
                    int i12 = transitionRunner.finalActionArgs.get(i8 + 3);
                    int i13 = transitionRunner.finalActionArgs.get(i8 + 4);
                    boolean z2 = true;
                    boolean z3 = transitionRunner.finalActionArgs.get(i8 + 5) > 0;
                    if (transitionRunner.finalActionResults.get(i7) != 1) {
                        z2 = false;
                    }
                    if (transition2.doubleCheck) {
                        try {
                            i = i9;
                            i6 = i7;
                            z = z2;
                            transition = transition2;
                            i4 = i12;
                            i2 = i10;
                            i3 = i11;
                            boolean zCheckCondition = checkCondition(transition2.condition, i9, i10, i11, i12, i13, null, luaValue);
                            i5 = i13;
                            luaValue = luaValue;
                            if (zCheckCondition != z) {
                                transitionRunner = this;
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } else {
                        transition = transition2;
                        i = i9;
                        i2 = i10;
                        i3 = i11;
                        i4 = i12;
                        i5 = i13;
                        i6 = i7;
                        z = z2;
                    }
                    transitionRunner = this;
                    transitionRunner.doActions(z ? transition.actions : transition.elseActions, i, i2, i3, i4, i5, z3, str, luaValue);
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            transitionRunner.finalTransitions.clear();
            transitionRunner.finalActionSources.clear();
            transitionRunner.finalActionSenders.clear();
            transitionRunner.finalActionArgs.clear();
            transitionRunner.finalActionResults.clear();
            transitionRunner.selectedAmount.clear();
            transitionRunner.visitedAmount.clear();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean collectTransitions(List<Transition> list, long j, long j2, long j3, long j4, int i, String str, String str2, LuaValue luaValue, boolean z) {
        boolean z2;
        long j5;
        long j6;
        Transition transition;
        TransitionRunner transitionRunner = this;
        boolean z3 = z;
        transitionRunner.selector.clear();
        int i2 = 0;
        int i3 = 0;
        while (i2 < list.size()) {
            Transition transition2 = list.get(i2);
            int i4 = i2;
            if (transitionRunner.checkCondition(transition2.condition, j, j2, j3, j4, i, str, luaValue)) {
                if (transition2.always) {
                    float f = transition2.probability;
                    transitionRunner = this;
                    j5 = j;
                    j6 = j2;
                    transition = transition2;
                    if (f >= transitionRunner.getTransitionProbability(transition, j5, j6)) {
                        transitionRunner.finalTransitions.add(transition);
                        transitionRunner.finalActionSources.add(str2);
                        transitionRunner.finalActionSenders.add(luaValue);
                        transitionRunner.finalActionArgs.add((int) j5);
                        transitionRunner.finalActionArgs.add((int) j6);
                        transitionRunner.finalActionArgs.add((int) j3);
                        transitionRunner.finalActionArgs.add((int) j4);
                        transitionRunner.finalActionArgs.add(i);
                        transitionRunner.finalActionArgs.add(z3 ? 1 : 0);
                        transitionRunner.finalActionResults.add(1);
                        i3++;
                    }
                } else {
                    transitionRunner = this;
                    j5 = j;
                    j6 = j2;
                    transition = transition2;
                }
                transitionRunner.selector.insert(transition, transition.probability, transitionRunner.getTransitionProbability(transition, j5, j6));
                z3 = z;
            } else {
                transitionRunner = this;
                if (transition2.elseActions.isEmpty()) {
                    z3 = z;
                } else {
                    transitionRunner.finalTransitions.add(transition2);
                    transitionRunner.finalActionSources.add(str2);
                    transitionRunner.finalActionSenders.add(luaValue);
                    transitionRunner.finalActionArgs.add((int) j);
                    transitionRunner.finalActionArgs.add((int) j2);
                    transitionRunner.finalActionArgs.add((int) j3);
                    transitionRunner.finalActionArgs.add((int) j4);
                    transitionRunner.finalActionArgs.add(i);
                    z3 = z;
                    transitionRunner.finalActionArgs.add(z3 ? 1 : 0);
                    transitionRunner.finalActionResults.add(0);
                }
            }
            i2 = i4 + 1;
        }
        if (!transitionRunner.selector.hasResult() || transitionRunner.selector.getProbabilitySum() < Resources.RND.nextFloat()) {
            z2 = true;
        } else {
            transitionRunner.finalTransitions.add(transitionRunner.selector.getResult());
            transitionRunner.finalActionSources.add(str2);
            transitionRunner.finalActionSenders.add(luaValue);
            transitionRunner.finalActionArgs.add((int) j);
            transitionRunner.finalActionArgs.add((int) j2);
            transitionRunner.finalActionArgs.add((int) j3);
            transitionRunner.finalActionArgs.add((int) j4);
            transitionRunner.finalActionArgs.add(i);
            transitionRunner.finalActionArgs.add(z3 ? 1 : 0);
            z2 = true;
            transitionRunner.finalActionResults.add(1);
            i3++;
        }
        if (i3 > 0) {
            return z2;
        }
        return false;
    }

    public final float getTransitionProbability(Transition transition, long j, long j2) {
        if (transition == null || !transition.fixedProbability) {
            return Resources.RND.nextFloat();
        }
        return ((this.city.hashCode((int) j, (int) j2) & Api.BaseClientBuilder.API_PRIORITY_OTHER) % 1000) / 1000.0f;
    }

    public boolean doActions(List<Transition.Action> list, int i, int i2, int i3, int i4, int i5, boolean z, String str, LuaValue luaValue) {
        for (int i6 = 0; i6 < list.size(); i6++) {
            if (!doAction(list.get(i6), i, i2, i3, i4, i5, z, str, luaValue)) {
                return false;
            }
        }
        return true;
    }

    public final Road resolveRoad(int i, int i2, String str, int i3) {
        Road road;
        if (!this.city.isValid(i, i2)) {
            return null;
        }
        if (i3 >= 0) {
            road = this.tiles.getRoad(i, i2, i3);
        } else {
            Road road2 = this.tiles.getRoad(i, i2, 0);
            if (road2 != null && str != null && !road2.draft.id.equals(str)) {
                road2 = null;
            }
            road = road2 == null ? this.tiles.getRoad(i, i2, 1) : road2;
            if (road != null && str != null && !road.draft.id.equals(str)) {
                road = null;
            }
        }
        if (road == null || str == null || road.draft.id.equals(str)) {
            return road;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:627:0x08e1, code lost:
    
        if (r7 <= r2) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x095a, code lost:
    
        if (r7 <= r2) goto L628;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x03f5: MOVE (r2 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:290:0x03f3 */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0548 A[PHI: r14
      0x0548: PHI (r14v19 info.flowersoft.theotown.draft.Transition$Condition) = 
      (r14v18 info.flowersoft.theotown.draft.Transition$Condition)
      (r14v22 info.flowersoft.theotown.draft.Transition$Condition)
     binds: [B:392:0x05a8, B:367:0x0546] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0617  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0692 A[Catch: Exception -> 0x0687, TryCatch #19 {Exception -> 0x0687, blocks: (B:449:0x0663, B:451:0x066b, B:453:0x066f, B:455:0x0678, B:457:0x0681, B:462:0x068a, B:464:0x0692, B:466:0x069c, B:468:0x06a5, B:470:0x06ae, B:472:0x06b3), top: B:927:0x0663 }] */
    /* JADX WARN: Removed duplicated region for block: B:601:0x0873  */
    /* JADX WARN: Removed duplicated region for block: B:687:0x09bb A[PHI: r7
      0x09bb: PHI (r7v15 ??) = 
      (r7v67 ??)
      (r7v68 ??)
      (r7v69 ??)
      (r7v70 ??)
      (r7v71 ??)
      (r7v72 ??)
      (r7v73 ??)
      (r7v74 ??)
      (r7v75 ??)
      (r7v76 ??)
      (r7v77 ??)
      (r7v78 ??)
      (r7v79 ??)
     binds: [B:712:0x09e9, B:702:0x09d7, B:697:0x09ce, B:692:0x09c5, B:686:0x09b9, B:812:0x0b39, B:795:0x0afa, B:793:0x0af6, B:727:0x0a08, B:729:0x0a0c, B:731:0x0a1b, B:734:0x0a28, B:723:0x0a01] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:708:0x09e1 A[PHI: r7
      0x09e1: PHI (r7v18 ??) = (r7v57 ??), (r7v58 ??), (r7v59 ??), (r7v60 ??), (r7v61 ??), (r7v62 ??), (r7v63 ??), (r7v64 ??) binds: [B:712:0x09e9, B:706:0x09de, B:701:0x09d5, B:696:0x09cc, B:691:0x09c3, B:686:0x09b9, B:734:0x0a28, B:722:0x09ff] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:711:0x09e7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:769:0x0aa7  */
    /* JADX WARN: Removed duplicated region for block: B:794:0x0af8  */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v101, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v102 */
    /* JADX WARN: Type inference failed for: r2v108 */
    /* JADX WARN: Type inference failed for: r2v128, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v129, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v137 */
    /* JADX WARN: Type inference failed for: r2v138 */
    /* JADX WARN: Type inference failed for: r2v144 */
    /* JADX WARN: Type inference failed for: r2v150 */
    /* JADX WARN: Type inference failed for: r2v151 */
    /* JADX WARN: Type inference failed for: r2v170 */
    /* JADX WARN: Type inference failed for: r2v177 */
    /* JADX WARN: Type inference failed for: r2v178 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v184 */
    /* JADX WARN: Type inference failed for: r2v185 */
    /* JADX WARN: Type inference failed for: r2v187 */
    /* JADX WARN: Type inference failed for: r2v188 */
    /* JADX WARN: Type inference failed for: r2v189 */
    /* JADX WARN: Type inference failed for: r2v190 */
    /* JADX WARN: Type inference failed for: r2v192 */
    /* JADX WARN: Type inference failed for: r2v193 */
    /* JADX WARN: Type inference failed for: r2v195 */
    /* JADX WARN: Type inference failed for: r2v196 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v214, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v215, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v216, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v220, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v221, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v222 */
    /* JADX WARN: Type inference failed for: r2v223 */
    /* JADX WARN: Type inference failed for: r2v224 */
    /* JADX WARN: Type inference failed for: r2v225 */
    /* JADX WARN: Type inference failed for: r2v233 */
    /* JADX WARN: Type inference failed for: r2v234 */
    /* JADX WARN: Type inference failed for: r2v235 */
    /* JADX WARN: Type inference failed for: r2v236 */
    /* JADX WARN: Type inference failed for: r2v237 */
    /* JADX WARN: Type inference failed for: r2v238 */
    /* JADX WARN: Type inference failed for: r2v239 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v240 */
    /* JADX WARN: Type inference failed for: r2v241 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v51, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v61, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v62, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v66, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v83, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v84, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v97, types: [boolean] */
    /* JADX WARN: Type inference failed for: r41v2, types: [info.flowersoft.theotown.components.transition.TransitionRunner] */
    /* JADX WARN: Type inference failed for: r41v3 */
    /* JADX WARN: Type inference failed for: r41v4, types: [info.flowersoft.theotown.components.transition.TransitionRunner] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19, types: [info.flowersoft.theotown.components.transition.TransitionRunner] */
    /* JADX WARN: Type inference failed for: r7v57 */
    /* JADX WARN: Type inference failed for: r7v58 */
    /* JADX WARN: Type inference failed for: r7v59 */
    /* JADX WARN: Type inference failed for: r7v60 */
    /* JADX WARN: Type inference failed for: r7v61 */
    /* JADX WARN: Type inference failed for: r7v62 */
    /* JADX WARN: Type inference failed for: r7v63 */
    /* JADX WARN: Type inference failed for: r7v64 */
    /* JADX WARN: Type inference failed for: r7v65 */
    /* JADX WARN: Type inference failed for: r7v66 */
    /* JADX WARN: Type inference failed for: r7v67 */
    /* JADX WARN: Type inference failed for: r7v68 */
    /* JADX WARN: Type inference failed for: r7v69 */
    /* JADX WARN: Type inference failed for: r7v70 */
    /* JADX WARN: Type inference failed for: r7v71 */
    /* JADX WARN: Type inference failed for: r7v72 */
    /* JADX WARN: Type inference failed for: r7v73 */
    /* JADX WARN: Type inference failed for: r7v74 */
    /* JADX WARN: Type inference failed for: r7v75 */
    /* JADX WARN: Type inference failed for: r7v76 */
    /* JADX WARN: Type inference failed for: r7v77 */
    /* JADX WARN: Type inference failed for: r7v78 */
    /* JADX WARN: Type inference failed for: r7v79 */
    /* JADX WARN: Type inference failed for: r7v9, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean checkCondition(info.flowersoft.theotown.draft.Transition.Condition r40, long r41, long r43, long r45, long r47, int r49, java.lang.String r50, vm2.LuaValue r51) {
        /*
            Method dump skipped, instruction units count: 3194
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.transition.TransitionRunner.checkCondition(info.flowersoft.theotown.draft.Transition$Condition, long, long, long, long, int, java.lang.String, vm2.LuaValue):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:670:0x0bf3  */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v54 */
    /* JADX WARN: Type inference failed for: r12v60 */
    /* JADX WARN: Type inference failed for: r12v67 */
    /* JADX WARN: Type inference failed for: r12v71 */
    /* JADX WARN: Type inference failed for: r12v73 */
    /* JADX WARN: Type inference failed for: r12v74 */
    /* JADX WARN: Type inference failed for: r12v79 */
    /* JADX WARN: Type inference failed for: r12v80 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean doAction(info.flowersoft.theotown.draft.Transition.Action r32, int r33, int r34, int r35, int r36, int r37, final boolean r38, final java.lang.String r39, vm2.LuaValue r40) throws java.lang.IllegalAccessException {
        /*
            Method dump skipped, instruction units count: 3069
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.transition.TransitionRunner.doAction(info.flowersoft.theotown.draft.Transition$Action, int, int, int, int, int, boolean, java.lang.String, vm2.LuaValue):boolean");
    }

    public static /* synthetic */ float[] $r8$lambda$RsGuIHUit4CUqTSpI0SKpCZ2vAo(long j, long j2) {
        return new float[]{j, j2};
    }

    public static boolean isInterpolatedString(String str) {
        return str != null && !str.isEmpty() && str.contains("${") && str.contains("}");
    }

    public String interpolateString(String str) {
        return interpolateString(str, 0L, 0L, 1L, 1L, 0);
    }

    public String interpolateString(String str, long j, long j2, long j3, long j4, int i) {
        if (!isInterpolatedString(str)) {
            return str;
        }
        Matcher matcher = STRING_INTERPOLATION_PATTERN.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            Matcher matcher2 = matcher;
            StringBuffer stringBuffer2 = stringBuffer;
            sb.append(evaluateValue(matcher.group(1), j, j2, j3, j4, i));
            matcher2.appendReplacement(stringBuffer2, sb.toString());
            matcher = matcher2;
            stringBuffer = stringBuffer2;
        }
        StringBuffer stringBuffer3 = stringBuffer;
        matcher.appendTail(stringBuffer3);
        return stringBuffer3.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long evaluateValue(java.lang.String r20, long r21, long r23, long r25, long r27, int r29) {
        /*
            Method dump skipped, instruction units count: 814
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.transition.TransitionRunner.evaluateValue(java.lang.String, long, long, long, long, int):long");
    }

    public long parseValue(String str, long j) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            if (isGlobalVar(str)) {
                return GlobalTransitionVariables.getInstance().get(str, j);
            }
            Property<Long> property = getVirtualVariables().get(str);
            if (property != null) {
                return property.get().longValue();
            }
            Long l = this.city.getTransitionVars().get(str);
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    public void applyValue(String str, long j) {
        if (isGlobalVar(str)) {
            GlobalTransitionVariables.getInstance().set(str, j);
            return;
        }
        Property<Long> property = getVirtualVariables().get(str);
        if (property != null) {
            property.set(Long.valueOf(j));
        } else {
            this.city.getTransitionVars().put(str, Long.valueOf(j));
        }
    }

    public static boolean isGlobalVar(String str) {
        return (str == null || str.isEmpty() || str.charAt(0) != '!') ? false : true;
    }
}
