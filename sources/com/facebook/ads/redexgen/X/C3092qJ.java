package com.facebook.ads.redexgen.X;

import java.io.Writer;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3092qJ extends Writer {
    public static String[] A03 = {"m3VYVt1tyYlWEg8H2HS3pUr0VsrhpbIN", "rEdvzR", "IUQqTrakmjCy7RtoUebGZ8YLkwuKbv7t", "x1ufNW", "e7NtJ1", "AK7iWzpXctzvcUrQA38QQTSmPkrm2HP", "25DCnOqD1cr08G9nl6wTfczykol7NaSA", "0bM1VBntYb2o4FFsMu8yzxmwObMsLmHM"};
    public int A00;
    public char[] A01 = new char[1024];
    public final InterfaceC3091qI A02;

    public C3092qJ(InterfaceC3091qI interfaceC3091qI) {
        this.A02 = interfaceC3091qI;
    }

    private void A00() {
        this.A02.AIL(new String(this.A01, 0, this.A00));
        this.A00 = 0;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        flush();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        if (this.A00 > 0) {
            A00();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void write(char[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            r3 = r7
        L1:
            int r4 = r7 + r8
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3092qJ.A03
            r0 = 3
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L1b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3092qJ.A03
            java.lang.String r1 = "5m1TKypG4e5yu"
            r0 = 5
            r2[r0] = r1
            if (r3 >= r4) goto L46
            char r1 = r6[r3]
            r0 = 10
            if (r1 == r0) goto L31
            int r1 = r5.A00
            char[] r0 = r5.A01
            int r0 = r0.length
            if (r1 != r0) goto L37
        L31:
            r5.A00()
        L34:
            int r3 = r3 + 1
            goto L1
        L37:
            char[] r2 = r5.A01
            int r1 = r5.A00
            char r0 = r6[r3]
            r2[r1] = r0
            int r0 = r5.A00
            int r0 = r0 + 1
            r5.A00 = r0
            goto L34
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3092qJ.write(char[], int, int):void");
    }
}
