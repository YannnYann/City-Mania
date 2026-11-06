###### Class ads_mobile_sdk.e02 (ads_mobile_sdk.e02)
.class public abstract Lads_mobile_sdk/e02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/h8;


# instance fields
.field public final a:Lads_mobile_sdk/h8;

.field public final b:Lads_mobile_sdk/h8;

.field public final c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h8;Lads_mobile_sdk/h8;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 1
    const-string v0, "multiFormatAdRendererMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rendererMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lads_mobile_sdk/e02;->a:Lads_mobile_sdk/h8;

    .line 121
    iput-object p2, p0, Lads_mobile_sdk/e02;->b:Lads_mobile_sdk/h8;

    .line 122
    iput-object p3, p0, Lads_mobile_sdk/e02;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lads_mobile_sdk/j2;
    .registers 3

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lads_mobile_sdk/e02;->b:Lads_mobile_sdk/h8;

    invoke-interface {v0, p1}, Lads_mobile_sdk/h8;->a(Ljava/lang/String;)Lads_mobile_sdk/j2;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 127
    new-instance p1, Lads_mobile_sdk/d02;

    invoke-direct {p1, v0, p0}, Lads_mobile_sdk/d02;-><init>(Lads_mobile_sdk/j2;Lads_mobile_sdk/e02;)V

    return-object p1

    .line 150
    :cond_13
    iget-object v0, p0, Lads_mobile_sdk/e02;->a:Lads_mobile_sdk/h8;

    invoke-interface {v0, p1}, Lads_mobile_sdk/h8;->a(Ljava/lang/String;)Lads_mobile_sdk/j2;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 151
    iget-object v0, p0, Lads_mobile_sdk/e02;->a:Lads_mobile_sdk/h8;

    invoke-interface {v0, p1}, Lads_mobile_sdk/h8;->a(Ljava/lang/String;)Lads_mobile_sdk/j2;

    move-result-object p1

    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method
