###### Class ads_mobile_sdk.u41 (ads_mobile_sdk.u41)
.class public final Lads_mobile_sdk/u41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lads_mobile_sdk/u41;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 23
    iput-wide v0, p0, Lads_mobile_sdk/u41;->b:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p3, p0, Lads_mobile_sdk/u41;->a:Ljava/lang/String;

    .line 27
    iput-wide p1, p0, Lads_mobile_sdk/u41;->b:J

    return-void
.end method
