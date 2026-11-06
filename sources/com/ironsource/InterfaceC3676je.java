package com.ironsource;

import com.ironsource.InterfaceC3681k1;

/* JADX INFO: renamed from: com.ironsource.je, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3676je extends Ob<Integer, Integer> {

    /* JADX INFO: renamed from: com.ironsource.je$a */
    public static final class a {
        public static final a a = new a();
        public static final int b = 1201;
        public static final int c = 1202;
        public static final int d = 1005;
        public static final int e = 1206;
        public static final int f = 1006;
        public static final int g = 1203;
        public static final int h = 1507;
        public static final int i = 1010;
        public static final int j = 1210;
        public static final int k = 1211;

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.je$b */
    public static final class b {
        public static final b a = new b();

        private b() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.je$c */
    public static final class c {
        public static final c a = new c();
        public static final int b = 1001;
        public static final int c = 1002;
        public static final int d = 1200;
        public static final int e = 1301;
        public static final int f = 1503;
        public static final int g = 1504;

        private c() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.je$d */
    public static final class d implements InterfaceC3676je {
        @Override // com.ironsource.Ob
        public /* bridge */ /* synthetic */ Integer a(Integer num) {
            return a(num.intValue());
        }

        public Integer a(int i) throws IllegalArgumentException {
            int i2;
            if (i == 206) {
                i2 = c.f;
            } else if (i == 207) {
                i2 = c.g;
            } else if (i != 401) {
                switch (i) {
                    case 101:
                        i2 = e.b;
                        break;
                    case 102:
                        i2 = e.c;
                        break;
                    case 103:
                        i2 = e.d;
                        break;
                    case 104:
                        i2 = e.e;
                        break;
                    case 105:
                        i2 = e.f;
                        break;
                    default:
                        switch (i) {
                            case 109:
                                i2 = 88002;
                                break;
                            case 110:
                                i2 = e.h;
                                break;
                            case 111:
                                i2 = e.i;
                                break;
                            case 112:
                                i2 = e.j;
                                break;
                            case 113:
                                i2 = e.k;
                                break;
                            default:
                                switch (i) {
                                    case 201:
                                        i2 = 1001;
                                        break;
                                    case 202:
                                        i2 = 1002;
                                        break;
                                    case 203:
                                        i2 = c.d;
                                        break;
                                    case 204:
                                        i2 = 1301;
                                        break;
                                    default:
                                        switch (i) {
                                            case InterfaceC3681k1.a.b.c /* 403 */:
                                                i2 = a.c;
                                                break;
                                            case InterfaceC3681k1.a.b.d /* 404 */:
                                                i2 = 1005;
                                                break;
                                            case InterfaceC3681k1.a.b.e /* 405 */:
                                                i2 = a.e;
                                                break;
                                            case InterfaceC3681k1.a.b.f /* 406 */:
                                                i2 = 1006;
                                                break;
                                            case InterfaceC3681k1.a.b.g /* 407 */:
                                                i2 = a.g;
                                                break;
                                            case InterfaceC3681k1.a.b.h /* 408 */:
                                                i2 = a.h;
                                                break;
                                            case InterfaceC3681k1.a.b.i /* 409 */:
                                                i2 = 1010;
                                                break;
                                            case InterfaceC3681k1.a.b.j /* 410 */:
                                                i2 = a.j;
                                                break;
                                            case InterfaceC3681k1.a.b.k /* 411 */:
                                                i2 = a.k;
                                                break;
                                            default:
                                                throw new IllegalArgumentException("Unknown event code: " + i);
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                i2 = 1201;
            }
            return Integer.valueOf(i2);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.je$e */
    public static final class e {
        public static final e a = new e();
        public static final int b = 81500;
        public static final int c = 81510;
        public static final int d = 81301;
        public static final int e = 81300;
        public static final int f = 81002;
        public static final int g = 88002;
        public static final int h = 83003;
        public static final int i = 81302;
        public static final int j = 81077;
        public static final int k = 81078;

        private e() {
        }
    }
}
