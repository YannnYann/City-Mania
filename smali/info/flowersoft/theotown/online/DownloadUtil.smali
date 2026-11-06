###### Class info.flowersoft.theotown.online.DownloadUtil (info.flowersoft.theotown.online.DownloadUtil)
.class public final Linfo/flowersoft/theotown/online/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadUtil.kt\ninfo/flowersoft/theotown/online/DownloadUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,166:1\n1745#2:167\n1820#2,3:168\n2199#2,2:171\n1#3:173\n*S KotlinDebug\n*F\n+ 1 DownloadUtil.kt\ninfo/flowersoft/theotown/online/DownloadUtil\n*L\n40#1:167\n40#1:168,3\n73#1:171,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/online/DownloadUtil;


# direct methods
.method public static synthetic $r8$lambda$Ba3TMxAP0zfgt9tr6D1pYxqAeI8(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)F
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadRegion$lambda$3(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZY_bd-TIshcJyFlWYYtAQlgz8ns(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadCity$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLKa0rrwOAJ43JKZgs6b4JodP4Y(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadRegion$lambda$1(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eCtXcPdycSzXwNIXfkzCXoD7qi8(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadRegion$lambda$2(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f6nXOa4a-Ij8cNnRkO6EqSO_eeI(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadCity$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/online/DownloadUtil;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/DownloadUtil;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/online/DownloadUtil;->INSTANCE:Linfo/flowersoft/theotown/online/DownloadUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final downloadCity(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 13

    const-string v0, "gameStack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getGetActualFileToLoadFrom()Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    move-result-object v7

    .line 129
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 131
    new-instance v5, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v7}, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V

    invoke-direct {v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    new-instance v6, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, p2, p3}, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 153
    new-instance v1, Linfo/flowersoft/theotown/stages/WaitingStage;

    .line 155
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    .line 156
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    const/16 p3, 0x3ed

    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v2, p1

    .line 153
    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 152
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static final downloadCity$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V
    .registers 2

    .line 132
    invoke-interface {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;->get()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public static final downloadCity$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_7

    return-void

    .line 139
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->allocateNewMapFileInOldSaveDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_40

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not allocate target map file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_40
    :goto_40
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 145
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 147
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to your maps"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static final downloadRegion(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/region/Region;)V
    .registers 13

    const-string v0, "gameStack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 40
    :cond_1e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 1745
    new-instance v6, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1821
    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 40
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getGetActualFileToLoadFrom()Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    move-result-object v4

    .line 1821
    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 41
    :cond_47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 44
    new-instance v8, Ljava/lang/Thread;

    new-instance v4, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;

    invoke-direct {v4, v7, v6, v1}, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v8, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v2, v0

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;

    move-object v5, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    move-object v1, v0

    .line 101
    new-instance v3, Linfo/flowersoft/theotown/stages/WaitingStage;

    move-object v4, v1

    move-object v1, v3

    .line 103
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    .line 104
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v5

    const/16 v9, 0x14e

    invoke-interface {v5, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    new-instance v9, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;

    invoke-direct {v9, v7, v6, v2}, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V

    move-object v6, v4

    move-object v4, v5

    move-object v5, v8

    const/4 v8, 0x0

    move-object v2, p1

    move-object v7, v9

    .line 101
    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 100
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static final downloadRegion$lambda$1(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 45
    :goto_0
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_29

    .line 46
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;->get()Ljava/io/File;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_29
    return-void
.end method

.method public static final downloadRegion$lambda$2(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 12

    .line 52
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_105

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    goto/16 :goto_105

    .line 54
    :cond_12
    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->allocateNewRegionFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_105

    .line 56
    :cond_24
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_105

    .line 58
    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_32
    if-ge v3, v1, :cond_56

    .line 59
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 60
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 61
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 67
    :cond_56
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object p0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    .line 69
    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->setName(Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 74
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Ljava/lang/String;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v4

    .line 75
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Ljava/lang/String;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v3

    .line 77
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v5

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setCreated(Z)V

    .line 78
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isLocked()Z

    move-result v5

    if-nez v5, :cond_ba

    .line 79
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v5

    if-nez v5, :cond_b8

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v4

    if-nez v4, :cond_b8

    goto :goto_ba

    :cond_b8
    move v4, v2

    goto :goto_bb

    :cond_ba
    :goto_ba
    const/4 v4, 0x1

    .line 78
    :goto_bb
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setLocked(Z)V

    goto :goto_7a

    .line 82
    :cond_bf
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 85
    invoke-virtual {p4}, Lio/blueflower/stapel2d/gamestack/GameStack;->size()I

    move-result p0

    move p1, v2

    :goto_c7
    if-ge p1, p0, :cond_e6

    .line 86
    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->get(I)Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    .line 87
    instance-of v0, v0, Linfo/flowersoft/theotown/stages/RegionStage;

    if-eqz v0, :cond_e3

    .line 88
    new-instance p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    invoke-direct {p0, p3}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 89
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-direct {v0, p3, p0}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->setLoadLastCity(Z)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p0

    .line 90
    invoke-virtual {p4, p1, p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->replace(ILio/blueflower/stapel2d/gamestack/Stage;)Lio/blueflower/stapel2d/gamestack/Stage;

    goto :goto_e6

    :cond_e3
    add-int/lit8 p1, p1, 0x1

    goto :goto_c7

    .line 95
    :cond_e6
    :goto_e6
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Added "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to your regions"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :cond_105
    :goto_105
    return-void
.end method

.method public static final downloadRegion$lambda$3(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)F
    .registers 4

    .line 108
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float v0, p0

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;->getProgress()F

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    add-float/2addr v0, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

###### Class info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda0 (info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/DownloadUtil;->$r8$lambda$f6nXOa4a-Ij8cNnRkO6EqSO_eeI(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda1 (info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/Region;

.field public final synthetic f$2:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/region/Region;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/region/Region;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/online/DownloadUtil;->$r8$lambda$ZY_bd-TIshcJyFlWYYtAQlgz8ns(Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda2 (info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/online/DownloadUtil;->$r8$lambda$aLKa0rrwOAJ43JKZgs6b4JodP4Y(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda3 (info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Linfo/flowersoft/theotown/region/Region;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$4:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$2:Linfo/flowersoft/theotown/region/Region;

    iput-object p4, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$3:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p5, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$4:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$2:Linfo/flowersoft/theotown/region/Region;

    iget-object v3, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$3:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda3;->f$4:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/online/DownloadUtil;->$r8$lambda$eCtXcPdycSzXwNIXfkzCXoD7qi8(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda4 (info.flowersoft.theotown.online.DownloadUtil$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressProvider;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getProgress()F
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/DownloadUtil$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/online/DownloadUtil;->$r8$lambda$Ba3TMxAP0zfgt9tr6D1pYxqAeI8(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Ljava/util/List;)F

    move-result v0

    return v0
.end method
