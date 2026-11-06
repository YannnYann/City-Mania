###### Class info.flowersoft.theotown.cityfile.RegionProvider (info.flowersoft.theotown.cityfile.RegionProvider)
.class public abstract Linfo/flowersoft/theotown/cityfile/RegionProvider;
.super Ljava/lang/Object;
.source "RegionProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(I)Linfo/flowersoft/theotown/cityfile/MapDirectory;
.end method

.method public abstract getAnyId()I
.end method

.method public abstract getDefaultRegionId(Ljava/lang/String;)I
.end method

.method public abstract getIndex(I)I
.end method

.method public abstract isOnline()Z
.end method

.method public abstract load(Ljava/lang/Runnable;)V
.end method

.method public abstract nextId(I)I
.end method

.method public abstract prevId(I)I
.end method

.method public abstract size()I
.end method
