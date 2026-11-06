package info.flowersoft.theotown.draft.requirement;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.draftloader.TransitionLoader;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class ConditionRequirement extends SingleRequirement {
    public Transition.Condition condition;
    public String fulfilledText;
    public String fulfilledTextId;
    public boolean hideIfFulfilled;
    public boolean hideIfNotFulfilled;
    public City lastCity;
    public final boolean privileged;
    public String text;
    public String textId;
    public TransitionRunner transitionRunner;

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean autoFulfilledInSandboxMode() {
        return false;
    }

    public ConditionRequirement(JSONObject jSONObject, boolean z) throws JSONException {
        this.hideIfFulfilled = jSONObject.optBoolean("hide if fulfilled", this.hideIfFulfilled);
        this.hideIfNotFulfilled = jSONObject.optBoolean("hide if not fulfilled", this.hideIfNotFulfilled);
        this.condition = new TransitionLoader().loadCondition((Object) jSONObject.getJSONObject("condition"));
        this.text = jSONObject.optString(C3522b4.i.K0, null);
        this.textId = jSONObject.optString("text id", null);
        this.fulfilledText = jSONObject.optString("text fulfilled", this.text);
        this.fulfilledTextId = jSONObject.optString("text id fulfilled", this.textId);
        this.privileged = z;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfFulfilled() {
        return this.hideIfFulfilled;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfNotFulfilled() {
        return this.hideIfNotFulfilled;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean isFulfilled(City city) {
        int x;
        int height;
        int width;
        int i;
        int y;
        if (Constants.NO_REQUIREMENTS) {
            return true;
        }
        if (this.transitionRunner == null || this.lastCity != city) {
            this.transitionRunner = new TransitionRunner(city);
            this.lastCity = city;
        }
        Object obj = this.context;
        if (obj instanceof Building) {
            Building building = (Building) obj;
            x = building.getX();
            y = building.getY();
            width = building.getWidth();
            height = building.getHeight();
            i = -1;
        } else if (obj instanceof Road) {
            Road road = (Road) obj;
            x = road.x;
            int i2 = road.y;
            i = road.level;
            height = 1;
            width = 1;
            y = i2;
        } else {
            x = 0;
            height = 1;
            width = 1;
            i = -1;
            y = 0;
        }
        return this.transitionRunner.checkCondition(this.condition, x, y, width, height, i, "", null);
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public String localize(Translator translator, City city) {
        DraftLocalizer draftLocalizer = new DraftLocalizer(city);
        if (isFulfilled(city)) {
            String str = this.fulfilledTextId;
            if (str != null) {
                return interpolateString(draftLocalizer.localizeKey(str, "No fulfilled translation for " + this.textId + " could be found!"));
            }
            return interpolateString(draftLocalizer.localizePacked(this.fulfilledText));
        }
        String str2 = this.textId;
        if (str2 != null) {
            return interpolateString(draftLocalizer.localizeKey(str2, "No translation for " + this.textId + " could be found!"));
        }
        return interpolateString(draftLocalizer.localizePacked(this.text));
    }

    public final String interpolateString(String str) {
        TransitionRunner transitionRunner = this.transitionRunner;
        return transitionRunner != null ? transitionRunner.interpolateString(str, 0L, 0L, 0L, 0L, 0) : str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ConditionRequirement) {
            return ((ConditionRequirement) obj).condition.equals(this.condition);
        }
        return false;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean strongerOrEqualThan(SingleRequirement singleRequirement) {
        return equals(singleRequirement);
    }
}
