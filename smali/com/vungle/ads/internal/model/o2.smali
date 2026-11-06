###### Class com.vungle.ads.internal.model.o2 (com.vungle.ads.internal.model.o2)
.class public final enum Lcom/vungle/ads/internal/model/o2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/LinkedHashMap;

.field public static final synthetic c:[Lcom/vungle/ads/internal/model/o2;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/o2;

    const-string v1, "ALLOW_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/vungle/ads/internal/model/o2;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/vungle/ads/internal/model/o2;

    const-string v3, "DISABLE_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/vungle/ads/internal/model/o2;-><init>(Ljava/lang/String;II)V

    .line 3
    new-instance v3, Lcom/vungle/ads/internal/model/o2;

    const-string v4, "LEGACY"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/vungle/ads/internal/model/o2;-><init>(Ljava/lang/String;II)V

    .line 4
    filled-new-array {v0, v1, v3}, [Lcom/vungle/ads/internal/model/o2;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/vungle/ads/internal/model/o2;->c:[Lcom/vungle/ads/internal/model/o2;

    .line 8
    invoke-static {}, Lcom/vungle/ads/internal/model/o2;->values()[Lcom/vungle/ads/internal/model/o2;

    move-result-object v0

    .line 76
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 77
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 78
    array-length v1, v0

    :goto_33
    if-ge v2, v1, :cond_43

    aget-object v4, v0, v2

    .line 79
    iget v5, v4, Lcom/vungle/ads/internal/model/o2;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_43
    sput-object v3, Lcom/vungle/ads/internal/model/o2;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vungle/ads/internal/model/o2;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/model/o2;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/model/o2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/model/o2;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/model/o2;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/model/o2;->c:[Lcom/vungle/ads/internal/model/o2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/model/o2;

    return-object v0
.end method
