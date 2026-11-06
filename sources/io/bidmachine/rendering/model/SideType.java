package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum SideType implements KeyHolder {
    Left("left"),
    Top("top"),
    Right("right"),
    Bottom("bottom"),
    CenterX("centerX"),
    CenterY("centerY");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    SideType(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
