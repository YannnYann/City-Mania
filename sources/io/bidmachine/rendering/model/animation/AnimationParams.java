package io.bidmachine.rendering.model.animation;

import io.bidmachine.rendering.model.animation.effect.AnimationEffect;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AnimationParams {
    public final AnimationTiming a;
    public final List b;

    public AnimationParams(AnimationTiming animationTiming, List<? extends AnimationEffect> animationEffectList) {
        Intrinsics.checkNotNullParameter(animationTiming, "animationTiming");
        Intrinsics.checkNotNullParameter(animationEffectList, "animationEffectList");
        this.a = animationTiming;
        this.b = animationEffectList;
    }

    public final List<AnimationEffect> getAnimationEffectList() {
        return this.b;
    }

    public final AnimationTiming getAnimationTiming() {
        return this.a;
    }
}
