package io.bidmachine.iab.mraid;

import io.bidmachine.rendering.model.ScriptConfig;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidClickKt {
    public static final boolean hasClcScript(List<ScriptConfig> list) {
        Object obj = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual(((ScriptConfig) next).getScriptId(), "sclck")) {
                    obj = next;
                    break;
                }
            }
            obj = (ScriptConfig) obj;
        }
        return obj != null;
    }
}
