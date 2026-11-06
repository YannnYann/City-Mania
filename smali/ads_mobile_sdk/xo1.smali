###### Class ads_mobile_sdk.xo1 (ads_mobile_sdk.xo1)
.class public final Lads_mobile_sdk/xo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/me0;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/xo1;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xo1;->a:Lads_mobile_sdk/dw2;

    .line 3
    new-instance v1, Lads_mobile_sdk/wo1;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wo1;-><init>(Lads_mobile_sdk/dw2;)V

    return-object v1
.end method
