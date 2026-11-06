###### Class ads_mobile_sdk.ci2 (ads_mobile_sdk.ci2)
.class public final Lads_mobile_sdk/ci2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/fi2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/fi2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ci2;->a:Lads_mobile_sdk/fi2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ci2;->a:Lads_mobile_sdk/fi2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/fi2;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/w41;->a(Landroid/content/Context;)Lads_mobile_sdk/w41;

    move-result-object v0

    return-object v0
.end method
