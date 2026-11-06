package io.bidmachine.rendering.model.animation;

import io.bidmachine.rendering.model.animation.easing.AnimationEasing;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class AnimationTiming {
    public final AnimationEasing a;
    public final long b;

    public /* synthetic */ AnimationTiming(AnimationEasing animationEasing, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(animationEasing, j);
    }

    public final AnimationEasing getAnimationEasing() {
        return this.a;
    }

    /* JADX INFO: renamed from: getDuration-UwyO8pc, reason: not valid java name */
    public final long m2715getDurationUwyO8pc() {
        return this.b;
    }

    public AnimationTiming(AnimationEasing animationEasing, long j) {
        this.a = animationEasing;
        this.b = j;
    }
}
