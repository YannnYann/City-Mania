package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.json.JSONObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BeginManifestContentData implements ContentData {
    public final JSONObject json;

    public BeginManifestContentData(JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.json = json;
    }

    public final JSONObject getJson() {
        return this.json;
    }
}
