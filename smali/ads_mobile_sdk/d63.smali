###### Class ads_mobile_sdk.d63 (ads_mobile_sdk.d63)
.class public final Lads_mobile_sdk/d63;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/i2;

.field public final b:Lads_mobile_sdk/zy;

.field public final c:Lads_mobile_sdk/c63;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/c63;)V
    .registers 5

    .line 1
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 368
    iput-object p2, p0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    .line 369
    iput-object p3, p0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    return-void
.end method

.method public static a(Lads_mobile_sdk/d63;Landroid/net/Uri;)V
    .registers 9

    .line 2
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 6
    iget-object v2, p0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 7
    iget-object v3, p0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 8
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V

    return-void
.end method

.method public static a(Lads_mobile_sdk/d63;Ljava/util/List;)V
    .registers 9

    .line 10
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 14
    iget-object v2, p0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 15
    iget-object v3, p0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/16 v6, 0x20

    const/4 v4, 0x0

    move-object v1, p1

    .line 16
    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    return-void
.end method
