package io.bidmachine.rendering.model;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class EventTaskBucketParams {
    public final ExecutionMode a;
    public final List b;
    public final List c;
    public final List d;
    public final List e;
    public final String f;

    public EventTaskBucketParams() {
        this(null, null, null, null, null, null, 63, null);
    }

    public final List<EventTaskParams> getAfterEventTaskParamsList() {
        return this.e;
    }

    public final String getAnimationTimingRaw() {
        return this.f;
    }

    public final List<EventTaskParams> getBeforeEventTaskParamsList() {
        return this.c;
    }

    public final List<EventTaskParams> getEventTaskParamsList() {
        return this.d;
    }

    public final ExecutionMode getExecutionMode() {
        return this.a;
    }

    public final List<String> getStateGroups() {
        return this.b;
    }

    public EventTaskBucketParams(ExecutionMode executionMode, List<String> stateGroups, List<EventTaskParams> beforeEventTaskParamsList, List<EventTaskParams> eventTaskParamsList, List<EventTaskParams> afterEventTaskParamsList, String animationTimingRaw) {
        Intrinsics.checkNotNullParameter(executionMode, "executionMode");
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        Intrinsics.checkNotNullParameter(beforeEventTaskParamsList, "beforeEventTaskParamsList");
        Intrinsics.checkNotNullParameter(eventTaskParamsList, "eventTaskParamsList");
        Intrinsics.checkNotNullParameter(afterEventTaskParamsList, "afterEventTaskParamsList");
        Intrinsics.checkNotNullParameter(animationTimingRaw, "animationTimingRaw");
        this.a = executionMode;
        this.b = stateGroups;
        this.c = beforeEventTaskParamsList;
        this.d = eventTaskParamsList;
        this.e = afterEventTaskParamsList;
        this.f = animationTimingRaw;
    }

    public /* synthetic */ EventTaskBucketParams(ExecutionMode executionMode, List list, List list2, List list3, List list4, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ExecutionMode.Parallel : executionMode, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list3, (i & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list4, (i & 32) != 0 ? "" : str);
    }
}
