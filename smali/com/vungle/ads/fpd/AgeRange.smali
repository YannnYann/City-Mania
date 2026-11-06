###### Class com.vungle.ads.fpd.AgeRange (com.vungle.ads.fpd.AgeRange)
.class public final enum Lcom/vungle/ads/fpd/AgeRange;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/AgeRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/AgeRange;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

.field public static final Companion:Lcom/vungle/ads/fpd/AgeRange$Companion;

.field public static final enum OTHERS:Lcom/vungle/ads/fpd/AgeRange;

.field public static final synthetic c:[Lcom/vungle/ads/fpd/AgeRange;


# instance fields
.field public final a:I

.field public final b:Lkotlin/ranges/IntRange;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x12

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_18_20"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

    .line 2
    new-instance v1, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v5, 0x15

    const/16 v6, 0x1e

    invoke-direct {v2, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v5, "AGE_21_30"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v4, v6, v2}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

    .line 3
    new-instance v2, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v4, Lkotlin/ranges/IntRange;

    const/16 v5, 0x1f

    const/16 v7, 0x28

    invoke-direct {v4, v5, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v5, "AGE_31_40"

    const/4 v7, 0x3

    invoke-direct {v2, v5, v6, v7, v4}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v2, Lcom/vungle/ads/fpd/AgeRange;->AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

    move v4, v3

    .line 4
    new-instance v3, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v5, Lkotlin/ranges/IntRange;

    const/16 v6, 0x29

    const/16 v8, 0x32

    invoke-direct {v5, v6, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v6, "AGE_41_50"

    const/4 v8, 0x4

    invoke-direct {v3, v6, v7, v8, v5}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v3, Lcom/vungle/ads/fpd/AgeRange;->AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

    move v5, v4

    .line 5
    new-instance v4, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v6, Lkotlin/ranges/IntRange;

    const/16 v7, 0x33

    const/16 v9, 0x3c

    invoke-direct {v6, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v7, "AGE_51_60"

    const/4 v9, 0x5

    invoke-direct {v4, v7, v8, v9, v6}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v4, Lcom/vungle/ads/fpd/AgeRange;->AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

    move v6, v5

    .line 6
    new-instance v5, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v7, Lkotlin/ranges/IntRange;

    const/16 v8, 0x3d

    const/16 v10, 0x46

    invoke-direct {v7, v8, v10}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v8, "AGE_61_70"

    const/4 v10, 0x6

    invoke-direct {v5, v8, v9, v10, v7}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v5, Lcom/vungle/ads/fpd/AgeRange;->AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

    move v7, v6

    .line 7
    new-instance v6, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v8, Lkotlin/ranges/IntRange;

    const/16 v9, 0x47

    const/16 v11, 0x4b

    invoke-direct {v8, v9, v11}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v9, "AGE_71_75"

    const/4 v11, 0x7

    invoke-direct {v6, v9, v10, v11, v8}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v6, Lcom/vungle/ads/fpd/AgeRange;->AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

    move v8, v7

    .line 8
    new-instance v7, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v9, Lkotlin/ranges/IntRange;

    const/high16 v10, -0x80000000

    const v12, 0x7fffffff

    invoke-direct {v9, v10, v12}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v10, "OTHERS"

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v7, Lcom/vungle/ads/fpd/AgeRange;->OTHERS:Lcom/vungle/ads/fpd/AgeRange;

    .line 9
    filled-new-array/range {v0 .. v7}, [Lcom/vungle/ads/fpd/AgeRange;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->c:[Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/AgeRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->Companion:Lcom/vungle/ads/fpd/AgeRange$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vungle/ads/fpd/AgeRange;->a:I

    iput-object p4, p0, Lcom/vungle/ads/fpd/AgeRange;->b:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/AgeRange;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/fpd/AgeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/fpd/AgeRange;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/AgeRange;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/fpd/AgeRange;->c:[Lcom/vungle/ads/fpd/AgeRange;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/fpd/AgeRange;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/fpd/AgeRange;->a:I

    return v0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/fpd/AgeRange;->b:Lkotlin/ranges/IntRange;

    return-object v0
.end method

###### Class com.vungle.ads.fpd.AgeRange.Companion (com.vungle.ads.fpd.AgeRange$Companion)
.class public final Lcom/vungle/ads/fpd/AgeRange$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/AgeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/fpd/AgeRange$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromAge$vungle_ads_release(I)Lcom/vungle/ads/fpd/AgeRange;
    .registers 8

    .line 1
    invoke-static {}, Lcom/vungle/ads/fpd/AgeRange;->values()[Lcom/vungle/ads/fpd/AgeRange;

    move-result-object v0

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3}, Lcom/vungle/ads/fpd/AgeRange;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    if-gt p1, v4, :cond_1b

    if-gt v5, p1, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-nez v3, :cond_24

    sget-object p1, Lcom/vungle/ads/fpd/AgeRange;->OTHERS:Lcom/vungle/ads/fpd/AgeRange;

    return-object p1

    :cond_24
    return-object v3
.end method
