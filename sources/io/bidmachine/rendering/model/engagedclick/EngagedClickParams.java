package io.bidmachine.rendering.model.engagedclick;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class EngagedClickParams {
    public final long a;
    public final VisualConfig b;
    public final CreativeProfileInfo c;
    public final EngagedClickTrackingObject d;
    public final boolean e;

    public EngagedClickParams(long j, VisualConfig visualConfig, CreativeProfileInfo creativeProfileInfo, EngagedClickTrackingObject engagedClickTrackingObject, boolean z) {
        Intrinsics.checkNotNullParameter(creativeProfileInfo, "creativeProfileInfo");
        this.a = j;
        this.b = visualConfig;
        this.c = creativeProfileInfo;
        this.d = engagedClickTrackingObject;
        this.e = z;
    }

    public final CreativeProfileInfo getCreativeProfileInfo() {
        return this.c;
    }

    public final EngagedClickTrackingObject getEngagedClickTrackingObject() {
        return this.d;
    }

    public final long getInteractionWindowMs() {
        return this.a;
    }

    public final VisualConfig getVisualConfig() {
        return this.b;
    }

    public final boolean isReclassifyByAdm() {
        return this.e;
    }

    public /* synthetic */ EngagedClickParams(long j, VisualConfig visualConfig, CreativeProfileInfo creativeProfileInfo, EngagedClickTrackingObject engagedClickTrackingObject, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, visualConfig, creativeProfileInfo, engagedClickTrackingObject, (i & 16) != 0 ? false : z);
    }
}
