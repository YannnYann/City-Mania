###### Class io.bidmachine.BannerAdSize (io.bidmachine.BannerAdSize)
.class public final Lio/bidmachine/BannerAdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BannerAdSize$Companion;
    }
.end annotation


# static fields
.field public static final Banner:Lio/bidmachine/BannerAdSize;

.field public static final Companion:Lio/bidmachine/BannerAdSize$Companion;

.field private static final FIXED_BANNER_AD_SIZES:[Lio/bidmachine/BannerAdSize;

.field public static final Leaderboard:Lio/bidmachine/BannerAdSize;

.field public static final MediumRectangle:Lio/bidmachine/BannerAdSize;

.field public static final Undefined:Lio/bidmachine/BannerAdSize;


# instance fields
.field private final height:I

.field private final isAdaptive:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lio/bidmachine/BannerAdSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/BannerAdSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/BannerAdSize;->Companion:Lio/bidmachine/BannerAdSize$Companion;

    .line 1
    new-instance v2, Lio/bidmachine/BannerAdSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/BannerAdSize;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    .line 4
    new-instance v3, Lio/bidmachine/BannerAdSize;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v4, 0x2d8

    const/16 v5, 0x5a

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/BannerAdSize;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    .line 7
    new-instance v4, Lio/bidmachine/BannerAdSize;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x12c

    const/16 v6, 0xfa

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/BannerAdSize;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lio/bidmachine/BannerAdSize;->MediumRectangle:Lio/bidmachine/BannerAdSize;

    .line 10
    new-instance v5, Lio/bidmachine/BannerAdSize;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lio/bidmachine/BannerAdSize;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lio/bidmachine/BannerAdSize;->Undefined:Lio/bidmachine/BannerAdSize;

    .line 44
    filled-new-array {v2, v3, v4}, [Lio/bidmachine/BannerAdSize;

    move-result-object v0

    .line 45
    sput-object v0, Lio/bidmachine/BannerAdSize;->FIXED_BANNER_AD_SIZES:[Lio/bidmachine/BannerAdSize;

    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/bidmachine/BannerAdSize;->width:I

    .line 4
    iput p2, p0, Lio/bidmachine/BannerAdSize;->height:I

    .line 5
    iput-boolean p3, p0, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/BannerAdSize;-><init>(IIZ)V

    return-void
.end method

.method public synthetic constructor <init>(IIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/BannerAdSize;-><init>(IIZ)V

    return-void
.end method

.method public static final synthetic access$getFIXED_BANNER_AD_SIZES$cp()[Lio/bidmachine/BannerAdSize;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/BannerAdSize;->FIXED_BANNER_AD_SIZES:[Lio/bidmachine/BannerAdSize;

    return-object v0
.end method

.method public static final adaptive(II)Lio/bidmachine/BannerAdSize;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/BannerAdSize;->Companion:Lio/bidmachine/BannerAdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/BannerAdSize$Companion;->adaptive(II)Lio/bidmachine/BannerAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final firstFixedOrNull(II)Lio/bidmachine/BannerAdSize;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/BannerAdSize;->Companion:Lio/bidmachine/BannerAdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/BannerAdSize$Companion;->firstFixedOrNull(II)Lio/bidmachine/BannerAdSize;

    move-result-object p0

    return-object p0
.end method

.method public static final getMaxAdaptiveHeight(I)I
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/BannerAdSize;->Companion:Lio/bidmachine/BannerAdSize$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/BannerAdSize$Companion;->getMaxAdaptiveHeight(I)I

    move-result p0

    return p0
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
    const-class v2, Lio/bidmachine/BannerAdSize;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 3
    :cond_16
    const-string v1, "null cannot be cast to non-null type io.bidmachine.BannerAdSize"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/bidmachine/BannerAdSize;

    .line 5
    iget v1, p0, Lio/bidmachine/BannerAdSize;->width:I

    iget v3, p1, Lio/bidmachine/BannerAdSize;->width:I

    if-eq v1, v3, :cond_24

    return v2

    .line 6
    :cond_24
    iget v1, p0, Lio/bidmachine/BannerAdSize;->height:I

    iget v3, p1, Lio/bidmachine/BannerAdSize;->height:I

    if-eq v1, v3, :cond_2b

    return v2

    .line 7
    :cond_2b
    iget-boolean v1, p0, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    iget-boolean p1, p1, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    if-eq v1, p1, :cond_32

    return v2

    :cond_32
    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/BannerAdSize;->height:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/BannerAdSize;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/BannerAdSize;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lio/bidmachine/BannerAdSize;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAdaptive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    return v0
.end method

.method public final isSuitable(II)Z
    .registers 4

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    if-eqz v0, :cond_f

    .line 3
    iget v0, p0, Lio/bidmachine/BannerAdSize;->width:I

    if-lt v0, p1, :cond_19

    iget p1, p0, Lio/bidmachine/BannerAdSize;->height:I

    if-eqz p1, :cond_17

    if-lt p1, p2, :cond_19

    goto :goto_17

    .line 5
    :cond_f
    iget v0, p0, Lio/bidmachine/BannerAdSize;->width:I

    if-ne v0, p1, :cond_19

    iget p1, p0, Lio/bidmachine/BannerAdSize;->height:I

    if-ne p1, p2, :cond_19

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final isSuitable(Lio/bidmachine/BannerAdSize;)Z
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lio/bidmachine/BannerAdSize;->width:I

    iget p1, p1, Lio/bidmachine/BannerAdSize;->height:I

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/BannerAdSize;->isSuitable(II)Z

    move-result p1

    return p1
.end method

.method public final toSize()Landroid/util/Size;
    .registers 4

    .line 1
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lio/bidmachine/BannerAdSize;->width:I

    iget v2, p0, Lio/bidmachine/BannerAdSize;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BannerAdSize(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/BannerAdSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/BannerAdSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAdaptive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/bidmachine/BannerAdSize;->isAdaptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BannerAdSize.Companion (io.bidmachine.BannerAdSize$Companion)
.class public final Lio/bidmachine/BannerAdSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BannerAdSize;
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
    invoke-direct {p0}, Lio/bidmachine/BannerAdSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final adaptive(II)Lio/bidmachine/BannerAdSize;
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/BannerAdSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lio/bidmachine/BannerAdSize;-><init>(IIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final firstFixedOrNull(II)Lio/bidmachine/BannerAdSize;
    .registers 8

    .line 1
    invoke-static {}, Lio/bidmachine/BannerAdSize;->access$getFIXED_BANNER_AD_SIZES$cp()[Lio/bidmachine/BannerAdSize;

    move-result-object v0

    .line 11
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 12
    invoke-virtual {v3, p1, p2}, Lio/bidmachine/BannerAdSize;->isSuitable(II)Z

    move-result v4

    if-eqz v4, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getMaxAdaptiveHeight(I)I
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    invoke-virtual {v0}, Lio/bidmachine/BannerAdSize;->getWidth()I

    move-result v1

    if-lt p1, v1, :cond_d

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/BannerAdSize;->getHeight()I

    move-result p1

    return p1

    .line 4
    :cond_d
    sget-object p1, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->getHeight()I

    move-result p1

    return p1
.end method
