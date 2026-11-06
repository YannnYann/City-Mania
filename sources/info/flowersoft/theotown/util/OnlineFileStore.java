package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineFileStore {
    public final File cacheDir;
    public final Map<String, String> cachedFiles = new HashMap();
    public final ExecutorService executor = new ThreadPoolExecutor(1, 4, 10, TimeUnit.SECONDS, new PriorityBlockingQueue());
    public final Map<String, VirtualFile> virtualFiles = new HashMap();

    public interface ProgressCallback {
        void progress(float f);
    }

    public OnlineFileStore() {
        File cacheDir = Resources.getCacheDir();
        this.cacheDir = cacheDir;
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        loadPref();
    }

    public final synchronized void loadPref() {
        try {
            for (Map.Entry<String, ?> entry : Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.onlinefilestore")).get().entrySet()) {
                if (entry.getValue() instanceof String) {
                    String key = entry.getKey();
                    String str = (String) entry.getValue();
                    File file = new File(this.cacheDir, str);
                    if (file.exists() && file.canRead() && file.isFile()) {
                        this.cachedFiles.put(key, str);
                    }
                }
            }
            ensureCacheSize();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void ensureCacheSize() {
        try {
            ArrayList arrayList = new ArrayList();
            long length = 0;
            for (Map.Entry<String, String> entry : this.cachedFiles.entrySet()) {
                File file = new File(this.cacheDir, entry.getValue());
                if (!file.exists()) {
                    arrayList.add(entry.getKey());
                } else {
                    length += file.length();
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.cachedFiles.remove((String) it.next());
            }
            if (length > 33554432) {
                ArrayList<Map.Entry> arrayList2 = new ArrayList(this.cachedFiles.entrySet());
                Collections.sort(arrayList2, new Comparator<Map.Entry<String, String>>() { // from class: info.flowersoft.theotown.util.OnlineFileStore.1
                    @Override // java.util.Comparator
                    public int compare(Map.Entry<String, String> entry2, Map.Entry<String, String> entry3) {
                        File file2 = new File(OnlineFileStore.this.cacheDir, entry2.getValue());
                        File file3 = new File(OnlineFileStore.this.cacheDir, entry3.getValue());
                        long jLastModified = file2.lastModified();
                        long jLastModified2 = file3.lastModified();
                        if (jLastModified > jLastModified2) {
                            return 1;
                        }
                        return jLastModified2 > jLastModified ? -1 : 0;
                    }
                });
                for (Map.Entry entry2 : arrayList2) {
                    File file2 = new File(this.cacheDir, (String) entry2.getValue());
                    long length2 = file2.length();
                    if (file2.delete()) {
                        length -= length2;
                        this.cachedFiles.remove(entry2.getKey());
                    }
                    if (length <= 33554432) {
                        break;
                    }
                }
            }
            savePref();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void evictMemoryData() {
        try {
            if (this.virtualFiles.size() < 32) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - 1000;
            String key = null;
            for (Map.Entry<String, VirtualFile> entry : this.virtualFiles.entrySet()) {
                long j = entry.getValue().lastAccess;
                if (j < jCurrentTimeMillis) {
                    key = entry.getKey();
                    jCurrentTimeMillis = j;
                }
            }
            if (key != null) {
                this.virtualFiles.remove(key);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void savePref() {
        try {
            Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.onlinefilestore"));
            preferences.clear();
            for (Map.Entry<String, String> entry : this.cachedFiles.entrySet()) {
                preferences.putString(entry.getKey(), entry.getValue());
            }
            preferences.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean cacheVirtualFile(VirtualFile virtualFile) {
        String str = RandomUtil.generateRandomLowercaseString(16) + ".ofs";
        File file = new File(this.cacheDir, str);
        if (file.exists()) {
            return false;
        }
        if (!Files.writeBinaryFile(file, virtualFile.data)) {
            return false;
        }
        this.cachedFiles.put(virtualFile.url, str);
        savePref();
        return true;
    }

    public void tidyUp() {
        Iterator<String> it = this.cachedFiles.values().iterator();
        while (it.hasNext()) {
            new File(this.cacheDir, it.next()).delete();
        }
        this.cachedFiles.clear();
        this.virtualFiles.clear();
        savePref();
    }

    public synchronized void shutdown() {
        this.executor.shutdown();
        ensureCacheSize();
    }

    public synchronized byte[] request(String str, int i) {
        try {
            VirtualFile virtualFile = this.virtualFiles.get(str);
            if (virtualFile != null && (virtualFile.pending || virtualFile.data != null)) {
                virtualFile.lastAccess = System.currentTimeMillis();
                return virtualFile.data;
            }
            return append(str, i).data;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized float getProgress(String str) {
        VirtualFile virtualFile = this.virtualFiles.get(str);
        if (virtualFile == null) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (!virtualFile.pending) {
            return 1.0f;
        }
        return virtualFile.progress;
    }

    public byte[] downloadSync(String str) {
        VirtualFile virtualFile;
        synchronized (this) {
            virtualFile = this.virtualFiles.get(str);
        }
        if (virtualFile == null || (!virtualFile.pending && virtualFile.data == null)) {
            return appendSync(str).data;
        }
        virtualFile.lastAccess = System.currentTimeMillis();
        return virtualFile.data;
    }

    public byte[] downloadSyncUncached(String str, ProgressCallback progressCallback) {
        return downloadRaw(str, progressCallback);
    }

    public final synchronized VirtualFile append(String str, int i) {
        final VirtualFile virtualFile;
        try {
            evictMemoryData();
            virtualFile = new VirtualFile();
            virtualFile.url = str;
            virtualFile.lastAccess = System.currentTimeMillis();
            this.virtualFiles.put(str, virtualFile);
            String str2 = this.cachedFiles.get(str);
            if (str2 != null) {
                File file = new File(this.cacheDir, str2);
                if (file.exists() && file.isFile()) {
                    byte[] binaryFile = Files.readBinaryFile(file);
                    virtualFile.data = binaryFile;
                    if (binaryFile == null) {
                        this.cachedFiles.remove(str);
                        savePref();
                    } else {
                        file.setLastModified(TimeUtils.millis());
                    }
                }
            }
            if (virtualFile.data == null) {
                virtualFile.pending = true;
                this.executor.execute(new PriorityRunnable(i) { // from class: info.flowersoft.theotown.util.OnlineFileStore.2
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        OnlineFileStore.this.download(virtualFile);
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return virtualFile;
    }

    public final VirtualFile appendSync(String str) throws Throwable {
        VirtualFile virtualFile = new VirtualFile();
        virtualFile.url = str;
        virtualFile.lastAccess = System.currentTimeMillis();
        synchronized (this) {
            try {
                this.virtualFiles.put(str, virtualFile);
                String str2 = this.cachedFiles.get(str);
                if (str2 != null) {
                    byte[] binaryFile = Files.readBinaryFile(new File(this.cacheDir, str2));
                    virtualFile.data = binaryFile;
                    if (binaryFile == null) {
                        this.cachedFiles.remove(str);
                        savePref();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (virtualFile.data == null) {
            virtualFile.pending = true;
            download(virtualFile);
        }
        return virtualFile;
    }

    public final void download(final VirtualFile virtualFile) throws Throwable {
        if (System.currentTimeMillis() - virtualFile.lastAccess > 1000) {
            virtualFile.pending = false;
            return;
        }
        byte[] bArrDownloadRaw = downloadRaw(virtualFile.url, new ProgressCallback() { // from class: info.flowersoft.theotown.util.OnlineFileStore$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.util.OnlineFileStore.ProgressCallback
            public final void progress(float f) {
                virtualFile.progress = f;
            }
        });
        synchronized (this) {
            try {
                virtualFile.pending = false;
                virtualFile.data = bArrDownloadRaw;
                if (bArrDownloadRaw != null) {
                    cacheVirtualFile(virtualFile);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:12|(7:(12:77|16|17|21|83|22|88|23|(2:24|(1:91)(3:28|(1:96)(3:92|30|(3:94|32|98)(3:93|37|97))|95))|38|(1:40)|41)|88|23|(3:24|(2:26|91)(1:90)|95)|38|(0)|41)|20|21|83|22) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bf, code lost:
    
        r13 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c1, code lost:
    
        r13 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c2, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00aa A[Catch: all -> 0x0097, Exception -> 0x009a, TRY_LEAVE, TryCatch #11 {Exception -> 0x009a, all -> 0x0097, blocks: (B:23:0x0075, B:24:0x007b, B:28:0x0086, B:32:0x0090, B:37:0x009e, B:38:0x00a4, B:40:0x00aa), top: B:88:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00dd A[Catch: IOException -> 0x00e0, TRY_LEAVE, TryCatch #8 {IOException -> 0x00e0, blocks: (B:57:0x00d8, B:59:0x00dd), top: B:79:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v7, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] downloadRaw(java.lang.String r12, info.flowersoft.theotown.util.OnlineFileStore.ProgressCallback r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.util.OnlineFileStore.downloadRaw(java.lang.String, info.flowersoft.theotown.util.OnlineFileStore$ProgressCallback):byte[]");
    }

    public static abstract class PriorityRunnable implements Runnable, Comparable<PriorityRunnable> {
        public int priority;

        public PriorityRunnable(int i) {
            this.priority = i;
        }

        @Override // java.lang.Comparable
        public int compareTo(PriorityRunnable priorityRunnable) {
            return priorityRunnable.priority - this.priority;
        }
    }

    public static class VirtualFile {
        public byte[] data;
        public long lastAccess;
        public boolean pending;
        public float progress;
        public String url;

        public VirtualFile() {
        }
    }
}
