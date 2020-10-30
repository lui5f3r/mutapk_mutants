.class public Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;
.super Ljava/lang/Object;
.source "DiffResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/restbase/DiffResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighlightRange"
.end annotation


# instance fields
.field private length:I

.field private start:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->length:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->start:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->type:I

    return v0
.end method
