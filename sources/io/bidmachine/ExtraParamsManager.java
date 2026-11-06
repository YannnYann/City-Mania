package io.bidmachine;

import android.content.Context;
import com.explorestack.protobuf.Struct;
import io.bidmachine.protobuf.Extras;
import io.bidmachine.utils.data.StructDataRetriever;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class ExtraParamsManager {
    static final String KEY_MRAID_JS = "mraid_js";
    private static volatile ExtraParamsManager instance;
    private Struct privateExtras;
    private final AtomicBoolean isExtrasPrepared = new AtomicBoolean(false);
    private final AtomicBoolean needLoadFromStore = new AtomicBoolean(true);
    private final Object loadFromStoreLock = new Object();
    private final Object updateExtrasLock = new Object();
    private final StructDataRetriever publicDataRetriever = new StructDataRetriever();
    private final StructDataRetriever internalDataRetriever = new StructDataRetriever();

    private ExtraParamsManager() {
    }

    private void checkAndPrepareExtras(Context context, Extras extras) {
        synchronized (this.updateExtrasLock) {
            try {
                if (isExtrasPrepared()) {
                    return;
                }
                setExtras(context, extras);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ExtraParamsManager get() {
        ExtraParamsManager extraParamsManager;
        ExtraParamsManager extraParamsManager2 = instance;
        if (extraParamsManager2 != null) {
            return extraParamsManager2;
        }
        synchronized (ExtraParamsManager.class) {
            try {
                extraParamsManager = instance;
                if (extraParamsManager == null) {
                    extraParamsManager = new ExtraParamsManager();
                    instance = extraParamsManager;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return extraParamsManager;
    }

    public StructDataRetriever getInternalDataRetriever(Context context) {
        loadFromStore(context);
        return this.internalDataRetriever;
    }

    public Struct getPrivateStruct(Context context) {
        loadFromStore(context);
        return this.privateExtras;
    }

    public Object getPublic(Context context, String str) {
        loadFromStore(context);
        return this.publicDataRetriever.getObjectOrNull(str);
    }

    public boolean isExtrasPrepared() {
        return this.isExtrasPrepared.get();
    }

    public void loadFromStore(Context context) {
        if (isExtrasPrepared()) {
            return;
        }
        synchronized (this.loadFromStoreLock) {
            try {
                if (this.needLoadFromStore.compareAndSet(true, false)) {
                    checkAndPrepareExtras(context, n.i(context));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setExtras(Context context, Extras extras) {
        this.isExtrasPrepared.set(true);
        this.needLoadFromStore.set(false);
        synchronized (this.updateExtrasLock) {
            try {
                if (extras == null) {
                    this.publicDataRetriever.clear();
                    this.internalDataRetriever.clear();
                    this.privateExtras = null;
                    n.c(context);
                    return;
                }
                this.publicDataRetriever.setStruct(extras.getPublic());
                this.internalDataRetriever.setStruct(extras.getInternal());
                this.privateExtras = extras.getPrivate();
                n.a(context, extras);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
