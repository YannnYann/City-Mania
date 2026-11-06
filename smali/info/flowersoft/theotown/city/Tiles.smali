###### Class info.flowersoft.theotown.city.Tiles (info.flowersoft.theotown.city.Tiles)
.class public final Linfo/flowersoft/theotown/city/Tiles;
.super Ljava/lang/Object;
.source "Tiles.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/Tiles$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tiles.kt\ninfo/flowersoft/theotown/city/Tiles\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,344:1\n1#2:345\n14167#3,2:346\n*S KotlinDebug\n*F\n+ 1 Tiles.kt\ninfo/flowersoft/theotown/city/Tiles\n*L\n182#1:346,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/city/Tiles$Companion;


# instance fields
.field public final bottomRoads:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public final buildings:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final fences:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "[",
            "Linfo/flowersoft/theotown/draft/FenceDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final flyingObjects:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/FlyingObject;",
            ">;"
        }
    .end annotation
.end field

.field public final groundDraft2s:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final groundFrame2s:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

.field public final height:I

.field public final minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final modifyCounters:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final pipes:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Pipe;",
            ">;"
        }
    .end annotation
.end field

.field public final powerMask0:Ljava/util/BitSet;

.field public final powerMask1:Ljava/util/BitSet;

.field public final rails:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Rail;",
            ">;"
        }
    .end annotation
.end field

.field public final roads:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public final ships:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Ship;",
            ">;"
        }
    .end annotation
.end field

.field public final topRoads:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public final topWires:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Wire;",
            ">;"
        }
    .end annotation
.end field

.field public final trees:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Tree;",
            ">;"
        }
    .end annotation
.end field

.field public final waterMask:Ljava/util/BitSet;

.field public final width:I

.field public final wires:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/Wire;",
            ">;"
        }
    .end annotation
.end field

.field public final zones:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/city/Tiles$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/Tiles$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/city/Tiles;->Companion:Linfo/flowersoft/theotown/city/Tiles$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Linfo/flowersoft/theotown/city/Tiles;->width:I

    .line 31
    iput p2, p0, Linfo/flowersoft/theotown/city/Tiles;->height:I

    mul-int/2addr p1, p2

    .line 42
    new-array p2, p1, [Linfo/flowersoft/theotown/city/objects/Ground;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_13

    const/4 v1, 0x0

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_13
    iput-object p2, p0, Linfo/flowersoft/theotown/city/Tiles;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    .line 44
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    const/16 p2, 0x20

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->trees:Lcom/badlogic/gdx/utils/IntMap;

    .line 45
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->rails:Lcom/badlogic/gdx/utils/IntMap;

    .line 46
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->flyingObjects:Lcom/badlogic/gdx/utils/IntMap;

    .line 47
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->ships:Lcom/badlogic/gdx/utils/IntMap;

    .line 48
    new-instance p1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->modifyCounters:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 49
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->pipes:Lcom/badlogic/gdx/utils/IntMap;

    .line 50
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->wires:Lcom/badlogic/gdx/utils/IntMap;

    .line 51
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->topWires:Lcom/badlogic/gdx/utils/IntMap;

    .line 52
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->groundDraft2s:Lcom/badlogic/gdx/utils/IntMap;

    .line 53
    new-instance p1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->groundFrame2s:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 54
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    .line 55
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->buildings:Lcom/badlogic/gdx/utils/IntMap;

    .line 56
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->zones:Lcom/badlogic/gdx/utils/IntMap;

    .line 57
    new-instance p1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 58
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    .line 59
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    .line 60
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->bottomRoads:Lcom/badlogic/gdx/utils/IntMap;

    .line 62
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->waterMask:Ljava/util/BitSet;

    .line 63
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->powerMask0:Ljava/util/BitSet;

    .line 64
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Tiles;->powerMask1:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final arrayIndex(II)I
    .registers 4

    .line 67
    iget v0, p0, Linfo/flowersoft/theotown/city/Tiles;->width:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public final clampX(I)I
    .registers 4

    .line 295
    iget v0, p0, Linfo/flowersoft/theotown/city/Tiles;->width:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    return p1
.end method

.method public final clampY(I)I
    .registers 4

    .line 296
    iget v0, p0, Linfo/flowersoft/theotown/city/Tiles;->height:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    return p1
.end method

.method public final getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 6

    .line 222
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 225
    :cond_8
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    if-ne v1, p3, :cond_d

    return-object v0

    .line 228
    :cond_d
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseTerrainHeight(II)I
    .registers 3

    .line 96
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result p1

    return p1
.end method

.method public final getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 4

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->bottomRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    return-object p1
.end method

.method public final getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 4

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->buildings:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1
.end method

.method public final getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;
    .registers 5

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eqz p1, :cond_11

    aget-object p1, p1, p3

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFlyingObject(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 4

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->flyingObjects:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    return-object p1
.end method

.method public final getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;
    .registers 4

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->arrayIndex(II)I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;
    .registers 4

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->groundDraft2s:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    return-object p1
.end method

.method public final getGroundFrame2(II)I
    .registers 4

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->groundFrame2s:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntIntMap;I)I

    move-result p1

    return p1
.end method

.method public final getHeight()I
    .registers 2

    .line 31
    iget v0, p0, Linfo/flowersoft/theotown/city/Tiles;->height:I

    return v0
.end method

.method public final getMaxZoneSize(II)I
    .registers 4

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntIntMap;II)I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result p1

    return p1
