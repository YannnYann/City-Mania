###### Class com.vungle.ads.internal.privacy.COPPA (com.vungle.ads.internal.privacy.COPPA)
.class public final enum Lcom/vungle/ads/internal/privacy/COPPA;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/privacy/COPPA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/privacy/COPPA;

.field public static final enum COPPA_DISABLED:Lcom/vungle/ads/internal/privacy/COPPA;

.field public static final enum COPPA_ENABLED:Lcom/vungle/ads/internal/privacy/COPPA;

.field public static final enum COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;


# instance fields
.field private final value:Ljava/lang/Boolean;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/privacy/COPPA;
    .registers 3

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_ENABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    sget-object v1, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_DISABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    sget-object v2, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    filled-new-array {v0, v1, v2}, [Lcom/vungle/ads/internal/privacy/COPPA;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/privacy/COPPA;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "COPPA_ENABLED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vungle/ads/internal/privacy/COPPA;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_ENABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    new-instance v0, Lcom/vungle/ads/internal/privacy/COPPA;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "COPPA_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vungle/ads/internal/privacy/COPPA;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_DISABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    new-instance v0, Lcom/vungle/ads/internal/privacy/COPPA;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "COPPA_NOTSET"

    invoke-direct {v0, v3, v1, v2}, Lcom/vungle/ads/internal/privacy/COPPA;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/COPPA;->$values()[Lcom/vungle/ads/internal/privacy/COPPA;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->$VALUES:[Lcom/vungle/ads/internal/privacy/COPPA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/vungle/ads/internal/privacy/COPPA;->value:Ljava/lang/Boolean;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/privacy/COPPA;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/privacy/COPPA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/privacy/COPPA;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/privacy/COPPA;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->$VALUES:[Lcom/vungle/ads/internal/privacy/COPPA;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/privacy/COPPA;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/privacy/COPPA;->value:Ljava/lang/Boolean;

    return-object v0
.end method
