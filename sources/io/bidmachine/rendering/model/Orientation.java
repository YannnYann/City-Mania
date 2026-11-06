package io.bidmachine.rendering.model;

import com.ironsource.C3522b4;
import io.bidmachine.util.KeyHolder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum Orientation implements KeyHolder {
    Portrait(C3522b4.i.D, 7),
    Landscape(C3522b4.i.C, 6);

    public static final Companion Companion = new Companion(null);
    public final String a;
    public final int b;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    Orientation(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final int getActivityOrientation() {
        return this.b;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
