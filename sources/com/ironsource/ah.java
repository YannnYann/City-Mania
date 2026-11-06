package com.ironsource;

import android.app.Activity;
import android.content.Context;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
public final class ah implements InterfaceC3595f4 {
    static final /* synthetic */ KProperty<Object>[] c = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(ah.class, "activity", "getActivity()Landroid/app/Activity;", 0))};
    private Context a;
    private final ReadWriteProperty b;

    public ah(Activity activity, Context context) {
        this.a = context;
        this.b = C3598f7.a(activity);
    }

    @Override // com.ironsource.InterfaceC3595f4
    public void a(Context context) {
        this.a = context;
    }

    @Override // com.ironsource.InterfaceC3595f4
    public Context b() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3595f4
    public Activity a() {
        return (Activity) this.b.getValue(this, c[0]);
    }

    @Override // com.ironsource.InterfaceC3595f4
    public void a(Activity activity) {
        this.b.setValue(this, c[0], activity);
    }
}
