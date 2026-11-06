package io.bidmachine.rendering.model.animation.effect;

import com.ironsource.C3920x1;
import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum AnimationBase implements KeyHolder {
    Self(C3920x1.o),
    Screen("screen");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AnimationBase get(String str) {
            return (AnimationBase) UtilsKt.find(AnimationBase.values(), str);
        }

        public Companion() {
        }
    }

    AnimationBase(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
