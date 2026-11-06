package androidx.customview.poolingcontainer;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: compiled from: PoolingContainer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PoolingContainerListenerHolder {
    public final ArrayList<PoolingContainerListener> listeners = new ArrayList<>();

    public final void onRelease() {
        for (int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.listeners); -1 < lastIndex; lastIndex--) {
            this.listeners.get(lastIndex).onRelease();
        }
    }
}
