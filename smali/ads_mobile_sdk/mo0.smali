###### Class ads_mobile_sdk.mo0 (ads_mobile_sdk.mo0)
.class public abstract Lads_mobile_sdk/mo0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/mo0$a;->a:Lads_mobile_sdk/mo0$a;

    sput-object v0, Lads_mobile_sdk/mo0;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/mo0;->a:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

###### Class ads_mobile_sdk.mo0.a (ads_mobile_sdk.mo0$a)
.class final Lads_mobile_sdk/mo0$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/mo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lads_mobile_sdk/mo0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/mo0$a;

    invoke-direct {v0}, Lads_mobile_sdk/mo0$a;-><init>()V

    sput-object v0, Lads_mobile_sdk/mo0$a;->a:Lads_mobile_sdk/mo0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lads_mobile_sdk/mo0$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
