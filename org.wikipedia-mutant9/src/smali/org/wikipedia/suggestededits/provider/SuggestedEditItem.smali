.class public final Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;
.super Ljava/lang/Object;
.source "SuggestedEditItem.kt"


# instance fields
.field private final entity:Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wikibase_item"
    .end annotation
.end field

.field private final ns:I

.field private final pageid:I

.field private final structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "structured"
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCaptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->getCaptions()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->getCaptions()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->entity:Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    return-object v0
.end method

.method public final title()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
