###### Class ads_mobile_sdk.ao3 (ads_mobile_sdk.ao3)
.class public final Lads_mobile_sdk/ao3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/m;


# instance fields
.field public final a:Lads_mobile_sdk/if1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;)V
    .registers 3

    .line 1
    const-string v0, "inspectorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lads_mobile_sdk/ao3;->a:Lads_mobile_sdk/if1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/j;)Ljava/lang/Object;
    .registers 5

    .line 2
    const-string v0, "test_mode_enabled"

    .line 3
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/ao3;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/if1;->b(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_22

    return-object p1

    :cond_22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 9
    :cond_25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
