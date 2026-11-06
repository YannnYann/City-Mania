package com.vungle.ads.internal.model;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((b) obj2).j()), Boolean.valueOf(((b) obj).j()));
    }
}
