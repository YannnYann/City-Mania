package io.bidmachine.iab.script;

import io.bidmachine.rendering.model.ScriptConfig;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ScriptInjectorKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScriptConfig.Type.values().length];
            try {
                iArr[ScriptConfig.Type.DocumentEnd.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final List a(List list) {
        final Comparator comparator = new Comparator() { // from class: io.bidmachine.iab.script.ScriptInjectorKt$sortedByPriority$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((ScriptConfig) t).getPriority()), Integer.valueOf(((ScriptConfig) t2).getPriority()));
            }
        };
        return CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: io.bidmachine.iab.script.ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int iCompare = comparator.compare(t, t2);
                return iCompare != 0 ? iCompare : ComparisonsKt__ComparisonsKt.compareValues(((ScriptConfig) t).getScriptId(), ((ScriptConfig) t2).getScriptId());
            }
        });
    }

    public static final String a(ScriptConfig scriptConfig) {
        ScriptConfig.Type type = scriptConfig.getType();
        if ((type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) == 1) {
            return StringsKt__IndentKt.trimIndent("\n        (function() {\n          if (document.readyState === 'loading') {\n            document.addEventListener('DOMContentLoaded', function() {\n              " + scriptConfig.getSource() + "\n            });\n          } else {\n            " + scriptConfig.getSource() + "\n          }\n        })();\n    ");
        }
        return scriptConfig.getSource();
    }

    public static final List a(List list, ScriptConfig.Type... typeArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ArraysKt___ArraysKt.contains(typeArr, ((ScriptConfig) obj).getType())) {
                arrayList.add(obj);
            }
        }
        return a(arrayList);
    }
}
