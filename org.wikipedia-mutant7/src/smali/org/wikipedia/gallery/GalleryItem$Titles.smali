.class public Lorg/wikipedia/gallery/GalleryItem$Titles;
.super Ljava/lang/Object;
.source "GalleryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Titles"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private normalized:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem$Titles;->display:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem$Titles;->canonical:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem$Titles;->normalized:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCanonical()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem$Titles;->canonical:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem$Titles;->display:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNormalized()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem$Titles;->normalized:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
