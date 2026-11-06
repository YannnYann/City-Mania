package info.flowersoft.theotown.store;

/* JADX INFO: loaded from: classes4.dex */
public enum StoreMode {
    EXPLORE("explore"),
    INSTALLED("installed"),
    ACTIVE("installed"),
    INACTIVE("installed"),
    ERROR("installed"),
    FEATURED("featured"),
    BEST_RATED("bestrated"),
    CERTIFIED_CREATORS("certifiedcreators"),
    CATEGORY("category"),
    USER("user"),
    SEARCH("search"),
    NEW("new"),
    PREV_INSTALLED("installed"),
    MISSING("installed"),
    COMMENTED("commented"),
    LOCAL(null);

    public final String tag;

    StoreMode(String str) {
        this.tag = str;
    }

    public String getTag() {
        return this.tag;
    }
}
