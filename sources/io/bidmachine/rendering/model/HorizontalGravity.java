package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum HorizontalGravity implements KeyHolder {
    Left("left", 3),
    Center("center", 1),
    Right("right", 5);

    public static final Companion Companion = new Companion(null);
    public final String a;
    public final int b;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HorizontalGravity get(String str) {
            return (HorizontalGravity) UtilsKt.find(HorizontalGravity.values(), str);
        }

        public Companion() {
        }
    }

    HorizontalGravity(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }

    public final int getValue() {
        return this.b;
    }
}
