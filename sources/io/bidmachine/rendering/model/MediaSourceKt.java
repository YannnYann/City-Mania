package io.bidmachine.rendering.model;

import android.webkit.MimeTypeMap;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.util.Utils;
import io.bidmachine.util.UtilsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaSourceKt {

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Utils.getValidUrl(it);
        }
    }

    public static final class b extends Lambda implements Function1 {
        public static final b a = new b();

        public b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(UtilsKt.isHttpUrl(it));
        }
    }

    public static final MediaSource urlsToMediaSource(List<String> list) {
        boolean zContentEquals;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List list2 = SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.mapNotNull(CollectionsKt___CollectionsKt.asSequence(list), a.a), b.a));
        Object obj = null;
        if (list2.isEmpty()) {
            return null;
        }
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            try {
                zContentEquals = StringsKt__StringsJVMKt.contentEquals(MimeTypeMap.getFileExtensionFromUrl((String) next), "m3u8", true);
            } catch (Throwable unused) {
                zContentEquals = false;
            }
            if (zContentEquals) {
                obj = next;
                break;
            }
        }
        String str = (String) obj;
        return str != null ? new UrlMediaSource(str, MediaSource.DeliveryType.STREAM) : new UrlMediaSource((List<String>) list2, MediaSource.DeliveryType.PRELOAD);
    }
}