.end method

.method public final getMinZoneSize(II)I
    .registers 4

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    const/16 p2, 0x10

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntIntMap;II)I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p1

    return p1
.end method

.method public final getModifyCounter(II)I
    .registers 4

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->modifyCounters:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntIntMap;I)I

    move-result p1

    return p1
.end method

.method public final getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;
    .registers 4

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->pipes:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Pipe;

    return-object p1
.end method

.method public final getPotentialUpDirs(II)I
    .registers 3

    .line 95
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getPotentialUpDirs()I

    move-result p1

    return p1
.end method

.method public final getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;
    .registers 4

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->rails:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Rail;

    return-object p1
.end method

.method public final getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 5

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 p3, p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    return-object p1
.end method

.method public final getSave(Ljava/util/BitSet;I)Z
    .registers 3

    .line 334
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method public final getShip(II)Linfo/flowersoft/theotown/city/objects/Ship;
    .registers 4

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->ships:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Ship;

    return-object p1
.end method

.method public final getTerrainAvgHeight(II)F
    .registers 3

    .line 97
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/Tiles;->clampX(I)I

    move-result p1

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/city/Tiles;->clampY(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result p1

    return p1
.end method

.method public final getTerrainHeights(II)B
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeights()B

    move-result p1

    return p1
.end method

.method public final getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 4

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    return-object p1
.end method

.method public final getTopWire(II)Linfo/flowersoft/theotown/city/objects/Wire;
    .registers 4

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->topWires:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Wire;

    return-object p1
.end method

.method public final getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;
    .registers 4

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->trees:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Tree;

    return-object p1
.end method

.method public final getUpDirs(II)I
    .registers 3

    .line 94
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result p1

    return p1
.end method

.method public final getWidth()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/city/Tiles;->width:I

    return v0
.end method

.method public final getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;
    .registers 5

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->wires:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Wire;

    return-object p1
.end method

.method public final getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 4

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->zones:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object p1
.end method

.method public final hasFence(II)Z
    .registers 4

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final hasOvergroundRoad(II)Z
    .registers 3

    .line 207
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    return p2
.end method

.method public final hasOvergroundWire(II)Z
    .registers 3

    .line 147
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopWire(II)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 148
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getLevel()I

    move-result p1

    if-ltz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final hasPower(III)Z
    .registers 5

    if-eqz p3, :cond_18

    const/4 v0, 0x1

    if-ne p3, v0, :cond_10

    .line 83
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->powerMask1:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Linfo/flowersoft/theotown/city/Tiles;->getSave(Ljava/util/BitSet;I)Z

    move-result p1

    return p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    const-string p2, "unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_18
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->powerMask0:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Linfo/flowersoft/theotown/city/Tiles;->getSave(Ljava/util/BitSet;I)Z

    move-result p1

    return p1
.end method

.method public final hasRoad(II)Z
    .registers 3

    .line 206
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final hasVisibleRoad(II)Z
    .registers 8

    .line 209
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 211
    :cond_8
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v3, 0x1

    if-ltz v2, :cond_e

    return v3

    :cond_e
    const/4 v4, -0x1

    if-ge v2, v4, :cond_12

    return v1

    .line 215
    :cond_12
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v2, :cond_17

    return v1

    .line 218
    :cond_17
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 219
    iget p2, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result p1

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1
.end method

.method public final hasWater(II)Z
    .registers 4

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->waterMask:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->getSave(Ljava/util/BitSet;I)Z

    move-result p1

    return p1
.end method

.method public final hasWire(II)Z
    .registers 3

    .line 150
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopWire(II)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final index(II)I
    .registers 3

    .line 0
    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p2

    return p1
.end method

.method public final index(III)I
    .registers 4

    .line 0
    shl-int/lit8 p3, p3, 0x1a

    shl-int/lit8 p1, p1, 0xd

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public final isGroundWater(II)Z
    .registers 3

    .line 92
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    return p1
.end method

.method public final saveGet(Lcom/badlogic/gdx/utils/IntIntMap;I)I
    .registers 4

    const/4 v0, 0x0

    .line 313
    :try_start_1
    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return p1

    :catch_6
    return v0
.end method

.method public final saveGet(Lcom/badlogic/gdx/utils/IntIntMap;II)I
    .registers 4

    .line 319
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    return p3
.end method

.method public final saveGet(Lcom/badlogic/gdx/utils/IntMap;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final saveSet(Lcom/badlogic/gdx/utils/IntIntMap;II)V
    .registers 4

    .line 325
    monitor-enter p1

    if-eqz p3, :cond_9

    .line 327
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_d

    :catchall_7
    move-exception p2

    goto :goto_11

    :cond_9
    const/4 p3, 0x0

    .line 329
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->remove(II)I

    .line 331
    :goto_d
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_7

    .line 325
    monitor-exit p1

    return-void

    :goto_11
    monitor-exit p1

    throw p2
.end method

.method public final saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 304
    monitor-enter p1

    if-eqz p3, :cond_9

    .line 306
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :catchall_7
    move-exception p2

    goto :goto_10

    .line 308
    :cond_9
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    .line 310
    :goto_c
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_7

    .line 304
    monitor-exit p1

    return-void

    :goto_10
    monitor-exit p1

    throw p2
.end method

.method public final setBuilding(IILinfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->buildings:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V
    .registers 9

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    .line 166
    iget-object p2, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Linfo/flowersoft/theotown/draft/FenceDraft;

    if-nez p2, :cond_14

    if-nez p4, :cond_14

    goto :goto_3f

    :cond_14
    const/4 v1, 0x0

    if-nez p2, :cond_2c

    const/4 p2, 0x4

    .line 175
    new-array v2, p2, [Linfo/flowersoft/theotown/draft/FenceDraft;

    :goto_1a
    if-ge v1, p2, :cond_24

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catchall_22
    move-exception p1

    goto :goto_43

    .line 176
    :cond_24
    aput-object p4, v2, p3

    .line 177
    iget-object p2, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2, p1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 180
    :cond_2c
    aput-object p4, p2, p3

    if-nez p4, :cond_3f

    .line 14167
    array-length p3, p2

    :goto_31
    if-ge v1, p3, :cond_3a

    aget-object p4, p2, v1

    if-nez p4, :cond_3f

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 184
    :cond_3a
    iget-object p2, p0, Linfo/flowersoft/theotown/city/Tiles;->fences:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    .line 187
    :cond_3f
    :goto_3f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_22

    .line 164
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0

    throw p1
.end method

.method public final setFlyingObject(IILinfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 5

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->flyingObjects:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setGround(IILinfo/flowersoft/theotown/city/objects/Ground;)V
    .registers 5

    const-string v0, "ground"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->arrayIndex(II)I

    move-result p1

    aput-object p3, v0, p1

    return-void
.end method

.method public final setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 5

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->groundDraft2s:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setGroundFrame2(III)V
    .registers 5

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->groundFrame2s:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntIntMap;II)V

    return-void
.end method

.method public final setMinMaxZoneSizes(IIII)Ljava/lang/Object;
    .registers 7

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

    monitor-enter v0

    const/16 v1, 0x10

    if-ne p3, v1, :cond_1b

    if-nez p4, :cond_1b

    .line 200
    :try_start_9
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->remove(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2a

    :catchall_19
    move-exception p1

    goto :goto_2c

    .line 202
    :cond_1b
    iget-object v1, p0, Linfo/flowersoft/theotown/city/Tiles;->minMaxZoneSizes:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-static {p4, p3}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_19

    .line 198
    :goto_2a
    monitor-exit v0

    return-object p1

    :goto_2c
    monitor-exit v0

    throw p1
.end method

.method public final setModifyCounter(III)V
    .registers 5

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->modifyCounters:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntIntMap;II)V

    return-void
.end method

.method public final setPipe(IILinfo/flowersoft/theotown/city/objects/Pipe;)V
    .registers 5

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->pipes:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setPower(IIIZ)V
    .registers 6

    if-eqz p3, :cond_17

    const/4 v0, 0x1

    if-ne p3, v0, :cond_f

    .line 88
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->powerMask1:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, p3, p1, p4}, Linfo/flowersoft/theotown/city/Tiles;->setSave(Ljava/util/BitSet;IZ)V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    const-string p2, "unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_17
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->powerMask0:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, p3, p1, p4}, Linfo/flowersoft/theotown/city/Tiles;->setSave(Ljava/util/BitSet;IZ)V

    return-void
.end method

.method public final setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V
    .registers 5

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->rails:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V
    .registers 11

    const/4 v0, -0x1

    .line 236
    iget-object v1, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter v1

    .line 237
    :try_start_4
    iget-object v2, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Road;

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 238
    iget-object v4, p0, Linfo/flowersoft/theotown/city/Tiles;->bottomRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Road;

    if-nez v4, :cond_27

    move-object v4, v2

    goto :goto_27

    :catchall_23
    move-exception p1

    goto/16 :goto_db

    :cond_26
    move-object v4, v3

    :cond_27
    :goto_27
    if-nez v2, :cond_2d

    if-nez p4, :cond_2d

    goto/16 :goto_d7

    :cond_2d
    if-eqz p4, :cond_5e

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 p3, p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result p3

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_42

    .line 249
    iget p3, p4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    iget v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-lt p3, v0, :cond_4b

    .line 251
    :cond_42
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result v0

    invoke-virtual {p3, v0, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    if-eqz v4, :cond_53

    .line 254
    iget p3, p4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    iget v0, v4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt p3, v0, :cond_d7

    .line 256
    :cond_53
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->bottomRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p3, p1, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d7

    .line 261
    :cond_5e
    iget-object p4, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p0, p1, p2, v5}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result v5

    invoke-virtual {p4, v5}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    if-eqz v2, :cond_6f

    .line 263
    iget p4, v2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt p4, p3, :cond_9f

    :cond_6f
    const/16 p4, 0x12

    :goto_71
    if-ge v0, p4, :cond_83

    .line 267
    iget-object v2, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Road;

    if-nez v2, :cond_84

    add-int/2addr p4, v0

    goto :goto_71

    :cond_83
    move-object v2, v3

    :cond_84
    if-eqz v2, :cond_93

    .line 271
    iget-object p4, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result v0

    invoke-virtual {p4, v0, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/city/objects/Road;

    goto :goto_9f

    .line 273
    :cond_93
    iget-object p4, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/city/objects/Road;

    :cond_9f
    :goto_9f
    if-eqz v4, :cond_a5

    .line 277
    iget p4, v4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-lt p4, p3, :cond_d7

    :cond_a5
    const/4 p3, 0x0

    :goto_a6
    const/16 p4, 0x13

    if-ge p3, p4, :cond_bc

    .line 281
    iget-object p4, p0, Linfo/flowersoft/theotown/city/Tiles;->roads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/city/objects/Road;

    if-nez p4, :cond_bb

    add-int/lit8 p3, p3, 0x1

    goto :goto_a6

    :cond_bb
    move-object v3, p4

    :cond_bc
    if-eqz v3, :cond_cb

    .line 285
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p3, p1, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    goto :goto_d7

    .line 287
    :cond_cb
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->topRoads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 291
    :cond_d7
    :goto_d7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d9
    .catchall {:try_start_4 .. :try_end_d9} :catchall_23

    .line 236
    monitor-exit v1

    return-void

    :goto_db
    monitor-exit v1

    throw p1
.end method

.method public final setSave(Ljava/util/BitSet;IZ)V
    .registers 4

    .line 340
    monitor-enter p1

    .line 341
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/util/BitSet;->set(IZ)V

    .line 342
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 340
    monitor-exit p1

    return-void

    :catchall_8
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final setShip(IILinfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 5

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->ships:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V
    .registers 5

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->trees:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final setWater(IIZ)V
    .registers 5

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->waterMask:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->setSave(Ljava/util/BitSet;IZ)V

    return-void
.end method

.method public final setWire(IIILinfo/flowersoft/theotown/city/objects/Wire;)V
    .registers 9

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->wires:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopWire(II)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v1

    .line 123
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_25

    if-eqz v2, :cond_f

    .line 121
    monitor-exit v0

    return-void

    :cond_f
    if-eqz p4, :cond_31

    .line 126
    :try_start_11
    iget-object v2, p0, Linfo/flowersoft/theotown/city/Tiles;->wires:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result v3

    invoke-virtual {v2, v3, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_27

    .line 127
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Wire;->getLevel()I

    move-result v1

    if-gt v1, p3, :cond_5c

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_60

    .line 129
    :cond_27
    :goto_27
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->topWires:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p3, p1, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 132
    :cond_31
    iget-object p4, p0, Linfo/flowersoft/theotown/city/Tiles;->wires:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, p2, v2}, Linfo/flowersoft/theotown/city/Tiles;->index(III)I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    if-eqz v1, :cond_5c

    .line 133
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Wire;->getLevel()I

    move-result p4

    if-ne p4, p3, :cond_5c

    add-int/lit8 p3, p3, -0x1

    :goto_46
    const/4 p4, -0x2

    if-ge p4, p3, :cond_52

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p4

    if-nez p4, :cond_53

    add-int/lit8 p3, p3, -0x1

    goto :goto_46

    :cond_52
    const/4 p4, 0x0

    .line 140
    :cond_53
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Tiles;->topWires:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p3, p1, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_5c
    :goto_5c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_25

    .line 121
    monitor-exit v0

    return-void

    :goto_60
    monitor-exit v0

    throw p1
.end method

.method public final setZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 5

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Tiles;->zones:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->index(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Linfo/flowersoft/theotown/city/Tiles;->saveSet(Lcom/badlogic/gdx/utils/IntMap;ILjava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.Tiles.Companion (info.flowersoft.theotown.city.Tiles$Companion)
.class public final Linfo/flowersoft/theotown/city/Tiles$Companion;
.super Ljava/lang/Object;
.source "Tiles.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/Tiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/Tiles$Companion;-><init>()V

    return-void
.end method
