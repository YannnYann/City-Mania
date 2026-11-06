package ads_mobile_sdk;

import android.content.Context;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class bi2 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final x41 f;
    public final w41 g;

    static {
        new UUID(0L, 0L).toString();
    }

    public final u41 a(String str, boolean z) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis >= 0) {
            this.f.a(Long.valueOf(jCurrentTimeMillis), z ? this.d : this.c);
            this.f.a(str, z ? this.b : this.a);
            return new u41(jCurrentTimeMillis, str);
        }
        throw new IllegalStateException(this.e + ": Invalid negative current timestamp. Updating PAID failed");
    }

    public final u41 a(long j) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis >= 0) {
            long j2 = this.f.b.getLong(this.c, -1L);
            if (j2 != -1) {
                if (jCurrentTimeMillis < j2) {
                    this.f.a(Long.valueOf(jCurrentTimeMillis), this.c);
                } else if (jCurrentTimeMillis >= j2 + j) {
                    return a(UUID.randomUUID().toString(), false);
                }
            }
            String string = this.f.b.getString(this.a, null);
            if (string == null) {
                return a(UUID.randomUUID().toString(), false);
            }
            return new u41(this.f.b.getLong(this.c, -1L), string);
        }
        throw new IllegalStateException(this.e + ": Invalid negative current timestamp. Updating PAID failed");
    }

    public bi2(Context context, String str, String str2, String str3) {
        this.f = x41.a(context);
        this.g = w41.a(context);
        this.a = str;
        this.b = str.concat("_3p");
        this.c = str2;
        this.d = str2.concat("_3p");
        this.e = str3;
    }
}
