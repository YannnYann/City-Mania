###### Class ads_mobile_sdk.jb0 (ads_mobile_sdk.jb0)
.class public final Lads_mobile_sdk/jb0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/jb0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/jb0;

    invoke-direct {v0}, Lads_mobile_sdk/jb0;-><init>()V

    sput-object v0, Lads_mobile_sdk/jb0;->a:Lads_mobile_sdk/jb0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static a(Lads_mobile_sdk/eb0;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/eb0;->a()J

    move-result-wide v0

    iget-object v2, p0, Lads_mobile_sdk/eb0;->b:Lads_mobile_sdk/ir3;

    invoke-virtual {v2}, Lads_mobile_sdk/ir3;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 3
    iget-object p0, p0, Lads_mobile_sdk/eb0;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 124
    check-cast p1, Lads_mobile_sdk/eb0;

    invoke-static {p1}, Lads_mobile_sdk/jb0;->a(Lads_mobile_sdk/eb0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
