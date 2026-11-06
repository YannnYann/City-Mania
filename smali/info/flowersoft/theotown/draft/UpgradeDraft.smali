###### Class info.flowersoft.theotown.draft.UpgradeDraft (info.flowersoft.theotown.draft.UpgradeDraft)
.class public Linfo/flowersoft/theotown/draft/UpgradeDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "UpgradeDraft.java"


# instance fields
.field public animationSpotIndices:[[I

.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public aspectCapacity:[I

.field public buildTime:J

.field public carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

.field public final diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

.field public influenceInduceVector:[I

.field public monthlyPrice:J

.field public neededAspectAmount:[I

.field public onlyOne:Z

.field public parent:Linfo/flowersoft/theotown/draft/Draft;

.field public power:J

.field public price:J

.field public water:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    return-void
.end method


# virtual methods
.method public getNeededAmount(I)I
    .registers 3

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->neededAspectAmount:[I

    aget p1, v0, p1

    const/4 v0, 0x0

    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getProvidedAmount(I)I
    .registers 3

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->neededAspectAmount:[I

    aget p1, v0, p1

    neg-int p1, p1

    const/4 v0, 0x0

    .line 37
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
