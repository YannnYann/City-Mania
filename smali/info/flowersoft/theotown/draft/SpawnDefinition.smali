###### Class info.flowersoft.theotown.draft.SpawnDefinition (info.flowersoft.theotown.draft.SpawnDefinition)
.class public Linfo/flowersoft/theotown/draft/SpawnDefinition;
.super Ljava/lang/Object;
.source "SpawnDefinition.java"


# instance fields
.field public allowedGroundSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;"
        }
    .end annotation
.end field

.field public coverage:F

.field public derivCenter:F

.field public derivFactor:F

.field public derivOffset:F

.field public derivRadius:F

.field public heightCenter:F

.field public heightFactor:F

.field public heightOffset:F

.field public heightRadius:F

.field public noiseFactor:F

.field public noiseOffset:F

.field public noiseScale:F

.field public noiseSeed:I

.field public noiseVariance:F

.field public offset:F

.field public precedence:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseSeed:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseScale:F

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseOffset:F

    .line 19
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseFactor:F

    .line 20
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseVariance:F

    .line 22
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightCenter:F

    .line 23
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightRadius:F

    .line 24
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightOffset:F

    .line 25
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightFactor:F

    .line 27
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivCenter:F

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivRadius:F

    .line 29
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivOffset:F

    .line 30
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivFactor:F

    .line 32
    iput v1, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->offset:F

    .line 34
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->coverage:F

    .line 35
    iput v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->precedence:F

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->allowedGroundSet:Ljava/util/Set;

    return-void
.end method
