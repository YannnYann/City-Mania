###### Class ads_mobile_sdk.gs3 (ads_mobile_sdk.gs3)
.class public final Lads_mobile_sdk/gs3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lads_mobile_sdk/rr3;

.field public b:J

.field public c:Lads_mobile_sdk/fs3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rr3;JLads_mobile_sdk/fs3;)V
    .registers 5

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    .line 160
    iput-wide p2, p0, Lads_mobile_sdk/gs3;->b:J

    .line 161
    iput-object p4, p0, Lads_mobile_sdk/gs3;->c:Lads_mobile_sdk/fs3;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/rr3;
    .registers 2

    .line 159
    iget-object v0, p0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    return-object v0
.end method
