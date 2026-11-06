package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidStoreDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidStoreDataSource implements StoreDataSource {
    private final Context context;

    public AndroidStoreDataSource(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.unity3d.ads.core.data.datasource.StoreDataSource
    public List<String> fetchStores(List<String> additionalStores) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(additionalStores, "additionalStores");
        AndroidKnownStore[] androidKnownStoreArrValues = AndroidKnownStore.values();
        ArrayList arrayList = new ArrayList(androidKnownStoreArrValues.length);
        for (AndroidKnownStore androidKnownStore : androidKnownStoreArrValues) {
            arrayList.add(androidKnownStore.getPackageName());
        }
        List listDistinct = CollectionsKt___CollectionsKt.distinct(CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) additionalStores));
        PackageManager packageManager = this.context.getPackageManager();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listDistinct) {
            String str = (String) obj;
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    packageInfo = packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(0L));
                } else {
                    packageInfo = packageManager.getPackageInfo(str, 0);
                }
                if (packageInfo != null) {
                    arrayList2.add(obj);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return arrayList2;
    }
}
