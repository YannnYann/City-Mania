package ads_mobile_sdk;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class z7 extends Lambda implements Function0 {
    public final /* synthetic */ Context a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z7(Context context) {
        super(0);
        this.a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return DataStoreFile.dataStoreFile(this.a, "ad_quality_data.pb");
    }
}
