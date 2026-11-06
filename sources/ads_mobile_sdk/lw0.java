package ads_mobile_sdk;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class lw0 extends Lambda implements Function0 {
    public final /* synthetic */ Context a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lw0(Context context) {
        super(0);
        this.a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return DataStoreFile.dataStoreFile(this.a, "google_mobile_ads_csrb_data.pb");
    }
}
