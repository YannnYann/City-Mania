###### Class ads_mobile_sdk.gm2 (ads_mobile_sdk.gm2)
.class public final Lads_mobile_sdk/gm2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/up0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/up0;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gm2;->a:Lads_mobile_sdk/up0;

    iput-object p2, p0, Lads_mobile_sdk/gm2;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 879
    check-cast p1, Lads_mobile_sdk/o1;

    .line 880
    const-string v0, "currentManifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lads_mobile_sdk/gm2;->a:Lads_mobile_sdk/up0;

    iget-object v1, p0, Lads_mobile_sdk/gm2;->b:Ljava/lang/String;

    .line 1888
    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object p1

    const-string v2, "toBuilder(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/n1;

    .line 1889
    const-string v2, "builder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1890
    iget-object v2, v0, Lads_mobile_sdk/up0;->a:Ljava/lang/String;

    .line 1891
    const-string v3, "value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p1, v2}, Lads_mobile_sdk/n1;->d(Ljava/lang/String;)V

    .line 1998
    iget-wide v4, v0, Lads_mobile_sdk/up0;->b:J

    .line 1999
    invoke-virtual {p1, v4, v5}, Lads_mobile_sdk/n1;->a(J)V

    .line 2000
    iget-object v2, v0, Lads_mobile_sdk/up0;->c:Ljava/lang/String;

    .line 2001
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    invoke-virtual {p1, v2}, Lads_mobile_sdk/n1;->c(Ljava/lang/String;)V

    .line 2156
    iget v0, v0, Lads_mobile_sdk/up0;->d:I

    .line 2157
    invoke-virtual {p1, v0}, Lads_mobile_sdk/n1;->a(I)V

    .line 2158
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p1, v1}, Lads_mobile_sdk/n1;->b(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/o1;

    return-object p1
.end method
