package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty$Setter;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MutablePropertyReference0 extends MutablePropertyReference implements KMutableProperty0 {
    public /* bridge */ /* synthetic */ KProperty.Getter getGetter() {
        mo2859getGetter();
        return null;
    }

    public /* bridge */ /* synthetic */ KMutableProperty$Setter getSetter() {
        mo2860getSetter();
        return null;
    }

    public MutablePropertyReference0() {
    }

    public MutablePropertyReference0(Object obj) {
        super(obj);
    }

    public MutablePropertyReference0(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KCallable computeReflected() {
        return Reflection.mutableProperty0(this);
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }

    @Override // kotlin.reflect.KProperty0
    /* JADX INFO: renamed from: getGetter, reason: collision with other method in class */
    public KProperty0.Getter mo2859getGetter() {
        ((KMutableProperty0) getReflected()).mo2859getGetter();
        return null;
    }

    @Override // kotlin.reflect.KMutableProperty0
    /* JADX INFO: renamed from: getSetter, reason: collision with other method in class */
    public KMutableProperty0.Setter mo2860getSetter() {
        ((KMutableProperty0) getReflected()).mo2860getSetter();
        return null;
    }

    @Override // kotlin.reflect.KProperty0
    public Object getDelegate() {
        return ((KMutableProperty0) getReflected()).getDelegate();
    }
}
