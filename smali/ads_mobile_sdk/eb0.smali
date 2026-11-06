###### Class ads_mobile_sdk.eb0 (ads_mobile_sdk.eb0)
.class public final Lads_mobile_sdk/eb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lads_mobile_sdk/ir3;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/ir3;J)V
    .registers 6

    .line 1
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lads_mobile_sdk/eb0;->a:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lads_mobile_sdk/eb0;->b:Lads_mobile_sdk/ir3;

    .line 195
    iput-wide p3, p0, Lads_mobile_sdk/eb0;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 195
    iget-wide v0, p0, Lads_mobile_sdk/eb0;->c:J

    return-wide v0
.end method
