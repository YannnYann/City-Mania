package info.flowersoft.theotown.resources;

import com.ironsource.C3522b4;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: ManagedCache.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ManagedCache {
    public static File file;
    public static final ManagedCache INSTANCE = new ManagedCache();
    public static final Map<String, Map<String, Entry>> entries = new LinkedHashMap();
    public static final Regex identRegex = new Regex("[a-zA-Z0-9+]+");

    /* JADX INFO: compiled from: ManagedCache.kt */
    public static final class Entry {
        public final String id;
        public final String type;
        public boolean used;
        public final String version;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return Intrinsics.areEqual(this.type, entry.type) && Intrinsics.areEqual(this.id, entry.id) && Intrinsics.areEqual(this.version, entry.version);
        }

        public int hashCode() {
            return (((this.type.hashCode() * 31) + this.id.hashCode()) * 31) + this.version.hashCode();
        }

        public String toString() {
            return "Entry(type=" + this.type + ", id=" + this.id + ", version=" + this.version + ')';
        }

        public Entry(String type, String id, String version) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(version, "version");
            this.type = type;
            this.id = id;
            this.version = version;
        }

        public final String getId() {
            return this.id;
        }

        public final String getType() {
            return this.type;
        }

        public final String getVersion() {
            return this.version;
        }

        public final boolean getUsed() {
            return this.used;
        }

        public final void setUsed(boolean z) {
            this.used = z;
        }
    }

    public final File getCacheFile(Entry entry) {
        File file2 = file;
        if (file2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(C3522b4.i.b);
            file2 = null;
        }
        return new File(file2, entry.getType() + '_' + entry.getId() + '_' + entry.getVersion());
    }

    public final void load(File file2) {
        Intrinsics.checkNotNullParameter(file2, "file");
        file = file2;
        entries.clear();
        file2.mkdirs();
        if (!file2.isDirectory()) {
            throw new IllegalStateException(("Could not create managed cache folder " + file2).toString());
        }
        File[] fileArrListFiles = file2.listFiles();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                if (file3.isFile() && file3.length() > 0) {
                    Intrinsics.checkNotNull(file3);
                    List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) FilesKt__UtilsKt.getNameWithoutExtension(file3), new String[]{"_"}, false, 0, 6, (Object) null);
                    if (listSplit$default.size() == 3) {
                        ManagedCache managedCache = INSTANCE;
                        if (managedCache.getEntry((String) listSplit$default.get(0), (String) listSplit$default.get(1)) != null) {
                            file3.delete();
                        } else {
                            managedCache.addEntry((String) listSplit$default.get(0), (String) listSplit$default.get(1), (String) listSplit$default.get(2));
                        }
                    }
                }
            }
        }
    }

    public final void requireIdentifier(String str) {
        if (identRegex.matches(str)) {
            return;
        }
        throw new IllegalArgumentException(("Expected identifier but got " + str).toString());
    }

    public final Entry getEntry(String str, String str2) {
        Map<String, Entry> map = entries.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    public final Entry addEntry(String str, String str2, String str3) {
        Entry entry = new Entry(str, str2, str3);
        Map<String, Map<String, Entry>> map = entries;
        Map<String, Entry> linkedHashMap = map.get(str);
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>();
            map.put(str, linkedHashMap);
        }
        linkedHashMap.put(str2, entry);
        return entry;
    }

    public final byte[] get(String type, String id, String version) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(version, "version");
        requireIdentifier(type);
        requireIdentifier(id);
        requireIdentifier(version);
        synchronized (entries) {
            ManagedCache managedCache = INSTANCE;
            Entry entry = managedCache.getEntry(type, id);
            if (entry != null && Intrinsics.areEqual(entry.getVersion(), version)) {
                File cacheFile = managedCache.getCacheFile(entry);
                if (cacheFile.isFile()) {
                    byte[] bytes = FilesKt__FileReadWriteKt.readBytes(cacheFile);
                    if (!(bytes.length == 0)) {
                        entry.setUsed(true);
                        return bytes;
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
            return null;
        }
    }

    public final void put(String type, String id, String version, byte[] data) {
        File cacheFile;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(data, "data");
        requireIdentifier(type);
        requireIdentifier(id);
        requireIdentifier(version);
        synchronized (entries) {
            try {
                ManagedCache managedCache = INSTANCE;
                Entry entry = managedCache.getEntry(type, id);
                if (entry != null && (cacheFile = managedCache.getCacheFile(entry)) != null) {
                    cacheFile.delete();
                }
                Entry entryAddEntry = managedCache.addEntry(type, id, version);
                entryAddEntry.setUsed(true);
                FilesKt__FileReadWriteKt.writeBytes(managedCache.getCacheFile(entryAddEntry), data);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void removeUnusedOfType(String type) {
        Collection<Entry> collectionValues;
        Intrinsics.checkNotNullParameter(type, "type");
        requireIdentifier(type);
        Map<String, Map<String, Entry>> map = entries;
        synchronized (map) {
            try {
                Map<String, Entry> map2 = map.get(type);
                if (map2 != null && (collectionValues = map2.values()) != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : collectionValues) {
                        if (!((Entry) obj).getUsed()) {
                            arrayList.add(obj);
                        }
                    }
                    List<Entry> list = CollectionsKt___CollectionsKt.toList(arrayList);
                    if (list != null) {
                        for (Entry entry : list) {
                            INSTANCE.getCacheFile(entry).delete();
                            map2.remove(entry.getId());
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void dispose() {
        entries.clear();
    }
}
