package j$.time.temporal;

/* JADX INFO: loaded from: classes2.dex */
public interface m extends n {
    m b(long j, s sVar);

    m d(long j, v vVar);

    /* JADX INFO: renamed from: j */
    m m(j$.time.h hVar);

    default m e(long j, v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }
}
