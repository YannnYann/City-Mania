package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.nd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3747nd {
    private boolean a;
    private boolean b;
    private boolean c;
    private EnumC3822rd d;
    private int e;
    private int f;

    /* JADX INFO: renamed from: com.ironsource.nd$a */
    public static class a {
        private boolean a = true;
        private boolean b = false;
        private boolean c = false;
        private EnumC3822rd d = null;
        private int e = 0;
        private int f = 0;

        public a a(boolean z) {
            this.a = z;
            return this;
        }

        public a a(boolean z, EnumC3822rd enumC3822rd, int i) {
            this.b = z;
            if (enumC3822rd == null) {
                enumC3822rd = EnumC3822rd.PER_DAY;
            }
            this.d = enumC3822rd;
            this.e = i;
            return this;
        }

        public a a(boolean z, int i) {
            this.c = z;
            this.f = i;
            return this;
        }

        public C3747nd a() {
            return new C3747nd(this.a, this.b, this.c, this.d, this.e, this.f);
        }
    }

    private C3747nd(boolean z, boolean z2, boolean z3, EnumC3822rd enumC3822rd, int i, int i2) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = enumC3822rd;
        this.e = i;
        this.f = i2;
    }

    public EnumC3822rd a() {
        return this.d;
    }

    public int b() {
        return this.e;
    }

    public int c() {
        return this.f;
    }

    public boolean d() {
        return this.b;
    }

    public boolean e() {
        return this.a;
    }

    public boolean f() {
        return this.c;
    }
}
