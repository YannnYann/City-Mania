package com.ironsource;

import android.util.Log;
import android.util.Pair;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class O5 {
    private static final String e = "EventsTracker";
    private InterfaceC3799q7 a;
    private I5 b;
    private J7 c;
    private ExecutorService d;

    public class a implements Runnable {
        final /* synthetic */ String a;

        public a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Rd rd = new Rd();
                ArrayList<Pair<String, String>> arrayListD = O5.this.b.d();
                if (C3746nc.b.equals(O5.this.b.e())) {
                    rd = C3617g8.b(O5.this.b.b(), this.a, arrayListD);
                } else if (C3746nc.a.equals(O5.this.b.e())) {
                    rd = C3617g8.a(O5.this.b.b(), this.a, arrayListD);
                }
                O5.this.a("response status code: " + rd.a);
            } catch (Exception e) {
                C3813r4.d().a(e);
            }
        }
    }

    public O5(I5 i5, InterfaceC3799q7 interfaceC3799q7) {
        if (i5 == null) {
            throw new InvalidParameterException("Null configuration not supported ");
        }
        if (i5.c() == null) {
            throw new InvalidParameterException("Null formatter not supported ");
        }
        this.b = i5;
        this.a = interfaceC3799q7;
        this.c = i5.c();
        this.d = Executors.newSingleThreadExecutor();
    }

    private void b(String str) {
        this.d.submit(new a(str));
    }

    public void a(String str, Map<String, Object> map) {
        a(String.format(Locale.ENGLISH, "%s %s", str, map.toString()));
        if (this.b.a() && !str.isEmpty()) {
            HashMap map2 = new HashMap();
            map2.put("eventname", str);
            a(map2, this.a.a());
            a(map2, map);
            b(this.c.a(map2));
        }
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        try {
            map.putAll(map2);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.b.f()) {
            Log.d(e, str);
        }
    }
}
