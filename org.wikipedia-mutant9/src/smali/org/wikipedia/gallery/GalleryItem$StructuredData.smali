.class public Lorg/wikipedia/gallery/GalleryItem$StructuredData;
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
    name = "StructuredData"
.end annotation


# instance fields
.field private captions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/gallery/GalleryItem$StructuredData;)Ljava/util/HashMap;
    .locals 0

    .line 198
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->captions:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$002(Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->captions:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public getCaptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->captions:Ljava/util/HashMap;

    return-object v0
.end method
