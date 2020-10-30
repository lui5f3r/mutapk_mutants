.class Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;
.super Ljava/lang/Object;
.source "PageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/PageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamespaceContainer"
.end annotation


# instance fields
.field private id:I

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;->id:I

    return v0
.end method
