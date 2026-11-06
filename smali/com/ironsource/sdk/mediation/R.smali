###### Class com.ironsource.sdk.mediation.R (com.ironsource.sdk.mediation.R)
.class public final Lcom/ironsource/sdk/mediation/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/mediation/R$attr;,
        Lcom/ironsource/sdk/mediation/R$id;,
        Lcom/ironsource/sdk/mediation/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.mediation.R.attr (com.ironsource.sdk.mediation.R$attr)
.class public final Lcom/ironsource/sdk/mediation/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/mediation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static adSize:I = 0x7f040028

.field public static adUnitId:I = 0x7f040029

.field public static bidFloor:I = 0x7f040082


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.mediation.R.id (com.ironsource.sdk.mediation.R$id)
.class public final Lcom/ironsource/sdk/mediation/R$id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/mediation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static privacy_icon_button:I = 0x7f0a01d1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.mediation.R.styleable (com.ironsource.sdk.mediation.R$styleable)
.class public final Lcom/ironsource/sdk/mediation/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/mediation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static LevelPlayBannerAdView:[I = null

.field public static LevelPlayBannerAdView_adSize:I = 0x0

.field public static LevelPlayBannerAdView_adUnitId:I = 0x1

.field public static LevelPlayBannerAdView_bidFloor:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 0
    const v0, 0x7f040029

    const v1, 0x7f040082

    const v2, 0x7f040028

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/mediation/R$styleable;->LevelPlayBannerAdView:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
