package info.flowersoft.theotown.resources;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class JsonContentData implements ContentData {
    public final String json;

    public JsonContentData(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.json = json;
    }

    public final String getJson() {
        return this.json;
    }
}
