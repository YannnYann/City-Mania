package ads_mobile_sdk;

import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k34 implements d44 {
    public final /* synthetic */ long a;

    public /* synthetic */ k34(long j) {
        this.a = j;
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        try {
            ((g44) obj).a.a(l44.a(this.a));
            return Optional.empty();
        } catch (b44 unused) {
            return Optional.of(wu2.b);
        }
    }
}
