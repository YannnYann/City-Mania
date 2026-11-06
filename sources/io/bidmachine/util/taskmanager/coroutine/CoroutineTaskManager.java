package io.bidmachine.util.taskmanager.coroutine;

import io.bidmachine.util.taskmanager.BaseTaskManager;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: CoroutineTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public class CoroutineTaskManager extends BaseTaskManager {
    public final CoroutineScope coroutineScope;
    public final Map<Runnable, Job> jobs;

    public CoroutineTaskManager(CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.coroutineScope = coroutineScope;
        this.jobs = new ConcurrentHashMap();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoroutineTaskManager(CoroutineContext coroutineContext) {
        this(CoroutineScopeKt.CoroutineScope(coroutineContext));
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
    }

    @Override // io.bidmachine.util.taskmanager.BaseTaskManager
    public void scheduleTask(Runnable task, long j) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, CoroutineStart.LAZY, new CoroutineTaskManager$scheduleTask$job$1(j, task, this, null), 1, null);
        this.jobs.put(task, jobLaunch$default);
        jobLaunch$default.start();
    }

    @Override // io.bidmachine.util.taskmanager.BaseTaskManager
    public void cancelTask(Runnable task) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        Job jobRemove = this.jobs.remove(task);
        if (jobRemove != null) {
            Job.DefaultImpls.cancel$default(jobRemove, null, 1, null);
        }
    }
}
