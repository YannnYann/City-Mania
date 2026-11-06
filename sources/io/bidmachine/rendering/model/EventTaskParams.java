package io.bidmachine.rendering.model;

import io.bidmachine.rendering.model.animation.AnimationParams;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class EventTaskParams {
    public final EventTaskType a;
    public final String b;
    public final Object c;
    public final AnimationParams d;
    public final String e;

    public EventTaskParams(EventTaskType eventTaskType, String target, Object obj, AnimationParams animationParams, String str) {
        Intrinsics.checkNotNullParameter(eventTaskType, "eventTaskType");
        Intrinsics.checkNotNullParameter(target, "target");
        this.a = eventTaskType;
        this.b = target;
        this.c = obj;
        this.d = animationParams;
        this.e = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventTaskParams)) {
            return false;
        }
        EventTaskParams eventTaskParams = (EventTaskParams) obj;
        return this.a == eventTaskParams.a && Intrinsics.areEqual(this.b, eventTaskParams.b) && Intrinsics.areEqual(this.c, eventTaskParams.c) && Intrinsics.areEqual(this.d, eventTaskParams.d) && Intrinsics.areEqual(this.e, eventTaskParams.e);
    }

    public final String getAnimationEffectRaw() {
        return this.e;
    }

    public final AnimationParams getAnimationParams() {
        return this.d;
    }

    public final EventTaskType getEventTaskType() {
        return this.a;
    }

    public final String getTarget() {
        return this.b;
    }

    public final Object getValue() {
        return this.c;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        Object obj = this.c;
        int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        AnimationParams animationParams = this.d;
        int iHashCode3 = (iHashCode2 + (animationParams == null ? 0 : animationParams.hashCode())) * 31;
        String str = this.e;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "EventTaskParams(eventTaskType=" + this.a + ", target=" + this.b + ", value=" + this.c + ", animationParams=" + this.d + ", animationEffectRaw=" + this.e + ')';
    }

    public /* synthetic */ EventTaskParams(EventTaskType eventTaskType, String str, Object obj, AnimationParams animationParams, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(eventTaskType, str, (i & 4) != 0 ? null : obj, (i & 8) != 0 ? null : animationParams, (i & 16) != 0 ? null : str2);
    }
}
