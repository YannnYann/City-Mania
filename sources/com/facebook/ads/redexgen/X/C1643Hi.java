package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import com.facebook.ads.internal.context.Repairable;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1643Hi extends C2780lA {
    public static String[] A06 = {"X2XwTp9cKPrsKt8nnsNrr4kzY8H6fo9U", "SYDx4pa2oLtOnCxt4l9slcAsJVX17", "Ktbncp6BUHUyG8VpVa87zDZ4pVgXb", "697llskWaiD0", "zjkPaZGeICZRQbBHOdPJm8zqRs5ofq42", "OjtN7hHvLZrci2lMJuqCcc7IsxYWRGMj", "Pfr7ktMWLkOUKtldLLax33ooDo", "AIe8uS1x9EYXvM4HhYe86uhhSayJeZWe"};
    public WeakReference<Activity> A00;
    public WeakHashMap<Repairable, Boolean> A01;
    public final C2778l8 A02;
    public final AtomicReference<InterfaceC2777l7> A03;
    public final AtomicReference<Object> A04;
    public final AtomicReference<InterfaceC2325df> A05;

    public C1643Hi(Activity activity, InterfaceC2782lC interfaceC2782lC, InterfaceC2325df interfaceC2325df) {
        super(activity.getApplicationContext(), interfaceC2782lC);
        this.A01 = new WeakHashMap<>();
        this.A05 = new AtomicReference<>();
        this.A03 = new AtomicReference<>();
        this.A02 = new C2778l8();
        this.A04 = new AtomicReference<>();
        this.A05.set(interfaceC2325df);
        this.A00 = new WeakReference<>(activity);
    }

    public C1643Hi(Context context, InterfaceC2782lC interfaceC2782lC, InterfaceC2325df interfaceC2325df) {
        super(context.getApplicationContext(), interfaceC2782lC);
        this.A01 = new WeakHashMap<>();
        this.A05 = new AtomicReference<>();
        this.A03 = new AtomicReference<>();
        this.A02 = new C2778l8();
        this.A04 = new AtomicReference<>();
        this.A05.set(interfaceC2325df);
        Activity activityA00 = A00(context);
        if (activityA00 != null) {
            this.A00 = new WeakReference<>(activityA00);
        } else {
            this.A00 = new WeakReference<>(null);
        }
    }

    public static Activity A00(Context context) {
        while (true) {
            boolean z = context instanceof ContextWrapper;
            if (A06[3].length() != 12) {
                throw new RuntimeException();
            }
            A06[6] = "yJQbBA22nGzLcakEAa6nG1va8g";
            if (z) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                if ((context instanceof C1643Hi) && ((C1643Hi) context).A0E() != null) {
                    return ((C1643Hi) context).A0E();
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                return null;
            }
        }
    }

    public final Activity A0E() {
        return this.A00.get();
    }

    public InterfaceC2325df A0F() {
        InterfaceC2325df funnel = this.A05.get();
        if (funnel == null) {
            return new C1782Mx();
        }
        return funnel;
    }

    public final InterfaceC2777l7 A0G() {
        return this.A03.get();
    }

    public final C2778l8 A0H() {
        return this.A02;
    }

    public final Object A0I() {
        return this.A04.get();
    }

    public final void A0J(Activity activity) {
        this.A00 = new WeakReference<>(activity);
    }

    public final void A0K(InterfaceC2325df interfaceC2325df) {
        this.A05.set(interfaceC2325df);
    }

    public final void A0L(C1643Hi c1643Hi) {
        c1643Hi.A01.putAll(this.A01);
        this.A01 = c1643Hi.A01;
    }

    public final void A0M(C1643Hi c1643Hi) {
        A0K(c1643Hi.A0F());
        A0D(c1643Hi.A0C());
        A0N(c1643Hi.A0G());
    }

    public final void A0N(InterfaceC2777l7 interfaceC2777l7) {
        this.A03.set(interfaceC2777l7);
    }

    public final void A0O(Repairable repairable) {
        this.A01.put(repairable, true);
    }

    public final void A0P(Object obj) {
        this.A04.set(obj);
    }

    public final void A0Q(Throwable th) {
        for (Map.Entry<Repairable, Boolean> entry : this.A01.entrySet()) {
            if (A06[3].length() != 12) {
                throw new RuntimeException();
            }
            A06[7] = "uNK1zxgBt2FFcnYPdsvApaChXeSIkfOy";
            entry.getKey().repair(th);
        }
    }
}
