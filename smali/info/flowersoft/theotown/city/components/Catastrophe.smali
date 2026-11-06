###### Class info.flowersoft.theotown.city.components.Catastrophe (info.flowersoft.theotown.city.components.Catastrophe)
.class public abstract Linfo/flowersoft/theotown/city/components/Catastrophe;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "Catastrophe.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisasters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x6

    return v0
.end method

.method public abstract issueFlash()V
.end method

.method public abstract issueQuake()V
.end method
