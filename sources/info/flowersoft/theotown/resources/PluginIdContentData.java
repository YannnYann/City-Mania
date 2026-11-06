package info.flowersoft.theotown.resources;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ContentData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PluginIdContentData implements ContentData {
    public static final Companion Companion = new Companion(null);
    public static final PluginIdContentData Empty = new PluginIdContentData(0);
    public final int id;

    /* JADX INFO: compiled from: ContentData.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final PluginIdContentData getEmpty() {
            return PluginIdContentData.Empty;
        }
    }

    public PluginIdContentData(int i) {
        this.id = i;
    }

    public final int getId() {
        return this.id;
    }
}
