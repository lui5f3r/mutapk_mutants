.class public Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;
.super Ljava/lang/Object;
.source "MediaListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/MediaListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSrcSet"
.end annotation


# instance fields
.field private scale:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/gallery/MediaListItem;


# direct methods
.method public constructor <init>(Lorg/wikipedia/gallery/MediaListItem;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->this$0:Lorg/wikipedia/gallery/MediaListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->src:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getScale()F
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->scale:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->src:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
