package ads_mobile_sdk;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.unity3d.services.core.device.MimeTypes;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class pn0 extends ContentObserver {
    public final Handler a;
    public final Context b;
    public final AudioManager c;
    public final kn0 d;
    public final mn0 e;
    public final AtomicReference f;
    public final AtomicBoolean g;
    public final ExecutorService h;

    public pn0(Handler handler, Context context, kn0 kn0Var, cf2 cf2Var) {
        super(handler);
        this.f = new AtomicReference(Float.valueOf(-1.0f));
        this.g = new AtomicBoolean(false);
        this.h = Executors.newSingleThreadExecutor();
        this.a = handler;
        this.b = context;
        this.c = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.d = kn0Var;
        this.e = cf2Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        if (this.g.getAndSet(true)) {
            return;
        }
        this.h.submit(new on0(this));
    }
}
