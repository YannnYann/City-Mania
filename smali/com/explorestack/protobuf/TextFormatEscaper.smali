###### Class com.explorestack.protobuf.TextFormatEscaper (com.explorestack.protobuf.TextFormatEscaper)
.class public final Lcom/explorestack/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;
    }
.end annotation


# direct methods
.method public static escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;
    .registers 2

    .line 109
    new-instance v0, Lcom/explorestack/protobuf/TextFormatEscaper$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/TextFormatEscaper$1;-><init>(Lcom/explorestack/protobuf/ByteString;)V

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeBytes(Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;
    .registers 6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 51
    :goto_a
    invoke-interface {p0}, Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 52
    invoke-interface {p0, v1}, Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_86

    const/16 v3, 0x27

    if-eq v2, v3, :cond_80

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7a

    packed-switch v2, :pswitch_data_94

    const/16 v4, 0x20

    if-lt v2, v4, :cond_30

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_30

    int-to-char v2, v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 91
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 68
    :pswitch_50
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 62
    :pswitch_56
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 74
    :pswitch_5c
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 65
    :pswitch_62
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 71
    :pswitch_68
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 59
    :pswitch_6e
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 56
    :pswitch_74
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 77
    :cond_7a
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 80
    :cond_80
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 83
    :cond_86
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 99
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x7
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
    .end packed-switch
.end method

.method public static escapeBytes([B)Ljava/lang/String;
    .registers 2

    .line 125
    new-instance v0, Lcom/explorestack/protobuf/TextFormatEscaper$2;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/TextFormatEscaper$2;-><init>([B)V

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 150
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 145
    invoke-static {p0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.explorestack.protobuf.TextFormatEscaper.AnonymousClass1 (com.explorestack.protobuf.TextFormatEscaper$1)
.class public final Lcom/explorestack/protobuf/TextFormatEscaper$1;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$input:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/ByteString;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormatEscaper$1;->val$input:Lcom/explorestack/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormatEscaper$1;->val$input:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormatEscaper$1;->val$input:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method

###### Class com.explorestack.protobuf.TextFormatEscaper.AnonymousClass2 (com.explorestack.protobuf.TextFormatEscaper$2)
.class public final Lcom/explorestack/protobuf/TextFormatEscaper$2;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$input:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormatEscaper$2;->val$input:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormatEscaper$2;->val$input:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormatEscaper$2;->val$input:[B

    array-length v0, v0

    return v0
.end method

###### Class com.explorestack.protobuf.TextFormatEscaper.ByteSequence (com.explorestack.protobuf.TextFormatEscaper$ByteSequence)
.class public interface abstract Lcom/explorestack/protobuf/TextFormatEscaper$ByteSequence;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TextFormatEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ByteSequence"
.end annotation


# virtual methods
.method public abstract byteAt(I)B
.end method

.method public abstract size()I
.end method
