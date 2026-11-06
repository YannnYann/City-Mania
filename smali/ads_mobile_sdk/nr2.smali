###### Class ads_mobile_sdk.nr2 (ads_mobile_sdk.nr2)
.class public final Lads_mobile_sdk/nr2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/pt2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/nr2;->a:Lads_mobile_sdk/pt2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 810
    check-cast p1, Lads_mobile_sdk/j53;

    .line 811
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1621
    sget-object v0, Lads_mobile_sdk/j53;->e:Lads_mobile_sdk/j53;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lads_mobile_sdk/nr2;->a:Lads_mobile_sdk/pt2;

    .line 1622
    iget-boolean p1, p1, Lads_mobile_sdk/pt2;->u:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 1623
    :goto_14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
