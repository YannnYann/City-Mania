package io.bidmachine.analytics.internal.I;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.I.a$a, reason: collision with other inner class name */
    public static final class C1115a extends Lambda implements Function1 {
        public static final C1115a a = new C1115a();

        public C1115a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(Object obj) {
            return "?";
        }
    }

    public static final String a(List list, String str) {
        if (list == null) {
            return null;
        }
        return str + " (" + CollectionsKt___CollectionsKt.joinToString$default(list, ",", null, null, 0, null, C1115a.a, 30, null) + ')';
    }

    public static /* synthetic */ void a(List list, SQLiteDatabase sQLiteDatabase, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 100;
        }
        a(list, sQLiteDatabase, i, function1);
    }

    public static final void a(List list, SQLiteDatabase sQLiteDatabase, int i, Function1 function1) {
        if (list == null) {
            function1.invoke(null);
            return;
        }
        sQLiteDatabase.beginTransaction();
        try {
            Iterator it = CollectionsKt___CollectionsKt.chunked(list, i).iterator();
            while (it.hasNext()) {
                function1.invoke((List) it.next());
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public static final String[] a(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
