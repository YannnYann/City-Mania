###### Class ads_mobile_sdk.zu (ads_mobile_sdk.zu)
.class public final Lads_mobile_sdk/zu;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/av;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/av;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zu;->a:Lads_mobile_sdk/av;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    :try_start_8
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 138
    iget-object v0, p0, Lads_mobile_sdk/zu;->a:Lads_mobile_sdk/av;

    .line 139
    iget-object v0, v0, Lads_mobile_sdk/av;->b:Lads_mobile_sdk/ur3;

    .line 140
    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "Invalid intent Uri for canOpenIntents gmsg"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
