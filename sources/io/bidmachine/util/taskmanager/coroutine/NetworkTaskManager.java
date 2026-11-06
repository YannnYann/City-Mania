package io.bidmachine.util.taskmanager.coroutine;

import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: NetworkTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NetworkTaskManager extends CoroutineTaskManager {
    public NetworkTaskManager() {
        super(new CoroutineName("NetworkTaskManager").plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(Dispatchers.getIO()));
    }
}
