###### Class ads_mobile_sdk.ch3 (ads_mobile_sdk.ch3)
.class public final Lads_mobile_sdk/ch3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/v01;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v01;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ch3;->a:Lads_mobile_sdk/v01;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 210
    iget-object v0, p0, Lads_mobile_sdk/ch3;->a:Lads_mobile_sdk/v01;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 210
    invoke-virtual {p0}, Lads_mobile_sdk/ch3;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
