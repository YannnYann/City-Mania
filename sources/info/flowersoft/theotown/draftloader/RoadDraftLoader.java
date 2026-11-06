package info.flowersoft.theotown.draftloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadDraftLoader extends DraftLoader {
    public static int[][] DEFAULT_DIRS_RIGHT_LEFT = new int[2][];
    public static int[][] DEFAULT_DIRS_RIGHT_LEFT_DIAGONAL;

    /* JADX WARN: Removed duplicated region for block: B:59:0x00b6  */
    static {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.RoadDraftLoader.<clinit>():void");
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"road"};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:189:0x05f0  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x06ae  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0777  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x078c  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0797 A[LOOP:3: B:255:0x0797->B:257:0x079d, LOOP_START, PHI: r10
      0x0797: PHI (r10v2 int) = (r10v1 int), (r10v3 int) binds: [B:254:0x0795, B:257:0x079d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x07bd  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x07e0  */
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
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public info.flowersoft.theotown.draft.RoadDraft load() throws info.flowersoft.theotown.util.json.JSONException {
        /*
            Method dump skipped, instruction units count: 2087
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.RoadDraftLoader.load():info.flowersoft.theotown.draft.RoadDraft");
    }

    public static boolean stillWithinRoad(int i, int i2, int i3) {
        int iDifferenceX = i + Direction.differenceX(i3);
        int iDifferenceY = i2 + Direction.differenceY(i3);
        return iDifferenceX >= 0 && iDifferenceY >= 0 && iDifferenceX <= 1 && iDifferenceY <= 1;
    }

    public final void loadFun(RoadDraft roadDraft) throws JSONException {
        roadDraft.transitions = loadTransitions(this.src, "fun", roadDraft.transitions);
        roadDraft.onClickTransitions = loadTransitions(this.src, "on click fun", roadDraft.onClickTransitions);
        roadDraft.randomTransitions = loadTransitions(this.src, "random fun", roadDraft.randomTransitions);
        List<Transition> listLoadTransitions = loadTransitions(this.src, "on event fun", roadDraft.onEventTransitions);
        roadDraft.onEventTransitions = listLoadTransitions;
        roadDraft.onBuiltTransitions = loadTransitions(this.src, "on built fun", listLoadTransitions);
        roadDraft.hiddenOnClick = this.src.optBoolean("hidden on click", false);
    }

    public static RoadDraft.AutoDecoration loadAutoDecoration(JSONObject jSONObject) throws JSONException {
        RoadDraft.AutoDecoration autoDecoration = new RoadDraft.AutoDecoration();
        String strOptString = jSONObject.optString("draft", null);
        if (strOptString == null) {
            strOptString = jSONObject.getString(C3670j8.x);
        }
        RoadDecorationDraft roadDecorationDraft = (RoadDecorationDraft) Drafts.get(strOptString, RoadDecorationDraft.class);
        if (roadDecorationDraft == null) {
            throw new IllegalArgumentException("Could not find road deco draft " + strOptString);
        }
        autoDecoration.draft = roadDecorationDraft;
        autoDecoration.stepX = Math.max(jSONObject.optInt("step x", jSONObject.optInt("step", 2)), 1);
        autoDecoration.stepY = Math.max(jSONObject.optInt("step y", 1), 1);
        autoDecoration.offsetX = jSONObject.optInt("offset x", 0);
        autoDecoration.offsetY = jSONObject.optInt("offset y", 0);
        autoDecoration.stride = Math.max(jSONObject.optInt("stride", 1), 0);
        autoDecoration.dirsOnly = jSONObject.optInt("dirs", 0);
        return autoDecoration;
    }
}
