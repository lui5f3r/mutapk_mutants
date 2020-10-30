.class public Lorg/wikipedia/dataclient/restbase/DiffResponse;
.super Ljava/lang/Object;
.source "DiffResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;,
        Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;,
        Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;,
        Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffOffset;,
        Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;
    }
.end annotation


# static fields
.field public static final DIFF_TYPE_LINE_ADDED:I = 0x1

.field public static final DIFF_TYPE_LINE_REMOVED:I = 0x2

.field public static final DIFF_TYPE_LINE_WITH_DIFF:I = 0x3

.field public static final DIFF_TYPE_LINE_WITH_SAME_CONTENT:I = 0x0

.field public static final DIFF_TYPE_PARAGRAPH_MOVED_FROM:I = 0x4

.field public static final DIFF_TYPE_PARAGRAPH_MOVED_TO:I = 0x5

.field public static final HIGHLIGHT_TYPE_ADD:I = 0x0

.field public static final HIGHLIGHT_TYPE_DELETE:I = 0x1


# instance fields
.field private diff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;",
            ">;"
        }
    .end annotation
.end field

.field private from:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;

.field private to:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiffs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->diff:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
