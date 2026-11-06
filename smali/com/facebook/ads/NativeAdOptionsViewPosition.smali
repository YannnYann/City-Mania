###### Class com.facebook.ads.NativeAdOptionsViewPosition (com.facebook.ads.NativeAdOptionsViewPosition)
.class public final enum Lcom/facebook/ads/NativeAdOptionsViewPosition;
.super Ljava/lang/Enum;
.source "NativeAdOptionsViewPosition.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/NativeAdOptionsViewPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/NativeAdOptionsViewPosition;

.field public static final enum BOTTOM_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

.field public static final enum BOTTOM_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

.field public static final enum TOP_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

.field public static final enum TOP_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/NativeAdOptionsViewPosition;
    .registers 4

    .line 20
    sget-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->TOP_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    sget-object v1, Lcom/facebook/ads/NativeAdOptionsViewPosition;->TOP_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    sget-object v2, Lcom/facebook/ads/NativeAdOptionsViewPosition;->BOTTOM_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    sget-object v3, Lcom/facebook/ads/NativeAdOptionsViewPosition;->BOTTOM_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/facebook/ads/NativeAdOptionsViewPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdOptionsViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->TOP_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    .line 25
    new-instance v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdOptionsViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->TOP_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    .line 27
    new-instance v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdOptionsViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->BOTTOM_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    .line 29
    new-instance v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdOptionsViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->BOTTOM_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    .line 20
    invoke-static {}, Lcom/facebook/ads/NativeAdOptionsViewPosition;->$values()[Lcom/facebook/ads/NativeAdOptionsViewPosition;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->$VALUES:[Lcom/facebook/ads/NativeAdOptionsViewPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAdOptionsViewPosition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    const-class v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAdOptionsViewPosition;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/NativeAdOptionsViewPosition;
    .registers 1

    .line 20
    sget-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->$VALUES:[Lcom/facebook/ads/NativeAdOptionsViewPosition;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAdOptionsViewPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAdOptionsViewPosition;

    return-object v0
.end method
