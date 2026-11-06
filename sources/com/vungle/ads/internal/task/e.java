package com.vungle.ads.internal.task;

import android.os.Bundle;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements Cloneable {
    public final String a;
    public boolean b;
    public long c;
    public Bundle d;
    public int e;

    public e(String jobTag) {
        Intrinsics.checkNotNullParameter(jobTag, "jobTag");
        this.a = jobTag;
        this.d = new Bundle();
        this.e = 2;
    }

    public final e a(boolean z) {
        this.b = z;
        return this;
    }

    public final long b() {
        return this.c;
    }

    public final Bundle c() {
        return this.d;
    }

    public final Object clone() {
        return super.clone();
    }

    public final String d() {
        return this.a;
    }

    public final int e() {
        return this.e;
    }

    public final boolean f() {
        return this.b;
    }

    public final void g() {
        this.c = 0L;
    }

    public final e h() {
        this.e = 0;
        return this;
    }

    public final e a(Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.d = extras;
        return this;
    }

    public final e a() {
        try {
            Object objClone = super.clone();
            Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type com.vungle.ads.internal.task.JobInfo");
            return (e) objClone;
        } catch (CloneNotSupportedException e) {
            boolean z = v.a;
            u.a("JobInfo", "Cannot copy JobInfo " + this, e);
            return null;
        }
    }
}
