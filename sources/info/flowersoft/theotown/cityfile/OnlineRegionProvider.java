package info.flowersoft.theotown.cityfile;

import com.ironsource.C3939y2;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.online.OnlineRegionStore;
import info.flowersoft.theotown.online.RegionTagMap;
import info.flowersoft.theotown.online.RegionUploader;
import info.flowersoft.theotown.online.VirtualRegion;
import info.flowersoft.theotown.util.OnlineFileStore;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.IntList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineRegionProvider extends RegionProvider {
    public RegionTagMap availableTags;
    public final Stapel2DGameContext context;
    public boolean loaded;
    public Type loadedType;
    public String loadedTypeExtra;
    public VirtualRegion[] regions;
    public final OnlineRegionStore onlineRegionStore = new OnlineRegionStore();
    public final RegionUploader regionUploader = new RegionUploader();
    public final Map<Integer, OnlineMapDirectory> mapDirectories = new HashMap();
    public final Map<Integer, Integer> mapIndices = new HashMap();
    public final OnlineFileStore ofs = new OnlineFileStore();
    public int defaultRegion = -1;
    public Type type = Type.ALL;
    public long typeId = 0;
    public String typeExtra = "";

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public boolean isOnline() {
        return true;
    }

    public OnlineRegionProvider(Stapel2DGameContext stapel2DGameContext) {
        this.context = stapel2DGameContext;
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        setType(type, Backend.getInstance().getUser().getId(), "");
    }

    public void setType(Type type, String str) {
        setType(type, Backend.getInstance().getUser().getId(), str);
    }

    public void setType(Type type, long j, String str) {
        this.type = type;
        this.typeId = j;
        this.typeExtra = str;
    }

    public void loadLight(final Runnable runnable) {
        this.loaded = false;
        final Type type = this.type;
        final String str = this.typeExtra;
        if (type == Type.LIST_TAGS) {
            this.onlineRegionStore.fetchTags(new Runnable() { // from class: info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    OnlineRegionProvider.$r8$lambda$Mw3IxkD715pqaro_SVkeg_GQYnc(this.f$0, type, str, runnable);
                }
            });
        } else {
            this.onlineRegionStore.fetchListRegions(new Runnable() { // from class: info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    OnlineRegionProvider.m2121$r8$lambda$PU67aZKsaOUA8XHSoGoMzmq0Ig(this.f$0, type, str, runnable);
                }
            }, type.getTag(), this.typeId, str);
        }
    }

    public static /* synthetic */ void $r8$lambda$Mw3IxkD715pqaro_SVkeg_GQYnc(OnlineRegionProvider onlineRegionProvider, Type type, String str, Runnable runnable) {
        synchronized (onlineRegionProvider.mapDirectories) {
            onlineRegionProvider.regions = null;
            onlineRegionProvider.availableTags = onlineRegionProvider.onlineRegionStore.getTags();
        }
        onlineRegionProvider.loaded = true;
        onlineRegionProvider.loadedType = type;
        onlineRegionProvider.loadedTypeExtra = str;
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$PU67aZKsaOU-A8XHSoGoMzmq0Ig, reason: not valid java name */
    public static /* synthetic */ void m2121$r8$lambda$PU67aZKsaOUA8XHSoGoMzmq0Ig(OnlineRegionProvider onlineRegionProvider, Type type, String str, Runnable runnable) {
        synchronized (onlineRegionProvider.mapDirectories) {
            onlineRegionProvider.regions = onlineRegionProvider.onlineRegionStore.getRegions();
            onlineRegionProvider.availableTags = onlineRegionProvider.onlineRegionStore.getTags();
        }
        onlineRegionProvider.loaded = true;
        onlineRegionProvider.loadedType = type;
        onlineRegionProvider.loadedTypeExtra = str;
        runnable.run();
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public void load(final Runnable runnable) {
        this.loaded = false;
        this.onlineRegionStore.fetchListRegions(new Runnable() { // from class: info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                OnlineRegionProvider.$r8$lambda$TWaNHMyXLX3DweumsVKhsUihlu4(this.f$0, runnable);
            }
        }, this.type.getTag(), this.typeId, this.typeExtra);
    }

    public static /* synthetic */ void $r8$lambda$TWaNHMyXLX3DweumsVKhsUihlu4(OnlineRegionProvider onlineRegionProvider, Runnable runnable) {
        synchronized (onlineRegionProvider.mapDirectories) {
            try {
                onlineRegionProvider.regions = onlineRegionProvider.onlineRegionStore.getRegions();
                HashMap map = new HashMap(onlineRegionProvider.mapDirectories);
                onlineRegionProvider.mapDirectories.clear();
                int i = 0;
                while (true) {
                    VirtualRegion[] virtualRegionArr = onlineRegionProvider.regions;
                    if (i < virtualRegionArr.length) {
                        VirtualRegion virtualRegion = virtualRegionArr[i];
                        if (!map.containsKey(Integer.valueOf(virtualRegion.getId()))) {
                            onlineRegionProvider.mapDirectories.put(Integer.valueOf(virtualRegion.getId()), new OnlineMapDirectory(onlineRegionProvider.context, onlineRegionProvider.onlineRegionStore, onlineRegionProvider.regionUploader, virtualRegion.getId(), onlineRegionProvider.ofs));
                        } else {
                            onlineRegionProvider.mapDirectories.put(Integer.valueOf(virtualRegion.getId()), (OnlineMapDirectory) map.get(Integer.valueOf(virtualRegion.getId())));
                        }
                        onlineRegionProvider.mapIndices.put(Integer.valueOf(virtualRegion.getId()), Integer.valueOf(i));
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        onlineRegionProvider.loaded = true;
        runnable.run();
    }

    public boolean isLoaded() {
        return isLoaded(this.type, this.typeExtra);
    }

    public boolean isLoaded(Type type, String str) {
        if (this.onlineRegionStore.getRegions() == null || !this.loaded || this.loadedType != type) {
            return false;
        }
        String str2 = this.loadedTypeExtra;
        return (str2 == null && str == null) || str.equals(str2);
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int getDefaultRegionId(String str) {
        int i = this.defaultRegion;
        return i < 0 ? this.onlineRegionStore.getRegions()[0].getId() : i;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int getAnyId() {
        return getDefaultRegionId("");
    }

    public void setDefaultRegionId(int i) {
        this.defaultRegion = i;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public OnlineMapDirectory get(int i) {
        return this.mapDirectories.get(Integer.valueOf(i));
    }

    public VirtualRegion getVirtualRegion(int i) {
        return this.onlineRegionStore.getRegion(i);
    }

    public String getName(int i) {
        VirtualRegion region = this.onlineRegionStore.getRegion(i);
        return region != null ? region.getName() : "";
    }

    public int getUserCities(int i) {
        VirtualRegion region = this.onlineRegionStore.getRegion(i);
        if (region != null) {
            return region.getUserCities();
        }
        return 0;
    }

    public int getOwnerId(int i) {
        VirtualRegion region = this.onlineRegionStore.getRegion(i);
        if (region != null) {
            return region.getOwner().getId();
        }
        return 0;
    }

    public final long getUserId() {
        User user = Backend.getInstance().getUser();
        if (user == null || !user.isValid()) {
            return 0L;
        }
        return user.getId();
    }

    public boolean isPasswordProtected(int i) {
        VirtualRegion region = this.onlineRegionStore.getRegion(i);
        return region != null && region.isPasswordProtected();
    }

    public boolean canBeEnteredWithoutPassword(int i) {
        return !isPasswordProtected(i) || getUserCities(i) > 0 || ((long) getOwnerId(i)) == getUserId();
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int getIndex(int i) {
        return this.mapIndices.get(Integer.valueOf(i)).intValue();
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int size() {
        return this.onlineRegionStore.getRegions().length;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int nextId(int i) {
        VirtualRegion[] regions = this.onlineRegionStore.getRegions();
        for (int i2 = 0; i2 < regions.length; i2++) {
            if (regions[i2].getId() == i) {
                return regions[(i2 + 1) % regions.length].getId();
            }
        }
        return i;
    }

    @Override // info.flowersoft.theotown.cityfile.RegionProvider
    public int prevId(int i) {
        VirtualRegion[] regions = this.onlineRegionStore.getRegions();
        for (int i2 = 0; i2 < regions.length; i2++) {
            if (regions[i2].getId() == i) {
                return regions[((i2 + regions.length) - 1) % regions.length].getId();
            }
        }
        return i;
    }

    public IntList getMapIds() {
        IntList intList;
        synchronized (this.mapDirectories) {
            try {
                intList = new IntList(this.regions.length);
                int i = 0;
                while (true) {
                    VirtualRegion[] virtualRegionArr = this.regions;
                    if (i < virtualRegionArr.length) {
                        intList.add(virtualRegionArr[i].getId());
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return intList;
    }

    public RegionTagMap getAvailableTags() {
        return this.availableTags;
    }

    public enum Type {
        ALL("all"),
        PUBLIC("public"),
        PROTECTED("protected"),
        FREE("free"),
        USER("user"),
        USER_REGIONS("user regions"),
        OTHER_USER("user"),
        OTHER_USER_REGIONS("user regions"),
        NEW("new"),
        SEARCH("search"),
        REPORT("reports"),
        NOTIFICATIONS(C3939y2.x),
        TAG("tag"),
        LIST_TAGS("list_tags");

        public String tag;

        Type(String str) {
            this.tag = str;
        }

        public String getTag() {
            return this.tag;
        }
    }
}
