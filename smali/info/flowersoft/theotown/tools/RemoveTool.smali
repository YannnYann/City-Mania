###### Class info.flowersoft.theotown.tools.RemoveTool (info.flowersoft.theotown.tools.RemoveTool)
.class public Linfo/flowersoft/theotown/tools/RemoveTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;,
        Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;,
        Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;
    }
.end annotation


# instance fields
.field public final destructionAnimations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public final diamondBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public hideAnimations:Z

.field public final position2Animation:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public removeMode:I

.field public removeTunnelLevel:I

.field public removeUnder:Z


# direct methods
.method public static synthetic $r8$lambda$B7qwfr0itre_GaJuP9Xqaym5AKw(Linfo/flowersoft/theotown/tools/RemoveTool;IIIILinfo/flowersoft/theotown/components/DefaultSoundManager;)V
    .registers 8

    .line 504
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    const/4 p1, 0x0

    .line 506
    :goto_4
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3e

    .line 507
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 508
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 509
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p3

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p4

    .line 510
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    .line 509
    invoke-virtual {p0, p3, p4, v0, v1}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(IIII)V

    .line 511
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object p4, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, p2}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {p5, p3, p4, v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 515
    :cond_3e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public static synthetic $r8$lambda$M0FVDOvPMafQH0FqILI5cld0TtA(Linfo/flowersoft/theotown/tools/RemoveTool;ILinfo/flowersoft/theotown/components/DefaultSoundManager;IIII)V
    .registers 15

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->hideAnimations:Z

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->redo(Z)V

    .line 476
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;

    .line 477
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->getTime()J

    move-result-wide v3

    iput-wide v3, v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->time:J

    goto :goto_d

    .line 479
    :cond_20
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_3e

    .line 480
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v2, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    sub-int/2addr p5, p3

    add-int/lit8 v6, p5, 0x1

    sub-int/2addr p6, p4

    add-int/lit8 v7, p6, 0x1

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    invoke-virtual {p2, p1, v1, v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    :cond_3e
    return-void
.end method

.method public static synthetic $r8$lambda$xO82drb4UIxA6EHsGDY9dN_0zu4(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->hideAnimations:Z

    .line 485
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->clearRedo()V

    .line 486
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 487
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->position2Animation:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, v0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .line 188
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->position2Animation:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeTunnelLevel:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    .line 189
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterNormalMode()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2d

    .line 193
    new-instance p2, Linfo/flowersoft/theotown/tools/RemoveTool$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$1;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz p1, :cond_37

    .line 226
    new-instance p2, Linfo/flowersoft/theotown/tools/RemoveTool$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$2;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_42

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Ljava/util/List;)V

    :cond_42
    if-eqz p1, :cond_58

    .line 256
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p2, Linfo/flowersoft/theotown/tools/RemoveTool$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$3;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 287
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p2, Linfo/flowersoft/theotown/tools/RemoveTool$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$4;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 319
    :cond_58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$1900(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$2100(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/tools/RemoveTool;)Ljava/util/List;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private recalculate()V
    .registers 3

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->calculate()V

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->calculate()V

    return-void
.end method


# virtual methods
.method public addDestructionAnimation(II)V
    .registers 6

    .line 915
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool$1;)V

    .line 916
    iput p1, v0, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->x:I

    .line 917
    iput p2, v0, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->y:I

    .line 918
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->time:J

    const/4 v1, 0x1

    .line 919
    iput-boolean v1, v0, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->valid:Z

    .line 920
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->position2Animation:Lcom/badlogic/gdx/utils/IntMap;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 922
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    return-void
.end method

.method public addDestructionAnimation(IIII)V
    .registers 10

    const/4 v0, 0x0

    .line 906
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->hideAnimations:Z

    move v1, v0

    :goto_4
    if-ge v1, p3, :cond_16

    move v2, v0

    :goto_7
    if-ge v2, p4, :cond_13

    add-int v3, p1, v1

    add-int v4, p2, v2

    .line 909
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public build(IIII)V
    .registers 7

    .line 357
    iget v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    return-void

    .line 366
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/RemoveTool;->buildRemoveUndergroundWires(IIII)V

    .line 367
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->recalculate()V

    return-void

    .line 363
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/RemoveTool;->buildRemoveTunnel(IIII)V

    return-void

    .line 359
    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/RemoveTool;->buildNormal(IIII)V

    .line 360
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->recalculate()V

    return-void
.end method

.method public buildNormal(IIII)V
    .registers 28

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 417
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 419
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 420
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 421
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 422
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v0, v6, v8

    const/4 v10, 0x1

    add-int/2addr v0, v10

    sub-int v11, v7, v9

    add-int/2addr v11, v10

    const/4 v12, 0x2

    .line 424
    new-array v12, v12, [I

    aput v11, v12, v10

    const/4 v13, 0x0

    aput v0, v12, v13

    const-class v14, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;

    invoke-static {v14, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;

    .line 426
    iget-object v14, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v15, 0xf

    .line 427
    invoke-virtual {v14, v15}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 429
    iget-object v15, v1, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v15, v8, v9, v0, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFenceWithin(IIII)V

    move v15, v8

    :goto_44
    if-gt v15, v6, :cond_6b

    move v13, v9

    :goto_47
    if-gt v13, v7, :cond_63

    sub-int v17, v15, v8

    .line 433
    aget-object v17, v12, v17

    sub-int v18, v13, v9

    move/from16 v19, v10

    new-instance v10, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;

    move/from16 v20, v0

    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-direct {v10, v0, v15, v13}, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;-><init>(Linfo/flowersoft/theotown/city/Tiles;II)V

    aput-object v10, v17, v18

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v19

    move/from16 v0, v20

    goto :goto_47

    :cond_63
    move/from16 v20, v0

    move/from16 v19, v10

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x0

    goto :goto_44

    :cond_6b
    move/from16 v20, v0

    move/from16 v19, v10

    .line 437
    iget-object v0, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;

    move-result-object v0

    .line 442
    iget-object v10, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    .line 444
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v13

    invoke-virtual {v13}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v17

    move v13, v8

    const/4 v15, 0x0

    :goto_88
    if-gt v13, v6, :cond_d1

    move v2, v9

    :goto_8b
    if-gt v2, v7, :cond_c6

    sub-int v21, v13, v8

    .line 448
    aget-object v21, v12, v21

    sub-int v22, v2, v9

    aget-object v3, v21, v22

    .line 449
    iget-object v4, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13, v2}, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->isSame(Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result v4

    if-eqz v4, :cond_bd

    const/4 v4, 0x0

    .line 450
    :goto_9e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_bd

    .line 451
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;

    .line 452
    invoke-interface {v5, v13, v2, v3}, Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;->remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 453
    iget-object v4, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13, v2}, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->isSame(Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v15, v3

    goto :goto_bd

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    :cond_bd
    :goto_bd
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    goto :goto_8b

    :cond_c6
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    goto :goto_88

    .line 460
    :cond_d1
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    sub-double v2, v2, v17

    if-eqz v15, :cond_164

    .line 463
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_145

    .line 465
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_145

    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_145

    move/from16 v0, v19

    .line 466
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->undo(Z)V

    .line 467
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->clearPlacedPrices()V

    .line 468
    iput-boolean v0, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->hideAnimations:Z

    .line 470
    iget-object v15, v1, Linfo/flowersoft/theotown/city/components/Tool;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    sget v16, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 471
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v4, 0xb7

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 472
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v4, 0x1fb

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    neg-double v2, v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;

    move v4, v8

    move v5, v9

    move v2, v10

    move-object v3, v14

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;ILinfo/flowersoft/theotown/components/DefaultSoundManager;IIII)V

    new-instance v2, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .line 470
    invoke-interface/range {v15 .. v20}, Linfo/flowersoft/theotown/city/components/QuestionListener;->ask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_145
    move v4, v8

    move v5, v9

    move v2, v10

    move-object v3, v14

    .line 491
    iget-object v0, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_165

    .line 492
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v6, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v7, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move v8, v4

    move v9, v5

    move/from16 v10, v20

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    invoke-virtual {v3, v0, v2, v6}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_165

    :cond_164
    move-object v3, v14

    .line 500
    :cond_165
    :goto_165
    iget-object v0, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b2

    .line 501
    iget-object v7, v1, Linfo/flowersoft/theotown/city/components/Tool;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v2, 0x123

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 502
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v2, 0x807

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->diamondBuildings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;

    move/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;IIIILinfo/flowersoft/theotown/components/DefaultSoundManager;)V

    move-object v6, v9

    const/4 v9, 0x0

    move-object v4, v7

    move v5, v8

    move-object v7, v10

    move-object v8, v0

    .line 501
    invoke-interface/range {v4 .. v9}, Linfo/flowersoft/theotown/city/components/QuestionListener;->ask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1b2
    return-void
.end method

.method public buildRemoveTunnel(IIII)V
    .registers 16

    .line 373
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    sub-int v3, p4, p2

    .line 376
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_4e

    move v3, v1

    :goto_14
    sub-int v4, p3, p1

    .line 377
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v3, v4, :cond_4b

    .line 378
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 379
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 380
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v7, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeTunnelLevel:I

    invoke-virtual {v6, v4, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v6

    if-eqz v6, :cond_48

    .line 383
    iget v6, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeTunnelLevel:I

    invoke-virtual {v0, v4, v5, v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->remove(III)V

    .line 384
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    .line 385
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v8, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v9, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v10, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v9, v10, v4, v5}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    invoke-virtual {v6, v7, v8, v9}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 391
    :cond_4e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public buildRemoveUndergroundWires(IIII)V
    .registers 15

    .line 395
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    sub-int v2, p4, p2

    .line 397
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v1, v2, :cond_47

    move v2, v0

    :goto_e
    sub-int v3, p3, p1

    .line 398
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_44

    .line 399
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 400
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 401
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v4, v6}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 404
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v6, v5, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    .line 405
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v7, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v8, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v9, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v8, v9, v3, v4}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    invoke-virtual {v5, v6, v7, v8}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 407
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 412
    :cond_47
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public final collectRemoveOperations()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTool$6;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$6;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    .line 611
    new-instance v1, Linfo/flowersoft/theotown/tools/RemoveTool$7;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$7;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    .line 633
    new-instance v2, Linfo/flowersoft/theotown/tools/RemoveTool$8;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$8;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    .line 655
    new-instance v3, Linfo/flowersoft/theotown/tools/RemoveTool$9;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$9;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    .line 678
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_1b
    const/16 v7, 0x10

    if-gt v6, v7, :cond_2a

    .line 681
    new-instance v7, Linfo/flowersoft/theotown/tools/RemoveTool$10;

    invoke-direct {v7, p0, v6}, Linfo/flowersoft/theotown/tools/RemoveTool$10;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 715
    :cond_2a
    new-instance v6, Linfo/flowersoft/theotown/tools/RemoveTool$11;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$11;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    .line 745
    new-instance v7, Linfo/flowersoft/theotown/tools/RemoveTool$12;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/tools/RemoveTool$12;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    .line 768
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 770
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    :goto_42
    const/4 v10, 0x3

    if-lt v0, v10, :cond_51

    .line 772
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 774
    :cond_51
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 775
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeUnder:Z

    if-eqz v0, :cond_83

    .line 784
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_83
    return-object v8
.end method

.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public drawAnimations(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 9

    .line 868
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->getTime()J

    move-result-wide v0

    .line 869
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAMES_DESTRUCTION_COUNT:I

    .line 870
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->position2Animation:Lcom/badlogic/gdx/utils/IntMap;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;

    if-eqz p1, :cond_40

    .line 871
    iget-boolean p2, p1, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->valid:Z

    if-eqz p2, :cond_40

    .line 872
    iget-wide v3, p1, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->time:J

    sub-long/2addr v0, v3

    long-to-float p2, v0

    mul-int/lit16 v0, v2, 0xc8

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2a

    const/4 p2, 0x0

    .line 874
    iput-boolean p2, p1, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->valid:Z

    return-void

    :cond_2a
    int-to-float p1, v2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 876
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 877
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p3, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    neg-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAMES_DESTRUCTION:I

    add-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1, v0, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_40
    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 802
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 804
    iget v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_75

    .line 805
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 807
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/Wire;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 810
    :cond_18
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v1, :cond_5c

    if-eq v1, v2, :cond_24

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object p1, p3

    goto/16 :goto_72

    .line 818
    :cond_24
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v1, :cond_37

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v2, :cond_37

    .line 819
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_35
    :goto_35
    move-object p1, v2

    goto :goto_72

    :cond_37
    move v3, p1

    move v4, p2

    move-object v2, p3

    move-object p1, p0

    .line 821
    iget p2, p1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v1, p2, v3, v4}, Linfo/flowersoft/theotown/tools/RemoveTool;->isValid(IIII)Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result p2

    if-eqz p2, :cond_5a

    if-eqz v0, :cond_53

    .line 823
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    move-object v1, p0

    goto :goto_35

    .line 825
    :cond_53
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_35

    :cond_5a
    move-object v1, p1

    goto :goto_35

    :cond_5c
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 812
    iget-boolean p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz p1, :cond_35

    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne p1, v3, :cond_35

    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne p1, v4, :cond_35

    .line 813
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_35

    :goto_72
    move-object v2, p1

    goto/16 :goto_fd

    :cond_75
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object p1, p3

    .line 832
    iget p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz p2, :cond_eb

    if-eq p2, v2, :cond_80

    goto :goto_72

    .line 840
    :cond_80
    iget p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne v3, p2, :cond_a5

    iget p3, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v4, p3, :cond_a5

    .line 841
    iget-boolean p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz p2, :cond_97

    iget-boolean p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez p2, :cond_97

    iget-object p2, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 842
    :cond_97
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 843
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_fd

    :cond_a5
    move-object v2, p1

    .line 845
    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p2, p1, v3, v4}, Linfo/flowersoft/theotown/tools/RemoveTool;->isValid(IIII)Z

    move-result p1

    if-eqz p1, :cond_fd

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 846
    iget-object p1, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-nez p1, :cond_e4

    .line 848
    iget-object p1, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 849
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result p1

    if-nez p1, :cond_e4

    iget-object p1, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 850
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-nez p1, :cond_e4

    iget-object p1, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 851
    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result p1

    if-eqz p1, :cond_dd

    goto :goto_e4

    .line 854
    :cond_dd
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    move-object v1, p0

    goto :goto_fd

    .line 852
    :cond_e4
    :goto_e4
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_fd

    :cond_eb
    move-object v2, p1

    .line 834
    iget-boolean p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz p1, :cond_fd

    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne p1, v3, :cond_fd

    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne p1, v4, :cond_fd

    .line 835
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 862
    :cond_fd
    :goto_fd
    invoke-virtual {p0, v2, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawAreaTextMarker(Linfo/flowersoft/theotown/city/Drawer;II)V

    .line 864
    iget-boolean p1, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->hideAnimations:Z

    if-nez p1, :cond_107

    invoke-virtual {p0, v3, v4, v2}, Linfo/flowersoft/theotown/tools/RemoveTool;->drawAnimations(IILinfo/flowersoft/theotown/city/Drawer;)V

    :cond_107
    return-void
.end method

.method public enterNormalMode()V
    .registers 2

    .line 328
    invoke-virtual {p0, p0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    .line 330
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    .line 331
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    return-void
.end method

.method public enterRemoveTunnelMode()V
    .registers 3

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 336
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showTrafficMarkerInRoadTool:Z

    if-eqz v0, :cond_12

    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTool$5;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/tools/RemoveTool$5;-><init>(Linfo/flowersoft/theotown/tools/RemoveTool;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    :cond_12
    const/4 v0, 0x1

    .line 342
    iput v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    .line 343
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    return-void
.end method

.method public enterRemoveUndergroundWiresMode()V
    .registers 3

    .line 348
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    const/4 v0, 0x2

    .line 349
    iput v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    return-void
.end method

.method public getBuildableCursor()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 324
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Delete:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public getBuildingIntensity(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 81
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 902
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "Remove"

    return-object v0
.end method

.method public getIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getLegend()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 1002
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x208

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 167
    const-string v0, ""

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final getTime()J
    .registers 3

    .line 935
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTreeTransparency()I
    .registers 2

    .line 927
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    if-eqz v0, :cond_9

    goto :goto_e

    .line 930
    :cond_9
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getTreeTransparency()I

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/16 v0, 0x28

    return v0
.end method

.method public ignoreBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isValid(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 5

    sub-int/2addr p3, p1

    .line 797
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    const/16 p3, 0xb

    if-le p1, p3, :cond_1d

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    return p2
.end method

.method public markBuilding(II)Z
    .registers 12

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_a

    return p2

    .line 133
    :cond_a
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    .line 134
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    .line 135
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 136
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr p1, v3

    .line 137
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-ne v4, v3, :cond_25

    move v4, v3

    goto :goto_26

    :cond_25
    move v4, p2

    :goto_26
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    and-int/2addr v4, v5

    if-eqz v4, :cond_55

    .line 138
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 139
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 140
    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v7, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 141
    iget v7, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v8, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lt v2, v4, :cond_54

    if-gt v0, v6, :cond_54

    if-lt p1, v5, :cond_54

    if-gt v1, v7, :cond_54

    return v3

    :cond_54
    return p2

    .line 143
    :cond_55
    iget-boolean v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v4, :cond_66

    .line 144
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-gt v0, v4, :cond_66

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-gt v1, v0, :cond_66

    if-gt v4, v2, :cond_66

    if-gt v0, p1, :cond_66

    return v3

    :cond_66
    return p2
.end method

.method public markTree(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 8

    .line 157
    invoke-super/range {p0 .. p7}, Linfo/flowersoft/theotown/tools/TwoModesTool;->mouseMove(IIFFFFZ)V

    return-void
.end method

.method public overlayAlpha(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public redo(Z)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->redo(Z)V

    .line 98
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->recalculate()V

    return-void
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public undo(Z)V
    .registers 2

    .line 91
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->undo(Z)V

    .line 92
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->recalculate()V

    return-void
.end method

.method public update()V
    .registers 6

    .line 884
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->update()V

    .line 886
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->getTime()J

    move-result-wide v0

    .line 888
    iget-boolean v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->hideAnimations:Z

    if-nez v2, :cond_56

    .line 889
    :cond_b
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->valid:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    .line 890
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;

    iget-wide v2, v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->time:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAMES_DESTRUCTION_COUNT:I

    mul-int/lit16 v3, v3, 0xc8

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_56

    .line 891
    :cond_38
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->destructionAnimations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;

    .line 892
    iget v3, v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->x:I

    iget v4, v2, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;->y:I

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v3

    .line 893
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->position2Animation:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_b

    .line 894
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->position2Animation:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_56
    return-void
.end method

.method public useOverlay(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass1 (info.flowersoft.theotown.tools.RemoveTool$1)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 196
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_UNDER:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 201
    const-string v0, "cmdRemoveUnder"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$000(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xde5

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeUnder:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v0, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeUnder:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeUnder:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass10 (info.flowersoft.theotown.tools.RemoveTool$10)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$10;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

.field public final synthetic val$level:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 12

    .line 684
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$1700(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    iget v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->val$level:I

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_75

    .line 687
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    .line 688
    const-string v1, "remove "

    if-eqz v0, :cond_45

    .line 689
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    int-to-float v5, p1

    int-to-float v6, p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 690
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object p3, p3, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p3, v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/BusStop;II)V

    .line 691
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    goto :goto_73

    .line 693
    :cond_45
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    int-to-float v5, p1

    int-to-float v6, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 694
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget p3, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoad(III)V

    .line 695
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$10;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    :goto_73
    const/4 p1, 0x1

    return p1

    :cond_75
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass11 (info.flowersoft.theotown.tools.RemoveTool$11)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$11;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 715
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 12

    .line 718
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$1900(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_78

    .line 719
    iget v0, p3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v0, :cond_78

    .line 720
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    .line 721
    const-string v1, "remove "

    if-eqz v0, :cond_48

    .line 722
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    int-to-float v5, p1

    int-to-float v6, p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 723
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object p3, p3, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p3, v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/BusStop;II)V

    .line 724
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    goto :goto_76

    .line 726
    :cond_48
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    int-to-float v5, p1

    int-to-float v6, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 727
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget p3, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoad(III)V

    .line 728
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$11;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    :goto_76
    const/4 p1, 0x1

    return p1

    :cond_78
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass12 (info.flowersoft.theotown.tools.RemoveTool$12)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$12;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 745
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$12;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 11

    .line 748
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$12;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$2100(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p3

    if-eqz p3, :cond_3e

    .line 750
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$12;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    int-to-float v4, p1

    int-to-float v5, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 751
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$12;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, p3, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    .line 752
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$12;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    const/4 p1, 0x1

    return p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass2 (info.flowersoft.theotown.tools.RemoveTool$2)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$2;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 229
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 234
    const-string v0, "cmdRemoveNormal"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$2;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$100(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x208

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 249
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$2;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v0, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$2;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterNormalMode()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass3 (info.flowersoft.theotown.tools.RemoveTool$3)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$3;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 259
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_TUNNEL_SMALL:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 264
    const-string v0, "cmdRemoveTunnel"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$3;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$200(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x7fd

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 3

    .line 283
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$3;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v0, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$3;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 270
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterNormalMode()V

    return-void

    .line 272
    :cond_b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterRemoveTunnelMode()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass4 (info.flowersoft.theotown.tools.RemoveTool$4)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$4;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$4;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 290
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_UNDERGROUND_WIRE_SMALL:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 295
    const-string v0, "cmdRemoveUndergroundWires"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$4;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$300(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x18e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 3

    .line 314
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$4;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v0, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$4;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 301
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterNormalMode()V

    return-void

    .line 303
    :cond_b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterRemoveUndergroundWiresMode()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass5 (info.flowersoft.theotown.tools.RemoveTool$5)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$5;
.super Linfo/flowersoft/theotown/tools/marker/TrafficMarker;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->enterRemoveTunnelMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$5;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public overlayAlpha(II)F
    .registers 5

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$5;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$400(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$5;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v1, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->removeTunnelLevel:I

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_13

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass6 (info.flowersoft.theotown.tools.RemoveTool$6)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$6;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 523
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBuildingBulldozePrice(Linfo/flowersoft/theotown/city/objects/Building;)J
    .registers 12

    .line 572
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 573
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_32

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    .line 574
    invoke-static {v1}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$800(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isBoughtInFeature(Linfo/flowersoft/theotown/city/City;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    if-nez v1, :cond_32

    :cond_22
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v4

    neg-long v4, v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    goto :goto_33

    :cond_32
    move-wide v4, v2

    .line 577
    :goto_33
    iget-wide v6, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->bulldozePrice:J

    const-wide/32 v8, -0x80000000

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3d

    move-wide v4, v6

    .line 582
    :cond_3d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isSpentMoneyUnknown()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 583
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getSpentMoney()I

    move-result p1

    neg-int p1, p1

    int-to-long v0, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 585
    :cond_4e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isExternalPlugin()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 587
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_59
    return-wide v4
.end method

.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 15

    .line 526
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$500(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 529
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    .line 530
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result p3

    if-nez p3, :cond_e6

    .line 532
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p3

    iget-object p3, p3, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p3

    if-lez p3, :cond_49

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p3

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$600(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isBoughtInFeature(Linfo/flowersoft/theotown/city/City;)Z

    move-result p3

    if-nez p3, :cond_49

    .line 536
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$700(Linfo/flowersoft/theotown/tools/RemoveTool;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e6

    .line 537
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$700(Linfo/flowersoft/theotown/tools/RemoveTool;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e6

    .line 540
    :cond_49
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object p3, p3, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 543
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/RemoveTool$6;->getBuildingBulldozePrice(Linfo/flowersoft/theotown/city/objects/Building;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    .line 545
    const-string v2, "bulldoze "

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    if-gtz p3, :cond_9a

    .line 546
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v5

    neg-long v0, v0

    long-to-double v6, v0

    .line 547
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr p3, v0

    sub-float v8, p3, v3

    .line 548
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr p3, v0

    sub-float v9, p3, v3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 546
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DFFLjava/lang/String;)V

    goto :goto_d1

    .line 551
    :cond_9a
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v5

    long-to-double v6, v0

    .line 552
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr p3, v0

    sub-float v8, p3, v3

    .line 553
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr p3, v0

    sub-float v9, p3, v3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 551
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 557
    :goto_d1
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$6;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    .line 558
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    .line 557
    invoke-virtual {p2, p3, v0, v1, p1}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(IIII)V

    :cond_e6
    :goto_e6
    const/4 p1, 0x1

    return p1

    :cond_e8
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass7 (info.flowersoft.theotown.tools.RemoveTool$7)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$7;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 611
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$7;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 11

    .line 614
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$7;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$1100(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p3

    if-eqz p3, :cond_3e

    .line 616
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$7;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    int-to-float v4, p1

    int-to-float v5, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Rail;->getDraft()Linfo/flowersoft/theotown/draft/RailDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 617
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$7;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Rail;)V

    .line 618
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$7;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    const/4 p1, 0x1

    return p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass8 (info.flowersoft.theotown.tools.RemoveTool$8)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$8;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 633
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$8;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 12

    .line 636
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$8;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$1300(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p3

    if-eqz p3, :cond_45

    .line 638
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$8;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/WireDraft;->price:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v3, v1

    int-to-float v5, p1

    int-to-float v6, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DFFLjava/lang/String;)V

    .line 639
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$8;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, p3, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    .line 640
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$8;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    return v0

    :cond_45
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.AnonymousClass9 (info.flowersoft.theotown.tools.RemoveTool$9)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$9;
.super Ljava/lang/Object;
.source "RemoveTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;->collectRemoveOperations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 655
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$9;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
    .registers 11

    .line 658
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$9;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->access$1500(Linfo/flowersoft/theotown/tools/RemoveTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p3

    if-eqz p3, :cond_46

    .line 660
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$9;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/WireDraft;->price:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    int-to-float v4, p1

    int-to-float v5, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DFFLjava/lang/String;)V

    .line 661
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$9;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, p3, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    .line 662
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$9;->this$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    const/4 p1, 0x1

    return p1

    :cond_46
    return v0
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.DestructionAnimation (info.flowersoft.theotown.tools.RemoveTool$DestructionAnimation)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;
.super Ljava/lang/Object;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestructionAnimation"
.end annotation


# instance fields
.field public time:J

.field public valid:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool$1;)V
    .registers 2

    .line 938
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemoveTool$DestructionAnimation;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.RemoveOperation (info.flowersoft.theotown.tools.RemoveTool$RemoveOperation)
.class public interface abstract Linfo/flowersoft/theotown/tools/RemoveTool$RemoveOperation;
.super Ljava/lang/Object;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoveOperation"
.end annotation


# virtual methods
.method public abstract remove(IILinfo/flowersoft/theotown/tools/RemoveTool$TileGhost;)Z
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool.TileGhost (info.flowersoft.theotown.tools.RemoveTool$TileGhost)
.class public Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;
.super Ljava/lang/Object;
.source "RemoveTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/RemoveTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileGhost"
.end annotation


# instance fields
.field public final building:Linfo/flowersoft/theotown/city/objects/Building;

.field public final busStop:[Linfo/flowersoft/theotown/city/objects/BusStop;

.field public final rail:Linfo/flowersoft/theotown/city/objects/Rail;

.field public final roads:[Linfo/flowersoft/theotown/city/objects/Road;

.field public final tree:Linfo/flowersoft/theotown/city/objects/Tree;

.field public final wires:[Linfo/flowersoft/theotown/city/objects/Wire;

.field public final zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/Tiles;II)V
    .registers 9

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    .line 947
    new-array v1, v0, [Linfo/flowersoft/theotown/city/objects/BusStop;

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->busStop:[Linfo/flowersoft/theotown/city/objects/BusStop;

    const/4 v1, 0x3

    .line 949
    new-array v1, v1, [Linfo/flowersoft/theotown/city/objects/Wire;

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->wires:[Linfo/flowersoft/theotown/city/objects/Wire;

    .line 952
    new-array v1, v0, [Linfo/flowersoft/theotown/city/objects/Road;

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->roads:[Linfo/flowersoft/theotown/city/objects/Road;

    .line 956
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v1, -0x2

    :goto_19
    const/16 v2, 0x10

    if-gt v1, v2, :cond_2a

    .line 959
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->roads:[Linfo/flowersoft/theotown/city/objects/Road;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_40

    .line 962
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->busStop:[Linfo/flowersoft/theotown/city/objects/BusStop;

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->roads:[Linfo/flowersoft/theotown/city/objects/Road;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v3

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 964
    :cond_40
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->tree:Linfo/flowersoft/theotown/city/objects/Tree;

    const/4 v0, -0x1

    :goto_47
    const/4 v1, 0x1

    if-gt v0, v1, :cond_57

    .line 966
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->wires:[Linfo/flowersoft/theotown/city/objects/Wire;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 969
    :cond_57
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 970
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->rail:Linfo/flowersoft/theotown/city/objects/Rail;

    return-void
.end method


# virtual methods
.method public isSame(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 10

    const/4 v0, -0x2

    move v1, v0

    :goto_2
    const/16 v2, 0x10

    const/4 v3, 0x0

    if-gt v1, v2, :cond_17

    .line 975
    invoke-virtual {p1, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->roads:[Linfo/flowersoft/theotown/city/objects/Road;

    add-int/lit8 v5, v1, 0x2

    aget-object v4, v4, v5

    if-eq v2, v4, :cond_14

    return v3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    :goto_17
    if-gt v0, v2, :cond_33

    .line 979
    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    .line 980
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->busStop:[Linfo/flowersoft/theotown/city/objects/BusStop;

    add-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    if-eqz v4, :cond_27

    if-eqz v1, :cond_2f

    :cond_27
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v1

    if-eq v4, v1, :cond_30

    :cond_2f
    return v3

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_33
    const/4 v0, -0x1

    :goto_34
    const/4 v1, 0x1

    if-gt v0, v1, :cond_47

    .line 984
    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v1

    .line 985
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->wires:[Linfo/flowersoft/theotown/city/objects/Wire;

    add-int/lit8 v4, v0, 0x1

    aget-object v2, v2, v4

    if-eq v2, v1, :cond_44

    return v3

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 988
    :cond_47
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-ne v0, v2, :cond_68

    .line 989
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->tree:Linfo/flowersoft/theotown/city/objects/Tree;

    if-ne v0, v2, :cond_68

    .line 990
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v2, :cond_68

    .line 991
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$TileGhost;->rail:Linfo/flowersoft/theotown/city/objects/Rail;

    if-ne p1, p2, :cond_68

    return v1

    :cond_68
    return v3
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:Linfo/flowersoft/theotown/components/DefaultSoundManager;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;ILinfo/flowersoft/theotown/components/DefaultSoundManager;IIII)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    iput p4, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    iget v3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda0;->f$6:I

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/RemoveTool;->$r8$lambda$M0FVDOvPMafQH0FqILI5cld0TtA(Linfo/flowersoft/theotown/tools/RemoveTool;ILinfo/flowersoft/theotown/components/DefaultSoundManager;IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda1 (info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/RemoveTool;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTool;->$r8$lambda$xO82drb4UIxA6EHsGDY9dN_0zu4(Linfo/flowersoft/theotown/tools/RemoveTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda2 (info.flowersoft.theotown.tools.RemoveTool$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Linfo/flowersoft/theotown/components/DefaultSoundManager;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTool;IIIILinfo/flowersoft/theotown/components/DefaultSoundManager;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$5:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tools/RemoveTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/RemoveTool$$ExternalSyntheticLambda2;->f$5:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/RemoveTool;->$r8$lambda$B7qwfr0itre_GaJuP9Xqaym5AKw(Linfo/flowersoft/theotown/tools/RemoveTool;IIIILinfo/flowersoft/theotown/components/DefaultSoundManager;)V

    return-void
.end method
