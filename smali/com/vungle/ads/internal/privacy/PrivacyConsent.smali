###### Class com.vungle.ads.internal.privacy.PrivacyConsent (com.vungle.ads.internal.privacy.PrivacyConsent)
.class public final enum Lcom/vungle/ads/internal/privacy/PrivacyConsent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/privacy/PrivacyConsent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/privacy/PrivacyConsent;

.field public static final enum OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

.field public static final enum OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

.field public static final enum UNKNOWN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/privacy/PrivacyConsent;
    .registers 3

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->UNKNOWN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    filled-new-array {v0, v1, v2}, [Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->UNKNOWN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    const/4 v1, 0x1

    const-string v2, "opted_in"

    const-string v3, "OPT_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 3
    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    const/4 v1, 0x2

    const-string v2, "opted_out"

    const-string v3, "OPT_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->$values()[Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->$VALUES:[Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/privacy/PrivacyConsent;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/privacy/PrivacyConsent;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->$VALUES:[Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->value:Ljava/lang/String;

    return-object v0
.end method
