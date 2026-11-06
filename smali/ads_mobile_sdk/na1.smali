###### Class ads_mobile_sdk.na1 (ads_mobile_sdk.na1)
.class public final Lads_mobile_sdk/na1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/lm0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/jb3;

.field public final synthetic b:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jb3;Lads_mobile_sdk/g30;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/na1;->a:Lads_mobile_sdk/jb3;

    iput-object p2, p0, Lads_mobile_sdk/na1;->b:Lads_mobile_sdk/g30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/na1;->a:Lads_mobile_sdk/jb3;

    iget-object v1, p0, Lads_mobile_sdk/na1;->b:Lads_mobile_sdk/g30;

    check-cast v0, Lads_mobile_sdk/yq1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v2, "consentStringsProvider"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object v1, v0, Lads_mobile_sdk/yq1;->p:Lads_mobile_sdk/n30;

    .line 118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
