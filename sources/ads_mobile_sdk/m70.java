package ads_mobile_sdk;

import android.util.Base64;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.TinkProtoKeysetFormat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class m70 {
    public static q01 a(String keyset) {
        Intrinsics.checkNotNullParameter(keyset, "keyset");
        return new q01(TinkProtoKeysetFormat.parseKeyset(Base64.decode(keyset, 11), InsecureSecretKeyAccess.get()));
    }
}
