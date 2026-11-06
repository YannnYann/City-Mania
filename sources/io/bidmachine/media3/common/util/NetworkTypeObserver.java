package io.bidmachine.media3.common.util;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import io.bidmachine.media3.common.util.NetworkTypeObserver;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class NetworkTypeObserver {
    public static NetworkTypeObserver staticInstance;
    public final Executor backgroundExecutor;
    public boolean isInitialized;
    public final CopyOnWriteArrayList<ListenerHolder> listeners;
    public final Object lock;
    public int networkType;

    public interface Listener {
        void onNetworkTypeChanged(int i);
    }

    public static synchronized NetworkTypeObserver getInstance(Context context) {
        try {
            if (staticInstance == null) {
                staticInstance = new NetworkTypeObserver(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return staticInstance;
    }

    public NetworkTypeObserver(final Context context) {
        Executor executor = BackgroundExecutor.get();
        this.backgroundExecutor = executor;
        this.listeners = new CopyOnWriteArrayList<>();
        this.lock = new Object();
        this.networkType = 0;
        executor.execute(new Runnable() { // from class: io.bidmachine.media3.common.util.NetworkTypeObserver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.init(context);
            }
        });
    }

    public void register(Listener listener, Executor executor) {
        boolean z;
        removeClearedReferences();
        ListenerHolder listenerHolder = new ListenerHolder(listener, executor);
        synchronized (this.lock) {
            this.listeners.add(listenerHolder);
            z = this.isInitialized;
        }
        if (z) {
            listenerHolder.callOnNetworkTypeChanged();
        }
    }

    public int getNetworkType() {
        int i;
        synchronized (this.lock) {
            i = this.networkType;
        }
        return i;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final void init(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new Receiver(), intentFilter);
    }

    public final void removeClearedReferences() {
        for (ListenerHolder listenerHolder : this.listeners) {
            if (listenerHolder.canBeRemoved()) {
                this.listeners.remove(listenerHolder);
            }
        }
    }

    public final void handleConnectivityActionBroadcast(Context context) {
        int networkTypeFromConnectivityManager = getNetworkTypeFromConnectivityManager(context);
        if (Util.SDK_INT >= 31 && networkTypeFromConnectivityManager == 5) {
            Api31.disambiguate4gAnd5gNsa(context, this);
        } else {
            updateNetworkType(networkTypeFromConnectivityManager);
        }
    }

    public final void updateNetworkType(int i) {
        removeClearedReferences();
        synchronized (this.lock) {
            try {
                if (this.isInitialized && this.networkType == i) {
                    return;
                }
                this.isInitialized = true;
                this.networkType = i;
                Iterator<ListenerHolder> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().callOnNetworkTypeChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int getNetworkTypeFromConnectivityManager(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return getMobileNetworkType(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i;
    }

    public static int getMobileNetworkType(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return Util.SDK_INT >= 29 ? 9 : 0;
        }
    }

    public final class Receiver extends BroadcastReceiver {
        public Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            NetworkTypeObserver.this.backgroundExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.common.util.NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkTypeObserver.this.handleConnectivityActionBroadcast(context);
                }
            });
        }
    }

    public static final class Api31 {
        public static void disambiguate4gAnd5gNsa(Context context, NetworkTypeObserver networkTypeObserver) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) Assertions.checkNotNull((TelephonyManager) context.getSystemService("phone"));
                DisplayInfoCallback displayInfoCallback = new DisplayInfoCallback(networkTypeObserver);
                telephonyManager.registerTelephonyCallback(networkTypeObserver.backgroundExecutor, displayInfoCallback);
                telephonyManager.unregisterTelephonyCallback(displayInfoCallback);
            } catch (RuntimeException unused) {
                networkTypeObserver.updateNetworkType(5);
            }
        }

        public static final class DisplayInfoCallback extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
            public final NetworkTypeObserver instance;

            public DisplayInfoCallback(NetworkTypeObserver networkTypeObserver) {
                this.instance = networkTypeObserver;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.instance.updateNetworkType(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }
    }

    public final class ListenerHolder {
        public final Executor executor;
        public final WeakReference<Listener> listener;

        public ListenerHolder(Listener listener, Executor executor) {
            this.listener = new WeakReference<>(listener);
            this.executor = executor;
        }

        public boolean canBeRemoved() {
            return this.listener.get() == null;
        }

        public void callOnNetworkTypeChanged() {
            this.executor.execute(new Runnable() { // from class: io.bidmachine.media3.common.util.NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkTypeObserver.ListenerHolder.$r8$lambda$0tDJWYQjM7L_cfmlMsv2SGQpzTc(this.f$0);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$0tDJWYQjM7L_cfmlMsv2SGQpzTc(ListenerHolder listenerHolder) {
            Listener listener = listenerHolder.listener.get();
            if (listener != null) {
                listener.onNetworkTypeChanged(NetworkTypeObserver.this.getNetworkType());
            }
        }
    }
}
