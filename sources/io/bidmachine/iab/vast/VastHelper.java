package io.bidmachine.iab.vast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.view.View;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class VastHelper {
    public static final WeakHashMap a = new WeakHashMap();
    public static final BroadcastReceiver b = new a();
    public static final IntentFilter c;
    public static boolean d;
    public static boolean e;

    public interface OnScreenStateChangeListener {
        void onScreenStateChange(boolean isScreenOn);
    }

    public class a extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (VastHelper.class) {
                boolean unused = VastHelper.e = "android.intent.action.SCREEN_ON".equals(intent.getAction());
            }
            WeakHashMap weakHashMap = VastHelper.a;
            synchronized (weakHashMap) {
                try {
                    Iterator it = weakHashMap.values().iterator();
                    while (it.hasNext()) {
                        ((OnScreenStateChangeListener) it.next()).onScreenStateChange(VastHelper.e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    static {
        IntentFilter intentFilter = new IntentFilter();
        c = intentFilter;
        d = false;
        e = false;
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    public static void addScreenStateChangeListener(View view, OnScreenStateChangeListener listener) {
        a(view.getContext());
        WeakHashMap weakHashMap = a;
        synchronized (weakHashMap) {
            weakHashMap.put(view, listener);
        }
    }

    public static boolean isScreenOn(Context context) {
        a(context);
        return e;
    }

    public static void removeScreenStateChangeListener(View view) {
        if (d) {
            WeakHashMap weakHashMap = a;
            synchronized (weakHashMap) {
                weakHashMap.remove(view);
            }
        }
    }

    public static synchronized void a(Context context) {
        if (!d) {
            synchronized (VastHelper.class) {
                try {
                    if (!d) {
                        e = ((PowerManager) context.getSystemService("power")).isScreenOn();
                        context.getApplicationContext().registerReceiver(b, c);
                        d = true;
                    }
                } finally {
                }
            }
        }
    }
}
