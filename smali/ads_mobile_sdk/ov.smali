###### Class ads_mobile_sdk.ov (ads_mobile_sdk.ov)
.class public final Lads_mobile_sdk/ov;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/mv;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/mv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ov;->a:Lads_mobile_sdk/mv;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .line 157
    iget-object v0, p0, Lads_mobile_sdk/ov;->a:Lads_mobile_sdk/mv;

    invoke-virtual {v0}, Lads_mobile_sdk/mv;->b()Lads_mobile_sdk/lv;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/ov;->a:Lads_mobile_sdk/mv;

    invoke-virtual {v1}, Lads_mobile_sdk/mv;->c()Lads_mobile_sdk/xw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "variations header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 156
    invoke-virtual {p0}, Lads_mobile_sdk/ov;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
