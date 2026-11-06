package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AndroidAppSetIdDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidAppSetIdDataSource {
    private final MutableStateFlow<String> _appSetIdFlow;
    private final Context applicationContext;
    private final MutableStateFlow<Boolean> isCollecting;

    public AndroidAppSetIdDataSource(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        this.applicationContext = applicationContext;
        this.isCollecting = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        this._appSetIdFlow = StateFlowKt.MutableStateFlow(null);
    }

    public final String getAppSetId() {
        return this._appSetIdFlow.getValue();
    }

    public final void invoke() {
        Boolean value;
        Boolean bool;
        MutableStateFlow<Boolean> mutableStateFlow = this.isCollecting;
        do {
            value = mutableStateFlow.getValue();
            bool = value;
            bool.getClass();
        } while (!mutableStateFlow.compareAndSet(value, Boolean.TRUE));
        if (bool.booleanValue()) {
            return;
        }
        try {
            Task<AppSetIdInfo> appSetIdInfo = AppSet.getClient(this.applicationContext).getAppSetIdInfo();
            final Function1 function1 = new Function1() { // from class: com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidAppSetIdDataSource.invoke$lambda$1(this.f$0, (AppSetIdInfo) obj);
                }
            };
            Intrinsics.checkNotNull(appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    function1.invoke(obj);
                }
            }));
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1(AndroidAppSetIdDataSource androidAppSetIdDataSource, AppSetIdInfo appSetIdInfo) {
        String id = appSetIdInfo.getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        androidAppSetIdDataSource._appSetIdFlow.setValue(id);
        return Unit.INSTANCE;
    }
}
