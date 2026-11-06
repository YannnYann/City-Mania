###### Class info.flowersoft.theotown.city.GameMode (info.flowersoft.theotown.city.GameMode)
.class public abstract enum Linfo/flowersoft/theotown/city/GameMode;
.super Ljava/lang/Enum;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/city/GameMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum DEVELOPER:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum EASY:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum FREE:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum HARD:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

.field public static final enum TEST:Linfo/flowersoft/theotown/city/GameMode;


# instance fields
.field public final descId:I

.field public final infinityMoney:Z

.field public final localizationId:I

.field public final moneyAtStart:I

.field public final noGameLogic:Z

.field public final priceFactor:F


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/city/GameMode;
    .registers 8

    .line 10
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v2, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v3, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v4, Linfo/flowersoft/theotown/city/GameMode;->NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v5, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v6, Linfo/flowersoft/theotown/city/GameMode;->DEVELOPER:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v7, Linfo/flowersoft/theotown/city/GameMode;->TEST:Linfo/flowersoft/theotown/city/GameMode;

    filled-new-array/range {v0 .. v7}, [Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 11
    new-instance v0, Linfo/flowersoft/theotown/city/GameMode$1;

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v1, "SANDBOX"

    const/4 v2, 0x0

    const/16 v3, 0xa40

    const/16 v4, 0xa21

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/GameMode$1;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v0, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    .line 18
    new-instance v1, Linfo/flowersoft/theotown/city/GameMode$2;

    const v6, 0x186a0

    const/high16 v7, 0x3f800000    # 1.0f

    const-string v2, "EASY"

    const/4 v3, 0x1

    const/16 v4, 0xc01

    const/16 v5, 0x75d

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/city/GameMode$2;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v1, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    .line 25
    new-instance v2, Linfo/flowersoft/theotown/city/GameMode$3;

    const v7, 0xc350

    const v8, 0x3f99999a    # 1.2f

    const-string v3, "MIDDLE"

    const/4 v4, 0x2

    const/16 v5, 0x8da

    const/16 v6, 0xa7e

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/city/GameMode$3;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v2, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    .line 32
    new-instance v3, Linfo/flowersoft/theotown/city/GameMode$4;

    const/16 v8, 0x2710

    const/high16 v9, 0x40000000    # 2.0f

    const-string v4, "HARD"

    const/4 v5, 0x3

    const/16 v6, 0xc62

    const/16 v7, 0x51a

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/city/GameMode$4;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v3, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    .line 39
    new-instance v4, Linfo/flowersoft/theotown/city/GameMode$5;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v5, "NOLOGIC"

    const/4 v6, 0x4

    const/16 v7, 0xd4a

    const/16 v8, 0xd4a

    invoke-direct/range {v4 .. v10}, Linfo/flowersoft/theotown/city/GameMode$5;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v4, Linfo/flowersoft/theotown/city/GameMode;->NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

    .line 46
    new-instance v5, Linfo/flowersoft/theotown/city/GameMode$6;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const-string v6, "FREE"

    const/4 v7, 0x5

    const/16 v8, 0x15b

    const/16 v9, 0x13b

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/city/GameMode$6;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v5, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    .line 53
    new-instance v6, Linfo/flowersoft/theotown/city/GameMode$7;

    const/4 v11, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const-string v7, "DEVELOPER"

    const/4 v8, 0x6

    const/16 v9, 0x16e

    const/16 v10, 0x16e

    invoke-direct/range {v6 .. v12}, Linfo/flowersoft/theotown/city/GameMode$7;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v6, Linfo/flowersoft/theotown/city/GameMode;->DEVELOPER:Linfo/flowersoft/theotown/city/GameMode;

    .line 64
    new-instance v7, Linfo/flowersoft/theotown/city/GameMode$8;

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const-string v8, "TEST"

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/city/GameMode$8;-><init>(Ljava/lang/String;IIIIF)V

    sput-object v7, Linfo/flowersoft/theotown/city/GameMode;->TEST:Linfo/flowersoft/theotown/city/GameMode;

    .line 10
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->$values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/GameMode;->$VALUES:[Linfo/flowersoft/theotown/city/GameMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIF)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Linfo/flowersoft/theotown/city/GameMode;->localizationId:I

    .line 80
    iput p4, p0, Linfo/flowersoft/theotown/city/GameMode;->descId:I

    .line 81
    iput p5, p0, Linfo/flowersoft/theotown/city/GameMode;->moneyAtStart:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-gez p5, :cond_f

    move p3, p2

    goto :goto_10

    :cond_f
    move p3, p1

    .line 82
    :goto_10
    iput-boolean p3, p0, Linfo/flowersoft/theotown/city/GameMode;->infinityMoney:Z

    const/4 p3, -0x1

    if-ge p5, p3, :cond_16

    move p1, p2

    .line 83
    :cond_16
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/GameMode;->noGameLogic:Z

    .line 84
    iput p6, p0, Linfo/flowersoft/theotown/city/GameMode;->priceFactor:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V
    .registers 8

    .line 10
    invoke-direct/range {p0 .. p6}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIF)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/GameMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Linfo/flowersoft/theotown/city/GameMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/GameMode;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/city/GameMode;
    .registers 1

    .line 10
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->$VALUES:[Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/city/GameMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/city/GameMode;

    return-object v0
.end method


# virtual methods
.method public buildImmediately()Z
    .registers 2

    .line 126
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->DEVELOPER:Linfo/flowersoft/theotown/city/GameMode;

    if-eq p0, v0, :cond_13

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_11

    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    if-eq p0, v0, :cond_11

    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    if-eq p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public getDescriptionId()I
    .registers 2

    .line 92
    iget v0, p0, Linfo/flowersoft/theotown/city/GameMode;->descId:I

    return v0
.end method

.method public abstract getIcon()I
.end method

.method public getLocalizationId()I
    .registers 2

    .line 88
    iget v0, p0, Linfo/flowersoft/theotown/city/GameMode;->localizationId:I

    return v0
.end method

.method public getMoneyAtStart()I
    .registers 2

    .line 96
    iget v0, p0, Linfo/flowersoft/theotown/city/GameMode;->moneyAtStart:I

    return v0
.end method

.method public getPriceFactor()F
    .registers 2

    .line 114
    iget v0, p0, Linfo/flowersoft/theotown/city/GameMode;->priceFactor:F

    return v0
.end method

.method public hasGameLogic()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/GameMode;->noGameLogic:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasInfiniteIdleMoney()Z
    .registers 2

    .line 122
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInfinityMoney()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/GameMode;->infinityMoney:Z

    return v0
.end method

.method public hasRequirements()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public peopleMayLeave()Z
    .registers 2

    .line 118
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass1 (info.flowersoft.theotown.city.GameMode$1)
.class final enum Linfo/flowersoft/theotown/city/GameMode$1;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 14
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_SANDBOX:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass2 (info.flowersoft.theotown.city.GameMode$2)
.class final enum Linfo/flowersoft/theotown/city/GameMode$2;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 18
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 21
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass3 (info.flowersoft.theotown.city.GameMode$3)
.class final enum Linfo/flowersoft/theotown/city/GameMode$3;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 25
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 28
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_MIDDLE:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass4 (info.flowersoft.theotown.city.GameMode$4)
.class final enum Linfo/flowersoft/theotown/city/GameMode$4;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 32
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_ILLNESS:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass5 (info.flowersoft.theotown.city.GameMode$5)
.class final enum Linfo/flowersoft/theotown/city/GameMode$5;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 39
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 42
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass6 (info.flowersoft.theotown.city.GameMode$6)
.class final enum Linfo/flowersoft/theotown/city/GameMode$6;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 46
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 49
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass7 (info.flowersoft.theotown.city.GameMode$7)
.class final enum Linfo/flowersoft/theotown/city/GameMode$7;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 53
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 56
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.GameMode.AnonymousClass8 (info.flowersoft.theotown.city.GameMode$8)
.class final enum Linfo/flowersoft/theotown/city/GameMode$8;
.super Linfo/flowersoft/theotown/city/GameMode;
.source "GameMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/GameMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 64
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/GameMode;-><init>(Ljava/lang/String;IIIIFLinfo/flowersoft/theotown/city/GameMode$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
