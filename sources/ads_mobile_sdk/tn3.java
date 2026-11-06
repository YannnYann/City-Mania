package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class tn3 implements ReadWriteProperty {
    public final Function1 a;
    public Object b;

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    public final Object getValue(Object thisRef, KProperty property) {
        Object obj;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        synchronized (this) {
            obj = this.b;
        }
        return obj;
    }

    @Override // kotlin.properties.ReadWriteProperty
    public final void setValue(Object thisRef, KProperty property, Object obj) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        synchronized (this) {
            this.b = obj;
            Function1 function1 = this.a;
            if (function1 != null) {
                function1.invoke(obj);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public /* synthetic */ tn3(Object obj) {
        this(null, obj);
    }

    public tn3(Function1 function1, Object obj) {
        this.a = function1;
        this.b = obj;
    }
}
