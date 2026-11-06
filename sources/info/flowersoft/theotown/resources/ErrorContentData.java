package info.flowersoft.theotown.resources;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ErrorContentData implements ContentData {
    public final Exception exception;

    public ErrorContentData(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        this.exception = exception;
    }

    public final Exception getException() {
        return this.exception;
    }
}
