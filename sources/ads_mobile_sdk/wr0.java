package ads_mobile_sdk;

import com.google.common.base.Function;
import com.google.common.io.Files;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class wr0 extends xl3 {
    public final ExecutorService b;
    public final vr0 c;
    public final Function d;

    public wr0(File file, ExecutorService executorService, vr0 vr0Var, Function function) {
        super(file);
        this.b = executorService;
        this.c = vr0Var;
        this.d = function;
    }

    @Override // ads_mobile_sdk.xl3
    public final ListenableFuture a() {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.wr0$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b();
            }
        }, this.b);
    }

    public final /* synthetic */ Object b() {
        Object objA;
        synchronized (this) {
            try {
                try {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(this.a);
                        try {
                            objA = this.c.a(fileInputStream);
                            fileInputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (tr0 e) {
                        return this.d.apply(e);
                    }
                } catch (IOException e2) {
                    return this.d.apply(new tr0(e2));
                }
            } catch (FileNotFoundException unused) {
                return this.c.a();
            }
        }
        return objA;
    }

    @Override // ads_mobile_sdk.xl3
    public final ListenableFuture a(final Object obj) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.wr0$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b(obj);
            }
        }, this.b);
    }

    public final /* synthetic */ Void b(Object obj) {
        synchronized (this) {
            Files.createParentDirs(this.a);
            File file = new File(this.a.getParent(), this.a.getName() + ".temp");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    this.c.a(obj, fileOutputStream);
                    fileOutputStream.close();
                    if (!file.renameTo(this.a)) {
                        throw new IOException("Failed to rename file.");
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                file.delete();
                throw e;
            }
        }
        return null;
    }
}
