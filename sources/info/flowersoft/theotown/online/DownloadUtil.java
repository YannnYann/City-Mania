package info.flowersoft.theotown.online;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.LocalRegionProvider;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.region.Region;
import info.flowersoft.theotown.region.RegionMap;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.RegionStage;
import info.flowersoft.theotown.stages.WaitingStage;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.ProgressProvider;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: compiled from: DownloadUtil.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DownloadUtil {
    public static final DownloadUtil INSTANCE = new DownloadUtil();

    public static final void downloadRegion(final GameStack gameStack, final Stapel2DGameContext context, final Region region) {
        Intrinsics.checkNotNullParameter(gameStack, "gameStack");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(region, "region");
        final List<CityKeeper> maps = region.getMapDirectory().getMaps();
        if (maps.isEmpty()) {
            return;
        }
        Intrinsics.checkNotNull(maps);
        List<CityKeeper> list = maps;
        final ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((CityKeeper) it.next()).getGetActualFileToLoadFrom());
        }
        final ArrayList arrayList2 = new ArrayList();
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        gameStack.push(new WaitingStage(context, Resources.ICON_DOWNLOAD, context.getTranslator().translate(334), new Thread(new Runnable() { // from class: info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DownloadUtil.downloadRegion$lambda$1(ref$IntRef, arrayList, arrayList2);
            }
        }), new Runnable() { // from class: info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DownloadUtil.downloadRegion$lambda$2(arrayList2, maps, region, context, gameStack);
            }
        }, new ProgressProvider() { // from class: info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda4
            @Override // info.flowersoft.theotown.util.ProgressProvider
            public final float getProgress() {
                return DownloadUtil.downloadRegion$lambda$3(ref$IntRef, arrayList, maps);
            }
        }, null));
    }

    public static final void downloadRegion$lambda$1(Ref$IntRef ref$IntRef, List list, List list2) {
        while (ref$IntRef.element < list.size() && !Thread.interrupted()) {
            File file = ((CityKeeper.FileProvider) list.get(ref$IntRef.element)).get();
            Intrinsics.checkNotNullExpressionValue(file, "get(...)");
            list2.add(file);
            ref$IntRef.element++;
        }
    }

    public static final void downloadRegion$lambda$2(List list, List list2, Region region, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        File fileAllocateNewRegionFolder;
        if (list.isEmpty() || list.size() < list2.size() || (fileAllocateNewRegionFolder = Resources.allocateNewRegionFolder(region.getName())) == null || fileAllocateNewRegionFolder.exists() || !fileAllocateNewRegionFolder.mkdir()) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            CityKeeper cityKeeper = (CityKeeper) list2.get(i);
            File file = (File) list.get(i);
            Files.copyFile(file, new File(fileAllocateNewRegionFolder, cityKeeper.getFile().getName()));
            file.delete();
        }
        LocalMapDirectory region2 = LocalMapDirectory.getRegion(fileAllocateNewRegionFolder.getName(), stapel2DGameContext);
        region2.loadMaps(null, null);
        RegionInformation regionInformation = region.getRegionInformation();
        RegionInformation regionInformation2 = region2.getRegionInformation();
        regionInformation2.setName(regionInformation.getName());
        Intrinsics.checkNotNull(list2);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            CityKeeper cityKeeper2 = (CityKeeper) it.next();
            RegionInformation.CityInformation cityInformation = regionInformation.getCityInformation(cityKeeper2.getFile().getName());
            RegionInformation.CityInformation cityInformation2 = regionInformation2.getCityInformation(cityKeeper2.getFile().getName());
            cityInformation2.setCreated(cityInformation.isCreated());
            cityInformation2.setLocked(cityInformation.isLocked() || !(cityInformation.isCreated() || cityInformation.isAcquired()));
        }
        region2.saveRegionInformation(regionInformation2);
        int size2 = gameStack.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size2) {
                break;
            }
            if (gameStack.get(i2) instanceof RegionStage) {
                gameStack.replace(i2, new RegionStage(stapel2DGameContext, new LocalRegionProvider(stapel2DGameContext)).setLoadLastCity(false));
                break;
            }
            i2++;
        }
        TheoTown.runtimeFeatures.showToast("Added " + region.getName() + " to your regions");
    }

    public static final float downloadRegion$lambda$3(Ref$IntRef ref$IntRef, List list, List list2) {
        int i = ref$IntRef.element;
        float f = i;
        CityKeeper.FileProvider fileProvider = (CityKeeper.FileProvider) CollectionsKt___CollectionsKt.getOrNull(list, i);
        return (f + (fileProvider != null ? fileProvider.getProgress() : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)) / list2.size();
    }

    public static final void downloadCity(GameStack gameStack, Stapel2DGameContext context, final Region region, final RegionMap selectedMap) {
        Intrinsics.checkNotNullParameter(gameStack, "gameStack");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(selectedMap, "selectedMap");
        final CityKeeper.FileProvider getActualFileToLoadFrom = selectedMap.getKeeper().getGetActualFileToLoadFrom();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        gameStack.push(new WaitingStage(context, Resources.ICON_DOWNLOAD, context.getTranslator().translate(1005), new Thread(new Runnable() { // from class: info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DownloadUtil.downloadCity$lambda$0(ref$ObjectRef, getActualFileToLoadFrom);
            }
        }), new Runnable() { // from class: info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DownloadUtil.downloadCity$lambda$1(ref$ObjectRef, region, selectedMap);
            }
        }, getActualFileToLoadFrom, null));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.io.File] */
    public static final void downloadCity$lambda$0(Ref$ObjectRef ref$ObjectRef, CityKeeper.FileProvider fileProvider) {
        ref$ObjectRef.element = fileProvider.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void downloadCity$lambda$1(Ref$ObjectRef ref$ObjectRef, Region region, RegionMap regionMap) {
        if (((File) ref$ObjectRef.element) == null) {
            return;
        }
        File fileAllocateNewMapFileInOldSaveDir = Resources.allocateNewMapFileInOldSaveDir(region.getName() + '_' + regionMap.getKeeper().getInfo().getName());
        if (fileAllocateNewMapFileInOldSaveDir != null && fileAllocateNewMapFileInOldSaveDir.exists()) {
            throw new IllegalStateException("Could not allocate target map file");
        }
        Files.copyFile((File) ref$ObjectRef.element, fileAllocateNewMapFileInOldSaveDir);
        ((File) ref$ObjectRef.element).delete();
        TheoTown.runtimeFeatures.showToast("Added " + regionMap.getKeeper().getInfo().getName() + " to your maps");
    }
}
