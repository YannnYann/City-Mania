###### Class info.flowersoft.theotown.city.objects.CrimeType (info.flowersoft.theotown.city.objects.CrimeType)
.class public final enum Linfo/flowersoft/theotown/city/objects/CrimeType;
.super Ljava/lang/Enum;
.source "CrimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/city/objects/CrimeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public static final enum BURGLARY:Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public static final enum GRAFFITI:Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public static final enum MURDER:Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public static final enum RIOT:Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public static cachedValues:[Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public static idToCrime:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/city/objects/CrimeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final iconGetter:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/draft/AnimationDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I


# direct methods
.method public static synthetic $r8$lambda$GrqPND5R0pygYD7FLh4V3h6klvE()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 15
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getCrimeRiot()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$SQjCKQJnfvBmcXcoO4MN7kO-lXk()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 14
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getCrimeMurder()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VILE226b9zig60jHQ3pJHDikHBM()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 12
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getCrimeGraffiti()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ijG8ywkJ0Gv9bH8GVjCD4B3asCo()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 13
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getCrimeBurglary()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $values()[Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 4

    .line 11
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->GRAFFITI:Linfo/flowersoft/theotown/city/objects/CrimeType;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/CrimeType;->BURGLARY:Linfo/flowersoft/theotown/city/objects/CrimeType;

    sget-object v2, Linfo/flowersoft/theotown/city/objects/CrimeType;->MURDER:Linfo/flowersoft/theotown/city/objects/CrimeType;

    sget-object v3, Linfo/flowersoft/theotown/city/objects/CrimeType;->RIOT:Linfo/flowersoft/theotown/city/objects/CrimeType;

    filled-new-array {v0, v1, v2, v3}, [Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    new-instance v1, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "GRAFFITI"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;-><init>(Ljava/lang/String;IILio/blueflower/stapel2d/util/Getter;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->GRAFFITI:Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 13
    new-instance v0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    new-instance v1, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "BURGLARY"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;-><init>(Ljava/lang/String;IILio/blueflower/stapel2d/util/Getter;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->BURGLARY:Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    new-instance v1, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "MURDER"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v3, v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;-><init>(Ljava/lang/String;IILio/blueflower/stapel2d/util/Getter;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->MURDER:Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    new-instance v1, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "RIOT"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v3, v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;-><init>(Ljava/lang/String;IILio/blueflower/stapel2d/util/Getter;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->RIOT:Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 11
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->$values()[Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->$VALUES:[Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILio/blueflower/stapel2d/util/Getter;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/draft/AnimationDraft;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/CrimeType;->id:I

    .line 27
    iput-object p4, p0, Linfo/flowersoft/theotown/city/objects/CrimeType;->iconGetter:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public static cachedValues()[Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 1

    .line 39
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->cachedValues:[Linfo/flowersoft/theotown/city/objects/CrimeType;

    if-nez v0, :cond_a

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->values()[Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->cachedValues:[Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 42
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->cachedValues:[Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object v0
.end method

.method public static resolveId(I)Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 5

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->idToCrime:Lcom/badlogic/gdx/utils/IntMap;

    if-nez v0, :cond_29

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->idToCrime:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v0, 0x0

    .line 48
    :goto_c
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->cachedValues()[Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 49
    sget-object v1, Linfo/flowersoft/theotown/city/objects/CrimeType;->idToCrime:Lcom/badlogic/gdx/utils/IntMap;

    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->cachedValues()[Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v2

    aget-object v2, v2, v0

    iget v2, v2, Linfo/flowersoft/theotown/city/objects/CrimeType;->id:I

    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->cachedValues()[Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 52
    :cond_29
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->idToCrime:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->idToCrime:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object p0

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 1

    .line 11
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->$VALUES:[Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/city/objects/CrimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object v0
.end method


# virtual methods
.method public getBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/CrimeType;->iconGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 31
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/CrimeType;->id:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda0 (info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->$r8$lambda$VILE226b9zig60jHQ3pJHDikHBM()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda1 (info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->$r8$lambda$ijG8ywkJ0Gv9bH8GVjCD4B3asCo()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda2 (info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->$r8$lambda$SQjCKQJnfvBmcXcoO4MN7kO-lXk()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda3 (info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/city/objects/CrimeType$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/CrimeType;->$r8$lambda$GrqPND5R0pygYD7FLh4V3h6klvE()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method
