package com.ironsource;

import com.ironsource.P8;

/* JADX INFO: loaded from: classes3.dex */
public class Ze implements P8.b {
    private String a;
    private int b;

    public Ze(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // com.ironsource.P8.b
    public int b() {
        return this.b;
    }

    @Override // com.ironsource.P8.b
    public String c() {
        return this.a;
    }
}
