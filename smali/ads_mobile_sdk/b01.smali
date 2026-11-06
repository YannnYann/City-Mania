###### Class ads_mobile_sdk.b01 (ads_mobile_sdk.b01)
.class public final Lads_mobile_sdk/b01;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/v24;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    const-string v0, "wrappedException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/b01;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .registers 2

    .line 17
    iget-object v0, p0, Lads_mobile_sdk/b01;->a:Ljava/lang/Throwable;

    return-object v0
.end method
