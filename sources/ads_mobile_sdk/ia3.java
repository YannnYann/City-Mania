package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ia3 implements Comparable {
    public final Runnable a;
    public final long b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.b, ((ia3) obj).b);
    }

    public ia3(Runnable runnable, long j) {
        this.a = runnable;
        this.b = j;
    }
}
