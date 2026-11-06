package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes.dex */
public final class f13 {
    public static int a() {
        return Random.Default.nextInt(Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }
}
