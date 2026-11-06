package io.bidmachine;

import android.content.Context;
import io.bidmachine.SessionManager;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.t;
import io.bidmachine.u;
import io.bidmachine.utils.BMError;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class u {
    public final Context a;
    public final String b;
    public final d c;
    public final SessionManager.Observer d;
    public t e;
    public final Object f;
    public t.c g;

    public static class b {
        public final InitResponse a;
        public final String b;

        public b(InitResponse initResponse, String str) {
            this.a = initResponse;
            this.b = str;
        }

        public InitResponse a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }
    }

    public class c implements t.c {
        public final String a;

        public c(String str) {
            this.a = str;
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onFail(BMError bMError) {
            u uVar = u.this;
            final d dVar = uVar.c;
            Objects.requireNonNull(dVar);
            uVar.a(new Executable() { // from class: io.bidmachine.u$c$$ExternalSyntheticLambda0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    dVar.b((u.b) obj);
                }
            });
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onSuccess(InitResponse initResponse) {
            u.this.b();
            if (initResponse == null) {
                return;
            }
            n.a(u.this.a, initResponse, this.a);
            u.this.c.a(new b(initResponse, this.a));
        }
    }

    public interface d {
        void a(b bVar);

        void b(b bVar);

        void c(b bVar);
    }

    public class e implements SessionManager.Observer {
        public e() {
        }

        @Override // io.bidmachine.SessionManager.Observer
        public void onSessionEvent(SessionManager.Status status) {
            if (status != SessionManager.Status.START) {
                return;
            }
            u.this.c();
        }
    }

    public u(Context context, String str, d dVar) {
        e eVar = new e();
        this.d = eVar;
        this.e = null;
        this.f = new Object();
        SessionManager sessionManager = SessionManager.get();
        this.a = context;
        this.b = str;
        this.c = dVar;
        this.g = new c(sessionManager.getSessionId());
        sessionManager.addObserver(eVar);
    }

    public void c() {
        synchronized (this.f) {
            b();
            t tVarA = a();
            this.e = tVarA;
            tVarA.a(this.g);
            this.e.e();
        }
    }

    public void d() {
        final d dVar = this.c;
        Objects.requireNonNull(dVar);
        a(new Executable() { // from class: io.bidmachine.u$$ExternalSyntheticLambda0
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                dVar.c((u.b) obj);
            }
        });
    }

    public void a(Executable executable) {
        InitResponse initResponseJ = n.j(this.a);
        String strK = n.k(this.a);
        if (initResponseJ != null) {
            executable.execute(new b(initResponseJ, strK));
        }
    }

    public void b() {
        synchronized (this.f) {
            try {
                t tVar = this.e;
                if (tVar == null) {
                    return;
                }
                tVar.c();
                this.e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public t a() {
        return new t(this.a, this.b, UrlProvider.getInitUrlQueue());
    }
}
