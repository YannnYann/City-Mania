###### Class ads_mobile_sdk.km (ads_mobile_sdk.km)
.class public final Lads_mobile_sdk/km;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ur3;

.field public c:F

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ur3;)V
    .registers 4

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/km;->a:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lads_mobile_sdk/km;->b:Lads_mobile_sdk/ur3;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lads_mobile_sdk/km;->c:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 2

    .line 44
    iput p1, p0, Lads_mobile_sdk/km;->c:F

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lads_mobile_sdk/km;->d:Z

    return-void
.end method
