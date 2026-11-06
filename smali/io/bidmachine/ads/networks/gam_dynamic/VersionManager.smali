###### Class io.bidmachine.ads.networks.gam_dynamic.VersionManager (io.bidmachine.ads.networks.gam_dynamic.VersionManager)
.class public Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# direct methods
.method public static synthetic $r8$lambda$XD1pG-yszCSPLntxpnaZYTsNybg(Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;)I
    .registers 2

    .line 53
    invoke-interface {p0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getVersionForWhichCompiled()Lio/bidmachine/utils/version/Version;

    move-result-object p0

    .line 54
    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getVersionForWhichCompiled()Lio/bidmachine/utils/version/Version;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/version/Version;->compareTo(Lio/bidmachine/utils/version/Version;)I

    move-result p0

    return p0
.end method

.method public static findVersion(Ljava/util/List;)Lio/bidmachine/utils/version/Version;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionWrapperList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lio/bidmachine/utils/version/VersionRange;",
            "Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;",
            ">;>;)",
            "Lio/bidmachine/utils/version/Version;"
        }
    .end annotation

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 78
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getMinDeviceApiVersion()I

    move-result v2

    if-ge v1, v2, :cond_1d

    goto :goto_4

    .line 82
    :cond_1d
    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->safeGetVersion(Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;)Lio/bidmachine/utils/version/Version;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_4

    :cond_24
    return-object v0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findVersionWrapper(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionRangeString"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lio/bidmachine/utils/version/VersionRange;->parseVersionRange(Ljava/lang/String;)Lio/bidmachine/utils/version/VersionRange;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 26
    :cond_8
    invoke-static {}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->initializeVersionWrapperList()Ljava/util/List;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->findVersion(Ljava/util/List;)Lio/bidmachine/utils/version/Version;

    move-result-object v2

    if-nez v2, :cond_13

    return-object v0

    .line 31
    :cond_13
    invoke-virtual {p0, v2}, Lio/bidmachine/utils/version/VersionRange;->contains(Lio/bidmachine/utils/version/Version;)Z

    move-result p0

    if-nez p0, :cond_1a

    return-object v0

    .line 35
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 36
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lio/bidmachine/utils/version/VersionRange;

    invoke-virtual {v3, v2}, Lio/bidmachine/utils/version/VersionRange;->contains(Lio/bidmachine/utils/version/Version;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 37
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    return-object p0

    :cond_39
    return-object v0
.end method

.method public static initializeVersionWrapperList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lio/bidmachine/utils/version/VersionRange;",
            "Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;",
            ">;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$1;

    invoke-direct {v1}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$1;-><init>()V

    .line 52
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_4a

    .line 59
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    if-ge v4, v6, :cond_2e

    add-int/lit8 v6, v4, 0x1

    .line 61
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    goto :goto_2f

    :cond_2e
    move-object v6, v7

    .line 63
    :goto_2f
    new-instance v8, Lio/bidmachine/utils/version/VersionRange;

    invoke-interface {v5}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getVersionForWhichCompiled()Lio/bidmachine/utils/version/Version;

    move-result-object v9

    if-eqz v6, :cond_3b

    .line 65
    invoke-interface {v6}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getVersionForWhichCompiled()Lio/bidmachine/utils/version/Version;

    move-result-object v7

    :cond_3b
    const/4 v6, 0x1

    .line 66
    invoke-direct {v8, v9, v7, v6, v3}, Lio/bidmachine/utils/version/VersionRange;-><init>(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;ZZ)V

    .line 69
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_4a
    return-object v0
.end method

.method public static safeGetVersion(Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;)Lio/bidmachine/utils/version/Version;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionWrapper"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-interface {p0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getVersion()Lio/bidmachine/utils/version/Version;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.VersionManager.AnonymousClass1 (io.bidmachine.ads.networks.gam_dynamic.VersionManager$1)
.class public Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$1;
.super Ljava/util/ArrayList;
.source "VersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->initializeVersionWrapperList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/VersionWrapperImpl;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/VersionWrapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v22_0_0/VersionWrapperImpl;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v22_0_0/VersionWrapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/VersionWrapperImpl;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/VersionWrapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.VersionManager$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.VersionManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    check-cast p2, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    invoke-static {p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->$r8$lambda$XD1pG-yszCSPLntxpnaZYTsNybg(Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;)I

    move-result p1

    return p1
.end method
