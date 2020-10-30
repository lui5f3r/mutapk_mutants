.class public Lorg/wikipedia/gallery/MediaListItem;
.super Ljava/lang/Object;
.source "MediaListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;
    }
.end annotation


# instance fields
.field private caption:Lorg/wikipedia/gallery/TextInfo;

.field private sectionId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "section_id"
    .end annotation
.end field

.field private showInGallery:Z

.field private srcSets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "srcset"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaption()Lorg/wikipedia/gallery/TextInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    return-object v0
.end method

.method public getImageUrl(F)Ljava/lang/String;
    .locals 6

    .line 79
    invoke-virtual {p0}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    .line 82
    invoke-virtual {v3}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->getScale()F

    move-result v4

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    .line 85
    invoke-virtual {v3}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->getSrc()Ljava/lang/String;

    move-result-object v0

    move v2, v4

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 8

    const-string v0, "/(\\d+)px-"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    invoke-virtual {v1}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    .line 65
    invoke-virtual {v4}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 67
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 69
    invoke-virtual {v4}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->getSrc()Ljava/lang/String;

    move-result-object v1

    move v3, v5

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v1}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSrcSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem;->type:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInCommons()Z
    .locals 3

    .line 93
    invoke-virtual {p0}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    invoke-static {v0}, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->access$000(Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/wikipedia/commons/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showInGallery()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/wikipedia/gallery/MediaListItem;->showInGallery:Z

    return v0
.end method
