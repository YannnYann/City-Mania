package info.flowersoft.theotown.draft.requirement;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SingleRequirement {
    public Object context;

    public abstract boolean autoFulfilledInSandboxMode();

    public abstract boolean hideIfFulfilled();

    public abstract boolean hideIfNotFulfilled();

    public abstract boolean isFulfilled(City city);

    public boolean isImportant() {
        return false;
    }

    public abstract String localize(Translator translator, City city);

    public abstract boolean strongerOrEqualThan(SingleRequirement singleRequirement);

    public void setContext(Object obj) {
        this.context = obj;
    }

    public String resolveDraftTitle(Draft draft, City city) {
        return new DraftLocalizer(city).getTitle(draft);
    }
}
