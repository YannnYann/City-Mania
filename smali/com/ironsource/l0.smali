###### Class com.ironsource.C3698l0 (com.ironsource.l0)
.class public final Lcom/ironsource/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/l0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/l0;

    invoke-direct {v0}, Lcom/ironsource/l0;-><init>()V

    sput-object v0, Lcom/ironsource/l0;->a:Lcom/ironsource/l0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()I
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const v0, 0xf4240

    .line 6
    :try_start_b
    invoke-static {v0}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return v2
.end method

.method public static final a(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_21

    invoke-static {}, Lcom/ironsource/l0;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_14

    goto :goto_21

    .line 14
    :cond_14
    :try_start_14
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    :cond_21
    :goto_21
    return-object v2
.end method

.method public static synthetic b()V
    .registers 0

    .line 0
    return-void
.end method
