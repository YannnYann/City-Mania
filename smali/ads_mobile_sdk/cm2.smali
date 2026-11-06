###### Class ads_mobile_sdk.cm2 (ads_mobile_sdk.cm2)
.class public final Lads_mobile_sdk/cm2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/im2;

.field public final synthetic b:Lads_mobile_sdk/om2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/cm2;->a:Lads_mobile_sdk/im2;

    iput-object p2, p0, Lads_mobile_sdk/cm2;->b:Lads_mobile_sdk/om2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 347
    check-cast p1, Lads_mobile_sdk/o1;

    .line 348
    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lads_mobile_sdk/cm2;->a:Lads_mobile_sdk/im2;

    iget-object v1, p0, Lads_mobile_sdk/cm2;->b:Lads_mobile_sdk/om2;

    .line 696
    iget-object v1, v1, Lads_mobile_sdk/om2;->b:Lads_mobile_sdk/j53;

    .line 697
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/cm2;->b:Lads_mobile_sdk/om2;

    .line 698
    iget-object v3, v2, Lads_mobile_sdk/om2;->c:Ljava/lang/String;

    .line 699
    iget-object v2, v2, Lads_mobile_sdk/om2;->a:Ljava/lang/String;

    .line 700
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, v3, v2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/o1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/o1;

    move-result-object p1

    return-object p1
.end method
