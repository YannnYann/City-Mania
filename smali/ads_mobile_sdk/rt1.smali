###### Class ads_mobile_sdk.rt1 (ads_mobile_sdk.rt1)
.class public final Lads_mobile_sdk/rt1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/Throwable;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(IJLjava/lang/Throwable;Ljava/lang/String;J)V
    .registers 8

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p1, p0, Lads_mobile_sdk/rt1;->a:I

    .line 345
    iput-wide p2, p0, Lads_mobile_sdk/rt1;->b:J

    .line 346
    iput-object p4, p0, Lads_mobile_sdk/rt1;->c:Ljava/lang/Throwable;

    .line 347
    iput-object p5, p0, Lads_mobile_sdk/rt1;->d:Ljava/lang/String;

    .line 348
    iput-wide p6, p0, Lads_mobile_sdk/rt1;->e:J

    return-void
.end method
