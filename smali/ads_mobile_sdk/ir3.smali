###### Class ads_mobile_sdk.ir3 (ads_mobile_sdk.ir3)
.class public final Lads_mobile_sdk/ir3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 5

    .line 2
    const-string v0, "label"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lads_mobile_sdk/ir3;->a:Ljava/lang/String;

    iput-wide p1, p0, Lads_mobile_sdk/ir3;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 190
    iget-wide v0, p0, Lads_mobile_sdk/ir3;->b:J

    return-wide v0
.end method
