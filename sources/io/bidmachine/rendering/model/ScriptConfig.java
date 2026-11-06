package io.bidmachine.rendering.model;

import io.bidmachine.iab.script.ScriptWrapper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ScriptConfig {
    public static final Companion Companion = new Companion(null);
    public final String a;
    public final int b;
    public final Type c;
    public final boolean d;
    public final String e;
    public final String f;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ScriptConfig createInline$default(Companion companion, String str, int i, String str2, boolean z, int i2, Object obj) {
            if ((i2 & 8) != 0) {
                z = false;
            }
            return companion.createInline(str, i, str2, z);
        }

        public final ScriptConfig createInline(String scriptId, int i, String source, boolean z) {
            Intrinsics.checkNotNullParameter(scriptId, "scriptId");
            Intrinsics.checkNotNullParameter(source, "source");
            Type type = Type.InlineTag;
            if (z) {
                source = ScriptWrapper.wrap(source);
            }
            return new ScriptConfig(scriptId, i, type, true, source, null, 32, null);
        }

        public Companion() {
        }
    }

    public enum Type {
        DocumentStart,
        DocumentEnd,
        InlineTag,
        Runtime
    }

    public ScriptConfig(String scriptId, int i, Type type, boolean z, String source, String str) {
        Intrinsics.checkNotNullParameter(scriptId, "scriptId");
        Intrinsics.checkNotNullParameter(source, "source");
        this.a = scriptId;
        this.b = i;
        this.c = type;
        this.d = z;
        this.e = source;
        this.f = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScriptConfig)) {
            return false;
        }
        ScriptConfig scriptConfig = (ScriptConfig) obj;
        return Intrinsics.areEqual(this.a, scriptConfig.a) && this.b == scriptConfig.b && this.c == scriptConfig.c && this.d == scriptConfig.d && Intrinsics.areEqual(this.e, scriptConfig.e) && Intrinsics.areEqual(this.f, scriptConfig.f);
    }

    public final boolean getForMainFrameOnly() {
        return this.d;
    }

    public final String getMessageHandler() {
        return this.f;
    }

    public final int getPriority() {
        return this.b;
    }

    public final String getScriptId() {
        return this.a;
    }

    public final String getSource() {
        return this.e;
    }

    public final Type getType() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31;
        Type type = this.c;
        int iHashCode2 = (iHashCode + (type == null ? 0 : type.hashCode())) * 31;
        boolean z = this.d;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int iHashCode3 = (((iHashCode2 + r1) * 31) + this.e.hashCode()) * 31;
        String str = this.f;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ScriptConfig(scriptId=" + this.a + ", priority=" + this.b + ", type=" + this.c + ", forMainFrameOnly=" + this.d + ", source=" + this.e + ", messageHandler=" + this.f + ')';
    }

    public /* synthetic */ ScriptConfig(String str, int i, Type type, boolean z, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, type, z, str2, (i2 & 32) != 0 ? null : str3);
    }
}
