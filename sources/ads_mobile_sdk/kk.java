package ads_mobile_sdk;

import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KMutableProperty1;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class kk {
    public static KMutableProperty1 a(Class cls, String str, String str2, int i) {
        return Reflection.mutableProperty1(new MutablePropertyReference1Impl(cls, str, str2, i));
    }
}
