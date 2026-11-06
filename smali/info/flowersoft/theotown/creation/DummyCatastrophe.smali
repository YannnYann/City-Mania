###### Class info.flowersoft.theotown.creation.DummyCatastrophe (info.flowersoft.theotown.creation.DummyCatastrophe)
.class public Linfo/flowersoft/theotown/creation/DummyCatastrophe;
.super Linfo/flowersoft/theotown/city/components/Catastrophe;
.source "DummyCatastrophe.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Catastrophe;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisasters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x6

    return v0
.end method

.method public issueFlash()V
    .registers 1

    .line 0
    return-void
.end method

.method public issueQuake()V
    .registers 1

    .line 0
    return-void
.end method
