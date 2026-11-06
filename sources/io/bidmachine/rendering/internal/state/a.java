package io.bidmachine.rendering.internal.state;

/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.state.a$a, reason: collision with other inner class name */
    public enum EnumC1205a {
        LoadingStarted,
        Loaded,
        FailedToLoad,
        ShowInitiated,
        CommitVisible,
        ViewabilityShow,
        Shown,
        FailedToShow,
        Clicked,
        Appeared,
        Disappeared,
        Finished,
        Expired,
        Expanded,
        Collapsed,
        Destroyed
    }

    public interface b {
        void a(a aVar, EnumC1205a enumC1205a);
    }

    void a(b bVar);

    boolean a();

    boolean a(boolean z);

    void b(b bVar);

    boolean b();

    boolean b(boolean z);

    boolean c();

    boolean d();

    void destroy();

    boolean e();

    boolean f();

    boolean g();

    boolean h();

    boolean i();

    boolean isCompleted();

    boolean j();

    boolean k();

    boolean l();

    boolean m();

    void n();

    boolean o();

    boolean p();

    boolean q();

    boolean r();

    void s();

    boolean t();
}
