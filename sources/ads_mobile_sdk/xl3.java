package ads_mobile_sdk;

import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class xl3 {
    public final File a;

    public abstract ListenableFuture a();

    public abstract ListenableFuture a(Object obj);

    public xl3(File file) {
        this.a = file;
    }
}
