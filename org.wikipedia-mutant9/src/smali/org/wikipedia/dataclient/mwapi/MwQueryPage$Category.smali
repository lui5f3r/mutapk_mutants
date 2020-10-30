.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field private hidden:Z

.field private ns:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hidden()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;->hidden:Z

    return v0
.end method

.method public ns()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;->ns:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
