package info.flowersoft.theotown.resources;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public class PostponedPixmapLoader {
    public final Executor executor = Executors.newCachedThreadPool(new ThreadFactory() { // from class: info.flowersoft.theotown.resources.PostponedPixmapLoader$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return PostponedPixmapLoader.$r8$lambda$HsySAeArasV3BkhZT4ygU6OkG1M(runnable);
        }
    });
    public final Map<String, Pixmap> loadedPixmaps = new HashMap();
    public final Set<String> loadingPixmapKeys = new HashSet();

    public static /* synthetic */ Thread $r8$lambda$HsySAeArasV3BkhZT4ygU6OkG1M(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setDaemon(true);
        return thread;
    }

    public synchronized Pixmap loadPixmap(final String str, final byte[] bArr, boolean z) {
        Pixmap pixmap;
        Pixmap pixmap2 = this.loadedPixmaps.get(str);
        if (pixmap2 != null && !pixmap2.isDisposed()) {
            return pixmap2;
        }
        if (!this.loadingPixmapKeys.contains(str) && bArr != null && bArr.length > 0) {
            try {
                if (!z) {
                    try {
                        pixmap = new Pixmap(new Gdx2DPixmap(bArr, 0, bArr.length, 4));
                    } catch (IOException e) {
                        e.printStackTrace();
                        synchronized (this) {
                            this.loadingPixmapKeys.remove(str);
                            this.loadedPixmaps.put(str, pixmap2);
                        }
                    }
                    synchronized (this) {
                        this.loadingPixmapKeys.remove(str);
                        this.loadedPixmaps.put(str, pixmap);
                        pixmap2 = pixmap;
                        return pixmap2;
                    }
                }
                this.loadingPixmapKeys.add(str);
                this.executor.execute(new Runnable() { // from class: info.flowersoft.theotown.resources.PostponedPixmapLoader$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostponedPixmapLoader.m2178$r8$lambda$yB6nc06VCoRC3R3PLkIE8smq6U(this.f$0, bArr, str);
                    }
                });
            } catch (Throwable th) {
                synchronized (this) {
                    this.loadingPixmapKeys.remove(str);
                    this.loadedPixmaps.put(str, pixmap2);
                    throw th;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$yB6nc06VCoRC3R3PLkI-E8smq6U, reason: not valid java name */
    public static /* synthetic */ void m2178$r8$lambda$yB6nc06VCoRC3R3PLkIE8smq6U(PostponedPixmapLoader postponedPixmapLoader, byte[] bArr, String str) {
        postponedPixmapLoader.getClass();
        try {
            try {
                Pixmap pixmap = new Pixmap(new Gdx2DPixmap(bArr, 0, bArr.length, 4));
                synchronized (postponedPixmapLoader) {
                    postponedPixmapLoader.loadingPixmapKeys.remove(str);
                    postponedPixmapLoader.loadedPixmaps.put(str, pixmap);
                }
            } catch (IOException e) {
                e.printStackTrace();
                synchronized (postponedPixmapLoader) {
                    postponedPixmapLoader.loadingPixmapKeys.remove(str);
                    postponedPixmapLoader.loadedPixmaps.put(str, null);
                }
            }
        } catch (Throwable th) {
            synchronized (postponedPixmapLoader) {
                postponedPixmapLoader.loadingPixmapKeys.remove(str);
                postponedPixmapLoader.loadedPixmaps.put(str, null);
                throw th;
            }
        }
    }
}
