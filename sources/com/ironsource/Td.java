package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class Td {
    private final String a;
    private final Integer b;

    /* JADX WARN: Multi-variable type inference failed */
    public Td() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final String a() {
        return this.a;
    }

    public final Integer b() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Td(String str) {
        this(str, null, 2, 0 == true ? 1 : 0);
    }

    public Td(String str, Integer num) {
        this.a = str;
        this.b = num;
    }

    public /* synthetic */ Td(String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num);
    }
}
