package io.bidmachine;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import io.bidmachine.internal.InterfaceC4232p;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public volatile String b;

    public class a implements OnSuccessListener {
        public a() {
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(AppSetIdInfo appSetIdInfo) {
            if (appSetIdInfo.getScope() == 2) {
                e.this.b = appSetIdInfo.getId();
            }
        }
    }

    public void b(final Context context) {
        if (this.a.compareAndSet(false, true)) {
            p.a().execute(new InterfaceC4232p() { // from class: io.bidmachine.e$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.SafeRunnable
                public final void onRun() {
                    this.f$0.a(context);
                }
            });
        }
    }

    public String a() {
        return this.b;
    }

    public final /* synthetic */ void a(Context context) {
        AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new a());
    }
}
