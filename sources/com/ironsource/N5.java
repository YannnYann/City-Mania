package com.ironsource;

import android.util.Pair;
import com.ironsource.G7;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class N5 implements Runnable {
    private static final String e = "Content-Type";
    private static final String f = "application/json";
    private G7 a;
    String b;
    String c;
    ArrayList<C5> d;

    public N5(G7 g7, String str, String str2, ArrayList<C5> arrayList) {
        this.a = g7;
        this.b = str;
        this.c = str2;
        this.d = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        G7.a aVarA;
        G7.a aVar = new G7.a(this.d);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Pair("Content-Type", "application/json"));
            Rd rdB = C3617g8.b(this.c, this.b, arrayList);
            aVarA = aVar.a(rdB.a()).a(rdB.a);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error("EventsSender failed to send events - " + e2.getLocalizedMessage());
            aVarA = aVar.a(e2 instanceof Mc).a(e2);
        }
        G7 g7 = this.a;
        if (g7 != null) {
            g7.a(aVarA);
        }
    }
}
