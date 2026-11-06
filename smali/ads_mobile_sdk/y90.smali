###### Class ads_mobile_sdk.y90 (ads_mobile_sdk.y90)
.class public final Lads_mobile_sdk/y90;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/y90;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9


# instance fields
.field private adResourceType_:I

.field private bitField0_:I

.field private childIds_:Lads_mobile_sdk/yh1$c;

.field private id_:I

.field private matchedBlacklist_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private parentId_:I

.field private request_:Lads_mobile_sdk/a90;

.field private response_:Lads_mobile_sdk/e90;

.field private tagName_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/y90;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/y90;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputadResourceType_(Lads_mobile_sdk/y90;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/y90;->adResourceType_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/y90;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/y90;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputid_(Lads_mobile_sdk/y90;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/y90;->id_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/y90;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/y90;->DEFAULT_INSTANCE:Lads_mobile_sdk/y90;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/y90;

    invoke-direct {v0}, Lads_mobile_sdk/y90;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/y90;->DEFAULT_INSTANCE:Lads_mobile_sdk/y90;

    .line 5
    const-class v1, Lads_mobile_sdk/y90;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50787
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x2

    .line 52090
    iput-byte v0, p0, Lads_mobile_sdk/y90;->memoizedIsInitialized:B

    .line 52091
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/y90;->url_:Ljava/lang/String;

    .line 52092
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/y90;->childIds_:Lads_mobile_sdk/yh1$c;

    .line 52093
    iput-object v0, p0, Lads_mobile_sdk/y90;->tagName_:Ljava/lang/String;

    .line 52094
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/y90;->matchedBlacklist_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static v()Lads_mobile_sdk/x90;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/y90;->DEFAULT_INSTANCE:Lads_mobile_sdk/y90;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/x90;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 51050
    sget-object p3, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_56

    return-object p3

    :pswitch_d
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    int-to-byte p1, p1

    .line 51087
    iput-byte p1, p0, Lads_mobile_sdk/y90;->memoizedIsInitialized:B

    return-object p3

    .line 51088
    :pswitch_16
    iget-byte p1, p0, Lads_mobile_sdk/y90;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 51089
    :pswitch_1d
    const-class p1, Lads_mobile_sdk/y90;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 51090
    :pswitch_24
    sget-object p1, Lads_mobile_sdk/y90;->DEFAULT_INSTANCE:Lads_mobile_sdk/y90;

    return-object p1

    .line 51091
    :pswitch_27
    sget-object v9, Lads_mobile_sdk/v90;->a:Lads_mobile_sdk/v90;

    const-string v10, "matchedBlacklist_"

    const-string v0, "bitField0_"

    const-string v1, "id_"

    const-string v2, "url_"

    const-string v3, "request_"

    const-string v4, "response_"

    const-string v5, "parentId_"

    const-string v6, "childIds_"

    const-string v7, "tagName_"

    const-string v8, "adResourceType_"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    .line 51098
    sget-object p2, Lads_mobile_sdk/y90;->DEFAULT_INSTANCE:Lads_mobile_sdk/y90;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51099
    :pswitch_4a
    new-instance p1, Lads_mobile_sdk/x90;

    invoke-direct {p1}, Lads_mobile_sdk/x90;-><init>()V

    return-object p1

    .line 51100
    :pswitch_50
    new-instance p1, Lads_mobile_sdk/y90;

    invoke-direct {p1}, Lads_mobile_sdk/y90;-><init>()V

    return-object p1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4a
        :pswitch_27
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/a90;)V
    .registers 2

    .line 51047
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51048
    iput-object p1, p0, Lads_mobile_sdk/y90;->request_:Lads_mobile_sdk/a90;

    .line 51049
    iget p1, p0, Lads_mobile_sdk/y90;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lads_mobile_sdk/y90;->bitField0_:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 51001
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51002
    iget v0, p0, Lads_mobile_sdk/y90;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/y90;->bitField0_:I

    .line 51003
    iput-object p1, p0, Lads_mobile_sdk/y90;->url_:Ljava/lang/String;

    return-void
.end method
