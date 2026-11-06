package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum FontStyleType implements KeyHolder {
    Normal("normal", 0),
    Bold("bold", 1),
    Italic("italic", 2),
    BoldItalic("bold_italic", 3);

    public static final Companion Companion = new Companion(null);
    public final String a;
    public final int b;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FontStyleType get(String str) {
            return (FontStyleType) UtilsKt.find(FontStyleType.values(), str);
        }

        public Companion() {
        }
    }

    FontStyleType(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }

    public final int getTypeface() {
        return this.b;
    }
}
