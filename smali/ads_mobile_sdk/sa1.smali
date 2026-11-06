###### Class ads_mobile_sdk.sa1 (ads_mobile_sdk.sa1)
.class public final Lads_mobile_sdk/sa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/lm0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/gl2;

.field public final synthetic b:Lads_mobile_sdk/im2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gl2;Lads_mobile_sdk/im2;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sa1;->a:Lads_mobile_sdk/gl2;

    iput-object p2, p0, Lads_mobile_sdk/sa1;->b:Lads_mobile_sdk/im2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/sa1;->a:Lads_mobile_sdk/gl2;

    iget-object v1, p0, Lads_mobile_sdk/sa1;->b:Lads_mobile_sdk/im2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v2, "manager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object v1, v0, Lads_mobile_sdk/gl2;->g:Lads_mobile_sdk/im2;

    .line 38
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
