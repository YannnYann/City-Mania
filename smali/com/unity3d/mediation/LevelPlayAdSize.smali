###### Class com.unity3d.mediation.LevelPlayAdSize (com.unity3d.mediation.LevelPlayAdSize)
.class public final Lcom/unity3d/mediation/LevelPlayAdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/mediation/LevelPlayAdSize$Companion;
    }
.end annotation


# static fields
.field public static final BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

.field public static final Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

.field public static final LARGE:Lcom/unity3d/mediation/LevelPlayAdSize;

.field public static final LEADERBOARD:Lcom/unity3d/mediation/LevelPlayAdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/unity3d/mediation/LevelPlayAdSize;

.field private static final f:I = 0x140

.field private static final g:I = 0x32

.field private static final h:I = 0x140

.field private static final i:I = 0x5a

.field private static final j:I = 0x12c

.field private static final k:I = 0xfa

.field private static final l:I = 0x2d8

.field private static final m:I = 0x5a


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/unity3d/mediation/LevelPlayAdSize;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/mediation/LevelPlayAdSize;->Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    .line 1
    new-instance v2, Lcom/unity3d/mediation/LevelPlayAdSize;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    const-string v5, "BANNER"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/unity3d/mediation/LevelPlayAdSize;->BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 5
    new-instance v3, Lcom/unity3d/mediation/LevelPlayAdSize;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    const-string v6, "MEDIUM_RECTANGLE"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/unity3d/mediation/LevelPlayAdSize;->MEDIUM_RECTANGLE:Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 9
    new-instance v4, Lcom/unity3d/mediation/LevelPlayAdSize;

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/16 v5, 0x2d8

    const/16 v6, 0x5a

    const-string v7, "LEADERBOARD"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/unity3d/mediation/LevelPlayAdSize;->LEADERBOARD:Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 11
    new-instance v5, Lcom/unity3d/mediation/LevelPlayAdSize;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/16 v6, 0x140

    const/16 v7, 0x5a

    const-string v8, "LARGE"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/unity3d/mediation/LevelPlayAdSize;->LARGE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->a:I

    .line 3
    iput p2, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->b:I

    .line 4
    iput-object p3, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->d:Z

    .line 6
    iput-object p5, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_11

    move-object p6, v0

    :goto_b
    move p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    goto :goto_13

    :cond_11
    move-object p6, p5

    goto :goto_b

    .line 7
    :goto_13
    invoke-direct/range {p1 .. p6}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;)V

    return-void
.end method

.method public static final createAdSize$mediationsdk_release(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 2

    .line 0
    sget-object v0, Lcom/unity3d/mediation/LevelPlayAdSize;->Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    invoke-virtual {v0, p0}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdSize$mediationsdk_release(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final createAdaptiveAdSize(Landroid/content/Context;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 2

    .line 1
    sget-object v0, Lcom/unity3d/mediation/LevelPlayAdSize;->Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    invoke-virtual {v0, p0}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdaptiveAdSize(Landroid/content/Context;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 3

    .line 2
    sget-object v0, Lcom/unity3d/mediation/LevelPlayAdSize;->Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final createCustomSize(II)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 3

    .line 0
    sget-object v0, Lcom/unity3d/mediation/LevelPlayAdSize;->Companion:Lcom/unity3d/mediation/LevelPlayAdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createCustomSize(II)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-class v2, Lcom/unity3d/mediation/LevelPlayAdSize;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 3
    :cond_16
    const-string v1, "null cannot be cast to non-null type com.unity3d.mediation.LevelPlayAdSize"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 5
    iget v1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->a:I

    iget v3, p1, Lcom/unity3d/mediation/LevelPlayAdSize;->a:I

    if-eq v1, v3, :cond_24

    return v2

    .line 6
    :cond_24
    iget v1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->b:I

    iget v3, p1, Lcom/unity3d/mediation/LevelPlayAdSize;->b:I

    if-eq v1, v3, :cond_2b

    return v2

    .line 7
    :cond_2b
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/unity3d/mediation/LevelPlayAdSize;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFallbackAdSize$mediationsdk_release()Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->e:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->b:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAdaptive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->c:Ljava/lang/String;

    iget v1, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->a:I

    iget v2, p0, Lcom/unity3d/mediation/LevelPlayAdSize;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.mediation.LevelPlayAdSize.Companion (com.unity3d.mediation.LevelPlayAdSize$Companion)
.class public final Lcom/unity3d/mediation/LevelPlayAdSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/LevelPlayAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createAdaptiveAdSize$default(Lcom/unity3d/mediation/LevelPlayAdSize$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createAdSize$mediationsdk_release(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 4

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c1d2fb

    if-eq v0, v1, :cond_3e

    const v1, 0x44dc31b

    if-eq v0, v1, :cond_33

    const v1, 0x1aa2fb5d

    if-eq v0, v1, :cond_28

    const v1, 0x7458732c

    if-ne v0, v1, :cond_49

    const-string v0, "BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 3
    :cond_28
    const-string v0, "LEADERBOARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 6
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->LEADERBOARD:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 7
    :cond_33
    const-string v0, "LARGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 11
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->LARGE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 12
    :cond_3e
    const-string v0, "MEDIUM_RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 14
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->MEDIUM_RECTANGLE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 17
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Ad Size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createAdaptiveAdSize(Landroid/content/Context;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdaptiveAdSize$default(Lcom/unity3d/mediation/LevelPlayAdSize$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p1

    return-object p1
.end method

.method public final createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/g1;

    new-instance v1, Lcom/ironsource/m0;

    invoke-direct {v1}, Lcom/ironsource/m0;-><init>()V

    invoke-direct {v0, v1}, Lcom/ironsource/g1;-><init>(Lcom/ironsource/m0;)V

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/g1;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p1

    return-object p1
.end method

.method public final createCustomSize(II)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 11

    .line 1
    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdSize;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, "CUSTOM"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
