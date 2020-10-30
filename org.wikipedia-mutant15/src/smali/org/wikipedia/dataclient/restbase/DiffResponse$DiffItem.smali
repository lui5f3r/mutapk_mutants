.class public Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;
.super Ljava/lang/Object;
.source "DiffResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/restbase/DiffResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffItem"
.end annotation


# instance fields
.field private highlightRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;",
            ">;"
        }
    .end annotation
.end field

.field private lineNumber:I

.field private offset:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffOffset;

.field private text:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighlightRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->highlightRanges:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->type:I

    return v0
.end method
