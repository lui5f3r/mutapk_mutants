.class public final synthetic Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$S2XA4SZcTyz0WOzgBwq4kJiznDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryItemFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$S2XA4SZcTyz0WOzgBwq4kJiznDQ;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$S2XA4SZcTyz0WOzgBwq4kJiznDQ;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    check-cast p3, Ljava/util/Map;

    invoke-static {v0, p1, p2, p3}, Lorg/wikipedia/gallery/GalleryActivity;->lambda$layOutGalleryDescription$9(Lorg/wikipedia/gallery/GalleryItemFragment;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
