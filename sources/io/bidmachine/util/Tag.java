package io.bidmachine.util;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Tag.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Tag {
    public final String name;
    public final Lazy tag$delegate;

    public Tag(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.tag$delegate = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: io.bidmachine.util.Tag$tag$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return this.this$0.name + " @" + UtilsKt.createHexHashCode(this.this$0);
            }
        });
    }

    public final String getTag() {
        return (String) this.tag$delegate.getValue();
    }

    public String toString() {
        return getTag();
    }
}
