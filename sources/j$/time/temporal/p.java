package j$.time.temporal;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p implements o {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ p(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // j$.time.temporal.o
    public final m c(m mVar) {
        switch (this.a) {
            case 0:
                int i = mVar.i(a.DAY_OF_WEEK);
                int i2 = this.b;
                if (i == i2) {
                    return mVar;
                }
                return mVar.d(i - i2 >= 0 ? 7 - r0 : -r0, b.DAYS);
            default:
                int i3 = mVar.i(a.DAY_OF_WEEK);
                int i4 = this.b;
                if (i3 == i4) {
                    return mVar;
                }
                return mVar.e(i4 - i3 >= 0 ? 7 - r1 : -r1, b.DAYS);
        }
    }
}
