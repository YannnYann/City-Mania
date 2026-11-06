###### Class ads_mobile_sdk.np1 (ads_mobile_sdk.np1)
.class public Lads_mobile_sdk/np1;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/np1$a;
    }
.end annotation


# instance fields
.field private a:Lads_mobile_sdk/tw1;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/np1;->a:Lads_mobile_sdk/tw1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lads_mobile_sdk/np1;->a:Lads_mobile_sdk/tw1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 3

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lads_mobile_sdk/np1;->a:Lads_mobile_sdk/tw1;

    return-void
.end method

.method public static b()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lads_mobile_sdk/np1$a;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1$a;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Lads_mobile_sdk/np1;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;
    .registers 2

    .line 134
    iput-object p1, p0, Lads_mobile_sdk/np1;->a:Lads_mobile_sdk/tw1;

    return-object p0
.end method

.method public a()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lads_mobile_sdk/np1;->b:Z

    return v0
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lads_mobile_sdk/np1;->b:Z

    return-void
.end method

###### Class ads_mobile_sdk.np1.a (ads_mobile_sdk.np1$a)
.class public Lads_mobile_sdk/np1$a;
.super Lads_mobile_sdk/np1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/np1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 130
    invoke-direct {p0, p1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-void
.end method
