package io.bidmachine.rendering.model.animation.effect;

import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum AnimationDirection implements KeyHolder {
    Left("left"),
    Right("right"),
    Up("up"),
    Down("down");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AnimationDirection get(String str) {
            return (AnimationDirection) UtilsKt.find(AnimationDirection.values(), str);
        }

        public Companion() {
        }
    }

    AnimationDirection(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
