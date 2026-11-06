package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InterProcessCoordinator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InterProcessCoordinatorKt {
    public static final InterProcessCoordinator createSingleProcessCoordinator(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return new SingleProcessCoordinator(filePath);
    }
}
