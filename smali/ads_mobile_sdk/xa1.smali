###### Class ads_mobile_sdk.xa1 (ads_mobile_sdk.xa1)
.class public final Lads_mobile_sdk/xa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lads_mobile_sdk/xa1;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xa1;->a:Lads_mobile_sdk/dw2;

    .line 3
    const-string v1, "activityTracker"

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v0, v2}, Lads_mobile_sdk/wa1;->a(Lads_mobile_sdk/dw2;Ljava/lang/String;Lads_mobile_sdk/dw2;Z)Lads_mobile_sdk/oc1;

    move-result-object v0

    return-object v0
.end method
