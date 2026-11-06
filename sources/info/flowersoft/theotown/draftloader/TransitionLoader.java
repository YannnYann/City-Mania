package info.flowersoft.theotown.draftloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.components.transition.TaggedIntEnum;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionLoader {
    public List<Transition> loadTransitions(JSONObject jSONObject, String str) throws JSONException {
        if (!jSONObject.has(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        TransitionLoader transitionLoader = new TransitionLoader();
        Object obj = jSONObject.get(str);
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(transitionLoader.loadTransition(jSONArray.getJSONObject(i)));
            }
        } else if (obj instanceof JSONObject) {
            arrayList.add(transitionLoader.loadTransition((JSONObject) obj));
        } else {
            throw new JSONException("No transition array or object could be found");
        }
        if (PluginHelper.PATH != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                List<Transition.Action> list = ((Transition) arrayList.get(i2)).actions;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    Transition.Action action = list.get(i3);
                    if (action.type == Transition.ACTION_LOAD_CITY) {
                        action.id = PluginHelper.PATH + "/" + action.id;
                    }
                }
            }
        }
        return arrayList;
    }

    public Transition loadTransition(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        Transition transition = new Transition();
        transition.probability = (float) jSONObject.optDouble("p", 1.0d);
        transition.fixedProbability = jSONObject.optBoolean("fixed", false);
        transition.doubleCheck = jSONObject.optBoolean("double check", false);
        transition.always = jSONObject.optBoolean("always", false);
        if (jSONObject.has("conditions")) {
            JSONArray jSONArray = jSONObject.getJSONArray("conditions");
            Transition.Condition condition = new Transition.Condition();
            condition.type = Transition.CONDITION_OR;
            condition.innerConditions = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                Transition.Condition condition2 = new Transition.Condition();
                condition2.type = Transition.CONDITION_AND;
                condition2.innerConditions = new ArrayList();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    condition2.innerConditions.add(loadCondition(jSONArray2.get(i2)));
                }
                condition.innerConditions.add(condition2);
            }
            if (condition.innerConditions.size() == 1) {
                condition = condition.innerConditions.get(0);
                if (condition.innerConditions.size() == 1) {
                    condition = condition.innerConditions.get(0);
                }
            }
            transition.condition = condition;
        }
        if (jSONObject.has("condition")) {
            transition.condition = loadCondition(jSONObject.get("condition"));
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("actions");
        if (jSONArrayOptJSONArray != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                transition.actions.add(loadAction(jSONArrayOptJSONArray.get(i3)));
            }
        } else {
            transition.actions.add(loadAction(jSONObject.get("action")));
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("else actions");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                transition.elseActions.add(loadAction(jSONArrayOptJSONArray2.get(i4)));
            }
        } else if (jSONObject.has("else action")) {
            transition.elseActions.add(loadAction(jSONObject.get("else action")));
        }
        return transition;
    }

    public Transition.Condition loadCondition(Object obj) throws JSONException {
        if (obj instanceof JSONObject) {
            return loadCondition((JSONObject) obj);
        }
        if (obj instanceof String) {
            return loadCondition((String) obj);
        }
        throw new IllegalArgumentException("May not load condition from " + obj);
    }

    public final Transition.Condition loadCondition(String str) {
        int i = 0;
        while (true) {
            String[] strArr = Transition.COMPARISON_OPS;
            if (i < strArr.length) {
                String str2 = strArr[i];
                int iIndexOf = str.indexOf(str2);
                if (iIndexOf >= 0) {
                    String strSubstring = str.substring(0, iIndexOf);
                    String strSubstring2 = str.substring(iIndexOf + str2.length());
                    if (strSubstring.isEmpty()) {
                        throw new IllegalArgumentException("Left part may not be empty in " + str);
                    }
                    if (strSubstring2.isEmpty()) {
                        throw new IllegalArgumentException("Right part may not be empty in " + str);
                    }
                    Transition.Condition condition = new Transition.Condition();
                    condition.type = Transition.CONDITION_COMPARE;
                    condition.id = strSubstring;
                    condition.code = strSubstring2;
                    condition.frame = i;
                    return condition;
                }
                i++;
            } else {
                throw new IllegalArgumentException("No comparison operator in " + str);
            }
        }
    }

    public final Transition.Condition loadCondition(JSONObject jSONObject) throws JSONException {
        Transition.Condition condition = new Transition.Condition();
        condition.id = jSONObject.optString(C3670j8.x, null);
        condition.code = jSONObject.optString("code", null);
        condition.x = optLong(jSONObject, "x", 0L);
        condition.y = optLong(jSONObject, "y", 0L);
        condition.w = optLong(jSONObject, "w", 0L);
        condition.h = optLong(jSONObject, "h", 0L);
        condition.z = optLong(jSONObject, "z", 0L);
        condition.x2 = optLong(jSONObject, "x2", 0L);
        condition.y2 = optLong(jSONObject, "y2", 0L);
        condition.min = optLong(jSONObject, "min", 0L);
        condition.max = optLong(jSONObject, "max", 0L);
        condition.frame = jSONObject.optInt("frame", -1);
        condition.level = jSONObject.optInt("level", Integer.MIN_VALUE);
        condition.invert = jSONObject.optBoolean("invert", false);
        String string = jSONObject.getString("type");
        TaggedIntEnum taggedIntEnum = Transition.conditionEnum;
        if (taggedIntEnum.canResolve(string)) {
            condition.type = taggedIntEnum.resolve(string);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("inner");
            if (jSONArrayOptJSONArray != null) {
                condition.innerConditions = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    condition.innerConditions.add(loadCondition(jSONArrayOptJSONArray.get(i)));
                }
            }
            return condition;
        }
        throw new IllegalArgumentException("May not find condition type " + string);
    }

    public Transition.Action loadAction(Object obj) throws JSONException {
        if (obj instanceof JSONObject) {
            return loadAction((JSONObject) obj);
        }
        if (obj instanceof String) {
            return loadAction((String) obj);
        }
        throw new IllegalArgumentException("May not load action from " + obj);
    }

    public final Transition.Action loadAction(String str) {
        int iIndexOf = str.indexOf(61);
        if (iIndexOf >= 0) {
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1).trim();
            if (strTrim.isEmpty()) {
                throw new IllegalArgumentException("May not assign to empty variable in " + str);
            }
            if (strTrim2.isEmpty()) {
                throw new IllegalArgumentException("May not evaluate empty in " + str);
            }
            Transition.Action action = new Transition.Action();
            action.type = Transition.ACTION_SET;
            action.id = strTrim;
            action.code = strTrim2;
            return action;
        }
        throw new IllegalArgumentException("May not load action from " + str);
    }

    public final Transition.Action loadAction(JSONObject jSONObject) throws JSONException {
        Transition.Action action = new Transition.Action();
        action.id = jSONObject.optString(C3670j8.x, null);
        action.code = jSONObject.optString("code", null);
        action.x = optLong(jSONObject, "x", 0L);
        action.y = optLong(jSONObject, "y", 0L);
        action.z = optLong(jSONObject, "z", 0L);
        action.x2 = optLong(jSONObject, "x2", 0L);
        action.y2 = optLong(jSONObject, "y2", 0L);
        action.w = optLong(jSONObject, "w", -1L);
        action.h = optLong(jSONObject, "h", -1L);
        action.frame = jSONObject.optInt("frame", -1);
        action.level = jSONObject.optInt("level", Integer.MIN_VALUE);
        action.invert = jSONObject.optBoolean("invert", false);
        action.ignoreSuccess = jSONObject.optBoolean("ignore", false);
        String string = jSONObject.getString("type");
        TaggedIntEnum taggedIntEnum = Transition.actionEnum;
        if (taggedIntEnum.canResolve(string)) {
            action.type = taggedIntEnum.resolve(string);
            if (jSONObject.has("condition")) {
                action.condition = loadCondition(jSONObject.get("condition"));
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("inner");
            if (jSONArrayOptJSONArray != null) {
                action.innerActions = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    action.innerActions.add(loadAction(jSONArrayOptJSONArray.get(i)));
                }
            }
            return action;
        }
        throw new IllegalArgumentException("May not find action type " + string);
    }

    public final long optLong(JSONObject jSONObject, String str, long j) {
        if (jSONObject.has(str)) {
            try {
                Object obj = jSONObject.get(str);
                if (obj instanceof Number) {
                    return ((Number) obj).longValue();
                }
                if ("max".equals(obj)) {
                    return Long.MAX_VALUE;
                }
                if ("min".equals(obj)) {
                    return Long.MIN_VALUE;
                }
                if (obj instanceof String) {
                    return Long.parseLong((String) obj);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return j;
    }
}
