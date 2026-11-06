package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum AdElementType implements KeyHolder {
    Mraid("mraid"),
    Video("video"),
    Image("image"),
    Label("label"),
    Countdown("countdown"),
    Progress("progress");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    AdElementType(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
