package io.bidmachine.rendering.internal.groups;

import com.ironsource.C3522b4;
import com.unity3d.ads.BuildConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements b {
    public static final C1192a c = new C1192a(null);
    public final List a;
    public final HashSet b;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.groups.a$a, reason: collision with other inner class name */
    public static final class C1192a {
        public /* synthetic */ C1192a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C1192a() {
        }
    }

    public a(List initial) {
        Intrinsics.checkNotNullParameter(initial, "initial");
        this.a = initial;
        this.b = new HashSet(initial);
    }

    @Override // io.bidmachine.rendering.internal.groups.b
    public boolean a(List stateGroups) {
        boolean z;
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        synchronized (this.b) {
            if (stateGroups.isEmpty()) {
                z = true;
                break;
            }
            if (!stateGroups.isEmpty()) {
                Iterator it = stateGroups.iterator();
                while (it.hasNext()) {
                    if (d((String) it.next())) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
        }
        return z;
    }

    public final void b(String str) {
        if (this.b.contains(str)) {
            return;
        }
        this.b.add(str);
    }

    public final void c(String str) {
        if (StringsKt__StringsJVMKt.startsWith$default(str, C3522b4.j.c, false, 2, null)) {
            String strSubstring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            b(strSubstring);
        } else if (StringsKt__StringsJVMKt.startsWith$default(str, "!", false, 2, null)) {
            String strSubstring2 = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
            e(strSubstring2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r0 = "stateGroup"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.util.HashSet r0 = r2.b
            monitor-enter(r0)
            java.lang.String r1 = "default"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r1)     // Catch: java.lang.Throwable -> L1b
            if (r1 != 0) goto L1d
            java.util.HashSet r1 = r2.b     // Catch: java.lang.Throwable -> L1b
            boolean r3 = r1.contains(r3)     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L19
            goto L1d
        L19:
            r3 = 0
            goto L1e
        L1b:
            r3 = move-exception
            goto L20
        L1d:
            r3 = 1
        L1e:
            monitor-exit(r0)
            return r3
        L20:
            monitor-exit(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.groups.a.d(java.lang.String):boolean");
    }

    public final void e(String str) {
        if (Intrinsics.areEqual(str, BuildConfig.FLAVOR)) {
            return;
        }
        this.b.remove(str);
    }

    @Override // io.bidmachine.rendering.internal.groups.b
    public void a(String stateGroups) {
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        synchronized (this.b) {
            try {
                List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) stateGroups, new String[]{" "}, false, 0, 6, (Object) null);
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSplit$default, 10));
                Iterator it = listSplit$default.iterator();
                while (it.hasNext()) {
                    arrayList.add(StringsKt__StringsKt.trim((String) it.next()).toString());
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (!StringsKt__StringsKt.isBlank((String) obj)) {
                        arrayList2.add(obj);
                    }
                }
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    c((String) it2.next());
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
