###### Class com.vungle.ads.internal.network.g (com.vungle.ads.internal.network.g)
.class public final enum Lcom/vungle/ads/internal/network/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/f;

.field public static final enum a:Lcom/vungle/ads/internal/network/g;

.field public static final enum b:Lcom/vungle/ads/internal/network/g;

.field public static final synthetic c:[Lcom/vungle/ads/internal/network/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/network/g;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/network/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/network/g;->a:Lcom/vungle/ads/internal/network/g;

    new-instance v1, Lcom/vungle/ads/internal/network/g;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vungle/ads/internal/network/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vungle/ads/internal/network/g;->b:Lcom/vungle/ads/internal/network/g;

    .line 2
    filled-new-array {v0, v1}, [Lcom/vungle/ads/internal/network/g;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/vungle/ads/internal/network/g;->c:[Lcom/vungle/ads/internal/network/g;

    new-instance v0, Lcom/vungle/ads/internal/network/f;

    .line 4
    invoke-direct {v0}, Lcom/vungle/ads/internal/network/f;-><init>()V

    .line 5
    sput-object v0, Lcom/vungle/ads/internal/network/g;->Companion:Lcom/vungle/ads/internal/network/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/network/g;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/network/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/g;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/network/g;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/network/g;->c:[Lcom/vungle/ads/internal/network/g;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/network/g;

    return-object v0
.end method

###### Class com.vungle.ads.internal.network.f (com.vungle.ads.internal.network.f)
.class public final Lcom/vungle/ads/internal/network/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vungle/ads/internal/network/g;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/network/e;->a:Lcom/vungle/ads/internal/network/e;

    return-object v0
.end method
