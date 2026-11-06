package com.ironsource;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface G7 {

    public static class a {
        private final ArrayList<C5> a;
        private boolean b;
        private int c;
        private Exception d;

        public a(ArrayList<C5> arrayList) {
            this.b = false;
            this.c = -1;
            this.a = arrayList;
        }

        public a a(Exception exc) {
            return new a(this.a, this.c, this.b, exc);
        }

        public ArrayList<C5> b() {
            return this.a;
        }

        public boolean c() {
            return this.b;
        }

        public String toString() {
            return "EventSendResult{success=" + this.b + ", responseCode=" + this.c + ", exception=" + this.d + '}';
        }

        public a a(boolean z) {
            return new a(this.a, this.c, z, this.d);
        }

        public a a(int i) {
            return new a(this.a, i, this.b, this.d);
        }

        public String a() {
            if (this.b) {
                return "";
            }
            return "rc=" + this.c + ", ex=" + this.d;
        }

        public a(ArrayList<C5> arrayList, int i, boolean z, Exception exc) {
            this.a = arrayList;
            this.b = z;
            this.d = exc;
            this.c = i;
        }
    }

    void a(a aVar);
}
