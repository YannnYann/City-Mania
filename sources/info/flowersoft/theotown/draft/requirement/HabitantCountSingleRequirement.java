package info.flowersoft.theotown.draft.requirement;

import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class HabitantCountSingleRequirement extends SingleRequirement {
    public int count;
    public final int[] factors = new int[3];
    public boolean hideIfFulfilled;
    public boolean hideIfNotFulfilled;

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean autoFulfilledInSandboxMode() {
        return true;
    }

    public HabitantCountSingleRequirement(JSONObject jSONObject) throws JSONException {
        this.hideIfFulfilled = jSONObject.optBoolean("hide if fulfilled", this.hideIfFulfilled);
        this.hideIfNotFulfilled = jSONObject.optBoolean("hide if not fulfilled", this.hideIfNotFulfilled);
        this.count = jSONObject.getInt("count");
        for (int i = 0; i < 3; i++) {
            this.factors[i] = jSONObject.optInt("factor" + i, 1);
        }
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
        if (Constants.NO_REQUIREMENTS) {
            return true;
        }
        People people = (People) city.getComponent(9);
        int people2 = 0;
        for (int i = 0; i < 3; i++) {
            people2 += this.factors[i] * people.getPeople(i);
        }
        return people2 >= this.count;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public String localize(Translator translator, City city) {
        int iMax = Integer.MIN_VALUE;
        int iMin = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = this.factors[i2];
            i += i3;
            iMax = Math.max(iMax, i3);
            iMin = Math.min(iMin, this.factors[i2]);
        }
        if (iMax != 1) {
            return "May not localize requirement :'(";
        }
        if (i == 3) {
            return StringFormatter.format(translator.translate(1538), Integer.valueOf(this.count));
        }
        if (i == 1) {
            int[] iArr = this.factors;
            if (iArr[0] == 1) {
                return StringFormatter.format(translator.translate(1294), Integer.valueOf(this.count));
            }
            if (iArr[1] == 1) {
                return StringFormatter.format(translator.translate(1187), Integer.valueOf(this.count));
            }
            return StringFormatter.format(translator.translate(2715), Integer.valueOf(this.count));
        }
        return "May not localize requirement :'(";
    }

    public boolean equals(Object obj) {
        if (obj instanceof HabitantCountSingleRequirement) {
            HabitantCountSingleRequirement habitantCountSingleRequirement = (HabitantCountSingleRequirement) obj;
            if (Arrays.equals(this.factors, habitantCountSingleRequirement.factors) && this.count == habitantCountSingleRequirement.count) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean strongerOrEqualThan(SingleRequirement singleRequirement) {
        if (singleRequirement instanceof HabitantCountSingleRequirement) {
            HabitantCountSingleRequirement habitantCountSingleRequirement = (HabitantCountSingleRequirement) singleRequirement;
            if (Arrays.equals(this.factors, habitantCountSingleRequirement.factors) && this.count >= habitantCountSingleRequirement.count) {
                return true;
            }
        }
        return false;
    }
}
