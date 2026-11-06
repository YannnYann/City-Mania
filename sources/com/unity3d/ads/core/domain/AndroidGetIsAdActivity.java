package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: AndroidGetIsAdActivity.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetIsAdActivity {
    private final Lazy activities$delegate;
    private final SessionRepository sessionRepository;

    public AndroidGetIsAdActivity(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
        this.activities$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.unity3d.ads.core.domain.AndroidGetIsAdActivity$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidGetIsAdActivity.activities_delegate$lambda$1(this.f$0);
            }
        });
    }

    private final List<ByteString> getActivities() {
        return (List) this.activities$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List activities_delegate$lambda$1(AndroidGetIsAdActivity androidGetIsAdActivity) {
        List<com.google.protobuf.ByteString> observableAndroidActivitiesList = androidGetIsAdActivity.sessionRepository.getNativeConfiguration().getObservableAndroidActivitiesList();
        Intrinsics.checkNotNullExpressionValue(observableAndroidActivitiesList, "getObservableAndroidActivitiesList(...)");
        List<com.google.protobuf.ByteString> list = observableAndroidActivitiesList;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            byte[] byteArray = ((com.google.protobuf.ByteString) it.next()).toByteArray();
            arrayList.add(ByteString.of(Arrays.copyOf(byteArray, byteArray.length)));
        }
        return arrayList;
    }

    public final boolean invoke(String activityName) {
        Intrinsics.checkNotNullParameter(activityName, "activityName");
        return getActivities().contains(ByteString.decodeHex(StringExtensionsKt.getSHA256Hash(activityName)));
    }
}
