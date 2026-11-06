package io.bidmachine.iab.script;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ScriptWrapper {
    public static final ScriptWrapper INSTANCE = new ScriptWrapper();

    public static final String wrap(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        return "<script type='application/javascript'>" + script + "</script>";
    }
}
